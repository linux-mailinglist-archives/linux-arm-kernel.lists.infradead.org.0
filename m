Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D9C54E76
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:11:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vOS/HlXaIgHdUts08qDRMtEeByDVcaOeHOnsgNtO7eg=; b=fq22prjgkt+KCp
	3+MSWeBiKBRKHJps7NDOV8LSq24F1Riq1wLAd2E51EBlv6v4A3EPpYY6LNCYbAchdLiY/3f9jCUQB
	8LJftIvk9Dam7CZNrGqWM2z9cQbkyMguU4hVSsB0blA2hNnIxjtmSnVh6M9CFMMR//HvTvUVq5wn0
	GzwpJsYFadcPg27IqXHTrWbt6NcpLadt+CIv5LTd/X2XuOC/xjqzAMR4A4xz86pcVOxY63+kox9fW
	O5DbkmajaMptat8yE8tapM1V/+bUAr3JuGDrs/Kb8VP7gbD397OCnBmt5AJT5Uq7gk1AHZb6Axr7L
	Bs+QKx2xgX7CrUHvhElw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkIE-0005rd-E5; Tue, 25 Jun 2019 12:11:22 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkBp-0000AX-RM
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:04:47 +0000
Received: by mail-lf1-x144.google.com with SMTP id x144so4989564lfa.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=OOMmnjXMtUUcJ1K86PkM0UkFr/veY1pyUaQB6WpE2kw=;
 b=V6B8HIBWiFWrVANnChpwGkajzPj3DD4PqoQetgF6WTHfLxMn/xfTC6cI4gRj/d+oTU
 AQaYX4EaUQM0kWcIwln0WkV+7Fmxm/y1BtvzZ4D/QVYPs5WDSQxTnlmlpkvaHo3KaA3U
 nRHULslUz2AnBj5DnPw0R/jHa6wnmUyPKaPQ9JiXfRGLjFUWK4fbnaRdti7Fy55qPbWQ
 eLJIG6ZMLcN4Pmo+ePtAuTJvAH1HADfRud5OAbs4U/H4lN7Y97tSXlcFs+ivgwuJ1MPd
 QhkuA7CyStlbLvxv06NQ0sjLphQKicdGXAvVTfLmfXFXptSAD2BAiVVdzpQIyHepPkRk
 WIXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OOMmnjXMtUUcJ1K86PkM0UkFr/veY1pyUaQB6WpE2kw=;
 b=D2HDBSDYLxU5fA+OjPVZEy79A2jxrfcoWINNPUiv5zRVkjEdiYXkpvBm+4FF7hUpWn
 VW1+7RzhNj20yhFOg9HqY7crLN7nYsrc5qFBh8nHyQuTjwoZJNPu+pHDqqnUUrR6NZfH
 bwF+yuprlkApm9TVeym22twFlGquSQiqbW9AzU30Uf8goq+V9gNHueWI1OK3I/RjZLPX
 L4xFG5sZc8ySxJIAF/hFVV5RHjCGe1NguGQBOUxK7351XHwr7rdZg/2bMKFDj/29KQG4
 tteH8xUz9qejdCXk1x48mPoni0P5Coc/LSvCqvjOSBMqMuR28JYFe4hUKsc/6OJmOWQE
 Q8Ow==
X-Gm-Message-State: APjAAAXH2v4ZL5kKjgf83IDXy+h8m0HfHZhFLaS0VKWCc3+S7C7R+ueJ
 KyEad4hjBI3AauvRuygTw2fUodo3x3DlLQ==
X-Google-Smtp-Source: APXvYqzj+eCS99A2L1u2EIO9WTtriRZnS1Vux0rGEsafHeEXWArir9ECaI6PBWBM2MdbI9x6RCwanw==
X-Received: by 2002:ac2:44c5:: with SMTP id d5mr29919727lfm.134.1561464284402; 
 Tue, 25 Jun 2019 05:04:44 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id k8sm2240920lja.24.2019.06.25.05.04.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:04:43 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:41:19 -0700
From: Olof Johansson <olof@lixom.net>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [GIT PULL] Allwinner Device Tree Changes for 5.3
Message-ID: <20190625114119.tgxsiwstd3pfm64i@localhost>
References: <459c0bad-c02e-40f0-9e56-1dcdad9c6591.lettre@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <459c0bad-c02e-40f0-9e56-1dcdad9c6591.lettre@localhost>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050446_092680_707F332A 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chen-Yu Tsai <wens@csie.org>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 10:08:08AM +0200, Maxime Ripard wrote:
> Hi,
> 
> Please pull the following changes for the next release.
> 
> Thanks!
> Maxime
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-dt-for-5.3-201906210807

You know, there's a timestamp in the tag too, no need to encode it in the name.

> 
> for you to fetch changes up to 2269f0c15191af317d64115176a01bf303532af3:
> 
>   dt-bindings: pwm: Convert Allwinner PWM to a schema (2019-06-21 09:59:10 +0200)
> 
> ----------------------------------------------------------------
> Our usual bunch of patches:
>   - Some work on the BPi M2-Berry to support various devices
>   - Convert some bindings to a schema, and a lot of fixes reported by
>     the schemas we introduced.
>   - A few other fixes here and there

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
