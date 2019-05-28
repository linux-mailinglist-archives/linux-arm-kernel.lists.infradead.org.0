Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD772CDB6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 19:36:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=saoUFvbbLgJFLFiyfUkSukX9H8I7XYgitR6QZrWr9cI=; b=kmY4u7LJpnIlYr
	xe/Vf8mttQQV3y5DzEmUHxnklBNye8mED9au1VIRd9rEfDVN0RRem0YEyKjN8jkHLi7slsyHcV4HN
	CCKi+wwNqYffJnRBlq3fvPRdkScfQ9EghSVqBRs5ISo95CEAwlXj9lnIEwdXBa0Z+gSd1sUsQ58ym
	KbactT8LIM4MNihT6H+Dc+Lu4+OhiiwKHiV1y8FJEqqN78GJuATRgcj574J5mzm7MA7gD5tzeNyrv
	fBrvo4vWKtWe2KPjprS3dY5qnT3X8TNWX2dSS80pX/YLXh+R4Z8MKhimHuVBVFyM98ktTi3hVFLt3
	VZt8/yawjyc8+ZCG6NvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVg1f-0000Yo-Mm; Tue, 28 May 2019 17:36:39 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVg1T-0000Xa-OA
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 17:36:33 +0000
Received: by mail-io1-xd42.google.com with SMTP id u13so7766206iop.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 10:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aV83MWqVrs73/rZto20+uCA1itr43gbkk2Ocg5RD+lI=;
 b=VT9e/3yiMIFCZcvTwZ8i/MsJVhw154QE77tmlINEA88m7HhsJ1LaG04AUorwUZ3Z11
 Fk9maKkm6OobTPlJzcy4b2P7a8ImmRtEP5I8aPjkfkm1Mu7KNRiV2iJzCKOhSG+J/Lfu
 YLuSdrEHRAm87PlAKt5Gk7e1we4HaTzB21JcVXjJWZCrCcr34uJp3QOQQVJYev/0JHQd
 Hfle0iheN4Ufyskh2BYvW+8a9Z2S20TqeMijuFUQPIlJ6uz9a4mUW9lvT+7oCK2MBTGK
 OxxMWiJkHc+4de/xVYNTq4hFg81Mdm0C1IpMLumEMaI55/65A4oAy12obDs9jGroLWNp
 SBUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aV83MWqVrs73/rZto20+uCA1itr43gbkk2Ocg5RD+lI=;
 b=RDNGHtcnWIKzFweUyiF/UdypF7YZq1wdxJKidKIeDTU+qAPs/udGVz2teN9vvLlHvp
 P9ILxBxIMu+hb7IHxKwr/WIFrCID2plGW5aVj5LRCkz7m9tIa01kAo+dU1YqYemd9tOT
 vnNZbO+w6t4QlSit6c3LWxyIeBV/cxGzIrKfr5dmLWMSjVzbsnNDQ3dj+eFfPfdH+nsJ
 sTCY9kxr76c5gdcNEEMTq71h+XSWg9HeqmFEllS+ddOuXBwNjnf+MP5PEEQCUx3Nt5y/
 GcFUYGQL21kmuztH1RctvxHHGhUGyGykrzmaTQfUbyTBKRvH+1Gm2/l/eNLOnr0NCX1X
 9CwQ==
X-Gm-Message-State: APjAAAUhHjyEnw2rpEeFx8YCohJiYeYU5p7X2c2Ok32xMYsabdJq0smt
 MjFskseVvIzYnp5/ABpAZSzG2I3dFki5LX4+KV8rlA==
X-Google-Smtp-Source: APXvYqzw4aa78ydNOscrUl5J1XO+DyDVCpzUub7yBc9JUhk30qWcmvo4lbzK2HGEjG2AWNX62qfyCbiG7lyTcRC3Shc=
X-Received: by 2002:a6b:780b:: with SMTP id j11mr408220iom.57.1559064978510;
 Tue, 28 May 2019 10:36:18 -0700 (PDT)
MIME-Version: 1.0
References: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
 <CANLsYkzRXXB1EFpWHn6JN_6pfOm-1TvVgiJY2MKExhifiBakBQ@mail.gmail.com>
