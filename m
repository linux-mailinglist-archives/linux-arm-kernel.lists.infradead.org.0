Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE0A4BA38
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 15:40:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zY63NeUHPTueLjnABLzp9uaXkre4G1FAAhGb9u9psr8=; b=qpagtv2sD2kEV8
	kLjrq7Uxoig8DNwkbRe2jM6V6VHRMKMh1oXMYFSumoU4aTrSn5O/SB8AyDH7iRYyTkYdJlDcJ6lyP
	ivqgzTii5vpIRDorhkounUayS+aQL6TP34JxpgXndtqj1oem0D84cR4BjzEYtHiDVvmrwq+cjf8Or
	8YZytOgS3C3D24kBhT7eqBE0GgPQzHvD8/gmF2luPvXaxbW3OWjOR6fsgrMZUuoJ/PliJvG0J7Xxg
	CR//JaloTTt34uXfjj1ftQMIQmAcYBMbm0cdXAB+wnTCU4CwmLN+zr61YQpakAcvPf8PrTj570ZtU
	j44RL1jArTNcqYeqWZNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdapK-0001J8-K8; Wed, 19 Jun 2019 13:40:38 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdanu-0007WV-BB
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 13:39:11 +0000
Received: by mail-lj1-x242.google.com with SMTP id i21so3318369ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 06:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0dUQ9/3b9odyRxgQJsR3xoQ/n0Lj8RP2bd1/DWJVMZA=;
 b=M3qN68zee2KuMOiOFa8Tw5tFjSazr85U5Kfp2bLT7BximL6K0SeMvvzN2g3E2UMrS/
 fAzgrNwWe9klaWSyFKn6wrEy9Dlp2os69OK16pvTgD4OLX4fpbAihGh/qaMAT2lbdsU3
 KQEF3Xrg7B1w61oem45lR9sqD7yX4EvzuxOjkTt/O0j4MYF3ZTcnrdS60gP6hBowUPmQ
 kEkPKBNWnrM6zTrncWOONxfX2osizWj9m+owKSkil94+c8Pootwyq8fHPqTStA2Hdkx3
 Vp3z0J2LxJgnjtrkMMw1Z+wfHBDJqJpSi+71SETlcbvRXJb8WFTFU1t4mX1Q5YHSh3oe
 MoVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0dUQ9/3b9odyRxgQJsR3xoQ/n0Lj8RP2bd1/DWJVMZA=;
 b=kFD3o7eXTzIgkRR2Lq4oNN4f2U5UiKynsUCTtFCm2zIDUgWhTyHK/Uuwfi+TUdjgUv
 n58w5EAg76N/U69/7nqfQQAQ9kaYPiea8CI/m2lpDWJjF6XqFpNvd4e6MxHwQU49Oipy
 GJh/kNnI7CRZpDw+m/qlSSPqORLvh5vu0Yo5BoaVH+S4VkTGQcdxbndynFclP0bPOnN5
 RuzRqBHq3pItjxF5K5RncgdKo6IKKInbfn8ABR3s3Uml7WJn0H17T44n0vf9Jp+cU3FC
 Ko7R0kJp5WmQTuhUlP66uLQzRQfn6rkG2d8irMHwLGA8O2j5EcrE6vQ/5CebKlIPAd52
 KeVA==
X-Gm-Message-State: APjAAAU9i4YcbCU5l2D1ClIW4kyyPLSUR0UU8L/nx9YQSxmkwjSe/FdU
 y7mrTNTW40YyszQAGPvJVnxW9A==
X-Google-Smtp-Source: APXvYqwJdtlC9irOpgc15X7VHEcOnrUzaLBzuPDbbCD7Eqs5jXcnDobd0BFMfvoZBXVnoOMTthgQZQ==
X-Received: by 2002:a2e:5d1:: with SMTP id 200mr48306920ljf.10.1560951548935; 
 Wed, 19 Jun 2019 06:39:08 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id t23sm2361417ljd.98.2019.06.19.06.39.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 06:39:07 -0700 (PDT)
Date: Wed, 19 Jun 2019 06:22:57 -0700
From: Olof Johansson <olof@lixom.net>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [GIT PULL 2/3] Rockchip dts64 updates for 5.3 round 1
Message-ID: <20190619132257.shbh5z6yn44ludsb@localhost>
References: <3004130.oi6ZuZy1Zf@phil>
 <12386546.HbqOaVNIXM@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <12386546.HbqOaVNIXM@phil>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_063910_436608_D9C0ECB9 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 10:54:49AM +0200, Heiko Stuebner wrote:
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.3-rockchip-dts64-1
> 
> for you to fetch changes up to 45fa7c3838715b34ccea661e4b7b261d91668b17:
> 
>   arm64: dts: rockchip: add WiFi+BT support on ROCK Pi4 board (2019-06-04 15:38:54 +0200)
> 
> ----------------------------------------------------------------
> PCIe for rockpro64, wifi+bt for Rock-PI4, spi for Rock960 family
> and a fix for the yet unused isp-iommus.
> 
> ----------------------------------------------------------------
> Akash Gajjar (1):
>       arm64: dts: rockchip: add WiFi+BT support on ROCK Pi4 board
> 
> Helen Koike (1):
>       arm64: dts: rockchip: fix isp iommu clocks and power domain
> 
> Katsuhiro Suzuki (1):
>       arm64: dts: rockchip: add PCIe nodes on rk3399-rockpro64
> 
> Manivannan Sadhasivam (2):
>       arm64: dts: rockchip: Enable SPI0 and SPI4 on Rock960
>       arm64: dts: rockchip: Enable SPI1 on Ficus

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
