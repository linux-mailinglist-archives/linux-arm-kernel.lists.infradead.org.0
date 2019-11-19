Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39EB3102FFF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 00:20:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hfc4nKrKDSVkeayCgwQviDDu2j9h7UUSjdE//sJTM2E=; b=O8U
	E1/7nEPtkNPAFVP1HBMrCXuDrJo8OO12OZte5FhpUb0BfnoZJOYNgqMGIs0Ik5E/vydZ/awJZgsZ3
	UAcv+dOFPppapwvZ3R4YmY1+bqaFtFYnDPfrZAKQCUbUPs93PEz55ASwJMN1BQU6puC3+0yJc9+za
	NoiMDA2BaFPLPdID33YX1vJmH7rusvRnIGiM6wl4r/PtvqsRTELL+FONLHDJQCH6+lKvANNT3SE7z
	LrCEafqUBWyn9qmIY+UKZ/cfhqnSQC2UIrZxx+qu20X6+j86fR6v4m7lLvTFdlFmy+lpbJ2846Js+
	LHO6+EtckdaUyGyU9o90dhpZTrJlG4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXCmt-0007hf-Ft; Tue, 19 Nov 2019 23:19:59 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXCmI-0007OS-SV
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 23:19:24 +0000
Received: by mail-wr1-x442.google.com with SMTP id r10so25931569wrx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 15:19:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=LprwCJE14hWGNJinEOM3o8X+XpA2MxfMh3IDb/PEOz8=;
 b=LljZoixV8K3u/roorLdvRGg3LMSJi3LTwD1xFdyNdHhqTxiYOoK9mDYUBvmRpjKyrA
 qDa3oWIjRFgG+0PW3aOUGzVZAZaXPmgB5KmfNmRdVclWqtdIZ88T0hWHMXc+x7C8uOeV
 SUD86HcEKjXpH0NI2XtKm0ozAD9TyBJyvpoc7txoA/h2QiMKAsgabBV/OaTWX6biMBYL
 dkW5M8S5G5/J3UbC7mrCMiJoOLfCTlP7hNA9iXopLtfWuPxy0Fsdf1r9r9dEc2Njm6Rc
 KY6lytJ3X5D7Mw06gs4hH7ZLu3qUSvTEYaM8xS22VDfZUHaXVYmpF3qcGjopOH4TiAd7
 HnaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=LprwCJE14hWGNJinEOM3o8X+XpA2MxfMh3IDb/PEOz8=;
 b=JKjMrn8tP5mU/F+eBdmvU5vYFLf4yRgnzQc15kp8eaFiX25vYF96r4z1jEUjZ6wpId
 bZhHz3JYCCHDotdiQBjklwq7ZMp954mw+h9sD9PwVdA+V7Z2484yKkns5J4qAzPs7A+U
 Rm3nxKJAWf5JjyGhGfGMUA+uHuGRsfAlnBxG8Kk+tGm3lfmK7Li5tIKYUAsg5L6cq3hw
 FJ779L1E/5HSJ/dIe7+c1uqcbFWKK5vacIO1aGS0G6IkQ5ZR0r1M03zA5nTI/iOhNgzH
 sTqG30Ne6FHWmwE0RduQi2KWb1OosczEwex1yDWmf9zV5yKhOlGSWY67J/TuD5TnCyFl
 vGSw==
X-Gm-Message-State: APjAAAWYy5kItHMSQ1NBmQuOUZcGJ2S+Ylkplf2h7GgfY1RZj89KP9J/
 Km2yxZ0w3BnF/azLMwIR4oHHBA==
X-Google-Smtp-Source: APXvYqyeAe7UK7+audd3OKVoGeSUpvetCWHZ3PKxQdOx1DE62NVnZKYong7y7bWuqvosubRXKMN8lQ==
X-Received: by 2002:a5d:5687:: with SMTP id f7mr40689192wrv.384.1574205559421; 
 Tue, 19 Nov 2019 15:19:19 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:a19d:4139:292b:19a0])
 by smtp.gmail.com with ESMTPSA id m15sm15746717wrj.52.2019.11.19.15.19.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 15:19:18 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v5 00/14] CoreSight CTI Driver
Date: Tue, 19 Nov 2019 23:18:58 +0000
Message-Id: <20191119231912.12768-1-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_151922_961829_061C9047 
X-CRM114-Status: GOOD (  19.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mathieu.poirier@linaro.org, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CTIs are defined in the device tree and associated with other CoreSight
devices. The core CoreSight code has been modified to enable the registration
of the CTI devices on the same bus as the other CoreSight components,
but as these are not actually trace generation / capture devices, they
are not part of the Coresight path when generating trace.

However, the definition of the standard CoreSight device has been extended
to include a reference to an associated CTI device, and the enable / disable
trace path operations will auto enable/disable any associated CTI devices at
the same time.

Programming is at present via sysfs - a full API is provided to utilise the
hardware capabilities. As CTI devices are unprogrammed by default, the auto
enable describe above will have no effect until explicit programming takes
place.

A set of device tree bindings specific to the CTI topology has been defined.
The driver accesses these in a platform agnostic manner, so ACPI bindings
can be added later, once they have been agreed and defined for the CTI device.

Documentation has been updated to describe both the CTI hardware, its use and
programming in sysfs, and the new dts bindings required.

Tested on DB410 board.

Applies on coresight/next tree after following dependent set applied for
documentation directory changes [1]. Kernel version 5.4-rc7.

[1] https://www.spinics.net/lists/linux-doc/msg71062.html

Changes since v4:
Multiple changes following feedback from Mathieu, Leo and Suzuki.
1) Dropped RFC tag - wider distribution
2) CTI bindings definition now presented as a .yaml file - tested with
with 'dt-doc-validate' from devicetree.org/dt-schema project and in kernel
build tree with 'make dtbs_check' per kernel docs.
3) Sysfs links to other CoreSight devices moved out of this set into
a following set that deals with all CoreSight devices & sysfs links.
4) Documentation in .rst format and new directory following patchset in [1].
Extended example provided in docs.
5) Rationalised devicetree of_ specifics to use generic fwnode functions
where possible to enable easier addition of ACPI support later.
6) Other minor changes as requested in feedback from last patchset.

