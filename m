Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B01174908
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 20:49:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FJAiNleBWXpPUQQdxuuFxHYy3olyL1EHAb/SHmCJhls=; b=Q8WSuzATC4rj89
	vj9P0UE2u5r5RxXLxSFPtfnNX7906Z7DMUE5wdxgVFd4eDNla7HXrJaFBYipdevcP5mMDwvHjnElG
	KJbQF/5lDpBEgzddTVtffJ0ycwwvx9wQ1DKYhLu+3G167pHaU3KeiZh3tnk1f+3t1gH7ozXT5g+ch
	m5QhoQRY0q8d88aFeKUeC5pU9D/sEY0jiklv4Zq4pD3PnlVdzibONkgUirT3QI1HYcvu41otnAQQG
	9lnxUXHn7ARI1Ifmkx4wFc0FcnLDKeVs4GzJAfmcp6X+122T64csfFmrF4kBmVBcaJWBGy8Zqlr60
	tEKfKT3J340jpTKiYbNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j887M-0008RE-Td; Sat, 29 Feb 2020 19:49:44 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j887G-0008Qq-Qt
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 19:49:40 +0000
Received: by mail-lj1-x243.google.com with SMTP id e18so7145314ljn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Feb 2020 11:49:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=o3JxuikDu+8uRzzDlcl8zOj9Z4SnxlDgkHqB9Vqhqbw=;
 b=P59vsc7uAayBzDAbeTThb+L2Agp/GSN+QRQBb4bgsfhcCBxzki9WUSO84mSb/v0Qsu
 ba3ceVetAG25CXXseGH8T0/JkXHvYXiiDLyBswqvY+8WzZSaBr63bsDy8bChEn/3M2v+
 7p248U0DrvZB8M4YaAZujQuPH9gFeJ+bUZ5q+w9ONzwZEAWM4buwWhpEOlwmgKdyPN8Y
 w5cMq5cVqKE9/U24pds72vpaayJSClRS1ypw7d+nn2wUq8BEmv5BZAtR3cr8PgrvHIlf
 iXjDJGmoxbS7NN8jA8lcWE0Dl/Pfh0bhQnb4qIy2vR2o1QbkKpu7uDgjvb8ec3kCR5Ou
 /lhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=o3JxuikDu+8uRzzDlcl8zOj9Z4SnxlDgkHqB9Vqhqbw=;
 b=BM/EKJ6UF4wlIYwbAaN7zFF0kqBIw/w/zPFtcYU0shm/r2frtWSjZgtksbDAomy6Nl
 cYk61ec8wGGnN1gWqzV1zuBBKGwuAQwydTm81JxroCnPdTjo0u/tXHckv/mvGq7nx2dh
 N/OX8fCgRRxR0/8xmVnRQuBa+uhQ7L7Gn7SLBzHHyNSoNhjvQNVtMRhZ5/skWQrAxbdC
 2FZ1E1tGq8BaiuF1iJu8buX1U0c7C3knt8rqos5ehRQcn+hK5w/XREElNlXMFgcio5jZ
 vTyHJtHRTYW+3804fHyHHAcTVJnlT0jgxhT3hkcttJgbb0h/rURxtEajhvlNqskft0SA
 dqKA==
X-Gm-Message-State: ANhLgQ1WcexyIVJ30idgoYR/BhJp34G3Koh3D+Ux1/i1SCI+a3JXGols
 e6CpbU8flmTeITHymzVYCPpGtA==
X-Google-Smtp-Source: ADFU+vsHaT+IT91ufMHzxEdJasefTlHMLyccMHUxwCntlAqlqQS6Tb+SX6hz/gDGExCDbxt1JdGYmw==
X-Received: by 2002:a2e:8651:: with SMTP id i17mr6886503ljj.121.1583005773714; 
 Sat, 29 Feb 2020 11:49:33 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id o142sm9075652lff.54.2020.02.29.11.49.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 29 Feb 2020 11:49:32 -0800 (PST)
Date: Sat, 29 Feb 2020 11:49:25 -0800
From: Olof Johansson <olof@lixom.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [GIT PULL 1/2] Broadcom defconfig fixes for 5.6
Message-ID: <20200229194925.ef4f2mz6eakgy5lj@localhost>
References: <20200228181144.15148-1-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228181144.15148-1-f.fainelli@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_114939_012468_D5A3C289 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, arnd@arndb.de, khilman@kernel.org,
 soc@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 10:11:43AM -0800, Florian Fainelli wrote:
> The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:
> 
>   Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)
> 
> are available in the Git repository at:
> 
>   https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.6/defconfig-fixes
> 
> for you to fetch changes up to 653c00f289371fc5162f1daf4c3742113812aa94:
> 
>   ARM: bcm2835_defconfig: Explicitly restore CONFIG_DEBUG_FS (2020-02-27 12:47:45 -0800)
> 
> ----------------------------------------------------------------
> This pull request contains Broadcom ARM-based SoCs defconfig file(s)
> fixes for v5.6, please pull the following:
> 
> - Stefan restores CONFIG_DEBUG_FS from the bcm2835_defconfig which was
>   accidentally removed

Hi,

It looks like you missed signing off on the commit when you applied it. Care to
respin?


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
