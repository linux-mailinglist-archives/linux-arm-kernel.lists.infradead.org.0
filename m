Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3F257C58
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:43:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BN5z6DRrbq2LCTLiiLq+Y8ozUr8Pry+OKuER8fgoRGE=; b=sv2KbijlP4fkbr
	HVqkMOSUqrIOpc3uwLI+2qfcsEwliPy40ikcUDwUIVGb0SHtdSguJoaIhS3mEihuMKuLcJp+Sceuy
	iu/khmauQ2e1trgknqCsCfVBIXoTV8rhNg2i2Lr37/GQ+3cefcshbcf0Hf1c8LoPfI7rZBqCBntkj
	WcgAcRf1bXN6QFDRMwP9AO2xeu4jt78lKJbNsXVeq9Ht4ZTTKMUicWF70+QfJIgVpLB9tGboWwJlB
	T3wTKj2dl+cLsTNarwVJwt7j5kg/TyJ8IURldvuVytor0Bv2fo8JNLxkvADXlbJHZHSrRTJ6XzihI
	yxTempEnCUIaVpwKXhBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgO89-0006KS-F3; Thu, 27 Jun 2019 06:43:37 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO7y-0006KM-Nl
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 06:43:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QsUYJ0OixGvyGAqGjBHbqvL3FB6Bz7WIPxlK8Bq4u5w=; b=cNXlX+M28p1EhPKaxm2hTmcFM
 Yi9nGfcH0Vq8GWztXmluM31Nb4mqblsFTUuCIztK/PYrf+HERWkmdIzu4KrxcxBJTzrSpPvK1ORT6
 eLpdFeiPzrIY5nP2CRS55uE/OvQ3DTXjILWy5blKGjTuSP2XgM7lIgnsfO+yaH3VfcbvfNQtYkxXD
 7ZVC+1WMhXQT4dVXGJ6p/4jEIRjJPxEj78hl9YHAe/y28kxINnA3IaLvA5S/ofJLXP5PFi8yDcnKr
 fuQIVBc5g2d6SdlCZYBbwUrm9FmPq05rKMm33XrU5TpoukjFRBP16DKwuyaWhVBRutFdSTwkJxtYj
 +IEt/eSGg==;
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgKFR-0005vj-NZ
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 02:34:54 +0000
Received: by mail-lj1-x243.google.com with SMTP id m23so617623lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 19:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QsUYJ0OixGvyGAqGjBHbqvL3FB6Bz7WIPxlK8Bq4u5w=;
 b=NAFslq//TWZ2W+oopBubsqoa2BPr60n5Uj9J50JGDr4Kkr6fRmHugqxnjlVcxVPieI
 AauNsl1vc7rn6ds5sc8Rjp8jfNAuE53Aa9QZ7YVjueWHYAgNGWhZQYOTcW6FmjzmFHlj
 hLojqogqtp71w9KWWQIAIq60LAKW1O1/UMvxNPpXWkppOUqpe5P0wJBVW6fmPj2ARYXR
 ADBBcT42pEjlyebqv9Xk4Rn87VkzvJsHGrSfaqQH+AIDa7MamyA9CWR4OT2YdacSa3WN
 my1XzRBDNQMx/VW7jTJW7DVouQIYBhALjGUix56/lH8pQEcT04DPF9qQuP+fuTyoi0Ph
 DAkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QsUYJ0OixGvyGAqGjBHbqvL3FB6Bz7WIPxlK8Bq4u5w=;
 b=cd4yjGjyxfKVHwPcUT0IgGHlqqYMwL1KoNslzOQnKwvJYfGN5ov3BjokZWtjBwsQLs
 bZYMvBugEiO9N9WmbzLtXKxC6XsPxnLkWfC6KmcfkC1rCCgLsGFuz5DiqERR3FPHCiMS
 zS6krBfUhuL6JJA/BcByGH0N87UIHfkiU8pktKwuOPc37lgWAa+4MbtC7wuiQELwuo9D
 patK8yfAY51PHuTddTot48g3nHUNja3PpDSgqLlZ/66Ai28RsktQFYf0H+/A2E896JBz
 sMaiRDjden2ys4jLrz8z9JQGMJlUt0Hg/O1VVSrBzxg2CX6pMVkEL7Deo6wm+hPUc55G
 iSIQ==
X-Gm-Message-State: APjAAAV8QsVrF2+Nm1CGFS2L49m7HMUowFijQ2szvqLpKowiSbjBFHtr
 XTYAn4cTusT+4z1KPOvQV3Wlig==
X-Google-Smtp-Source: APXvYqyh/a8j2yzQL0dk+k7+Q3KUqRAVUal00aYaGppig+X9K+BfCpTOWR8X2romBAWvRn/+S0Bzbg==
X-Received: by 2002:a2e:7619:: with SMTP id r25mr841109ljc.199.1561602830482; 
 Wed, 26 Jun 2019 19:33:50 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id v15sm107799lfd.53.2019.06.26.19.33.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 Jun 2019 19:33:49 -0700 (PDT)
Date: Wed, 26 Jun 2019 19:22:02 -0700
From: Olof Johansson <olof@lixom.net>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [GIT PULL] ARM: dts: uniphier: UniPhier DT updates for v5.3
Message-ID: <20190627022202.hyukmqxmxjxw3bu6@localhost>
References: <CAK7LNASNhp2o9kboRMJ66UJy5Z+T28K6CHO_=c02MaGoFyy-5Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNASNhp2o9kboRMJ66UJy5Z+T28K6CHO_=c02MaGoFyy-5Q@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 masahiroy@kernel.org, arm-soc <arm@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 12:19:17AM +0900, Masahiro Yamada wrote:
> Hi Arnd, Olof,
> 
> Please pull UniPhier DT updates (32bit) for the v5.3 MW.
> 
> Thanks.
> 
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-uniphier.git
> tags/uniphier-dt-v5.3
> 
> for you to fetch changes up to bc8841f0c1e6945fd7fde6faad3300d1b08abd86:
> 
>   ARM: dts: uniphier: update to new Denali NAND binding (2019-06-26
> 00:06:50 +0900)
> 
> ----------------------------------------------------------------
> UniPhier ARM SoC DT updates for v5.3
> 
> - Migrate to the new binding for the Denali NAND controller

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
