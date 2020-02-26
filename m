Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F57170A12
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 21:59:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W2pcWY6ExYKlIvcbNMYAO5dk2lrFVOYmgj1rjwgll9c=; b=SqKRQj9NWGIAi+
	1f2LNZ3k7crsfh2+kh+Y6qwMBbWmQSC1nCJhJ/ozpeLaOllSq3bgtuHunGyblamo3cRftBf/pyGe2
	mGm54bbLw9uR5IXTJUO7QxosxV5CVeZb8b1s6Ou4stHHXt4o/oGj3LRxCdMH4BD0LhQPQkOo3g7Yu
	p/XyoEfxkSWJAu+o8/bquNSTcfibP1gfM94WvCGOTuBLJ1T9dsV5i0JH/On3XZMNqQkTezFNvByd/
	5YEfYOMnOu6Zk6t1zhRFsQI05k8gc/PYiO0S8DtCeeaUUyYjLhKlxgTiQqJNTr0x9FVxqQs8D/J1x
	xMO7Laok7jg/OxUYIwHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j73lp-0004NO-9R; Wed, 26 Feb 2020 20:59:05 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j73lf-0004Mk-Ip
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 20:58:57 +0000
Received: by mail-pg1-x544.google.com with SMTP id 6so267503pgk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 12:58:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5i4kIErvQGw44vXaerAikXm4yrNAjy2U007Z9HcTHsk=;
 b=xV1PffHpd8aoWxT9tCiJoOHV/o1IukGw0zUuVqpv7XALZeER9YCv0vzCn1YZ47eY2R
 fOfYoK3gHDaA9ioH6flf7RtJXJbYfVGWKWEjVgC9Qm/iUxRGJx/5hL+TofnEUBP4y5Yi
 tJfPS8CEGTxAnZFcrPMyBEWiwdEH6zXXJQX1BpuD6DrtqKCxqvufNYXfJIftAU0Tvv+R
 8h1iNWL/j6dZyL8bAGrqJ5Ec3mr1SUVO8mG9A8W+AxFpf6eqo+jzkdYBoxFze7FKtBaz
 unFsgzB2FyhStLd1JOz+6ZK9SALqmiJvL61w/9GHW5QUo+UZoujd/et+Ob6UJvQ5ES5s
 1G7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5i4kIErvQGw44vXaerAikXm4yrNAjy2U007Z9HcTHsk=;
 b=BdXjopEsx/EaYXKjUbKr/PTTx7HadG7t18dQ4456udYUGRMRhqx6ppzvQlcEf535Q6
 z0QWHR0SUxNMdcnVuj7L/gMgIj2zeZzQxeAdxjZ7BXHjEhXlFqCb9P9hhGBGiZSMmqzd
 Yga5c7F+0qnMHJFT1+JoZq2KMS2jORSHIdPxyJyIwQg70pd9mZT1tNFmsI9LfbClWru/
 2hZdbjVONcWBIUzcJKlpcSosKUpvUOcFnv15a1jX/5APC0abFWtETkWGEltSYb9CaK2k
 nKXN5qKd1ohpo7a4uBlSSCmk4JCSV6tgX9BX6hHUTC8dkVlyoX4PJpV4rdyGRQXzA/zc
 3Jjw==
X-Gm-Message-State: APjAAAUGp6+/ALflGud8zl+h0z1fC7VXZxurMzmJviTAYfeBZ4TBhD48
 h4050b2TFq+vEzm2EvGqt3D8Zw577Lg=
X-Google-Smtp-Source: APXvYqxxfLDrLKEpazTetrahW8GWUVcCfC+U2Ect9o5IlSTMhO3ug8VVxzoXdqY9qvj1D3MGbvV61A==
X-Received: by 2002:a65:478a:: with SMTP id e10mr639577pgs.197.1582750733873; 
 Wed, 26 Feb 2020 12:58:53 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id 10sm3992727pfu.132.2020.02.26.12.58.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 12:58:53 -0800 (PST)
