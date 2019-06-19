Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD854BA50
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 15:42:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=56BpvV8RlXsdIC8BGiJr6MBoAmGnn7fEBz+eaCYnUMw=; b=Gh0tLcWNIum6xB
	/aUZssbv8HvLPonmBTPbunvzbYUKI57IcQzPrZqAb9Bt7GvQWv8oJeX95D+ho5H4BAQo4IzSlc3GU
	jc2ayekicvIXrsK+z/TXp7LwjL25bcubWxzkbBBEbcosUPG2bC+OikqBV91ddC+HZgnfJcvxzPlIb
	HF9DRcHxbWGzsW5T7pq0ByUEAwfC1tZNZCxgll4uXLri+bCgvGIXU8owB1GupE9IWy+G9V9kHDQYT
	UUt+zWbeorgEVyoT8W5PeEUTyHCd7h/Pmp+3xaaALBQ4otd4aGdvrIVr36RfBgBuxwqituk+ndscg
	t7j2SuBRCIMSad2qUhSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdar1-00030A-Nz; Wed, 19 Jun 2019 13:42:23 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdao6-0007ha-3z
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 13:39:24 +0000
Received: by mail-lf1-x144.google.com with SMTP id p24so12167451lfo.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 06:39:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=AuIfbaSLaPX9zjVkmgnwUOYxn41lm+KdnHYBVyymZzU=;
 b=Fa6VfnLdhaNMIZ80dIPHtj8Chj7YzMZIx5/D+x0f5lK8tuGMUUERzBH/6db9sFZl2V
 k41RbfXj6Rjn87GDBUSpyHwPRv68IXMZ0Ulv/xaA/lP1RZ5BlgGbo6fg1RMtquOa/ARS
 bQMI98wkDdIQRLyvyS89og2/7FBn/hgSLAzEMVN6whKZYBOCa9sYt4QigY1qVJ6ncSKA
 jUNaoUOqtaNHKV5SKk//EUK1V4358OyWFCVNTcbND1+r+f0UqwrGe2VdRKSlfRvGLNaF
 A9OHmjgPNnd0UOtv3Y+YAYQ9suavozbDIg88HMkHp23ffOMETtteT/EJ19jizSwkeIeU
 NGMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AuIfbaSLaPX9zjVkmgnwUOYxn41lm+KdnHYBVyymZzU=;
 b=kprfLvq6+MGSxBQIW74elPnqldA0Twyak4ijqnA/UzwRBZyszFXRJngcRCnxFcrwMi
 2ohjo6hFBg9gJFV2Wy+WALDTKRfuy4h+3fViICwCMHV/fDBrEeklR5GGcIYgbJqmbqku
 9K+dQm5mhdT/MYvMWoLpDjlfHtbeXUQUgvJafJyFrqTjDo+Iuxe94tgubt2c+xXrBMaj
 ozY8/bPCb0aOVBItiMao67VpOPPWrSH5AwqMhudrZNdFsx3tSWupoFT3UyqgELy6JhVM
 D2nuDRIFjg4oIfHK/h7KFASUrH1rinO5uz6AR9hS0p1q4fHOXeIrhKDixmNQhctfJxqY
 g9XA==
X-Gm-Message-State: APjAAAUw1bcOXsmPmcaPVGPpGqtOuTHRejTbAJqZCU8OW49K0gNwo7e6
 pPPllekjFGY/Z88UINbJasFiaA==
X-Google-Smtp-Source: APXvYqwqrIaoANaEL0VgvaS5yn7RGPJRbXCWslyHj/r/v530AX6jeFffSQJq6/qJ3kSmS2iQzASGuQ==
X-Received: by 2002:ac2:46f9:: with SMTP id q25mr9931935lfo.181.1560951560524; 
 Wed, 19 Jun 2019 06:39:20 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id t21sm2699245lfl.17.2019.06.19.06.39.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 06:39:19 -0700 (PDT)
Date: Wed, 19 Jun 2019 06:27:14 -0700
From: Olof Johansson <olof@lixom.net>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [GIT PULL] ARM: dts: vexpress: updates for v5.3
Message-ID: <20190619132714.25g6o6t6cmtfzovn@localhost>
References: <20190613142228.GB7283@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613142228.GB7283@e107155-lin>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_063922_236161_02BD6E67 
X-CRM114-Status: GOOD (  15.22  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Liviu Dudau <liviu.dudau@arm.com>, ARM SoC Team <arm@kernel.org>,
 ALKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 03:22:28PM +0100, Sudeep Holla wrote:
> Hi ARM SoC Team,
> 
> Please pull !
> 
> Regards,
> Sudeep
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git tags/vexpress-updates-5.3
> 
> for you to fetch changes up to b8e65c1939ffa49384f2a2dca2057b5a1c8c365a:
> 
>   ARM: dts: vexpress: set the right partition type for NOR flash (2019-05-30 13:39:50 +0100)
> 
> ----------------------------------------------------------------
> ARMv7 Vexpress updates for v5.3
> 
> 1. Couple of updates switching to use new/updated bindings for CoreSight
>    dynamic funnel components and NOR flash partition type
> 2. Disable NOR flash on Vexpress TC2 platform as it conflicts with CPU
>    power management. This follows what we have on ARMv8 Juno platform
>    and is required after recent commit that enabled CFI NOR FLASH in
>    multi_v7 defconfig

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
