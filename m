Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D86F6CB07E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 22:51:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+O2STBKUDps+Cx4ICkItYJWfZHzBpYll97H8EbjU+Ks=; b=WZ8z9TRLAlBRBK
	7M60L000Kvv/sQLukdSR1STkD/FwOxPg66lvSuQfINfSpnJ3+BJnwMdbKiXQ6LjF3aWsbIPebhn4Z
	z+ID81YZyq/ULa9fkXjMMY9b3UULkGkf8MKNt0bt2ZQXHFRo8l5In3iej3Otz6l//AoUY1q1dcAVT
	H0qlb7wyrDadi398uqBgVdbmBBoURuqAp7/zwD1RBq5Gx6R6E71w0A2egYW2iXh6t7HOm5LR69gGq
	y54N1Y3OpjC3GBbEktRmgawyswwcqITPHAQzOx1xYFfIKw1FIloJkt8EiKnwxmOnsjLkvkbU5uAmX
	mrc3LzAG0L341wIOuHFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG84U-0006qT-5O; Thu, 03 Oct 2019 20:51:34 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG84C-0006ei-7d
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 20:51:18 +0000
Received: by mail-wr1-x442.google.com with SMTP id b9so4315481wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 13:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oT5munY2A09zpSHzYJ6m6wmIRb/RVjgLvFvW+U+KSoY=;
 b=xMip7plzqBtaMG8e7QIgtdrUd2y6V5SX/WOrz/GyKIxy13ehe0olzrNXZCKbJc13d9
 QwKm2GmW1840zwcHGUXOwYOVSuL/asmBZ1MmpK1l0JICCd9iqE1VeaY+n7liUlqi2vqZ
 dJ9rY47/oWc9gslxYiT1uKiS1yBOGY+Ex56+2xpEP9Dfr/IB0fUkiriCZGIqAfaxNU3G
 a3dkCvWXxXNecnV0MGX0M+cUsf6uVqVZIOa1M/HJzW2Gdndaf7RxSYyY26ilNeTaQ+bt
 +ewWpw++s6oJEj4OEHQ6hnQ/ohA5Ac4dAVk2cQX9O1beDM2QFJxUGeqEE1197IHvnOzq
 +XBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oT5munY2A09zpSHzYJ6m6wmIRb/RVjgLvFvW+U+KSoY=;
 b=mZsqYgn6DrJ1wx3qlEE7RakTYe6su36zE0KiN3xErv7B9BqJN2ox95jJhfmUmrjAa0
 ntb6/vzdp9O/arPew+JDd4uO4nnnFLGP1eUQa//kOQntwJEg7kExmS/38rwnlVIeI397
 CZtmeyt84T5eOrrlSE7xuMymqImt68gi3ZIYxhXiY/PxM971lmKilD4OlvX5i4cnNJv7
 +r7d+3zQjtTA8WR8Z9WXK3ZFR7+KJ+4p1BXZgg5q5Q1mGc0pEvEEHDK6VSPklCf5X7ar
 gytXlIoEug9sGP6H9g4LLvu/NPEX1zQB0XcJa4yZAfgpAfFCPtRuVmlQmzPcRlAHgeC/
 J1uQ==
X-Gm-Message-State: APjAAAXTKIbL9A9v4U+7P3EklRbUdbr0yHiBthYHSx3gTworA6EJClTZ
 O5JOSUGx7xj+BJNQYNSZ9HC7d1QkNeSO6XecRVeAyQ==
X-Google-Smtp-Source: APXvYqxDT5OzCqjJantqJggK7nMHfDLOl2hcFlODbx4Jh6VSUctsOvtmO4GgjrDD3AHzRLRHwJWsAxNNMAXWqdPcxrM=
X-Received: by 2002:a05:6000:45:: with SMTP id
 k5mr7782985wrx.259.1570135874531; 
 Thu, 03 Oct 2019 13:51:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190301192017.39770-1-dianders@chromium.org>
 <CAJ+vNU0Ma5nG9_ThLO4cdO+=ivf7rmXiHZonF0HY0xx6X3R6Hw@mail.gmail.com>
 <5dce2964-8761-e7d0-8963-f0f5cb2feb02@arm.com>