Changes since v3:
1) After discussion on CS mailing list, each CTI connection has a triggers<N>
   sysfs directory with name and trigger signals listed for the connection.
2) Initial code for creating sysfs links between CoreSight components is
  introduced and implementation for CTI provided. This allows exploration
  of the CoreSight topology within the sysfs infrastructure. Patches for
  links between other CoreSight components to follow.
3) Power management - CPU hotplug and idle omitted from this set as ongoing
   developments may define required direction. Additional patch set to follow.
4) Multiple fixes applied as requested by reviewers esp. Matthieu, Suzuki
   and Leo. 

Changes since v2:
Updates to allow for new features on coresight/next and feedback from
Mathieu and Leo.

1) Rebase and restructuring to apply on top of ACPI support patch set,
currently on coresight/next. of_coresight_cti has been renamed to
coresight-cti-platform and device tree bindings added to this but accessed
in a platform agnostic manner using fwnode for later ACPI support
to be added.
2) Split the sysfs patch info a series of functional patches.
3) Revised the refcount and enabling support.
4) Adopted the generic naming protocol - CTIs are either cti_cpuN or
cti_sysM
5) Various minor presentation /checkpatch issues highlighted in feedback.
6) revised CPU hotplug to cover missing cases needed by ETM.

Changes since v1:
1) Significant restructuring of the source code. Adds cti-sysfs file and
cti device tree file. Patches add per feature rather than per source
file.
2) CPU type power event handling for hotplug moved to CoreSight core,
with generic registration interface provided for all CPU bound CS devices
to use.
3) CTI signal interconnection details in sysfs now generated dynamically
from connection lists in driver. This to fix issue with multi-line sysfs
output in previous version.
4) Full device tree bindings for DB410 and Juno provided (to the extent
that CTI information is available).
5) AMBA driver update for UCI IDs are now upstream so no longer included
in this set.


Mike Leach (14):
  coresight: cti: Initial CoreSight CTI Driver
  coresight: cti: Add sysfs coresight mgmt reg access.
  coresight: cti: Add sysfs access to program function regs
  coresight: cti: Add sysfs trigger / channel programming API
  dt-bindings: arm: Adds CoreSight CTI hardware definitions.
  coresight: cti: Add device tree support for v8 arch CTI
  coresight: cti: Add device tree support for custom CTI.
  coresight: cti: Enable CTI associated with devices.
  coresight: cti: Add connection information to sysfs
  dt-bindings: qcom: Add CTI options for qcom msm8916
  dt-bindings: arm: Juno platform - add CTI entries to device tree.
  dt-bindings: hisilicon: Add CTI bindings for hi-6220
  docs: coresight: Update documentation for CoreSight to cover CTI.
  docs: sysfs: coresight: Add sysfs ABI documentation for CTI

 .../testing/sysfs-bus-coresight-devices-cti   |  221 +++
 .../bindings/arm/coresight-cti.yaml           |  303 ++++
 .../devicetree/bindings/arm/coresight.txt     |    7 +
 .../trace/coresight/coresight-ect.rst         |  200 +++
 Documentation/trace/coresight/coresight.rst   |   13 +
 MAINTAINERS                                   |    2 +
 arch/arm64/boot/dts/arm/juno-base.dtsi        |  150 +-
 arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi     |   31 +-
 arch/arm64/boot/dts/arm/juno-r1.dts           |   25 +
 arch/arm64/boot/dts/arm/juno-r2.dts           |   25 +
 arch/arm64/boot/dts/arm/juno.dts              |   25 +
 .../boot/dts/hisilicon/hi6220-coresight.dtsi  |  130 +-
 arch/arm64/boot/dts/qcom/msm8916.dtsi         |   85 +-
 drivers/hwtracing/coresight/Kconfig           |   12 +
 drivers/hwtracing/coresight/Makefile          |    3 +
 .../coresight/coresight-cti-platform.c        |  500 +++++++
 .../hwtracing/coresight/coresight-cti-sysfs.c | 1219 +++++++++++++++++
 drivers/hwtracing/coresight/coresight-cti.c   |  712 ++++++++++
 drivers/hwtracing/coresight/coresight-cti.h   |  232 ++++
 .../hwtracing/coresight/coresight-platform.c  |   23 +
 drivers/hwtracing/coresight/coresight-priv.h  |    7 +
 drivers/hwtracing/coresight/coresight.c       |   61 +-
 include/dt-bindings/arm/coresight-cti-dt.h    |   37 +
 include/linux/coresight.h                     |   28 +
 24 files changed, 4028 insertions(+), 23 deletions(-)
 create mode 100644 Documentation/ABI/testing/sysfs-bus-coresight-devices-cti
 create mode 100644 Documentation/devicetree/bindings/arm/coresight-cti.yaml
 create mode 100644 Documentation/trace/coresight/coresight-ect.rst
 create mode 100644 drivers/hwtracing/coresight/coresight-cti-platform.c
 create mode 100644 drivers/hwtracing/coresight/coresight-cti-sysfs.c
 create mode 100644 drivers/hwtracing/coresight/coresight-cti.c
 create mode 100644 drivers/hwtracing/coresight/coresight-cti.h
 create mode 100644 include/dt-bindings/arm/coresight-cti-dt.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
