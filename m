Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B793C1D28D8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 09:35:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=stNOvnN18Px2XjRIjMJrAdVphMvv2mwdL2gSzP7X7FY=; b=KpwtPP8aloRAUt
	+TLNUdBTGIl6IX/7nxtxa5pWcwNHrbKvpePhv8HlUgoQ1Ou1wGnzwH9Q0v+pICKOMQMx6oVGZyR2A
	z89z4BnLYN0lY6F2EWXwzIGjmIe44hbgnMBl5gOT4mVgrFQbnZTLvlexEsnqtkPHmXfrMX2BeOyTF
	a7cVtRMiVMCYTryDhG1ZioRX0EANALsPoRwRi5kuAEMxxbYhGASM8wOkxp5r8YrNXoysCveFp+EOg
	xcmaAogXep3zTMBEimL3qYB3YZaS8BxTZF0S0NGARIOce8K/Rju5iMonlcvKRuDnmPLZbPPdOqTX4
	uAEa+o5Rw2aAlYKagMeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ8Oi-0007Jf-7p; Thu, 14 May 2020 07:35:16 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ8ON-0007I1-Pv; Thu, 14 May 2020 07:34:57 +0000
X-UUID: b17acf61df3048af9143edd2974d90aa-20200513
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=/nREqLi1Ldl8sd0riITmmpWJKuTNyeKnEZWI4u7Mg0Y=; 
 b=bg9Pgjd9KHnY+znNILPTWZKAHNkxlugL4jlyX1guMYRskgMMgE8jl+Z+r8xM7pRv1NEVrIcjRn4BqJf2uQJ1Au8l+So/+zDkV+X5uR+UqUo8X1Kc3UcAJ/01yUKgXKWHE887B4wOsDD4XISz7fjLG+OXJ+Kekile5fcawNQIdZk=;
X-UUID: b17acf61df3048af9143edd2974d90aa-20200513
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <min.guo@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2071330438; Wed, 13 May 2020 23:34:51 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 14 May 2020 00:34:46 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Thu, 14 May 2020 15:34:44 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 14 May 2020 15:34:44 +0800
Message-ID: <1589441605.28160.27.camel@mhfsdcap03>
Subject: Re: [PATCH] usb: musb: mediatek: add reset FADDR to zero in reset
 interrupt handle
From: Min Guo <min.guo@mediatek.com>
To: Macpaul Lin <macpaul.lin@mediatek.com>
Date: Thu, 14 May 2020 15:33:25 +0800
In-Reply-To: <1589428872-29282-1-git-send-email-macpaul.lin@mediatek.com>
References: <1589428872-29282-1-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3929ED25672ED9116AC7BC7CCB30D4C22ADBA5D38237F4E1188FC580E959644C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_003455_846515_6D66EAA0 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Hans de Goede <hdegoede@redhat.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, linux-mediatek@lists.infradead.org,
 Macpaul Lin <macpaul.lin@gmail.com>, Bin Liu <b-liu@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-05-14 at 12:01 +0800, Macpaul Lin wrote:
> When receiving reset interrupt, FADDR need to be reset to zero in
> periphearl mode. Otherwise ep0 cannot do enumeration when re-pluging USB
> cable.
> 
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> ---
>  drivers/usb/musb/mediatek.c |    6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/usb/musb/mediatek.c b/drivers/usb/musb/mediatek.c
> index 6196b0e..eebeadd 100644
> --- a/drivers/usb/musb/mediatek.c
> +++ b/drivers/usb/musb/mediatek.c
> @@ -208,6 +208,12 @@ static irqreturn_t generic_interrupt(int irq, void *__hci)
>  	musb->int_rx = musb_clearw(musb->mregs, MUSB_INTRRX);
>  	musb->int_tx = musb_clearw(musb->mregs, MUSB_INTRTX);
>  
> +	if ((musb->int_usb & MUSB_INTR_RESET) && !is_host_active(musb)) {
> +		/* ep0 FADDR must be 0 when (re)entering peripheral mode */
> +		musb_ep_select(musb->mregs, 0);
> +		musb_writeb(musb->mregs, MUSB_FADDR, 0);
> +	}
> +
>  	if (musb->int_usb || musb->int_tx || musb->int_rx)
>  		retval = musb_interrupt(musb);
>  

Acked-by:Min Guo <min.guo@mediatek.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
