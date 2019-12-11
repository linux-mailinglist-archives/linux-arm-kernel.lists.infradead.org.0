Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A27811C046
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 00:07:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=y46hz4VQ6//Ynxiw5uwNQDa/GZKNewNq/8GollUn22M=; b=hJ0
	aZujY5OJvxRiprMaqwlO4rLFgtT3cmb5Qh+E0h5OhEdOTL1urtNnsVpJLmvnlDxNSdsWs3ZpSvmrH
	rzmM6eRUHBfVCwdtlewrwaMinaI2NEDzfprY9WbekvhSp1vlKIS6BnaO15SCEBPs8JLB3RozPdkkg
	GNa2U8pMjYhmSXylI1rvL1vYsZl6gUHrfGqEL1tlUAhmO/ElwhlTrdhnr9k1dSy5QbAVCqSp1RNDS
	L9YUpeZtm777QcdmCVJcgEhLeRMUBP+4WZPLakcjRLA/+Pb170KzMcyPA5P6RHZo6Hl6kaRlig57V
	2IVoz8lUEo4KnXNCab8p0ZsFnd9yV6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifB4y-0006bP-Ak; Wed, 11 Dec 2019 23:07:36 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifB4o-0006aS-5n
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 23:07:27 +0000
Received: by mail-wm1-x32b.google.com with SMTP id d5so157886wmb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 15:07:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=aXwQ1iASMVU8nMln3fgZ+uQBpHFldawKoRvB34MJ2Ks=;
 b=wrVAd/0kfzKJ/tpxCPXyCQBezs+bi6gO+2qMIvhsz2fy+c3MMEmJ0T0Y6SBGk3AvLv
 lYTzFezN3gulnHtix2x5ATi5GgymSn2QhcBJ2SUriZDnGFSb7/XFIiQjTwInF/0tF2U2
 b5Ya9TkX/OTnm1n/bFgyyqEW4YaA1t2U2XMQnDHgUYHw1mBvexWiyDR6z7O058seh9/r
 5UTJaKIW3WG0MdV1jmXtWYAZqP/GBwmF2L4qEpOrlGvaBiHvGOMz6d8SNm3bzk25wF4E
 NOGkCeB0IlQFBcjNupo/ycqLKF8F8mTGoYLPQwvAIkh0wV8VeQbw17tqz29LiTsDI4m6
 Xa+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=aXwQ1iASMVU8nMln3fgZ+uQBpHFldawKoRvB34MJ2Ks=;
 b=jjP8pMEJAQo1xmstN1SirrzUY1cYMFPGOxqZyWRzlHAjT08keCAGfzw2Oi47+s8xjg
 nBPZmKIeoZNDhTyzHs1/FxuZ/k07GhIpMLkm3laqDTIvwdKmJUrOCXOJG/htregj+ow5
 JAeFT387XXMb6AKt5GCm/O9IJS8l4UxuM9Xe2dnY5QnXjU4OGYoY1txRa+6o3fVQqbIA
 LTNCPBXuoT7MFEUy1xexT3chY71LuNugE+zCnYmUucGja0q5t7TNLtSWKHMvbLHcLbqR
 v8UUTamYCwpc1a2MrDfc+20lO7l8Q6QqS6TQf6odUx2xaTAqC/YC7tEOzsI24J49TtDe
 A7RA==
X-Gm-Message-State: APjAAAWsKC4ZWuE5bO3a0NeV5JZZT7SmYDZ5e+Ydb1aYx2r7GvaNWoag
 TqjjNhg2zFcQM1KhVfqrR5QmuA==
X-Google-Smtp-Source: APXvYqyO12lSfvV3dVE4640QQJ/odE9x6P1REMKO3u0766ndgImUX/drh+2vPfuBT1Wm1eZefsii2w==
X-Received: by 2002:a1c:6585:: with SMTP id z127mr2535411wmb.113.1576105642857; 
 Wed, 11 Dec 2019 15:07:22 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:140f:3f8d:647c:49b0])
 by smtp.gmail.com with ESMTPSA id z12sm3962480wmd.16.2019.12.11.15.07.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 15:07:22 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, linux-arm-kernel@lists.infradead.org,
 coresight@lists.linaro.org, devicetree@vger.kernel.org
Subject: [PATCH v6 00/15] CoreSight CTI Driver
Date: Wed, 11 Dec 2019 23:07:17 +0000
Message-Id: <20191211230717.4879-1-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_150726_230262_29B50475 
X-CRM114-Status: GOOD (  18.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: lorenzo.pieralisi@arm.com, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com, liviu.dudau@arm.com, agross@kernel.org,
 robh+dt@kernel.org, sudeep.holla@arm.com
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

Tested on DB410 board and Juno board, against the Linux 5.5-rc1 tree.

Changes since v5:
1) Fixed up device tree .yaml file. Using extra compatible string for
v8 architecture CTI connections.
2) Ensure association code respects coresight mutex when setting cross
referenced pointers. Add in shutdown code.
3) Multiple minor code fixes & rationalisation. 

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

Mike Leach (15):
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
  Update MAINTAINERS to add reviewer for CoreSight.

 .../testing/sysfs-bus-coresight-devices-cti   |  221 ++++
 .../bindings/arm/coresight-cti.yaml           |  303 +++++
 .../devicetree/bindings/arm/coresight.txt     |    7 +
 .../trace/coresight/coresight-ect.rst         |  211 +++
 Documentation/trace/coresight/coresight.rst   |   13 +
 MAINTAINERS                                   |    3 +
 arch/arm64/boot/dts/arm/juno-base.dtsi        |  149 ++-
 arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi     |   31 +-
 arch/arm64/boot/dts/arm/juno-r1.dts           |   25 +
 arch/arm64/boot/dts/arm/juno-r2.dts           |   25 +
 arch/arm64/boot/dts/arm/juno.dts              |   25 +
 .../boot/dts/hisilicon/hi6220-coresight.dtsi  |  130 +-
 arch/arm64/boot/dts/qcom/msm8916.dtsi         |   85 +-
 drivers/hwtracing/coresight/Kconfig           |   21 +
 drivers/hwtracing/coresight/Makefile          |    3 +
 .../coresight/coresight-cti-platform.c        |  485 +++++++
 .../hwtracing/coresight/coresight-cti-sysfs.c | 1175 +++++++++++++++++
 drivers/hwtracing/coresight/coresight-cti.c   |  748 +++++++++++
 drivers/hwtracing/coresight/coresight-cti.h   |  235 ++++
 .../hwtracing/coresight/coresight-platform.c  |   21 +
 drivers/hwtracing/coresight/coresight-priv.h  |   15 +
 drivers/hwtracing/coresight/coresight.c       |   86 +-
 include/dt-bindings/arm/coresight-cti-dt.h    |   37 +
 include/linux/coresight.h                     |   27 +
 24 files changed, 4050 insertions(+), 31 deletions(-)
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
