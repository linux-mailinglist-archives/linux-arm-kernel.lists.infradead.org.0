Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 445F42CDA7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 19:32:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TOahzG4CikO4yhtPV719j59tBdaXPH18gIfzRZ5ze4w=; b=Y9FESaJgf8hVS2
	kBJdEFPLuByL4vreXe4OLDAn4JDwfW6o8t86RlgyYMBjjl2tqxIWwZVQkRusNgI06J4W7tFwIOzUD
	0Clq4U15v+WbRwoukKxZnCCPHfCepcqk67LwYup+hu8JWotWEBs5iA7wDp1tSAHvvc93c7TDRZ9BT
	QoY98pswP/JTteRflrc3o1pIoOiJrQ5AtWDJ2zBUOgdIbe3NvqWEX5U65YhURIf7vBp2uJRXVQalu
	z2WntZsxSxeYVBFHu02OEgAwIxlEcmYUNYbcAQPVHmfiBzg6JQznW7OI2WMbIUZ14fRW314JSOJsw
	EMEl15LvkyHJVjOEef1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVfxl-00077K-G6; Tue, 28 May 2019 17:32:37 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfxd-00075x-1U
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 17:32:31 +0000
Received: by mail-it1-x143.google.com with SMTP id g24so5708351iti.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 10:32:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5kApX2j4WCAZhmuWzdYoLT6R1GXlqX6GblL9F/VaUKQ=;
 b=YlojUTnj7L2UR86qFQ3w0gP0SlIC4D+KTKUI8HmdhbEzM94ItyIjurEmSpdc4RHwpy
 sdi16lk+uVFszPb9lHrT/MeDD5TLM+tB4IrkmrAQYE7jjhdwYyFVCi5bcNxMlYlXcQ9j
 +vXMuSE6Qifp1OSORnYas5RWrdrQRYlnQulcwOUUJFa2N0eeSpLcALR6pg3TZiOlnZLs
 x1i5Nd5PgVSmfLAMBQ06RQHXXDHdH3ofhjUnFZlC7CtJ9Z+rdM8FS7eW7JCYVfoz5pjo
 sK2Nxqrq4VQMdZ45pArHpX3Nk+Eu4/NyhpwR4L01rOohoC4cd5zueHyrK4J248JXVqh/
 JE9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5kApX2j4WCAZhmuWzdYoLT6R1GXlqX6GblL9F/VaUKQ=;
 b=rfqq6n1yu/XnsH5aJl2GsDGa2rJ6NvU35LaKeotj3TYAsZ4zUHnMtn2XVqKXg+zdCl
 t2xk63i2imRYZupNprqm9TpLF54WPnJHVnHGltaPx0SViirRGIz5laUh5cN5lrYuY9ho
 xflZmdX4SY1BaMQlIDUdIivGovbFWMXiytGslWn0x7Y5Y7IZcdg5QYFc0SJHwRAydnO4
 dNpVVi8W3Muln8qaFxKa8vyq9dcBUSYPoKDx3KAtAycWHoO24VtKRTpuMmdVBatQShdR
 wYlVNZQIcTHSJmfMZecYbzpZDavDZmL6/Is8dPZwliLtNf+C3rkoHbmHVNwMnZnYnb7R
 gnRQ==
X-Gm-Message-State: APjAAAXgKKxdwob9rLyGeJE80Chtw3ex9SyR9jX0S8XrUm4P7z95tFbn
 kr4tuoSd2yTaDzgfZX8kagHwnmzYibud7ziD9HrrAg==
X-Google-Smtp-Source: APXvYqwAvFGVTiCfTVuXBI9DwOKqS5WSnT9A9DXz/sXzMCzwyTkvXJWWMLMoUiPtp6bH3Sl0/4NPBatlnX6C/Hnv2z4=
X-Received: by 2002:a24:c384:: with SMTP id s126mr3859702itg.1.1559064742463; 
 Tue, 28 May 2019 10:32:22 -0700 (PDT)
