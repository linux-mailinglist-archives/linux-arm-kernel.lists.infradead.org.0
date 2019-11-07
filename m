Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2848FF3C53
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 00:49:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vmErq8OjfFgp1PTknEhHWUWmW0A5C7kx8jKkuogJVd4=; b=KbiY428rzNKEeE
	3eiyzZhqR9Nus85p8Q9nE9L3bfN9fUSqoqKd+kt5oeISrmLXB3M3lRzCNUqYFXl8bLqTToAb6yf/O
	cIISjkNbG5W/j0QG0s9B6ewpnHl/T2BaY1LWXpwmrOapUrjzqEEu7MumDgPwnjtk0eW2+7dxYljHp
	3IgCRp4TULjoirbrGvIfVCqMq+mXV+6o9+AtSKX9/fHuBldKG6HhpPscccxY/Nj1atoZFIhQr5sCL
	YlRtAQZnoISt71URtTt30YmvxPU7edSjOcFpBO6U4tDNZQFxavwcNO0hPOeLbZQ6rurzNwgMQM6yp
	LfmSf5Jgvb6uRrFbjywg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSrWv-0001Aj-11; Thu, 07 Nov 2019 23:49:33 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSrWl-0001AE-HV; Thu, 07 Nov 2019 23:49:26 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 8EF571537E161;
 Thu,  7 Nov 2019 15:49:22 -0800 (PST)
Date: Thu, 07 Nov 2019 15:49:22 -0800 (PST)
Message-Id: <20191107.154922.1123372183066604716.davem@davemloft.net>
To: Mark-MC.Lee@mediatek.com
Subject: Re: [PATCH net] net: ethernet: mediatek: rework GDM setup flow
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191107105135.1403-1-Mark-MC.Lee@mediatek.com>
References: <20191107105135.1403-1-Mark-MC.Lee@mediatek.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 07 Nov 2019 15:49:23 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_154923_581604_BB50DCDB 
X-CRM114-Status: UNSURE (   5.73  )
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
Cc: mark.rutland@arm.com, andrew@lunn.ch, jakub.kicinski@netronome.com,
 devicetree@vger.kernel.org, netdev@vger.kernel.org, sean.wang@mediatek.com,
 linux-kernel@vger.kernel.org, opensource@vdorst.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: MarkLee <Mark-MC.Lee@mediatek.com>
Date: Thu, 7 Nov 2019 18:51:35 +0800

> +	for (i = 0; i < 2; i++) {

This is a regression, because in the existing code...

> -	for (i = 0; i < MTK_MAC_COUNT; i++) {

the proper macro is used instead of a magic constant.

You're doing so many things in one change, it's hard to review
and audit.

If you're going to consolidate code, do that only in one change.

Then make other functional changes such as putting the chip into
GDMA_DROP_ALL mode during the stop operation etc.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
