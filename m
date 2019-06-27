Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9848257B57
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 07:26:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nb0JHhcMDTlo3a1tFGsl7zKUFUZzdwS3gmZqL/k5hi8=; b=GB5NuL0bH56n0U
	QnKhW9jy3ysnl8UqMjSc5oro68M43SfJ1XLDZrenVBEwCUGbrx/Fob0EwsCHfpRUoH6rc7RwlhF8Q
	ImiuJ55ChHDkxE0IRpys/+gCzKBWExEyuryupaPW3q8c/X7t/8jHMxELs7LKBf+ZmOi7EO/PdETjl
	fCEVzoUAiw7DqafKeTTUjpPxS7Ii5H1m/7L4V3IuFGXYWob1w5ZnUF7PxmA7FCAjaotL3M69OTtE3
	xKb1L7PmiVwAoSAf78Wzervv+EQUu7CdxbCjM1KSGsFE8VnGBhHvt/bLl3rN6Qn0YCAlntrIBvBYO
	XTe68MmPVW9ehRrNJMnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgMvl-0006c3-IJ; Thu, 27 Jun 2019 05:26:45 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMpY-0007bR-Qe
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 05:20:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q52VmEfyzODDUjexrWxHmYGjGvFn+xuEHsx+LScKSTg=; b=QgqjMZyA1ih5lfLOuyagSMBeV
 i1xduF2PPifRx7fDdH7dEO0kOXUU0mfACn776sH0Eqpi57DfolddOKDFBU+qTncsOmU383HUlvOkG
 oeg2pNCnFK53V/jB0YmOynAsRyzC0mLI8Bct1J9Mg1RG6btk3FcnAPg6vydrLTlAtt48lGR6/ELVZ
 7cq4QojBAKlKbb59IvHpaa/88gg5Kk2PCY+l1zgzmpJUIZaM/eH9PjhlQS9MDPvFE2ynr5EUu6miv
 S9D1yisPxtk2fw6t9tIvIy2wThJ4KjV01MpkxdQcV/pTsj6071S4jztWv+Il5UJDa8JYL1D5ZSdb8
 pvobEj8mg==;
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgKFc-0003bf-90
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 02:35:06 +0000
Received: by mail-lj1-x241.google.com with SMTP id k18so619220ljc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 19:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Q52VmEfyzODDUjexrWxHmYGjGvFn+xuEHsx+LScKSTg=;
 b=bVK5unloG/mSghdXaDDGNyMd521dXDj5UMzHvjjJjLf/fGTyHkQ6Me7+chzBNGypQG
 ZWVL2Ht1gXRiciWwYohLBjDpSGIzLL7d5C59BfjKNcldb7/ENjzQMF0HIQmMbTUEjdOA
 kmrviGPuSb5hYjextJKmqZAPKs1oP78bkkJYdHnk9wJOSAJkY4ayFh4lI4SbGm6DOJ6o
 biPJZ7aUZFbsloDbPJTwSAkD6ZrJ7kpseRCSjRK1Z4tDkFueMLNj7c0YAQhYzXrw8jTU
 7nvUw/gztvfeALt7C9fwze3nUy85yQrCmTHRZY7+kMo3GKyoom+xADxtrSehx4Jaavne
 ynZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Q52VmEfyzODDUjexrWxHmYGjGvFn+xuEHsx+LScKSTg=;
 b=ocKV+FpGggcme/ZaaIIJQmfS86t0eGf+kCubIprWJ1EFL2XFBLLAdL5/Lvb9+i1vfK
 jhuoQgWRDtksI7QafCtjlAW3P9IwJ9KkOvAxGcf+oqvPcsLtwfIfy+6T2CsdQa285mVC
 kFtpiJZ2Z6z0FNiLnrhCUljiZS2I/J4twIjcd7u1uYJATJlF7R0G4yHdYJU+yVIaXNxr
 LxxmjmLykFUCWiVPC+sgLfpsWdbNJW5B8W17+4j1otdDm66WIvM37sT03sJmar5yo7dA
 paVCXsG9yC/8BB+YMkMq/r7NQaXm3rWceTUQx7E/kJ5NdK0qpDoetRGX5qYYkWDCZxwv
 PVUw==
X-Gm-Message-State: APjAAAU0W6ZqSKkXfxcMmRihjo9lZD4ctlZX/pnj8aA4JRR/Rx+2SqM2
 2tOtb0yzbu5PulGbueHCemoNaJGtCFT8fA==
X-Google-Smtp-Source: APXvYqyj92gPoEoAWjZ93sFwLUMCNj7Ql/zysxuhQK9eStj8fDbV1Uye+s1koXqor7RwDwo9j6dfVQ==
X-Received: by 2002:a2e:5c09:: with SMTP id q9mr898785ljb.120.1561602838511;
 Wed, 26 Jun 2019 19:33:58 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id v15sm107830lfd.53.2019.06.26.19.33.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 Jun 2019 19:33:57 -0700 (PDT)
Date: Wed, 26 Jun 2019 19:27:48 -0700
From: Olof Johansson <olof@lixom.net>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [GIT PULL 1/4] ARM: defconfig: Samsung/Exynos for v5.3
Message-ID: <20190627022748.327vqldfpfykpww5@localhost>
References: <20190625193451.7696-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625193451.7696-1-krzk@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_033504_357211_EE411AE4 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, arm@kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 09:34:48PM +0200, Krzysztof Kozlowski wrote:
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-defconfig-5.3
> 
> for you to fetch changes up to dd50a69b5697532666023766688c6ea642e5a443:
> 
>   ARM: exynos_defconfig: Enable Panfrost and Lima drivers (2019-06-19 19:23:35 +0200)
> 
> ----------------------------------------------------------------
> Samsung defconfig changes for v5.3
> 
> 1. Trim several configs with savedefconfig.
> 2. Enable Lima and Panfrost drivers for Mali GPU.
> 
> ----------------------------------------------------------------
> Krzysztof Kozlowski (4):
>       ARM: exynos_defconfig: Trim and reorganize with savedefconfig
>       ARM: defconfig: samsung: Cleanup with savedefconfig
>       ARM: multi_v7_defconfig: Enable Panfrost and Lima drivers
>       ARM: exynos_defconfig: Enable Panfrost and Lima drivers


Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
