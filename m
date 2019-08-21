Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5610C973F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 09:52:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2BI0ctnmBoj65s4a18x/DJfqfNKAW6F8J2dqZh21Rnw=; b=jTI6T4JIFrzqpW
	AMoGgdBmH5w19YCyhjAKHks0rwN4zbkDv6SOu4fwEWo1pCZCQ4gKpIPspDdAaUJgWXGa4FQPJvt1L
	xm4z2rs2xgIqX+eGFMzIqfmkqMEcyqSWgh4NvytjP1hjzEmOWnWcwvTd6+jm6tnGaP3zv0mc4dBgh
	yJbd0f8VUUnaDJe5dlB4qUt3OgtNTyMrszCzdy5vq/RbGPjOK4EJQ6qu9IqeTSy2rbGjziLWDVyJW
	CmXzTc1J4Q1/1P4dFGBwhXWcQ53bXotkeAivHrmstTOM/CCvIDQcJtJ612IOXjkI4J8EQ3Ve7FjX2
	r5bxdkxCnXyTHq0ZGpZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0LPu-0002na-II; Wed, 21 Aug 2019 07:52:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0LPV-0002nC-Ul
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 07:52:03 +0000
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 495A5233A0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 07:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566373921;
 bh=hYDZnnUxNBQiUc/M9Pvh8xThL1YtQ/WPA7NOwsHlITE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=WUQ/LHgT2B5j4w+5OIgISRHWMlOId1Plh5PF+yyld4DLRCWhDGdBFy98S84g4rwkU
 yd1FaasgyAOh6kmA3WI1SyuCvztPaZPTJfibQx7K98zdhp0RfSj620yfPEWhiIYaDi
 sHiqASWsDCpPbx31l++/fEZLMX80+4OGOuXYuYNE=
Received: by mail-lf1-f49.google.com with SMTP id x3so1104302lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 00:52:01 -0700 (PDT)
X-Gm-Message-State: APjAAAV67JNCkBhnK2G5aEo0poCVNux5zQdJrUEm5lG+QXmCt/sUUlVw
 8IE8kdWrLCehJLQHfRQPstyrV7ouwbnEcEsXDFw=
X-Google-Smtp-Source: APXvYqwWaFdHuhOKUxPiJxtuqDQh+4v8//hbQwO0UA4d7WrCmayyCIO3i8cEO8kbHX7hahgrTKu9nn1yGPlDiwCKLi0=
X-Received: by 2002:a19:f512:: with SMTP id j18mr17081375lfb.159.1566373919501; 
 Wed, 21 Aug 2019 00:51:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190816163042.6604-1-krzk@kernel.org>
 <20190816163042.6604-2-krzk@kernel.org>
In-Reply-To: <20190816163042.6604-2-krzk@kernel.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 21 Aug 2019 09:51:48 +0200
X-Gmail-Original-Message-ID: <CAJKOXPf6qpGDNxKpUJ+Eby8NS+BhrypA4xy_m1s4GHFA55Q9PQ@mail.gmail.com>
Message-ID: <CAJKOXPf6qpGDNxKpUJ+Eby8NS+BhrypA4xy_m1s4GHFA55Q9PQ@mail.gmail.com>
Subject: Re: [GIT PULL 3/3] ARM: dts: exynos: DT for v5.4
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_005202_011194_D4C02B11 
X-CRM114-Status: GOOD (  13.84  )
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
>   https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-dt-5.4
>
> for you to fetch changes up to bfb77169306d5d560a8b62eebaf6d69d02e8d152:
>
>   ARM: dts: exynos: Add CAM power domain to Exynos5422/5800 (2019-08-12 19:02:59 +0200)
>
> ----------------------------------------------------------------
> Samsung DTS ARM changes for v5.4
>
> 1. Add AHCI to Exynos5250,
> 2. Add camera and GPU power domains to Exynos5422,
> 3. Minor cleanup.

Just a reminder - this one pull request is good to go. No changes needed.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
