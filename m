Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 733BAA7DFF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 10:37:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pvQYAUM6KosQq8za24yw25EognjJS9k1huwOcYjkA9Q=; b=OrJI+G3cLPkMLX
	dFcKDNo0TU9vOmcSxbFN3lcxqYiTmG+XqU1JTtYXwlKOwce8ordbWGmqQ5GtKLd7uCpIdAObR6UU5
	K9TzUCgFa6cEDc+ulap94L8g7ixSxrPUq5U6mgI61rSPOiufPCaaivHYRxdwlYAVkE91PEpzWh2QA
	MlXE7WVqb650tUByS04mjta0kWk27bs8IxzdkF3RAX8HyWVMPch73XPl4tVM8bXW8hQc3CH+G6bsv
	qLByeuGnRsExbRn+/FPqI769rtmWwSxBRhBVV3e+HXsg94WQrOi4dOklBJvQc3WF/l7MA4zpK+E0m
	Adu+hwDQeGVcZjUA8djw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5QnK-00081n-Tj; Wed, 04 Sep 2019 08:37:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Qn7-00080z-59
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 08:37:26 +0000
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C10120870
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  4 Sep 2019 08:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567586244;
 bh=hoAius6REhdbGBpQkFZpk5CeOOmO3Yn/3gIEtQoNWWg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=m8/PRsxKuktjjE9T7/5NZ0LBzGps6QBKzHzUtzjZnjv5htkPdHVQh8+sFQbJXM+oV
 wJ9auiMz/imRsYyTJZzMVOUpYLK52y7ldef2H7SbULXf2DGzZeSjMAiHGgkwtzOxk2
 m2m2Wt89goHMOd58PZStIh0ngFEFvAtWbIeFgFKk=
Received: by mail-lf1-f48.google.com with SMTP id r134so14298909lff.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 01:37:24 -0700 (PDT)
X-Gm-Message-State: APjAAAV4EOv163k4KO6GQevzsxaLbZDYOqBM7gnq7tNZVxvMJMIkQ2z+
 x3E5xqIZJGrkBDiDVaIdDJk2Bv3xvANGXHpxmWc=
X-Google-Smtp-Source: APXvYqynl8t4zpgSOSPhgXGm6urGPD6YD5RT2LviyIZz5LcMF3/ZNtjnIiHi6xBSeCZLQGGW5B0TO2IWt+JPxz/llZY=
X-Received: by 2002:ac2:4853:: with SMTP id 19mr16484011lfy.69.1567586242704; 
 Wed, 04 Sep 2019 01:37:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190816163042.6604-1-krzk@kernel.org>
 <CAJKOXPcgZ2_ofZyAeTSxALkALaP-SFNfvNmNPYSPyLzuhpGZ0w@mail.gmail.com>
 <20190822183519.GA23735@kozik-lap>
 <CAK8P3a1_Qw=OB31yOCrpPs8Ys+=9tt4Pnyd=3+2JGzRXJV1KAw@mail.gmail.com>
In-Reply-To: <CAK8P3a1_Qw=OB31yOCrpPs8Ys+=9tt4Pnyd=3+2JGzRXJV1KAw@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 4 Sep 2019 10:37:11 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfRMXkm_pT560Ry5k-zFWpkRDmFHSs2Fb3RL7d4h=ka9g@mail.gmail.com>
Message-ID: <CAJKOXPfRMXkm_pT560Ry5k-zFWpkRDmFHSs2Fb3RL7d4h=ka9g@mail.gmail.com>
Subject: Re: [GIT PULL 1/3] soc: samsung: Exynos for v5.4
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_013725_238890_8F485BA5 
X-CRM114-Status: GOOD (  25.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 3 Sep 2019 at 19:21, Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Thu, Aug 22, 2019 at 8:35 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > On Wed, Aug 21, 2019 at 09:51:09AM +0200, Krzysztof Kozlowski wrote:
> > > On Fri, 16 Aug 2019 at 18:30, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > > >
> > > > The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:
> > > >
> > > >   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)
> > > >
> > > > are available in the Git repository at:
> > > >
> > > >   https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-drivers-5.4
> > > >
> > > > for you to fetch changes up to 40d8aff614f71ab3cab20785b4f213e3802d4e87:
> > > >
> > > >   soc: samsung: chipid: Convert exynos-chipid driver to use the regmap API (2019-08-15 20:25:25 +0200)
> > > >
> > > > ----------------------------------------------------------------
> > > > Samsung soc drivers changes for v5.4
> > > >
> > > > Add Exynos Chipid driver for identification of product IDs and SoC
> > > > revisions.  The driver also exposes chipid regmap, later to be used by
> > > > Exynos Adaptive Supply Voltage driver (adjusting voltages to different
> > > > revisions of same SoC).
> > >
> > > It turns out that it brings troubles (code is executed on every
> > > platform polluting logs because it is an initcall, not a driver) so
> > > Sylwester (submitter) asked to skip the submission.
> > >
> > > Please ignore the pull request.
> >
> > I talked with Sylwester and Bartlomiej who contributed the chipid driver
> > and they provided small incremental fixes. The driver is still useful
> > and in the future it will be expanded towards AVS. Therefore please pull
> > it or optionally wait a week and I will send incremental pull request
> > with fixes.
>
> Pulled into arm/drivers for now.
>
> I have drafted a related patch recently, regarding the related
> arch/arm/plat-samsung/cpu.c file. This is part of a longer series
> I'm working on, see https://pastebin.com/ZqeU3Mth for the
> current version of this patch.

You can then also adjust the include path in arch/arm/mach-exynos/Makefile.

> The observation is that mach-exynos
> is almost completely independent of plat-samsung these days, and my
> patch removes the last obstacle from separating the two. I have
> another set of patches to do the same for mach-s5pv210 (which shares
> half of its pm.c with plat-samsung, but nothing else).

Great!

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
