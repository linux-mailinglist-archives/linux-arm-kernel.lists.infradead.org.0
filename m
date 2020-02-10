Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 124201584E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 22:39:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1SJ/jAOOG4bS/bz4yLvhp1fKZ13qhWE7xMWyt1RgwjU=; b=oHV
	Rsq4mCzzKTYNtSpwtYcKNZMu2KicYR+MqGBXg7qN7UFxc0Fx2PeBPg/ICNXYpS6t37O6gJS5wtz4V
	tu0lkLOzZgefgNBa83+Z+zuAnTdK1h5NYn3iq3YK7bT8BG6Et+D2QAHHxIj+8odRVRVl1ioPyF897
	Uw4Fl2YFBXD2s6cfo6JuIuhtFs6V1GkT6Gf3C25wS3d80/ebzWrCAxhQdVOE96tfR07935HXPTvI7
	l+aQvH3osEATZepqXmENRZL2rFwPBHwxBC6fLU3ENyzozO6Cfykv4KQ7i6kLpVlWIGQOdJvKVX35C
	9Z7D+EBpcCyMTTsExWy0CxmdL6s+O4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1GmP-0002Tz-JH; Mon, 10 Feb 2020 21:39:45 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1GmH-0002T6-5r
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 21:39:39 +0000
Received: by mail-wr1-x444.google.com with SMTP id w12so9676107wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 13:39:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=6oIieVyHz+8Iv3bRfW5vGqMYr+WnaVMb6rPDak3UbxY=;
 b=d7whKnMCCgC1xFBwxZmL6F0xxOIGyrRCFLYhOEoREnBLU7uoHpCYzYTboa2Uhy8s2t
 vcev8KgIY6+eivICrYYl4nGfET7L91gWmVpjBDb5X4Y1dWfaG29TQb91RN3Nb2fOBr7B
 +gWny4pyvKWUbBMDxNoo6a0CYgVszrx+6wsuWJbm5y5TETt/B9AS/fp/E6h7RFaVBGSt
 fRgAP6BUAl4t+g0LA5oQg6nncb3euxsVNIaThWl1m091Jn0IL0hOiizrz0zQFw+HOsrb
 nTE87qSHXp9NxofEWv/o/zulNSd4lGsr76svT++uACAv5tEc2Z3Bw1lWx9IjcsaEhl7M
 +tCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6oIieVyHz+8Iv3bRfW5vGqMYr+WnaVMb6rPDak3UbxY=;
 b=l+IF2f3HfZbl23VYtSRpR4J0b4vGUnS9AFNieOtxmlBa6XTZu8w2MtZYao7jGeJxcg
 a5L8dTOsv9Tsn0G0q8FlrLTTT5QjVxm/YdxLoNpk8jB7DEWLuToKWhlulFwuBZj5Yy3E
 kVSD5mcYY9RBBOLv+FSrMRjtm/tyrGrP1pd6ZbRArF/nM2S+IbCwIY7BGKk5a3TZYvJO
 +8uPzGxnAA2yZBIhRfTQ+d6RUUm5gl1NxO5nSY7/fKrUHiXrVN8DakevwI3yTcbz2VYX
 SPsPSgCSl2A2/ZXO9rdSBfldFZ8JjQqOOdgjYBvNdGe4eLL3HQUAShdG2+LO0Dkw1Qk5
 WGLQ==
X-Gm-Message-State: APjAAAU9QyyXOZBlTf+DYs0384KI6EWKt5/7tlDoqNlhW2bm1B8u/XKO
 /pGV0uX9heu6fx7HVhSSOQW9PA==
X-Google-Smtp-Source: APXvYqylCnt1h+aWJLVaieqgIzlpcvLdu9GTYCquy+tOi7cFbH0Fr9NOOh0YLX6zEsU3ODpGHjU5aA==
X-Received: by 2002:adf:ecc2:: with SMTP id s2mr4053361wro.263.1581370773857; 
 Mon, 10 Feb 2020 13:39:33 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:a1cf:b00b:5683:ed40])
 by smtp.gmail.com with ESMTPSA id u14sm2118582wrm.51.2020.02.10.13.39.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 13:39:33 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v9 00/15] CoreSight CTI Driver
Date: Mon, 10 Feb 2020 21:39:09 +0000
Message-Id: <20200210213924.20037-1-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_133937_227007_E6589CF1 
X-CRM114-Status: GOOD (  19.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 suzuki.poulose@arm.com, linux-arm-msm@vger.kernel.org, corbet@lwn.net,
 liviu.dudau@arm.com, agross@kernel.org, robh+dt@kernel.org, maxime@cerno.tech,
 sudeep.holla@arm.com
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

Tested on DB410 board and Juno board, against the Linux 5.6-rc1, 5.5 trees.

Changes since v8:
1) Use devm_ allocation in cti_match_fixup_csdev() to match other allocations.
2) Minor comment update per request.

Changes since v7:
NB: No functional driver changes in this set. Full set released for
consistency, completeness and ease of use.
1) Updates to device tree bindings .yaml following comments from Rob Herring.
   Adds #size-cells and #address-cells to properties and constrained as
   required. Validated using dt_binding_check.
2) Minor typo fixes to cti documentation file.

Changes since v6:
NB: No functional driver changes in this set. Full set released for
consistency, completeness and ease of use.
1) Updates to .yaml following comments from Maxime Ripard. Correct child node
   descriptions, fix validation, and ensure reg entries required in child
   nodes as per DeviceTree specification.
2) Update to Juno bindings to implement reg entry specification requirements.

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
in this set

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
 .../bindings/arm/coresight-cti.yaml           |  336 +++++
 .../devicetree/bindings/arm/coresight.txt     |    7 +
 .../trace/coresight/coresight-ect.rst         |  211 +++
 Documentation/trace/coresight/coresight.rst   |   13 +
 MAINTAINERS                                   |    3 +
 arch/arm64/boot/dts/arm/juno-base.dtsi        |  162 ++-
 arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi     |   37 +-
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
 .../hwtracing/coresight/coresight-platform.c  |   20 +
 drivers/hwtracing/coresight/coresight-priv.h  |   15 +
 drivers/hwtracing/coresight/coresight.c       |   86 +-
 include/dt-bindings/arm/coresight-cti-dt.h    |   37 +
 include/linux/coresight.h                     |   27 +
 24 files changed, 4101 insertions(+), 31 deletions(-)
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
