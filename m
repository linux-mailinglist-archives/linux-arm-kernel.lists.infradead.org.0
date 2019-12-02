Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E6110F326
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 00:09:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iMu6WkvJbi5wDUIUy/NGI+CZq6ubfoyNp1qh2sO1tu4=; b=cINd04NJezsJMK
	vlSOLAMqk7BJ0+tZ9xWcULR6IY1uhRbXv2LU5Ww6kE+U4Yn2a9MA3Is/gO62NCs+goEApjOUyADEL
	tOtiFlcI+tT3F7FzGXGGRD55BYKa22TG7ujr2j3oXJtalWxjKNpuREtjDlWmSOK71H1I0pkaMXDKj
	MAFSe7DiycAuYn0lW63eC4dQk49ZHdeOgh85fnv8gAJ/QYsQFm6OAvOEPxUQI5imsW+PmdzuptWH4
	SE8/mFqd1tfzcPfj9FxbvrARYmhAr6DoulHSCNxe8OgGuNfsxqmTZK16w2PUt4+jJKnKiZD+7g/8F
	a1iB//DgvO85z0po+rMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibuoi-0007aE-HS; Mon, 02 Dec 2019 23:09:20 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibuod-0007Zs-Nt
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 23:09:17 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id A69F014DAF87D;
 Mon,  2 Dec 2019 15:09:08 -0800 (PST)
Date: Mon, 02 Dec 2019 15:09:08 -0800 (PST)
Message-Id: <20191202.150908.2038427090014426460.davem@davemloft.net>
To: leoyang.li@nxp.com
Subject: Re: [PATCH v6 44/49] net/wan/fsl_ucc_hdlc: avoid use of IS_ERR_VALUE()
From: David Miller <davem@davemloft.net>
In-Reply-To: <VE1PR04MB6687B5428E3E4FA0F8F77DF08F430@VE1PR04MB6687.eurprd04.prod.outlook.com>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
 <20191128145554.1297-45-linux@rasmusvillemoes.dk>
 <VE1PR04MB6687B5428E3E4FA0F8F77DF08F430@VE1PR04MB6687.eurprd04.prod.outlook.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 02 Dec 2019 15:09:09 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_150915_778050_E6481B00 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: christophe.leroy@c-s.fr, timur@kernel.org, netdev@vger.kernel.org,
 linux@rasmusvillemoes.dk, linux-kernel@vger.kernel.org, oss@buserror.net,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 qiang.zhao@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leo Li <leoyang.li@nxp.com>
Date: Mon, 2 Dec 2019 22:51:57 +0000

> 
> 
>> -----Original Message-----
>> From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
>> Sent: Thursday, November 28, 2019 8:56 AM
>> To: Qiang Zhao <qiang.zhao@nxp.com>; Leo Li <leoyang.li@nxp.com>;
>> Christophe Leroy <christophe.leroy@c-s.fr>
>> Cc: linuxppc-dev@lists.ozlabs.org; linux-arm-kernel@lists.infradead.org;
>> linux-kernel@vger.kernel.org; Scott Wood <oss@buserror.net>; Timur Tabi
>> <timur@kernel.org>; Rasmus Villemoes <linux@rasmusvillemoes.dk>;
>> netdev@vger.kernel.org
>> Subject: [PATCH v6 44/49] net/wan/fsl_ucc_hdlc: avoid use of
>> IS_ERR_VALUE()
> 
> Hi David,
> 
> Would you help to review patch 44-47 in the series?  If it is fine with you, I can take these 4 patches with the whole series though soc tree to enable the QE drivers on ARM and PPC64 with your ACK.

Please take it via your tree, that's fine.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
