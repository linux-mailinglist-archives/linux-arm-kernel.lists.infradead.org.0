Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E382D16F3C4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 00:47:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hIUJ5Z/f/IuvXhtn0LMZTmKhRK+Cl1bkUDgIQ4walLc=; b=EE6
	w1Z3ASjOhXkmUm71DPZ4MZr7IzAb5fJtd2MFOWh5f9IPyv+VyqB3opZGDfxb8Fco9ru4SZSfgYEv+
	YPpbDSprIQK1Zoiabvm4exOX6vahODBK2lYKiG7gfvN8m9qnCI3AqmBLkdkwgVahNn7xVbcBfyEWC
	l8j68dteh33xjUBNJefUmPbTDN0cTQ3DcGpUT5DZVOeEQR8KlzOaS7PzAA4/NZaBglBoAGCWll7Fr
	y6NhL9Sgkp8UtCgP+5OJGs0SWEyixo+StZP0+WuCkNxzSsVJtQRtZ9J7gtedDd4i61Oq1gr3gkZZP
	WKMwV7ZCWSLxJAzQ11tCglDVI0us6WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6juh-00079Y-PA; Tue, 25 Feb 2020 23:46:56 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6juK-00078J-Am
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 23:46:34 +0000
Received: by mail-wm1-x342.google.com with SMTP id z12so1046860wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 15:46:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=fbkLOmZ8Go99iOGRJzNxrz6cSg0DpjXhu94ql/lODcg=;
 b=j9Ce9LQAUmIyg4Yqi2od+rR7YVmfz74eL4t4Ms7eb+szvLjySY8V3Ny98nptx/H+qD
 haoOA1hPySmP33P7zX5h3Q8Oyuzt5qELTsmaEkZq4IaKlAkPWo2XfSnNrlJMibWGw5Ww
 WSRBGNW4dE9IL4JUkQ0OWKLxZ0dUS5pGIfjKSjRmvf/c3YKfgBG55O+tuqf5Ob7VUzg+
 EQT7KsgRJ76QkxxdB1AA1jC/i3uPKo524Dw8AnwXW1t4O1iU6MWFoItS8qyO0DYuXRRt
 5Koj0OlZ1EVKpSrcmP0ToSlHY1nOvgbh4Tsu6rEFyafEd4exYJsgUEeWwbIYW8ISEpYd
 /EbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=fbkLOmZ8Go99iOGRJzNxrz6cSg0DpjXhu94ql/lODcg=;
 b=UCANdJ1Fe9kifb9n7Cc5cgy8x6pckA+O/2qcboUlwyTopr3fv3Sz98JAhlofb1niz6
 89Z8dgl2wmuVn40cgV+Wc/D2TI7sDZ3vAKmED14zL7nXsDr+i11qiM6dM89n/pqxo3Yd
 33iej/0+hbNK5Wm/8MuLk6Bm5o5kYx2Dhfzh3DMI9lzKSNi4NZ8NQN9hRDQ0mw5QcvEr
 KKBHzZleprXAgmIhuo9rd9IyNmzqNIlrsW15L6KK1peqYocYF+Lm3zsp9W56HGF7BI6y
 UzwzicYSuzDPspEMacxh3MtzMxmbkAxLyBz8e+2ayXo8+zKk6gcv9gJAA/4dRscrraPG
 SYbA==
X-Gm-Message-State: APjAAAXzvaYzxnNjKF+yfKUa7bFSI4NXXN53OodTT1bfjdqM7V1tHmxw
 G13z2Gpv6dktiArmSTle6NtyByBG9H4=
X-Google-Smtp-Source: APXvYqzzKHzCyDqbs+LVu4ZDBUkLUqtiZFbmKVYqpa+j4R8Uw5p83Ns6u9a5RRg6ygPmhAFPhe4E2A==
X-Received: by 2002:a1c:720a:: with SMTP id n10mr1553254wmc.103.1582674390064; 
 Tue, 25 Feb 2020 15:46:30 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:186c:5f6c:221d:5ce])
 by smtp.gmail.com with ESMTPSA id t133sm356278wmf.31.2020.02.25.15.46.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 15:46:29 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 coresight@lists.linaro.org, linux-doc@vger.kernel.org
Subject: [PATCH v10 00/15] CoreSight CTI Driver
Date: Tue, 25 Feb 2020 23:45:56 +0000
Message-Id: <20200225234611.11067-1-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_154632_938812_C5CA62BD 
X-CRM114-Status: GOOD (  19.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: lorenzo.pieralisi@arm.com, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com, linux-arm-msm@vger.kernel.org, corbet@lwn.net,
 liviu.dudau@arm.com, agross@kernel.org, robh+dt@kernel.org, maxime@cerno.tech,
 sudeep.holla@arm.com, Mike Leach <mike.leach@linaro.org>
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

Tested on DB410 board and Juno board, against the Linux 5.6-rc3 tree.

Changes since v9:
1) Removed 2 unneeded devm_kstrdup calls, fixed error check on another.
2) Fixed variable array declaration from [0] to [].

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
  coresight: cti: Add sysfs coresight mgmt reg access
  coresight: cti: Add sysfs access to program function regs
  coresight: cti: Add sysfs trigger / channel programming API
  dt-bindings: arm: Adds CoreSight CTI hardware definitions
  coresight: cti: Add device tree support for v8 arch CTI
  coresight: cti: Add device tree support for custom CTI
  coresight: cti: Enable CTI associated with devices
  coresight: cti: Add connection information to sysfs
  dt-bindings: qcom: Add CTI options for qcom msm8916
  dt-bindings: arm: Juno platform - add CTI entries to device tree
  dt-bindings: hisilicon: Add CTI bindings for hi-6220
  docs: coresight: Update documentation for CoreSight to cover CTI
  docs: sysfs: coresight: Add sysfs ABI documentation for CTI
  Update MAINTAINERS to add reviewer for CoreSight

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
 drivers/hwtracing/coresight/coresight-cti.c   |  745 +++++++++++
 drivers/hwtracing/coresight/coresight-cti.h   |  235 ++++
 .../hwtracing/coresight/coresight-platform.c  |   20 +
 drivers/hwtracing/coresight/coresight-priv.h  |   15 +
 drivers/hwtracing/coresight/coresight.c       |   86 +-
 include/dt-bindings/arm/coresight-cti-dt.h    |   37 +
 include/linux/coresight.h                     |   27 +
 24 files changed, 4098 insertions(+), 31 deletions(-)
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
