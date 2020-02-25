Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B84316F266
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 23:02:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VT3cdpX0hbzLCf4wCbMjUILgyrDLoVNHigxbhEiFNvY=; b=q/Im0lO1NcnydP
	acNbRFlMonEuOPK4zv0gvpxD3SBcXe2EV/fYw6EoCAbswR37zlf/Errn8cZPFSwZsTQ4qvzAWi8I5
	pGkca/mzfj4qjJo7Hq353Nd4D8iC5nXfmWvkKj4PvqtuXmBzvj7Jpnykz+tRYJdEB8Hcr4MfwE62L
	OXxJINYDk5szw4ibGQ5suD7vZk/j27hu0yqmvjh8haGDG3D6UPMCL3n2pqYzC9pGapXZgvROci0Gs
	gA/z9XyWVeXzT5ZT9nnXCuQKxjlH551YHQfUxoXZtrs6aMnmAyHSScAU4sZQx4VmUS+5mg9AFtANF
	aodKR17vE/LafAHFd8TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6iHP-0005jM-A2; Tue, 25 Feb 2020 22:02:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6iHJ-0005ii-IU
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 22:02:10 +0000
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C8CF52467F
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 22:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582668126;
 bh=ASA6axefWklSU78pWejTSwer0ZOaWKFTnH47gYDjOZA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=CTCD9kg9XuK/5B5/i8D8A/5G6NN6eG+R/lePr4JYYbypdV7FZygukNX4N2vScKNMR
 AcowiA3TsPtPrp9pjfqln0aJMCgno1iOeRyF4hIx8g2f5Ai/mJTN4X1rrllv43N8WQ
 yeXIAeDINI5iDpqzRb+S/V40752h2KdAmsoPsWz0=
Received: by mail-qk1-f169.google.com with SMTP id p7so707222qkh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 14:02:06 -0800 (PST)
X-Gm-Message-State: APjAAAWvGAVyVOSpF1SLrDQoCjOFc2vuoNo9UbYgyvkAiczLA9oNVH4C
 EBKS7p8OqhfvvOrJ00T+2xCpUu4zCFQc6s47Sw==
X-Google-Smtp-Source: APXvYqw5XKZGdHCXY9u0tVRDbjlPaa0iutz4jC8T9d3E9Z8AVXYJLUY39qJiOoxuGit3bif1zq9Awqp6HaEj5QU++i0=
X-Received: by 2002:ae9:f205:: with SMTP id m5mr1310560qkg.152.1582668125762; 
 Tue, 25 Feb 2020 14:02:05 -0800 (PST)
MIME-Version: 1.0
References: <20200218171321.30990-1-robh@kernel.org>
 <20200218171321.30990-7-robh@kernel.org>
 <20200218172000.GF1133@willie-the-truck>
In-Reply-To: <20200218172000.GF1133@willie-the-truck>
From: Rob Herring <robh@kernel.org>
Date: Tue, 25 Feb 2020 16:01:54 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJn1kG6gah+4318NQfJ4PaS3x3woWEUh08+OTfOcD+1MQ@mail.gmail.com>
Message-ID: <CAL_JsqJn1kG6gah+4318NQfJ4PaS3x3woWEUh08+OTfOcD+1MQ@mail.gmail.com>
Subject: Re: [RFC PATCH 06/11] iommu: arm-smmu: Remove Calxeda secure mode
 quirk
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_140209_652473_07EEC853 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Langsdorf <mlangsdo@redhat.com>, kvm@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "open list:LIBATA SUBSYSTEM \(Serial and Parallel ATA drivers\)"
 <linux-ide@vger.kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 soc@kernel.org, Joerg Roedel <joro@8bytes.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, devicetree@vger.kernel.org,
 Jon Loeliger <jdl@jdl.com>, "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Andre Przywara <andre.przywara@arm.com>, Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Tony Luck <tony.luck@intel.com>,
 Alexander Graf <graf@amazon.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-edac <linux-edac@vger.kernel.org>, Jens Axboe <axboe@kernel.dk>,
 Matthias Brugger <mbrugger@suse.com>, Stephen Boyd <sboyd@kernel.org>,
 netdev <netdev@vger.kernel.org>, Cornelia Huck <cohuck@redhat.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Borislav Petkov <bp@alien8.de>, Robin Murphy <robin.murphy@arm.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 11:20 AM Will Deacon <will@kernel.org> wrote:
>
> On Tue, Feb 18, 2020 at 11:13:16AM -0600, Rob Herring wrote:
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Robin Murphy <robin.murphy@arm.com>
> > Cc: Joerg Roedel <joro@8bytes.org>
> > Cc: iommu@lists.linux-foundation.org
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> > Do not apply yet.
>
> Pleeeeease? ;)
>
> >  drivers/iommu/arm-smmu-impl.c | 43 -----------------------------------
> >  1 file changed, 43 deletions(-)
>
> Yes, I'm happy to get rid of this. Sadly, I don't think we can remove
> anything from 'struct arm_smmu_impl' because most implementations fall
> just short of perfect.
>
> Anyway, let me know when I can push the button and I'll queue this in
> the arm-smmu tree.

Seems we're leaving the platform support for now, but I think we never
actually enabled SMMU support. It's not in the dts either in mainline
nor the version I have which should be close to what shipped in
firmware. So as long as Andre agrees, this one is good to apply.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
