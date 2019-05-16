Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C06FD201BC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 10:53:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jYl7+Y30trs9Sklcik42bt44PsAUzszzX0/UovOFLtY=; b=anIKlDgcfy+s/6
	21Uv1elDjcjRrE+fMU6bZJiNFaDp/S5TaKhbsBUTvH+PK9T6aVCdjDk9X0Kx9GxY0Jn2LdJR+25JL
	7ydgIhw3w7ytw/9xlppjytLWlbm/fO++mAOQ8aDN5bVVUDioOijgcSRgd5DqFIK6hl4SMQna9iaeb
	0FchL9LxX3wyeZcgLf8mmeuAXMjK0AWp2+Qq1vgiLnA5ZPdrGV49M11PqmujoMJe4RgRmSkZrQzCw
	Bq1vT2rLDyBlX/3kcmXZfjkn1SD84aduZxVr3KyPpm+RpbSqwvLIF68BDMtOiFxu+723IKK1cVkh0
	f9cC7pvNcuKYu4Xq3bmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRC8e-0000fI-03; Thu, 16 May 2019 08:53:20 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRC8V-0000eB-Ur
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 08:53:13 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 0644F20189;
 Thu, 16 May 2019 10:53:06 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id E828620466;
 Thu, 16 May 2019 10:53:05 +0200 (CEST)
Subject: Re: [PATCH V12 3/5] thermal: imx_sc: add i.MX system controller
 thermal support
To: Anson Huang <anson.huang@nxp.com>
References: <1555384609-7030-1-git-send-email-Anson.Huang@nxp.com>
 <1555384609-7030-3-git-send-email-Anson.Huang@nxp.com>
 <DB3PR0402MB3916791537B7C3C85B13A22BF5330@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <DB3PR0402MB3916BDD870608F0CAC76DB3FF50A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <aa2f08f4-9a8d-c3f4-db3e-f08d6ce6a2e8@free.fr>
Date: Thu, 16 May 2019 10:53:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <DB3PR0402MB3916BDD870608F0CAC76DB3FF50A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu May 16 10:53:06 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_015312_138375_31B38CD7 
X-CRM114-Status: UNSURE (   6.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/05/2019, Anson Huang wrote: Ping...
On  9/05/2019, Anson Huang wrote: Ping...

Hello,

FWIW, between May 5 and May 19 is the merge window for Linux 5.2
Most maintainers have low(er) review bandwidth during merge windows.

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