In-Reply-To: <5dce2964-8761-e7d0-8963-f0f5cb2feb02@arm.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Thu, 3 Oct 2019 13:51:03 -0700
Message-ID: <CAJ+vNU0Q1-d7YDbAAEMqEcWnniqo6jLdKBbcUTar5=hJ+AC8vQ@mail.gmail.com>
Subject: Re: [PATCH v2] iommu/arm-smmu: Break insecure users by disabling
 bypass by default
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_135116_315060_55FA6828 
X-CRM114-Status: GOOD (  27.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: open list <linux-kernel@vger.kernel.org>, linux-arm-msm@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 Douglas Anderson <dianders@chromium.org>, evgreen@chromium.org,
 tfiga@chromium.org, Rob Clark <robdclark@gmail.com>,
 iommu@lists.linux-foundation.org, Vivek Gautam <vivek.gautam@codeaurora.org>,
 Tirumalesh Chalamarla <tchalamarla@caviumnetworks.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 3, 2019 at 1:42 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> Hi Tim,
>
> On 2019-10-03 7:27 pm, Tim Harvey wrote:
> > On Fri, Mar 1, 2019 at 11:21 AM Douglas Anderson <dianders@chromium.org> wrote:
> >>
> >> If you're bisecting why your peripherals stopped working, it's
> >> probably this CL.  Specifically if you see this in your dmesg:
> >>    Unexpected global fault, this could be serious
> >> ...then it's almost certainly this CL.
> >>
> >> Running your IOMMU-enabled peripherals with the IOMMU in bypass mode
> >> is insecure and effectively disables the protection they provide.
> >> There are few reasons to allow unmatched stream bypass, and even fewer
> >> good ones.
> >>
> >> This patch starts the transition over to make it much harder to run
> >> your system insecurely.  Expected steps:
> >>
> >> 1. By default disable bypass (so anyone insecure will notice) but make
> >>     it easy for someone to re-enable bypass with just a KConfig change.
> >>     That's this patch.
> >>
> >> 2. After people have had a little time to come to grips with the fact
> >>     that they need to set their IOMMUs properly and have had time to
> >>     dig into how to do this, the KConfig will be eliminated and bypass
> >>     will simply be disabled.  Folks who are truly upset and still
> >>     haven't fixed their system can either figure out how to add
> >>     'arm-smmu.disable_bypass=n' to their command line or revert the
> >>     patch in their own private kernel.  Of course these folks will be
> >>     less secure.
> >>
> >> Suggested-by: Robin Murphy <robin.murphy@arm.com>
> >> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> >> ---
> >
> > Hi Doug / Robin,
> >
> > I ran into this breaking things on OcteonTx boards based on CN80XX
> > CPU. The IOMMU configuration is a bit beyond me and I'm hoping you can
> > offer some advice. The IOMMU here is cavium,smmu-v2 as defined in
> > https://github.com/Gateworks/dts-newport/blob/master/cn81xx-linux.dtsi
> >
> > Booting with 'arm-smmu.disable_bypass=n' does indeed work around the
> > breakage as the commit suggests.
> >
> > Any suggestions for a proper fix?
>
> Ah, you're using the old "mmu-masters" binding (and in a way which isn't
> well-defined - it's never been specified what the stream ID argument(s)
> would mean for a PCI host bridge, and Linux just ignores them). The
> ideal thing would be to update the DT to generic "iommu-map" properties
> - it's been a long time since I last played with a ThunderX, but I
> believe the SMMU stream IDs should just be the same as the ITS device
> IDs (which is how the "mmu-masters" mapping would have played out anyway).
>
> The arm-smmu driver support for the old binding has always relied on
> implicit bypass - there are technical reasons why we can't realistically
> support the full functionality offered to the generic bindings, but it
> would be possible to add some degree of workaround to prevent it
> interacting quite so poorly with disable_bypass, if necessary. Do you
> have deployed systems with DTs that can't be updated, but still might
> need to run new kernels?
>

Robin,

Thanks for the response. I don't care too much about supporting new
kernels with the current DT - I'm good with fixing this with a DT
change. Would you be able to give me an example? I would love to see
Cavium mainline an cn81xx dts/dtsi in arch/arm64/boot/dts to be used
as a base as the only thing we have to go off of currently is the
Cavium SDK which has fairly old kernel support.

Thanks,

Tim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
