Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A1C97A6A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 15:11:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W485G7ZOVoRsQd6Kh7e7ZiA3RgnNschncVzTwl11rU4=; b=S8ZfUO/0Yk9PyL
	RM+TbBP3I1YHt8SzCrBukVFszCnDa9N17Oec5VYTKPQaj1VRy3jJ3E/g6p1R4e/cnqjFxeYq+FbO8
	ynTb3eXVVdoctyK7XQIwgrOaFcT7OkK55RcDuKCNBXvRbUVsJr4k100IV/R1LFQvZPUvpiCmsU3LZ
	JCCEzLbOCj+OAgmw8mUxdPpYpZXIyuwMZdif8FEMVgoBgGeZusVoI5/3ysyE5nIdgFARi/SKeL6dR
	gcTnKP6OggeC0OtFr9x+LLJYD6KgdI0n4g0BrMiucF6gtocymiE1n7U2PUuwH6wDOYZwJTOtSmrcf
	lpx/IG3sAMd8WAm5lTLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0QOb-0002vj-Gp; Wed, 21 Aug 2019 13:11:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0QOI-0002vP-UT
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 13:11:08 +0000
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com
 [209.85.208.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 413212082F
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 13:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566393066;
 bh=kuKd4LaZeJI6UGgTswgE+Gt02Df19t8oQt48CusPTXY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=LZFoEmTZLW5/11AEGlzftmogTOLB8RKrREafKC4J4TPMec/ltqnY6dYL47sKyzaTV
 BDDe2ejhf4HF6SyRH2VGUPgr+1B9W6Mo9sLVcvQ/eUWq1YnwzXSrCvx9Iyg+iqkOaN
 ap4gxStwa04LH392BnFNBZzl7QWh6o4noa3gC7+A=
Received: by mail-lj1-f170.google.com with SMTP id e24so2062189ljg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 06:11:06 -0700 (PDT)
X-Gm-Message-State: APjAAAUbbbNgEVFQ8nhYDZ1l8AzdlTdQaDz3t2PfGKiMQJDXJLw/GX7o
 JVrUpGxiewpYIVSQzX8Wr7Lw7aLzcnkfpgRI334=
X-Google-Smtp-Source: APXvYqzNzg748L/o/0qZKaYe00jb2xN8DKKsSLoVgu+VFsvbF9k9puSj21ekEvwwAX73N4YmYdngdgwk12tAWSFHzKA=
X-Received: by 2002:a2e:7818:: with SMTP id t24mr2602513ljc.210.1566393064499; 
 Wed, 21 Aug 2019 06:11:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190813150827.31972-1-s.nawrocki@samsung.com>
 <CGME20190813150852eucas1p2be4c0ab5ec2c079e3daf1af24283b27c@eucas1p2.samsung.com>
 <20190813150827.31972-3-s.nawrocki@samsung.com>
 <b5359603-b337-dcd8-b025-ca7dff5f4a06@nvidia.com>
 <CAJKOXPf597CMx=M2JmSTWe2GzBfcHFefgzSJbJ+njZGp-WfR1A@mail.gmail.com>
 <1e428c8e-f4b5-0810-77f9-2c899c040fc7@kernel.org>
 <72eea1ea-2433-2f76-6265-5851554e845d@samsung.com>
 <CAJKOXPdh9eHrAuCxHkQBvJMqEnUCeU2xwkK=9yyiJ6BuTLJ+_A@mail.gmail.com>
 <537999b7-b0e8-33a7-4bdc-c6952a0a5d06@samsung.com>
In-Reply-To: <537999b7-b0e8-33a7-4bdc-c6952a0a5d06@samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 21 Aug 2019 15:10:53 +0200
X-Gmail-Original-Message-ID: <CAJKOXPdbPg-O6zh6LXrvSRSMG8psxW6_eREe+UEH=UZNhAT=rQ@mail.gmail.com>
Message-ID: <CAJKOXPdbPg-O6zh6LXrvSRSMG8psxW6_eREe+UEH=UZNhAT=rQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/9] soc: samsung: Convert exynos-chipid driver to use
 the regmap API
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_061107_026906_FB4E73B3 
X-CRM114-Status: GOOD (  19.15  )
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
Cc: devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sylwester Nawrocki <snawrocki@kernel.org>, vireshk@kernel.org,
 linux-pm@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jon Hunter <jonathanh@nvidia.com>, robh+dt@kernel.org, kgene@kernel.org,
 pankaj.dubey@samsung.com, linux-tegra <linux-tegra@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 21 Aug 2019 at 14:41, Sylwester Nawrocki <s.nawrocki@samsung.com> wrote:
>
> On 8/21/19 14:16, Krzysztof Kozlowski wrote:
> >>> I'm also inclined to have it converted to a regular driver.  We already
> >>> have "exynos-asv" driver matching on the chipid node (patch 3/9).
> >>> The ASV patches will not be merged soon anyway, all this needs some more
> >>> thought. Krzysztof, can we abandon the chipid patches for now? Your
> >>
> >> chipid driver is good and useful on its own. The preferred solution
> >> IMHO would be to just revert "soc: samsung: Convert exynos-chipid
> >> driver to use the regmap API" commit.
> >
> > I queued the chipid as a dependency for ASV but ASV requires the
> > regmap. What would be left after reverting the regmap part? Simple
> > unused printk driver? No need for such. If reverting, then let's drop
> > entire driver and rework it offline.
>
> In fact there is now no dependency between the chipid and the ASV
> driver (patch 3/9), the regmap is provided by the syscon driver/API.
> I should have added "depends on REGMAP && MFD_SYSCON" to Kconfig.
> Both drivers (chipid, ASV) share the registers region so the regmap
> API seemed appropriate here.

Indeed, ASV needs only the header + DT change... Then actually we do
not need chipid driver at all. Just to print the SoC and provide sysfs
entry? If this is the only purpose, then it should be a driver.

> Converting the chipid code to platform driver wouldn't make sense as
> it wouldn't be useful early in arch/arm/mach-exynos and we can't have
> two drivers for same device (the ASV driver matches on the chipid
> compatible now).

There is no use case for arm/mach-exynos. This code was not
resubmitted and I doubt it will be (unless now someone wants to prove
I am wrong and sends it again :) ). The two-device case is indeed a
problem but it is possible. Clocks are doing it with PMU driver. See
CLK_OF_DECLARE_DRIVER(), although I do not remember whether it is
maybe obsolete pattern (discouraged).

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