Date: Wed, 26 Feb 2020 13:58:51 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v10 00/15] CoreSight CTI Driver
Message-ID: <20200226205851.GA30754@xps15>
References: <20200225234611.11067-1-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225234611.11067-1-mike.leach@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_125855_655899_616E5830 
X-CRM114-Status: GOOD (  30.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 suzuki.poulose@arm.com, linux-arm-msm@vger.kernel.org,
 coresight@lists.linaro.org, linux-doc@vger.kernel.org, liviu.dudau@arm.com,
 agross@kernel.org, robh+dt@kernel.org, maxime@cerno.tech, sudeep.holla@arm.com,
 corbet@lwn.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mike,

On Tue, Feb 25, 2020 at 11:45:56PM +0000, Mike Leach wrote:
> CTIs are defined in the device tree and associated with other CoreSight
> devices. The core CoreSight code has been modified to enable the registration
> of the CTI devices on the same bus as the other CoreSight components,
> but as these are not actually trace generation / capture devices, they
> are not part of the Coresight path when generating trace.
> 
> However, the definition of the standard CoreSight device has been extended
> to include a reference to an associated CTI device, and the enable / disable
> trace path operations will auto enable/disable any associated CTI devices at
> the same time.
> 
> Programming is at present via sysfs - a full API is provided to utilise the
> hardware capabilities. As CTI devices are unprogrammed by default, the auto
> enable describe above will have no effect until explicit programming takes
> place.
> 
> A set of device tree bindings specific to the CTI topology has been defined.
> The driver accesses these in a platform agnostic manner, so ACPI bindings
> can be added later, once they have been agreed and defined for the CTI device.
> 
> Documentation has been updated to describe both the CTI hardware, its use and
> programming in sysfs, and the new dts bindings required.

I have applied this set to my next branch.

Thanks,
Mathieu

> 
> Tested on DB410 board and Juno board, against the Linux 5.6-rc3 tree.
> 
> Changes since v9:
> 1) Removed 2 unneeded devm_kstrdup calls, fixed error check on another.
> 2) Fixed variable array declaration from [0] to [].
> 
> Changes since v8:
> 1) Use devm_ allocation in cti_match_fixup_csdev() to match other allocations.
> 2) Minor comment update per request.
> 
> Changes since v7:
> NB: No functional driver changes in this set. Full set released for
> consistency, completeness and ease of use.
> 1) Updates to device tree bindings .yaml following comments from Rob Herring.
>    Adds #size-cells and #address-cells to properties and constrained as
>    required. Validated using dt_binding_check.
> 2) Minor typo fixes to cti documentation file.
> 
> Changes since v6:
> NB: No functional driver changes in this set. Full set released for
> consistency, completeness and ease of use.
> 1) Updates to .yaml following comments from Maxime Ripard. Correct child node
>    descriptions, fix validation, and ensure reg entries required in child
>    nodes as per DeviceTree specification.
> 2) Update to Juno bindings to implement reg entry specification requirements.
> 
> Changes since v5:
> 1) Fixed up device tree .yaml file. Using extra compatible string for
> v8 architecture CTI connections.
> 2) Ensure association code respects coresight mutex when setting cross
> referenced pointers. Add in shutdown code.
> 3) Multiple minor code fixes & rationalisation. 
> 
> Changes since v4:
> Multiple changes following feedback from Mathieu, Leo and Suzuki.
> 1) Dropped RFC tag - wider distribution
> 2) CTI bindings definition now presented as a .yaml file - tested with
> with 'dt-doc-validate' from devicetree.org/dt-schema project and in kernel
> build tree with 'make dtbs_check' per kernel docs.
> 3) Sysfs links to other CoreSight devices moved out of this set into
> a following set that deals with all CoreSight devices & sysfs links.
> 4) Documentation in .rst format and new directory following patchset in [1].
> Extended example provided in docs.
> 5) Rationalised devicetree of_ specifics to use generic fwnode functions
> where possible to enable easier addition of ACPI support later.
> 6) Other minor changes as requested in feedback from last patchset.
> 
> Changes since v3:
> 1) After discussion on CS mailing list, each CTI connection has a triggers<N>
>    sysfs directory with name and trigger signals listed for the connection.
> 2) Initial code for creating sysfs links between CoreSight components is
>   introduced and implementation for CTI provided. This allows exploration
>   of the CoreSight topology within the sysfs infrastructure. Patches for
>   links between other CoreSight components to follow.
> 3) Power management - CPU hotplug and idle omitted from this set as ongoing
>    developments may define required direction. Additional patch set to follow.
> 4) Multiple fixes applied as requested by reviewers esp. Matthieu, Suzuki
>    and Leo. 
> 
> Changes since v2:
> Updates to allow for new features on coresight/next and feedback from
> Mathieu and Leo.
> 
> 1) Rebase and restructuring to apply on top of ACPI support patch set,
> currently on coresight/next. of_coresight_cti has been renamed to
> coresight-cti-platform and device tree bindings added to this but accessed
> in a platform agnostic manner using fwnode for later ACPI support
> to be added.
> 2) Split the sysfs patch info a series of functional patches.
> 3) Revised the refcount and enabling support.
> 4) Adopted the generic naming protocol - CTIs are either cti_cpuN or
> cti_sysM
> 5) Various minor presentation /checkpatch issues highlighted in feedback.
> 6) revised CPU hotplug to cover missing cases needed by ETM.
> 
> Changes since v1:
> 1) Significant restructuring of the source code. Adds cti-sysfs file and
> cti device tree file. Patches add per feature rather than per source
> file.
> 2) CPU type power event handling for hotplug moved to CoreSight core,
> with generic registration interface provided for all CPU bound CS devices
> to use.
> 3) CTI signal interconnection details in sysfs now generated dynamically
> from connection lists in driver. This to fix issue with multi-line sysfs
> output in previous version.
> 4) Full device tree bindings for DB410 and Juno provided (to the extent
> that CTI information is available).
> 5) AMBA driver update for UCI IDs are now upstream so no longer included
> in this set
> 
> Mike Leach (15):
>   coresight: cti: Initial CoreSight CTI Driver
>   coresight: cti: Add sysfs coresight mgmt reg access
>   coresight: cti: Add sysfs access to program function regs
>   coresight: cti: Add sysfs trigger / channel programming API
>   dt-bindings: arm: Adds CoreSight CTI hardware definitions
>   coresight: cti: Add device tree support for v8 arch CTI
>   coresight: cti: Add device tree support for custom CTI
>   coresight: cti: Enable CTI associated with devices
>   coresight: cti: Add connection information to sysfs
>   dt-bindings: qcom: Add CTI options for qcom msm8916
>   dt-bindings: arm: Juno platform - add CTI entries to device tree
>   dt-bindings: hisilicon: Add CTI bindings for hi-6220
>   docs: coresight: Update documentation for CoreSight to cover CTI
>   docs: sysfs: coresight: Add sysfs ABI documentation for CTI
>   Update MAINTAINERS to add reviewer for CoreSight
> 
>  .../testing/sysfs-bus-coresight-devices-cti   |  221 ++++
>  .../bindings/arm/coresight-cti.yaml           |  336 +++++
>  .../devicetree/bindings/arm/coresight.txt     |    7 +
>  .../trace/coresight/coresight-ect.rst         |  211 +++
>  Documentation/trace/coresight/coresight.rst   |   13 +
>  MAINTAINERS                                   |    3 +
>  arch/arm64/boot/dts/arm/juno-base.dtsi        |  162 ++-
>  arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi     |   37 +-
>  arch/arm64/boot/dts/arm/juno-r1.dts           |   25 +
>  arch/arm64/boot/dts/arm/juno-r2.dts           |   25 +
>  arch/arm64/boot/dts/arm/juno.dts              |   25 +
>  .../boot/dts/hisilicon/hi6220-coresight.dtsi  |  130 +-
>  arch/arm64/boot/dts/qcom/msm8916.dtsi         |   85 +-
>  drivers/hwtracing/coresight/Kconfig           |   21 +
>  drivers/hwtracing/coresight/Makefile          |    3 +
>  .../coresight/coresight-cti-platform.c        |  485 +++++++
>  .../hwtracing/coresight/coresight-cti-sysfs.c | 1175 +++++++++++++++++
>  drivers/hwtracing/coresight/coresight-cti.c   |  745 +++++++++++
>  drivers/hwtracing/coresight/coresight-cti.h   |  235 ++++
>  .../hwtracing/coresight/coresight-platform.c  |   20 +
>  drivers/hwtracing/coresight/coresight-priv.h  |   15 +
>  drivers/hwtracing/coresight/coresight.c       |   86 +-
>  include/dt-bindings/arm/coresight-cti-dt.h    |   37 +
>  include/linux/coresight.h                     |   27 +
>  24 files changed, 4098 insertions(+), 31 deletions(-)
>  create mode 100644 Documentation/ABI/testing/sysfs-bus-coresight-devices-cti
>  create mode 100644 Documentation/devicetree/bindings/arm/coresight-cti.yaml
>  create mode 100644 Documentation/trace/coresight/coresight-ect.rst
>  create mode 100644 drivers/hwtracing/coresight/coresight-cti-platform.c
>  create mode 100644 drivers/hwtracing/coresight/coresight-cti-sysfs.c
>  create mode 100644 drivers/hwtracing/coresight/coresight-cti.c
>  create mode 100644 drivers/hwtracing/coresight/coresight-cti.h
>  create mode 100644 include/dt-bindings/arm/coresight-cti-dt.h
> 
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
