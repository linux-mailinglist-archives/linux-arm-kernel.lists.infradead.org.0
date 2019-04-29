Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4257FDC78
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:02:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wXKF5m3RXisW45S1udSrmLU02GVez0vXFzk1e38Vess=; b=bhBsHEqCmzdcex
	WUGmRPi2Voz/AHQBa3OVPrK/bQ49iN+4DPNb3GPRi7AO1TcrB91sw7Ksh4knOm4/ufs2CJDygCV0R
	ASzHDhGyE3KySaGaNvo5UaGhd/XbTTUqOF6XLo6wHbPBUUHvUmPtzVltAVAiz094fxSyBLGENGlxL
	Kjdsl3XgsAyqINZHUUhjZ3xqYNKZ+VHspY8McIrGu4WfI8QsBArSvD4Yb8soTRfgBWoPTP26Nq6WP
	2jn96fbYESEU4Ska6sIr/Vf2Mqu0GsVhfD1Piiey3QfaFPLcV5o+4V1HHv304JRQHfz1s1DYqEPd7
	vLZVOxxE0vYMLGGlDnHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0IT-0002hs-Mr; Mon, 29 Apr 2019 07:01:53 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0Cp-0005br-VL
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:56:17 +0000
Received: by mail-lj1-x241.google.com with SMTP id e18so2396691lja.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:56:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zHkG+SMOmuYh0x55+NYcKvwxOBL0m20KOTamUzT9OqQ=;
 b=ynD7xMn5g0D6hUEO2JO0mXGyxHe2akZfDjVXW1UAx+KmfJDVhJPd4MvNpLZXgO/432
 /39BoHrX9BSTrVZ/Ud9F+mLiKQKP9az+xZS42+4xNZBZjc9YNbF4VwcSTd+yKwb9fj71
 OeWcJuD8WsSkD0UVRod2ZK0wBJXZBbCPu3OhkuUjNuUF6CtViSqgkReg5XVzEOfjQMCx
 ou2XYkk9wZ1aL59jNYMSwOJNPZBiZTR+nZM8H3VqyD8ZjV/cQBkjPks00opB5q9PbVu8
 klRYd2Sbz0w6L/UBB2KdMwgAMaXqeAUzvqu+GwgTC4qeKlw6HWtk51+tXUnAZFomCxDW
 +smw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zHkG+SMOmuYh0x55+NYcKvwxOBL0m20KOTamUzT9OqQ=;
 b=kqiwohGWB+zP21shjXFNUshizZnLgIMh2NcwJ24FmhZcFJOpUSM55dRBoC1anHR+Cl
 bbf5tNbBUTiPB0tkashZgnbF7giOPow/KCTO1qG392UTEjGFFZNIAQV8wWxHLGXWf7BZ
 ItV8X32AwbaP+rTwRM1pJy5+rtVhDOJj7Abz+iVVibumZ0fBy5RuHL/2827DRORYVhVZ
 t2chBabnHfU7KuC60mn5c0gOjjpD7AF0QhrVRixK/+PGX6J+l7OJQy5A8UI3Kun+ZBqj
 HBDZlXWayZLvEs6oXZRblJl/qB8a2ZBZ2DMIuHPX+JULG0QLfGYYRRVPitlWKAWXZegN
 vF7A==
X-Gm-Message-State: APjAAAUK/abaayJQcMImYlsnzRSm4fHgJPnRd52NgPS/BynEELJrzty/
 wWwyxqJ7DLMewFHPDo9UIML4sQ==
X-Google-Smtp-Source: APXvYqyOKPsWvGgxf79WkhSaHaQ3yvTiRInik4xrurTiZ4qZ1BgMv3rS0p9HnghDdt8izbS3Y+xhSA==
X-Received: by 2002:a2e:9546:: with SMTP id t6mr5441747ljh.51.1556520962083;
 Sun, 28 Apr 2019 23:56:02 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id j27sm7216436lfk.97.2019.04.28.23.56.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:56:00 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:34:59 -0700
From: Olof Johansson <olof@lixom.net>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [GIT PULL 3/9] firmware: tegra: Changes for v5.2-rc1
Message-ID: <20190429063459.jeeugziuwejjp5kt@localhost>
References: <20190418150721.8828-1-thierry.reding@gmail.com>
 <20190418150721.8828-3-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190418150721.8828-3-thierry.reding@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235604_286761_CDB92469 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-tegra@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 18, 2019 at 05:07:14PM +0200, Thierry Reding wrote:
> Hi ARM SoC maintainers,
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.2-firmware
> 
> for you to fetch changes up to 4cb5d9eca143f7fbf8cc457be19a91914f978a00:
> 
>   firmware: Move Trusted Foundations support (2019-04-17 16:43:03 +0200)
> 
> Thanks,
> Thierry
> 
> ----------------------------------------------------------------
> firmware: tegra: Changes for v5.2-rc1
> 
> This set of changes includes improvements for Trusted Foundations and
> also moves the source files for this support into the standard location
> under drivers/firmware.
> 
> ----------------------------------------------------------------
> Dmitry Osipenko (7):
>       ARM: trusted_foundations: Support L2 cache maintenance
>       ARM: trusted_foundations: Make prepare_idle call to take mode argument
>       ARM: trusted_foundations: Provide information about whether firmware is registered
>       ARM: tegra: Set up L2 cache using Trusted Foundations firmware
>       ARM: tegra: Don't apply CPU erratas in insecure mode
>       ARM: tegra: Always boot CPU in ARM-mode
>       ARM: tegra: Add firmware calls required for suspend-resume on Tegra30
> 
> Thierry Reding (2):
>       ARM: tegra: Sort dependencies alphabetically
>       firmware: Move Trusted Foundations support

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
