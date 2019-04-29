Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E002EDC71
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:01:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U/WjFehDb9uTsEtrQx0U4MCV5tFXl3pJcPhqEEZgii8=; b=TeUjqrSh9FrEtD
	BC9gJLUt37O3kuPO813nLBczlmTnKZa/BNkWGA/HxwKzqhU7Y5u/DEXlOtT99Sf+jt83htXRclTB2
	IsO55y18D8C41iZUTdboABeYkLVxx3J8Bh2/FU4gcPQFUzPVKUzawRhHx5K//EYDB3r1yaihj2/x7
	nB7yE9xTEFnqkS3MjP2mfKP8EmijRGiY39IcI/lUaK36N6dKXB/pMhD/dhbh01CpQVdj0VXSm1srg
	IJnbXNcew0l0n0SiQA9HVD7fOt9Hgto+5KkFFLl21BctE37CfNaCj3m+JfC+BfKkSYLCglt9l58bx
	7kC3gcIW/ulAGER4yWjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0Hq-0001p8-01; Mon, 29 Apr 2019 07:01:14 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0CV-00057g-E2
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:55:47 +0000
Received: by mail-lj1-x244.google.com with SMTP id q10so8292981ljc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=py8hkUxqZPGmkCrXgSCQGoPR08hjy7S7SlOKlbPMprM=;
 b=ednt8Ntk8iLArELXBCnzJw6CE8KPpdojTzKWjw8IwWkoBTpj+71cUh/DhNgrJyN3mk
 E/IlN7k7CEfTeSDIeltGnqVOq0yOvi3VBNqefXNChH3k5C/+xa3z/WcfdVWeSZ44Msu5
 j2jLpNBLrnStfjKInVgM62u+D8blBTOxJ0gSG4n4dKzRPYRSefOQ76pwRpxSAiEkiGLL
 Tu40l9XPC2/bDZsVvttXTavYA1YmuuKFjLO6gOA+saLVAFgx+nU8JZXYigdSvnPrKSCI
 OlkHRiae7Dbr0uHc1Za2xUabpBAL5OvFMeG+Pevuur21mgYT2lEywYyQHEn2CoKTbH4Q
 5HFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=py8hkUxqZPGmkCrXgSCQGoPR08hjy7S7SlOKlbPMprM=;
 b=H+QpVJQX42dAsFcVucjI860ilFzn4m2vACSmkX2vj7KmaPf7ai6o5SOHFj2MvBCch2
 mPWytQgUBe7G9bsbOnM5fjd+gkG9DoUdIOLd41Tj4zSRWTbA6SVwPPVsOpHXOvEy1SrC
 wjKovZq6M6YwGSujdukKRz0WHiHTGbwdYABttajdLObolSHwf6/ViqJeFBq1CjCThwhg
 ECxktWpYHRo/zlVJpWx2c59drDJO9e2DUGV3/9A57VtHSci1OjkksTicKEgt0uuO5fZl
 S6R1+F3Ck0i11ts/gkgGRwN21mNSyM66sG1qfQFNf3Kd2ylFgx4jyxnpbt0QL2NxXlNJ
 bt8w==
X-Gm-Message-State: APjAAAXgvJN4mugrHMi0xtlh6Knaks9K+NjBNBcuNbYlMRbuNkVZWAtP
 KK6njU64+uMYdgwvkT2bp1srYQ==
X-Google-Smtp-Source: APXvYqxIodgdoIzWgmxKbx3hYamN1zvMGQCZoqXazdEvirAMqC3WxI7sVGMloVhxh6GwNLDNbt63WQ==
X-Received: by 2002:a2e:8ec5:: with SMTP id e5mr31913293ljl.7.1556520941913;
 Sun, 28 Apr 2019 23:55:41 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id d24sm3104733lfj.30.2019.04.28.23.55.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:55:40 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:17:14 -0700
From: Olof Johansson <olof@lixom.net>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [GIT PULL] defconfig refresh for multi_v7_defconfig for v5.1
Message-ID: <20190429061714.3qcj72efkblqhjw3@localhost>
References: <pull-1555425463-418342@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <pull-1555425463-418342@atomide.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235544_020508_A3DAE83E 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Russell King <linux@armlinux.org.uk>, arm@kernel.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Simon Horman <horms+renesas@verge.net.au>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 16, 2019 at 09:13:37AM -0700, Tony Lindgren wrote:
> From: "Tony Lindgren" <tony@atomide.com>
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/multi-v7-defconfig-for-v5.2-signed
> 
> for you to fetch changes up to 35f8e2e29e74bb7197419d7cd80df5584e2a6311:
> 
>   ARM: multi_v7_defconfig: Update for moved options (2019-04-16 07:05:07 -0700)
> 
> ----------------------------------------------------------------
> Update multi_v7_defconfig for dropped and moved options
> 
> This series of two patches first updates multi_v7_defconfig for
> dropped options, and then updates it for moved options. We want to
> do this on regular basis to make it easier to patch multi_v7_defconfig
> without introducing errors and merge conflicts. We update the defconfig
> in two patches to make sure we're not accidentally losing any needed
> options.
> 
> After this, updating multi_v7_defconfig will become trivial, and most
> likely only a small follow-up patches are needed after the merge window
> to update it again for moved options.

Merged, thanks.



-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
