Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EF616F3D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 00:50:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/5vKKswdzHK2LR7hT9n8aeTYO/HvypVtdY9geZLa/Fk=; b=H4cCgtJ8C3yaKMqEo8vj4xwdFm
	gDYD0ca7FZDrtiEnEA4l7wRthZRXDcaAzhBJVWQkCcYPKYX8WnX/7feLQRG+586y71vTSwweGi7rK
	D0NqvVeZhpDKT/Igz5FL6M/UvQFEIdScRUmBwa71LsvpTCYEZrEGwAM+A/rAiEBj/4/SE0ZjYcfgT
	G4oH5UVc+YJPlP53xnn2xKPIhA0quYuiipRfcCxHM3tU3UNtmgEWRZvUqJRUBGz7CJoosYTZSnCEc
	2pbD1vjin3aX/O2ErSmsIWkBJY37D1lIz4Ys6E5HK5Sbc4Zl/nz6EUSG2NiqqKQvDPBPd1AaGrf2C
	IX7eQ9Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6jyD-0001tT-GE; Tue, 25 Feb 2020 23:50:33 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6jud-0007LT-Or
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 23:46:55 +0000
Received: by mail-wm1-x343.google.com with SMTP id m10so3284801wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 15:46:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OcxWNW6LfBQJpYiN+kUUxH4jBvZHhVuHOK/JnYNCRzA=;
 b=QY9hq5N49ov+N6BzxOgtkgFHIqHF4XqS9sTQ1FO23ovmIlDs1dlGEwTJ0k/Zg9dZ4F
 MBeFV/l/049qpmw6Ny0fuHplIjx/VwdPqDbMawGwG0EDs6KEbLpSXGoNRgMm1zT55zTy
 U6q+Awhlv4DyEKw6vdMim03OaxUpgQzOvgM4/L+9X79fUm3N0i7iWwz7M+ovRmojMzbJ
 6vW/GO4InyK6Anh1q7gMUqjFwLxWMlwvcQR9Idxv57SZgDp1ELSoJx3kivyKcjf2+w/6
 UpgArrnLjkryjXh1nJnVbbrKIjqtw/OmNRtGNQEZ2YSXlwCMCJe05M0EDCqqWoJMbDU+
 83gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OcxWNW6LfBQJpYiN+kUUxH4jBvZHhVuHOK/JnYNCRzA=;
 b=ngDy55E0Ygt26d5S+uzM890iTQQG37i7ueiVTUj0GOCGbsB3wIsPVpPdHFE003m+7o
 bkvqFvXHE+S67K8/tVfbG2RhvaC/fXpzy4F0E1kiB2fe2w+QbUneaSeJu7bZoip0VrQe
 FWbD0B/qqNFFSzg0LPxTxpD72eVw9r+Wq1EchDGHoysVqWyqVq8oL9KQc8gats6skS3Z
 rKPJrMmaVTRM5PXBTWx6QMSYyF/Nh3dsBxBJ/kC6QHEEu0OgOeZnsAw3U0aX+aq3KILc
 zkGTsNYALi1nbVUuKNTf1XsvIaKBHGOJJo0HoeVGq19fWdedoVUSIPymi65O8XjG7zfO
 iGYQ==
X-Gm-Message-State: APjAAAVe90UAf3OZmygj3sJW93WY7Qikk4Y2c/uDkRQdyRrx5tDJbQAa
 Zd02H/jPtq0g5cZvk1GwufzlSq4Om7M=
X-Google-Smtp-Source: APXvYqxKE+zAVc340L1oa4BHT4oDHBdWCic7vvpoOn1osKfKm96+SwsgjXtohz7o5Y+gsTdVm6iIxA==
X-Received: by 2002:a1c:9d0a:: with SMTP id g10mr1128411wme.125.1582674409463; 
 Tue, 25 Feb 2020 15:46:49 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:186c:5f6c:221d:5ce])
 by smtp.gmail.com with ESMTPSA id t133sm356278wmf.31.2020.02.25.15.46.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 15:46:48 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 coresight@lists.linaro.org, linux-doc@vger.kernel.org
