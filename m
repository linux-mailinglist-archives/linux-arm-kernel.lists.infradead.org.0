Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D43FA688E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 14:26:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fm8pIpDDxAR9khuwXDNaSIU84tba/V+S7BwliyBlsAg=; b=ZdxtNqUf2OtCeQ
	AxviWwJMgdrVeQ9SBtuFFxfnLzG9yhkEOx5nc0NpVq9eXu497dgVS92lVmA8uARLsc1hAqFiyApSH
	M8krNYlobo1KXGul4ClafBwTuRqkKNptWJGlGhGTV5OpF0iXOHlK/3VjnZTFA8rAkr0Kmx4bvbSnm
	Tv8yWu6GDkSBW1G0Md4SQ0svb4GeQuKbuQzCNOZm9aH9KeZLQicw8fQcHKJpfvqo287iLuQgWhavS
	MqtXzy2lFC7RgqrCWrrBSMNc9pO8uNGTzH4PbMa0kG5BW2b9/KFkux8km5KH4q+/puDWiHjBYhG+5
	zVilAIWw4inxuEIhhtgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i57sp-0008FI-1P; Tue, 03 Sep 2019 12:26:03 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i57sb-0008Eb-7T
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 12:25:50 +0000
Received: by mail-qk1-f195.google.com with SMTP id f13so15605412qkm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 05:25:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6KBFF4Iy8Th4Ylok9u/qejGGHxj1LgnDO8O5WoYbCUo=;
 b=hV6+k/cIb+EBnFpiTsZUgSKUct9TiNA+5CIjD3y8FYHeO7QmZ383wkvZeE58a9Uq5j
 51HmnPfEuG1Bd+541EnZMpdOo1y2IYBLP91UIbsWgK0pasZqGdp6pA04Lfdpiimw6V0p
 n0cEM/ylxbEWYEY+/HtBKbYDVYciGEq+bjJhTXdgkkYPMWNdYZAZzXSNDpxKkwDLARJY
 y/iiRqRRZputt3YW0fAvgJJJ5KlC1o9rnPlki9RxyY3rgwdFKkk007xtE9cXnAsb2x//
 FLEGYoYuJT6PVzdTO8ZyMckXsuyirj47gUkKA8/XKscPHPIzLhq7Mfw/dZQpMb/2EC/Z
 KOsQ==
X-Gm-Message-State: APjAAAUjCN5/UPgCZNh1vF01t9Z4LLKo6ndWjhARgUwik9CxTjtxakyb
 tMiS9rcjm8O7Ff7i9alHBSZQe/c4+GCyxDftH10=
X-Google-Smtp-Source: APXvYqzd+j8rv3cxa9/OJtU5gqFEsQw7tXrrvUWDVdam82IgLLb4nIRI5uS8BLLJxxm5VAQsB5KmzqPxhxAeTWdcSLA=
X-Received: by 2002:a37:4051:: with SMTP id n78mr32187790qka.138.1567513545488; 
 Tue, 03 Sep 2019 05:25:45 -0700 (PDT)
MIME-Version: 1.0
References: <pull-1567016893-318461@atomide.com>
In-Reply-To: <pull-1567016893-318461@atomide.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 14:25:29 +0200
Message-ID: <CAK8P3a2ox-G7238GZmJjxEb1Q-yc9RvQ541xwSKpdqaF+Y_NmQ@mail.gmail.com>
Subject: Re: [GIT PULL 1/4] soc changes for omap variants for v5.4
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_052549_271666_F0ED355E 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-omap <linux-omap@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 8:35 PM Tony Lindgren <tony@atomide.com> wrote:
>
> From: "Tony Lindgren" <tony@atomide.com>
>
> The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:
>
>   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.4/soc-signed
>
> for you to fetch changes up to 50f57ef83d836d727902a6a7e70cca61b0d02655:
>
>   ARM: OMAP2+: Delete an unnecessary kfree() call in omap_hsmmc_pdata_init() (2019-08-26 08:59:48 -0700)
>
> ----------------------------------------------------------------
> SoC changes for omap variants for v5.4
>
> The first change moves platform-specific asm-offsets.h to arch/arm/mach-omap2
> to fix iessu with parallel build with CONFIG_IKHEADERS, and the second change
> removes a useless kfree.
>
> Note that the first change causes a trivial merge conflict with the iommu
> changes for arch/arm/mach-omap2/Makefile.

Pulled into arm/soc, thanks!

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