In-Reply-To: <CANLsYkzRXXB1EFpWHn6JN_6pfOm-1TvVgiJY2MKExhifiBakBQ@mail.gmail.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 28 May 2019 11:36:07 -0600
Message-ID: <CANLsYkzK7N9Bt6E6f187LaDydeC5afMp=LjMuvhFYKbij_SyjA@mail.gmail.com>
Subject: Re: [PATCH v4 00/30] coresight: Support for ACPI bindings
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_103627_794011_733A380D 
X-CRM114-Status: GOOD (  37.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 May 2019 at 11:32, Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
>
> On Wed, 22 May 2019 at 04:35, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
> >
> > This series adds the support for CoreSight devices on ACPI based
> > platforms. The device connections are encoded as _DSD graph property[0],
> > with CoreSight specific extensions to indicate the direction of data
> > flow as described in [1]. Components attached to CPUs are listed
> > as child devices of the corresponding CPU, removing explicit links
> > to the CPU like we do in the DT.
> >
> > The majority of the series cleans up the driver and prepares the subsystem
> > for platform agnostic firwmare probing, naming scheme, searching etc.
> >
> > We introduce platform independent helpers to parse the platform supplied
> > information. Thus we rename the platform handling code from:
> >         of_coresight.c  => coresight-platform.c
> >
> > The CoreSight driver creates shadow devices that appear on the Coresight
> > bus, in addition to the real devices (e.g, AMBA bus devices). The name
> > of these devices match the real device. This makes the device name
> > a bit cryptic for ACPI platform. So this series also introduces a generic
> > platform agnostic device naming scheme for the shadow Coresight devices.
> > Towards this we also make changes to the way we lookup devices to resolve
> > the connections, as we can't use the names to identify the devices. So,
> > we use the "fwnode_handle" of the real device for the device lookups.
> > Towards that we clean up the drivers to keep track of the "CoreSight"
> > device rather than the "real" device. However, all real operations,
> > like DMA allocation, Power management etc. must be performed on
> > the real device which is the parent of the shadow device.
> >
> > Finally we add the support for parsing the ACPI platform data. The power
> > management support is missing in the ACPI (and this is not specific to
> > CoreSight). The firmware must ensure that the respective power domains
> > are turned on.
> >
> > Applies on v5.2-rc1
> >
> > Tested on a Juno-r0 board with ACPI bindings patch (Patch 31/30) added on
> > top of [2]. You would need to make sure that the debug power domain is
> > turned on before the Linux kernel boots. (e.g, connect the DS-5 to the
> > Juno board while at UEFI). arm32 code is only compile tested.
> >
> > [0] ACPI Device Graphs using _DSD (Not available online yet, approved but
> >     awaiting publish and eventually should be linked at).
> >     https://uefi.org/sites/default/files/resources/_DSD-implementation-guide-toplevel-1_1.htm
> > [1] https://developer.arm.com/docs/den0067/latest/acpi-for-coresighttm-10-platform-design-document
> > [2] https://github.com/tianocore/edk2-platforms.git
> >
> > Changes since v3:
> >  - Add tags from Mathieu
> >
> > Changes since v2:
> >  - Fix the symlink name for ETM devices under cs_etm PMU (Patch by Mathieu)
> >  - Drop patches merged already in the tree.
> >  - Add the tags from Mathieu
> >  - More documentation with examples of ACPI graph in ACPI bindings support.
> >  - Fix ETM4 error return path (Mathieu)
> >  - Drop the patches exposing device links via sysfs, to be posted as separate
> >    series.
> >  - Drop the generic helper for device search by fwnode for a better cleanup
> >    later.
> >  - Split the ACPI bindings support patch for AMBA and platform devices.
> >  - Return integer error for <platform>_get_platform_data() helpers.
> >  - Fix comment about the return code for acpi_get_coresight_cpu().
> >  - Ensure we don't have devices part of multiple graphs (Mathieu).
> >
> > Changes since v1:
> >
> >  [ http://lists.infradead.org/pipermail/linux-arm-kernel/2019-March/639963.html ]
> >
> >   - Dropped the replicator driver merge changes as they were pulled already.
> >   - Cleanups for Power management in the drivers.
> >   - Reuse platform description for connection information. Also introduce
> >     routines to clean up the platform description to make sure we drop
> >     the references (fwnode_handle).
> >   - Add RFC patches for exposing the device-links via sysfs.
> >   - Drop tracking the device in favour of coresight_device.
> >   - Name etb10 as "etb"
> >   - Fix other comments in v1.
> >   - Use a generic helper for searching with fwnode_handle rather than adding
> >     one for CoreSight.
> >
> >
> > Mathieu Poirier (1):
> >   coresight: Use coresight device names for sinks in PMU attribute
> >
> > Suzuki K Poulose (29):
> >   coresight: funnel: Clean up device book keeping
> >   coresight: replicator: Cleanup device tracking
> >   coresight: tmc: Clean up device specific data
> >   coresight: catu: Cleanup device specific data
> >   coresight: tpiu: Clean up device specific data
> >   coresight: stm: Cleanup device specific data
> >   coresight: etm: Clean up device specific data
> >   coresight: etb10: Clean up device specific data
> >   coresight: Rename of_coresight to coresight-platform
> >   coresight: etm3x: Rearrange cp14 access detection
> >   coresight: stm: Rearrange probing the stimulus area
> >   coresight: tmc-etr: Rearrange probing default buffer size
> >   coresight: platform: Make memory allocation helper generic
> >   coresight: Make sure device uses DT for obsolete compatible check
> >   coresight: Introduce generic platform data helper
> >   coresight: Make device to CPU mapping generic
> >   coresight: Remove cpu field from platform data
> >   coresight: Remove name from platform description
> >   coresight: Cleanup coresight_remove_conns
> >   coresight: Reuse platform data structure for connection tracking
> >   coresight: Rearrange platform data probing
> >   coresight: Add support for releasing platform specific data
> >   coresight: platform: Use fwnode handle for device search
> >   coresight: Use fwnode handle instead of device names
> >   coresight: Use platform agnostic names
> >   coresight: stm: ACPI support for parsing stimulus base
> >   coresight: Support for ACPI bindings
> >   coresight: acpi: Support for AMBA components
> >   coresight: acpi: Support for platform devices
> >
> >  drivers/acpi/acpi_amba.c                           |   9 +
> >  drivers/hwtracing/coresight/Makefile               |   3 +-
> >  drivers/hwtracing/coresight/coresight-catu.c       |  40 +-
> >  drivers/hwtracing/coresight/coresight-catu.h       |   1 -
> >  drivers/hwtracing/coresight/coresight-cpu-debug.c  |   3 +-
> >  drivers/hwtracing/coresight/coresight-etb10.c      |  51 +-
> >  drivers/hwtracing/coresight/coresight-etm-perf.c   |   8 +-
> >  drivers/hwtracing/coresight/coresight-etm.h        |   6 +-
> >  .../hwtracing/coresight/coresight-etm3x-sysfs.c    |  12 +-
> >  drivers/hwtracing/coresight/coresight-etm3x.c      |  45 +-
> >  drivers/hwtracing/coresight/coresight-etm4x.c      |  37 +-
> >  drivers/hwtracing/coresight/coresight-etm4x.h      |   2 -
> >  drivers/hwtracing/coresight/coresight-funnel.c     |  35 +-
> >  drivers/hwtracing/coresight/coresight-platform.c   | 810 +++++++++++++++++++++
> >  drivers/hwtracing/coresight/coresight-priv.h       |   4 +
> >  drivers/hwtracing/coresight/coresight-replicator.c |  42 +-
> >  drivers/hwtracing/coresight/coresight-stm.c        | 118 ++-
> >  drivers/hwtracing/coresight/coresight-tmc-etf.c    |   9 +-
> >  drivers/hwtracing/coresight/coresight-tmc-etr.c    |  44 +-
> >  drivers/hwtracing/coresight/coresight-tmc.c        |  96 +--
> >  drivers/hwtracing/coresight/coresight-tmc.h        |   2 -
> >  drivers/hwtracing/coresight/coresight-tpiu.c       |  24 +-
> >  drivers/hwtracing/coresight/coresight.c            | 164 ++++-
> >  drivers/hwtracing/coresight/of_coresight.c         | 297 --------
> >  include/linux/coresight.h                          |  61 +-
> >  25 files changed, 1332 insertions(+), 591 deletions(-)
> >  create mode 100644 drivers/hwtracing/coresight/coresight-platform.c
> >  delete mode 100644 drivers/hwtracing/coresight/of_coresight.c
>
> I have applied this set.

As Leo pointed out it would be interesting to update the documentation
in "Documentation/trace/coresight.txt".

>
> Thanks,
> Mathieu
>
> >
> > ACPI bindings for Juno-r0 (applies on [2] above)
> >
> > Suzuki K Poulose (1):
> >   edk2-platform: juno: Update ACPI CoreSight Bindings
> >
> >  Platform/ARM/JunoPkg/AcpiTables/Dsdt.asl | 241 +++++++++++++++++++++++++++++++
> >  1 file changed, 241 insertions(+)
> >
> > --
> > 2.7.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
