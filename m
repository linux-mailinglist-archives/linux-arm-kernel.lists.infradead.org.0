Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A9A1252EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 21:14:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7yqEv9TLEvCbLpAzhRj5iHBJFb8OkN4/fZYF9iXBvFg=; b=OEYFLWA02kIOSm
	edx1ueWi8NqO4Mza/ag7ojNNHTdBtkTVjpqkFxmjDS75vb6asTyYO9ypRynR6NEz/bs/2pdHIAw59
	UdIpGddYaJTYdvTxJ58Yq5YpBeXc18HjURuLNeMsYQakNHJXtshfJ/+f8EyWnQVpO9QBBFZ/Tkqqb
	UCbrkEwUhFt9BEXxSKAK7eFJtEImFIEwS6yG1lIVpioiTzORW7Y1kHrO3f118IWeb/LL5rf4rlGZ8
	oK8uQASgHKhU8hJU7NYKlo5VPmjkeOor9eyCB02qrghDUhOhdeg0yYY6kQC93+p0Ajk+4rnoh5cPk
	CFts86pX/6o3I1Htdjww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihfiJ-0001Fi-Bk; Wed, 18 Dec 2019 20:14:31 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihfiA-0001FP-NM
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 20:14:23 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 0B56C153CB361;
 Wed, 18 Dec 2019 12:14:22 -0800 (PST)
Date: Wed, 18 Dec 2019 12:14:21 -0800 (PST)
Message-Id: <20191218.121421.953588361074612907.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net-next v3 0/3] net: stmmac: Improvements for -next
From: David Miller <davem@davemloft.net>
In-Reply-To: <cover.1576664538.git.Jose.Abreu@synopsys.com>
References: <cover.1576664538.git.Jose.Abreu@synopsys.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 18 Dec 2019 12:14:22 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_121422_762429_67431914 
X-CRM114-Status: UNSURE (   6.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Joao.Pinto@synopsys.com, jakub.kicinski@netronome.com,
 alexandre.torgue@st.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 mripard@kernel.org, wens@csie.org, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Wed, 18 Dec 2019 11:24:42 +0100

> Misc improvements for stmmac.
> 
> 1) Adds more information regarding HW Caps in the DebugFS file.
> 
> 2) Allows interrupts to be independently enabled or disabled so that we don't
> have to schedule both TX and RX NAPIs.
> 
> 3) Stops using a magic number in coalesce timer re-arm.

Series applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
