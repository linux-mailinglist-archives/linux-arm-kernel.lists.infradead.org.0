Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02245F9B53
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 21:56:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+0iJYUGlChV1yaQRlKkkIWD7/YhOQrx0Bwrws9zDduI=; b=GIOrW102hcHb5I
	JsDInGDe3EBNkkawEC76q9KwVR9XqQwsAvQtDR1prNHPQ+FVLZACTCURCD6TGJwm8XxaYOWPLlWmF
	c4qiUrS+v4bG2ZxY/dCN5juLMIhWIK0OsjU+qRQoUAE2NM1AmroSrfuWdAFsFqxiaph6LrlqXtvoo
	rZ5SCOjMvC59A5c0F6CPSB1BBxbkIbsZeil/XuFdJmFmUh9MYyCOV6xmWNv8dVqLR4oMMm0iy/wWB
	6SWX0SKK3jqf6FHzieJz64zi4/2R6nXmsw5WQDEL7SOo2pMP4ndmpmnzrsWT+Xm4vae7wDt4NKQ2n
	2YmVxh1uG2FP0if6uxgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUdDE-0007z1-O8; Tue, 12 Nov 2019 20:56:32 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUdD4-0007y9-Ip
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 20:56:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573592180;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iWnDUrwMNWzeWSYABRZ4rErF0Ev5zOYIDNIsGxLphw8=;
 b=IgPrwTZErTHR2TmPEIJ0lRiIVKIcmM1mPJNAF7b/rx7rJ6u6ydjiEEWPKKy/BOV5l3nCF0
 xKHSRYUVjxQf9QHdA59z6q8O6H3sloPsyADjBUVrDOcLPN1IC/D0rxCb6dNBbHutVLofxc
 U+X1yeyuYJrpx5Q/eP2PzK2yBIVqg1c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-195-x35vS6cbODWuRti3I0hJ_Q-1; Tue, 12 Nov 2019 15:56:17 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8BDBE800C61;
 Tue, 12 Nov 2019 20:56:16 +0000 (UTC)
Received: from [10.36.116.54] (ovpn-116-54.ams2.redhat.com [10.36.116.54])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 52A2D66089;
 Tue, 12 Nov 2019 20:56:14 +0000 (UTC)
Subject: Re: [kvm-unit-tests PATCH 05/17] arm: gic: Prepare IRQ handler for
 handling SPIs
To: Andre Przywara <andre.przywara@arm.com>, Andrew Jones
 <drjones@redhat.com>, Paolo Bonzini <pbonzini@redhat.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
 <20191108144240.204202-6-andre.przywara@arm.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <76947b00-816b-9363-a9d6-5e4ef92b74c5@redhat.com>
Date: Tue, 12 Nov 2019 21:56:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20191108144240.204202-6-andre.przywara@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: x35vS6cbODWuRti3I0hJ_Q-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_125622_707757_8A24FE22 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marc Zyngier <maz@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andre,

On 11/8/19 3:42 PM, Andre Przywara wrote:
> So far our IRQ handler routine checks that the received IRQ is actually
> the one SGI (IPI) that we are using for our testing.
> 
> To make the IRQ testing routine more versatile, also allow the IRQ to be
> one test SPI (shared interrupt).
> We use the penultimate IRQ of the first SPI group for that purpose.
I don't get the above sentence. What do you mean by group here?
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arm/gic.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/arm/gic.c b/arm/gic.c
> index eca9188..c909668 100644
> --- a/arm/gic.c
> +++ b/arm/gic.c
> @@ -23,6 +23,7 @@
>  
>  #define IPI_SENDER	1
>  #define IPI_IRQ		1
> +#define SPI_IRQ		(GIC_FIRST_SPI + 30)
>  
>  struct gic {
>  	struct {
> @@ -162,8 +163,12 @@ static void irq_handler(struct pt_regs *regs __unused)
>  
>  	smp_rmb(); /* pairs with wmb in stats_reset */
>  	++acked[smp_processor_id()];
> -	check_ipi_sender(irqstat);
> -	check_irqnr(irqnr, IPI_IRQ);
> +	if (irqnr < GIC_NR_PRIVATE_IRQS) {
> +		check_ipi_sender(irqstat);
> +		check_irqnr(irqnr, IPI_IRQ);
> +	} else {
> +		check_irqnr(irqnr, SPI_IRQ);
I think I would rather have different handlers per test.
I have rebased the ITS series and I use a different LPI handler there.
I think you shouldn't be obliged to hardcode a specific intid in the
handler.

Can't we have
static void setup_irq(handler_t handler)?

Thanks

Eric

> +	}
>  	smp_wmb(); /* pairs with rmb in check_acked */
>  }
>  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