Subject: [PATCH v10 13/15] docs: coresight: Update documentation for CoreSight
 to cover CTI
Date: Tue, 25 Feb 2020 23:46:09 +0000
Message-Id: <20200225234611.11067-14-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200225234611.11067-1-mike.leach@linaro.org>
References: <20200225234611.11067-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_154652_038941_9739814E 
X-CRM114-Status: GOOD (  23.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

Add new document covering CTI / CTM usage in CoreSight.

Add section in coresight.rst introducing CTI and CTM modules with link
to new document.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Randy Dunlap <rdunlap@infradead.org>
---
 .../trace/coresight/coresight-ect.rst         | 211 ++++++++++++++++++
 Documentation/trace/coresight/coresight.rst   |  13 ++
 2 files changed, 224 insertions(+)
 create mode 100644 Documentation/trace/coresight/coresight-ect.rst

diff --git a/Documentation/trace/coresight/coresight-ect.rst b/Documentation/trace/coresight/coresight-ect.rst
new file mode 100644
index 000000000000..067cee91c857
--- /dev/null
+++ b/Documentation/trace/coresight/coresight-ect.rst
@@ -0,0 +1,211 @@
+=============================================
+CoreSight Embedded Cross Trigger (CTI & CTM).
+=============================================
+
+    :Author:   Mike Leach <mike.leach@linaro.org>
+    :Date:     November 2019
+
+Hardware Description
+--------------------
+
+The CoreSight Cross Trigger Interface (CTI) is a hardware device that takes
+individual input and output hardware signals known as triggers to and from
+devices and interconnects them via the Cross Trigger Matrix (CTM) to other
+devices via numbered channels, in order to propagate events between devices.
+
+e.g.::
+
+ 0000000  in_trigs  :::::::
+ 0 C   0----------->:     :             +======>(other CTI channel IO)
+ 0  P  0<-----------:     :             v
+ 0   U 0  out_trigs :     : Channels  *****      :::::::
+ 0000000            : CTI :<=========>*CTM*<====>: CTI :---+
+ #######  in_trigs  :     : (id 0-3)  *****      :::::::   v
+ # ETM #----------->:     :                         ^   #######
+ #     #<-----------:     :                         +---# ETR #
+ ####### out_trigs  :::::::                             #######
+
+The CTI driver enables the programming of the CTI to attach triggers to
+channels. When an input trigger becomes active, the attached channel will
+become active. Any output trigger attached to that channel will also
+become active. The active channel is propagated to other CTIs via the CTM,
+activating connected output triggers there, unless filtered by the CTI
+channel gate.
+
+It is also possible to activate a channel using system software directly
+programming registers in the CTI.
+
+The CTIs are registered by the system to be associated with CPUs and/or other
+CoreSight devices on the trace data path. When these devices are enabled the
+attached CTIs will also be enabled. By default/on power up the CTIs have
+no programmed trigger/channel attachments, so will not affect the system
+until explicitly programmed.
+
+The hardware trigger connections between CTIs and devices is implementation
+defined, unless the CPU/ETM combination is a v8 architecture, in which case
+the connections have an architecturally defined standard layout.
+
+The hardware trigger signals can also be connected to non-CoreSight devices
+(e.g. UART), or be propagated off chip as hardware IO lines.
+
+All the CTI devices are associated with a CTM. On many systems there will be a
+single effective CTM (one CTM, or multiple CTMs all interconnected), but it is
+possible that systems can have nets of CTIs+CTM that are not interconnected by
+a CTM to each other. On these systems a CTM index is declared to associate
+CTI devices that are interconnected via a given CTM.
+
+Sysfs files and directories
+---------------------------
+
+The CTI devices appear on the existing CoreSight bus alongside the other
+CoreSight devices::
+
+    >$ ls /sys/bus/coresight/devices
+     cti_cpu0  cti_cpu2  cti_sys0  etm0  etm2  funnel0  replicator0  tmc_etr0
+     cti_cpu1  cti_cpu3  cti_sys1  etm1  etm3  funnel1  tmc_etf0     tpiu0
+
+The ``cti_cpu<N>`` named CTIs are associated with a CPU, and any ETM used by
+that core. The ``cti_sys<N>`` CTIs are general system infrastructure CTIs that
+can be associated with other CoreSight devices, or other system hardware
+capable of generating or using trigger signals.::
+
+  >$ ls /sys/bus/coresight/devices/etm0/cti_cpu0
+  channels  ctmid  enable  nr_trigger_cons mgmt  power  regs  subsystem
+  triggers0 triggers1  uevent
+
+*Key file items are:-*
+   * ``enable``: enables/disables the CTI.
+   * ``ctmid`` : associated CTM - only relevant if system has multiple CTI+CTM
+     clusters that are not interconnected.
+   * ``nr_trigger_cons`` : total connections - triggers<N> directories.
+
+*Sub-directories:-*
+   * ``triggers<N>``: contains list of triggers for an individual connection.
+   * ``channels``: Contains the channel API - CTI main programming interface.
+   * ``regs``: Gives access to the raw programmable CTI regs.
+   * ``mgmt``: the standard CoreSight management registers.
+
+
+triggers<N> directories
+~~~~~~~~~~~~~~~~~~~~~~~
+
+Individual trigger connection information. This describes trigger signals for
+CoreSight and non-CoreSight connections.
+
+Each triggers directory has a set of parameters describing the triggers for
+the connection.
+
+   * ``name`` : name of connection
+   * ``in_signals`` : input trigger signal indexes used in this connection.
+   * ``in_types`` : functional types for in signals.
+   * ``out_signals`` : output trigger signals for this connection.
+   * ``out_types`` : functional types for out signals.
+
+e.g::
+
+    >$ ls ./cti_cpu0/triggers0/
+    in_signals  in_types  name  out_signals  out_types
+    >$ cat ./cti_cpu0/triggers0/name
+    cpu0
+    >$ cat ./cti_cpu0/triggers0/out_signals
+    0-2
+    >$ cat ./cti_cpu0/triggers0/out_types
+    pe_edbgreq pe_dbgrestart pe_ctiirq
+    >$ cat ./cti_cpu0/triggers0/in_signals
+    0-1
+    >$ cat ./cti_cpu0/triggers0/in_types
+    pe_dbgtrigger pe_pmuirq
+
+If a connection has zero signals in either the 'in' or 'out' triggers then
+those parameters will be omitted.
+
+Channels API Directory
+~~~~~~~~~~~~~~~~~~~~~~
+
+This provides an easy way to attach triggers to channels, without needing
+the multiple register operations that are required if manipulating the
+'regs' sub-directory elements directly.
+
+A number of files provide this API::
+
+   >$ ls ./cti_sys0/channels/
+   chan_clear         chan_inuse         chan_xtrigs_view      trigin_detach
+   chan_free          chan_pulse         chan_xtrigs_view_sel  trigout_attach
+   chan_gate_disable  chan_set           trig_filter_enable    trigout_detach
+   chan_gate_enable   chan_xtrigs_reset  trigin_attach         trigout_filtered
+
+Most access to these elements take the form::
+
+  echo <chan> [<trigger>] > /<device_path>/<operation>
+
+where the optional <trigger> is only needed for trigXX_attach | detach
+operations.
+
+e.g.::
+
+   >$ echo 0 1 > ./cti_sys0/channels/trigout_attach
+   >$ echo 0 > ./cti_sys0/channels/chan_set
+
+Attaches trigout(1) to channel(0), then activates channel(0) generating a
+set state on cti_sys0.trigout(1)
+
+
+*API operations*
+
+   * ``trigin_attach, trigout_attach``: Attach a channel to a trigger signal.
+   * ``trigin_detach, trigout_detach``: Detach a channel from a trigger signal.
+   * ``chan_set``: Set the channel - the set state will be propagated around
+     the CTM to other connected devices.
+   * ``chan_clear``: Clear the channel.
+   * ``chan_pulse``: Set the channel for a single CoreSight clock cycle.
+   * ``chan_gate_enable``: Write operation sets the CTI gate to propagate
+     (enable) the channel to other devices. This operation takes a channel
+     number. CTI gate is enabled for all channels by default at power up. Read
+     to list the currently enabled channels on the gate.
+   * ``chan_gate_disable``: Write channel number to disable gate for that
+     channel.
+   * ``chan_inuse``: Show the current channels attached to any signal
+   * ``chan_free``: Show channels with no attached signals.
+   * ``chan_xtrig_view``: write a channel number to select a channel to view,
+     read to show the cross triggers programmed for the selected channel.
+   * ``trig_filter_enable``: Defaults to enabled, disable to allow potentially
+     dangerous output signals to be set.
+   * ``trigout_filtered``: Trigger out signals that are prevented from being
+     set if filtering ``trig_filter_enable`` is enabled. One use is to prevent
+     accidental ``EDBGREQ`` signals stopping a core.
+   * ``chan_xtrigs_reset``: Write 1 to clear all channel / trigger programming.
+     Resets device hardware to default state.
+
+
+The example below attaches input trigger index 1 to channel 2, and output
+trigger index 6 to the same channel. It then examines the state of the
+channel / trigger connections using the appropriate sysfs attributes.
+
+The settings mean that if either input trigger 1, or channel 2 go active then
+trigger out 6 will go active. We then enable the CTI, and use the software
+channel control to activate channel 2. We see the active channel on the
+``choutstatus`` register and the active signal on the ``trigoutstatus``
+register. Finally clearing the channel removes this.
+
+e.g.::
+
+   .../cti_sys0/channels# echo 2 1 > trigin_attach
+   .../cti_sys0/channels# echo 2 6 > trigout_attach
+   .../cti_sys0/channels# cat chan_free
+   0-1,3
+   .../cti_sys0/channels# cat chan_inuse
+   2
+   .../cti_sys0/channels# echo 2 > chan_xtrigs_view
+   .../cti_sys0/channels# cat chan_xtrigs_view
+   [2] IN: 1 OUT: 6
+   .../cti_sys0/# echo 1 > enable
+   .../cti_sys0/channels# echo 2 > chan_set
+   .../cti_sys0/channels# cat ../regs/choutstatus
+   0x4
+   .../cti_sys0/channels# cat ../regs/trigoutstatus
+   0x40
+   .../cti_sys0/channels# echo 2 > chan_clear
+   .../cti_sys0/channels# cat ../regs/trigoutstatus
+   0x0
+   .../cti_sys0/channels# cat ../regs/choutstatus
+   0x0
diff --git a/Documentation/trace/coresight/coresight.rst b/Documentation/trace/coresight/coresight.rst
index a566719f8e7e..108600ee1e12 100644
--- a/Documentation/trace/coresight/coresight.rst
+++ b/Documentation/trace/coresight/coresight.rst
@@ -491,8 +491,21 @@ interface provided for that purpose by the generic STM API::
 
 Details on how to use the generic STM API can be found here:- :doc:`../stm` [#second]_.
 
+The CTI & CTM Modules
+---------------------
+
+The CTI (Cross Trigger Interface) provides a set of trigger signals between
+individual CTIs and components, and can propagate these between all CTIs via
+channels on the CTM (Cross Trigger Matrix).
+
+A separate documentation file is provided to explain the use of these devices.
+(:doc:`coresight-ect`) [#fourth]_.
+
+
 .. [#first] Documentation/ABI/testing/sysfs-bus-coresight-devices-stm
 
 .. [#second] Documentation/trace/stm.rst
 
 .. [#third] https://github.com/Linaro/perf-opencsd
+
+.. [#fourth] Documentation/trace/coresight/coresight-ect.rst
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