MIME-Version: 1.0
References: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
In-Reply-To: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 28 May 2019 11:32:11 -0600
Message-ID: <CANLsYkzRXXB1EFpWHn6JN_6pfOm-1TvVgiJY2MKExhifiBakBQ@mail.gmail.com>
Subject: Re: [PATCH v4 00/30] coresight: Support for ACPI bindings
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_103229_089206_C936264D 
X-CRM114-Status: GOOD (  34.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
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

On Wed, 22 May 2019 at 04:35, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
> This series adds the support for CoreSight devices on ACPI based
> platforms. The device connections are encoded as _DSD graph property[0],
> with CoreSight specific extensions to indicate the direction of data
> flow as described in [1]. Components attached to CPUs are listed
> as child devices of the corresponding CPU, removing explicit links
> to the CPU like we do in the DT.
>
> The majority of the series cleans up the driver and prepares the subsystem
> for platform agnostic firwmare probing, naming scheme, searching etc.
>
> We introduce platform independent helpers to parse the platform supplied
> information. Thus we rename the platform handling code from:
>         of_coresight.c  => coresight-platform.c
>
> The CoreSight driver creates shadow devices that appear on the Coresight
> bus, in addition to the real devices (e.g, AMBA bus devices). The name
> of these devices match the real device. This makes the device name
> a bit cryptic for ACPI platform. So this series also introduces a generic
> platform agnostic device naming scheme for the shadow Coresight devices.
> Towards this we also make changes to the way we lookup devices to resolve
> the connections, as we can't use the names to identify the devices. So,
> we use the "fwnode_handle" of the real device for the device lookups.
> Towards that we clean up the drivers to keep track of the "CoreSight"
> device rather than the "real" device. However, all real operations,
> like DMA allocation, Power management etc. must be performed on
> the real device which is the parent of the shadow device.
>
> Finally we add the support for parsing the ACPI platform data. The power
> management support is missing in the ACPI (and this is not specific to
> CoreSight). The firmware must ensure that the respective power domains
> are turned on.
>
> Applies on v5.2-rc1
>
> Tested on a Juno-r0 board with ACPI bindings patch (Patch 31/30) added on
> top of [2]. You would need to make sure that the debug power domain is
> turned on before the Linux kernel boots. (e.g, connect the DS-5 to the
> Juno board while at UEFI). arm32 code is only compile tested.
>
> [0] ACPI Device Graphs using _DSD (Not available online yet, approved but
>     awaiting publish and eventually should be linked at).
>     https://uefi.org/sites/default/files/resources/_DSD-implementation-guide-toplevel-1_1.htm
> [1] https://developer.arm.com/docs/den0067/latest/acpi-for-coresighttm-10-platform-design-document
> [2] https://github.com/tianocore/edk2-platforms.git
>
> Changes since v3:
>  - Add tags from Mathieu
>
> Changes since v2:
>  - Fix the symlink name for ETM devices under cs_etm PMU (Patch by Mathieu)
>  - Drop patches merged already in the tree.
>  - Add the tags from Mathieu
>  - More documentation with examples of ACPI graph in ACPI bindings support.
>  - Fix ETM4 error return path (Mathieu)
>  - Drop the patches exposing device links via sysfs, to be posted as separate
>    series.
>  - Drop the generic helper for device search by fwnode for a better cleanup
>    later.
>  - Split the ACPI bindings support patch for AMBA and platform devices.
>  - Return integer error for <platform>_get_platform_data() helpers.
>  - Fix comment about the return code for acpi_get_coresight_cpu().
>  - Ensure we don't have devices part of multiple graphs (Mathieu).
>
> Changes since v1:
>
>  [ http://lists.infradead.org/pipermail/linux-arm-kernel/2019-March/639963.html ]
>
>   - Dropped the replicator driver merge changes as they were pulled already.
>   - Cleanups for Power management in the drivers.
>   - Reuse platform description for connection information. Also introduce
>     routines to clean up the platform description to make sure we drop
>     the references (fwnode_handle).
>   - Add RFC patches for exposing the device-links via sysfs.
>   - Drop tracking the device in favour of coresight_device.
>   - Name etb10 as "etb"
>   - Fix other comments in v1.
>   - Use a generic helper for searching with fwnode_handle rather than adding
>     one for CoreSight.
>
>
> Mathieu Poirier (1):
>   coresight: Use coresight device names for sinks in PMU attribute
>
> Suzuki K Poulose (29):
>   coresight: funnel: Clean up device book keeping
>   coresight: replicator: Cleanup device tracking
>   coresight: tmc: Clean up device specific data
>   coresight: catu: Cleanup device specific data
>   coresight: tpiu: Clean up device specific data
>   coresight: stm: Cleanup device specific data
>   coresight: etm: Clean up device specific data
>   coresight: etb10: Clean up device specific data
>   coresight: Rename of_coresight to coresight-platform
>   coresight: etm3x: Rearrange cp14 access detection
>   coresight: stm: Rearrange probing the stimulus area
>   coresight: tmc-etr: Rearrange probing default buffer size
>   coresight: platform: Make memory allocation helper generic
>   coresight: Make sure device uses DT for obsolete compatible check
>   coresight: Introduce generic platform data helper
>   coresight: Make device to CPU mapping generic
>   coresight: Remove cpu field from platform data
>   coresight: Remove name from platform description
>   coresight: Cleanup coresight_remove_conns
>   coresight: Reuse platform data structure for connection tracking
>   coresight: Rearrange platform data probing
>   coresight: Add support for releasing platform specific data
>   coresight: platform: Use fwnode handle for device search
>   coresight: Use fwnode handle instead of device names
>   coresight: Use platform agnostic names
>   coresight: stm: ACPI support for parsing stimulus base
>   coresight: Support for ACPI bindings
>   coresight: acpi: Support for AMBA components
>   coresight: acpi: Support for platform devices
>
>  drivers/acpi/acpi_amba.c                           |   9 +
>  drivers/hwtracing/coresight/Makefile               |   3 +-
>  drivers/hwtracing/coresight/coresight-catu.c       |  40 +-
>  drivers/hwtracing/coresight/coresight-catu.h       |   1 -
>  drivers/hwtracing/coresight/coresight-cpu-debug.c  |   3 +-
>  drivers/hwtracing/coresight/coresight-etb10.c      |  51 +-
>  drivers/hwtracing/coresight/coresight-etm-perf.c   |   8 +-
>  drivers/hwtracing/coresight/coresight-etm.h        |   6 +-
>  .../hwtracing/coresight/coresight-etm3x-sysfs.c    |  12 +-
>  drivers/hwtracing/coresight/coresight-etm3x.c      |  45 +-
>  drivers/hwtracing/coresight/coresight-etm4x.c      |  37 +-
>  drivers/hwtracing/coresight/coresight-etm4x.h      |   2 -
>  drivers/hwtracing/coresight/coresight-funnel.c     |  35 +-
>  drivers/hwtracing/coresight/coresight-platform.c   | 810 +++++++++++++++++++++
>  drivers/hwtracing/coresight/coresight-priv.h       |   4 +
>  drivers/hwtracing/coresight/coresight-replicator.c |  42 +-
>  drivers/hwtracing/coresight/coresight-stm.c        | 118 ++-
>  drivers/hwtracing/coresight/coresight-tmc-etf.c    |   9 +-
>  drivers/hwtracing/coresight/coresight-tmc-etr.c    |  44 +-
>  drivers/hwtracing/coresight/coresight-tmc.c        |  96 +--
>  drivers/hwtracing/coresight/coresight-tmc.h        |   2 -
>  drivers/hwtracing/coresight/coresight-tpiu.c       |  24 +-
>  drivers/hwtracing/coresight/coresight.c            | 164 ++++-
>  drivers/hwtracing/coresight/of_coresight.c         | 297 --------
>  include/linux/coresight.h                          |  61 +-
>  25 files changed, 1332 insertions(+), 591 deletions(-)
>  create mode 100644 drivers/hwtracing/coresight/coresight-platform.c
>  delete mode 100644 drivers/hwtracing/coresight/of_coresight.c

I have applied this set.

Thanks,
Mathieu

>
> ACPI bindings for Juno-r0 (applies on [2] above)
>
> Suzuki K Poulose (1):
>   edk2-platform: juno: Update ACPI CoreSight Bindings
>
>  Platform/ARM/JunoPkg/AcpiTables/Dsdt.asl | 241 +++++++++++++++++++++++++++++++
>  1 file changed, 241 insertions(+)
>
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
