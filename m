Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6D7973F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 09:53:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/rEbkz/7vLBYReG+YLlBLGoUHzW9NfaYbkyzCca7+M=; b=qISd4u1FOjaSO2
	tooFbOv+MEEUBEPFGJvjZfgM2ZU8PAohhe4C/lDz0rziq+wpZ7AFb4YWGrNhkQDN9fhGmbkOasCwU
	epufZOSrRmGL82mxO2oboCNenmxsRlBp1dR1MGXbYyCaaLAEAuZWL9IxBxOFdrbQ8AVJNwhiJRvT8
	jo6xYMrEFQ5bXilWtRLBXuMqTTWNO3vtMdy50RVF2IEmXazfrtxxRbJEGAfG4LS0fgq5nwn1MKe7B
	ag8mnKiAJPefguxCJ0u22fykCbKMw7B2Wnkd8Z1kU9NOP8OKWS4vcwsnDWxhiC6hvbKrfRnGr8jVt
	6yvZ2i2xrdj8/sD5P7iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0LQb-00032h-HD; Wed, 21 Aug 2019 07:53:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0LQ9-00032K-Dg
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 07:52:42 +0000
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BC69D2332A
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 07:52:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566373961;
 bh=5nteA5+zrmgipnO474yy0n0FecWH31sdGUTtNAhVCSk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=wRvhpXgKSWITJklv09moe+PnqURa1UxxUJsPW/u0u3+nvywwPXpKcmNEDe9jKS2ro
 j1GHKu4zAcdFlYl0V55fHxrVytszz/tttZ4MvNOkLi49m4UX1l7mL7HFAcZTJDVryz
 4eOsmgr1/VUr5co1rhk8I9tpjNEtaUGN69Wk0UuI=
Received: by mail-lf1-f53.google.com with SMTP id x3so1081914lfn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 00:52:40 -0700 (PDT)
X-Gm-Message-State: APjAAAVHb9v03GpzAhJA+wrGlgG2vf71kCZF85gVI1sOeWzyQ/0ub4a2
 co81V0BY+C5Ca0f58K/tccinWoPNnfANc8heNV4=
X-Google-Smtp-Source: APXvYqyAP1YOkm4D4f2V9WUC7znA2zZ/37GCGmDoDp9GcPyr7juX3RDYpPhUNtI6GfUQhYUiYVaD26GcNbEHnr5PNB4=
X-Received: by 2002:a19:c20b:: with SMTP id l11mr17713344lfc.106.1566373958980; 
 Wed, 21 Aug 2019 00:52:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190816163042.6604-1-krzk@kernel.org>
 <20190816163042.6604-3-krzk@kernel.org>
In-Reply-To: <20190816163042.6604-3-krzk@kernel.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 21 Aug 2019 09:52:27 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfdvzvomUfmxhGf0qjEQH3K8TADCneo9SM6m50k4b=Gyw@mail.gmail.com>
Message-ID: <CAJKOXPfdvzvomUfmxhGf0qjEQH3K8TADCneo9SM6m50k4b=Gyw@mail.gmail.com>
Subject: Re: [GIT PULL 2/3] ARM: samsung: mach for v5.4
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_005241_512338_5980FBB6 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 16 Aug 2019 at 18:30, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:
>
>   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)
>
> are available in the Git repository at:
>
>   https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-soc-5.4
>
> for you to fetch changes up to 1fa70c7f49132513fb0da4afa7643395eedc7d35:
>
>   ARM: exynos: Enable exynos-chipid driver (2019-08-15 20:29:58 +0200)
>
> ----------------------------------------------------------------
> Samsung mach/soc changes for v5.4
>
> 1. Minor fixup in plat code (S3C platforms),
> 2. Enable exynos-chipid driver to provide SoC related information.
>
> ----------------------------------------------------------------
> Linus Walleij (1):
>       ARM: samsung: Include GPIO driver header
>
> Pankaj Dubey (1):
>       ARM: exynos: Enable exynos-chipid driver

This last patch should be dropped so I will rework the pull request
and send later v2. Please ignore it for now.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
