Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A26CF654
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 11:44:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YPHM6l9StdbpVV1j5R4rlQrJdoH93IlI8QOOFhi8A54=; b=ZbHZ1JAb68+/Go
	7xxtQZCTf9cooeHLM6mc9hG+PKWSac7fYcd9h1nEfdP++Ciep+Z/0gs+NTx+nm5sMd2OIWXUDVUsC
	Eq6CVO5+nMyWKQt+p1C6435KVHQIvGF9t8yQFUYlyRfnofo7uLrb1ksUZ1GeRrxD9pCZO5BtycGF6
	CTL3LBSRcXnRhhKXPzMY2SfQu6OKOJW0XIT9FUh7cAuQYgfGBKvPN8UxTqMI3Cri/vf9BPctgecew
	v2nTmefRP88jTsU++mLW9OzE2+Hi/oRWWGw1jhAunoWQhx28IU4CepyVbUk4alHyxkzGeHN3YSQbb
	k/wUvQvFL6E44I17Y35w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHm2U-0007x8-NL; Tue, 08 Oct 2019 09:44:18 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHm2N-0007x0-97
 for linux-arm-kernel@bombadil.infradead.org; Tue, 08 Oct 2019 09:44:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:Message-ID:
 Date:References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ge/RoAtAn9phY/Ia5b1+Pf0zvmW7c8KIL3PGoKTWAPM=; b=fcNVdy+LGEkE/tSysCvN9EIQ1
 oi0UG6vhecxSFEK1nIrOi94qbaAu+d08Qx00DPKW6wW2oxfEOrzFaUYxCegqmFUnNNveasMfrMj+G
 ljRqwXSdrSpR3vhNU0bjtYRTZltzxhhbnrRHOAkZ4SpFs8invtZiO9iHJC0fHEMYAU6tnTM4798IN
 QSIa3HV1umSHTs2QOb8EGlUM4k4XtlyYl4giqP8CBDQSOSZr7Iicx31C7aH/EytEmvL8ee3ld9bPw
 luxQLcGENDNJbWAJdXdkF9tylsMnY7sg3LO0PgAdYbeEYzWyqOnV7Ocv9FuXYxKTpQxeZ7SLrFOLH
 pCqvsrVFw==;
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by merlin.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHm2K-0005nR-1n
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 09:44:09 +0000
Received: from localhost (91.red-2-139-156.staticip.rima-tde.net
 [2.139.156.91]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 66C12100006;
 Tue,  8 Oct 2019 09:43:34 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Walter Schweizer <ws.kernel@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: kirkwood: synology: Fix rs5c372 RTC entry
In-Reply-To: <20190928105344.6788-1-ws.kernel@gmail.com>
References: <20190928105344.6788-1-ws.kernel@gmail.com>
Date: Tue, 08 Oct 2019 11:43:33 +0200
Message-ID: <87lftvtvwa.fsf@FE-laptop>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Walter Schweizer <ws.kernel@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Walter,

> In the rtc-rs5c372.c driver the compatible entry has been renamed
> from rs5c372 to rs5c372a. Most dts files have been adapted.
> This patch completes the change.
>
> Signed-off-by: Walter Schweizer <ws.kernel@gmail.com>

Applied on mvebu/dt

Thanks,

Gregory
> ---
>  arch/arm/boot/dts/kirkwood-synology.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/kirkwood-synology.dtsi b/arch/arm/boot/dts/kirkwood-synology.dtsi
> index c97ed29a0a0b..217bd374e52b 100644
> --- a/arch/arm/boot/dts/kirkwood-synology.dtsi
> +++ b/arch/arm/boot/dts/kirkwood-synology.dtsi
> @@ -244,7 +244,7 @@
>  
>  			rs5c372: rs5c372@32 {
>  				status = "disabled";
> -				compatible = "ricoh,rs5c372";
> +				compatible = "ricoh,rs5c372a";
>  				reg = <0x32>;
>  			};
>  
> -- 
> 2.20.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
