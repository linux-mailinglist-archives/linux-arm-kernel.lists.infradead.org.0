Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DEA10301A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 00:24:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c49CPhMintcUECrP7FpCKZ6AuwlUQH9/JApgadc38gQ=; b=aYHcSuJ4FNwpv525nvKgdj08Jj
	LTne8q900kA8OnTD6HvfVUTcHvLqy17nO7aqVS6Tt0J8S1IqMOH4Ur7qj1tfzxnjVdCWbSdlzsg1M
	PXK+jVjcfSEhHUW8v4YwWjewBM+HyfbpUnFvI9hZ43+h3RRvObbPrDrncF2ddQafIem/neAWLa9qj
	WrtsK/Tz05dpaG4obITzCrtAtWBP3vy504TDhIpruubAZbnObiPT3z2yL/H9iHf7DK1pYs93LwxgG
	pxP4nLIGyn2mmjvgtlILRD/4jluLmOFPYFk3krI0bJ8UrbJCuaghazXhiwB6WqnzTKOSHf3j8a++e
	NfrkaIMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXCr2-0003nm-Dc; Tue, 19 Nov 2019 23:24:16 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXCmV-0007Ym-Q1
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 23:19:41 +0000
Received: by mail-wm1-x341.google.com with SMTP id l17so5092904wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 15:19:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+D37NIkKX+pRSTJ2wrFIBF9cOZPGjjvqmStorp3L1B0=;
 b=yEmurrRPv/1tYtj5OVA+YGN/BGcwMSC87OkbwOCVrzfbfjRN0pUZpB8Z0dkaS6SaEu
 uONfhB+twYfTn9cgStyWkBjjDuDSWgQSBmXpqK0swO5Fl0wQ24wMTcWYfWPnSdUAoDzi
 rgRw6xT3VIrEFvPhA9BY4ag1Y/Gvno8UWAl3oAr0WltrVw4IEt7IgWao0tuDXcx6Sept
 1rfxCURtXv9SLZVg1obnY+WOnSALli2nUtw91hwyiUBRmopviqX922ywAYmOkQ2Mc8OD
 u2lIlRVCx36p5md5i3mzjicPRtGXEmi3HdUPJ9foqZuAAgXlYcQUXSaHaux98eUs7oW4
 J4mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+D37NIkKX+pRSTJ2wrFIBF9cOZPGjjvqmStorp3L1B0=;
 b=icEKqeayvnpubKICYaSZynvjRmZEzByUOaNqoc7HTzuBFRmOw+p9y2sR9VO1HVqtCV
 VoHdgDAdDD1T3aIJHNtEYseec/uJYKzOYJiaZ/2aq+T4cRwIfPYls3AScOc0i/Tea1IR
 YRp1UXQTo41vgo1ZGIA4GNc3dSr+9Q/HmZY7NCLcvVkOiqiufKSy4+PKkUpBujzfqZ2Z
 1SHRi5t9hkaNM5HJvYWBQRwNO+6V7HXCahO311xFLeKSiTBRxsS7DRnl05BF8VgK1MoK
 KJIu313ISWZQJ03yCQC/nArepThtLImhSTdrsSxJ7VycsSHi3kKSC7PWp3Rn+iNSoOUU
 i/FQ==
X-Gm-Message-State: APjAAAXYmVfem2qLKBKVERhk7P56sOkNIHr/VEV+jZbJ9L+0oaOrHoM/
 HYIMut+jNV4NqbZouHTvGLLIzQ==
X-Google-Smtp-Source: APXvYqxVa/mEa49iKuoo7zcBEv+FpSMDYmArq84MeKriZZo9LGZjuUFcbcewkYOCcisujvvQuZw8uA==
X-Received: by 2002:a1c:a5c8:: with SMTP id o191mr356585wme.168.1574205573003; 
 Tue, 19 Nov 2019 15:19:33 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:a19d:4139:292b:19a0])
 by smtp.gmail.com with ESMTPSA id m15sm15746717wrj.52.2019.11.19.15.19.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 15:19:32 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v5 13/14] docs: coresight: Update documentation for CoreSight
 to cover CTI.
Date: Tue, 19 Nov 2019 23:19:11 +0000
Message-Id: <20191119231912.12768-14-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191119231912.12768-1-mike.leach@linaro.org>
References: <20191119231912.12768-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_151936_960696_B653CA04 
X-CRM114-Status: GOOD (  22.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

Add new document covering CTI / CTM usage in CoreSight.

Add section in coresight.rst introducing CTI and CTM modules with link
to new document.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 .../trace/coresight/coresight-ect.rst         | 200 ++++++++++++++++++
 Documentation/trace/coresight/coresight.rst   |  13 ++
 2 files changed, 213 insertions(+)
 create mode 100644 Documentation/trace/coresight/coresight-ect.rst

diff --git a/Documentation/trace/coresight/coresight-ect.rst b/Documentation/trace/coresight/coresight-ect.rst
new file mode 100644
index 000000000000..6448cf910f20
--- /dev/null
+++ b/Documentation/trace/coresight/coresight-ect.rst
@@ -0,0 +1,200 @@
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
+activiating connected output triggers there, unless filtered by the CTI
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
+that core. the ``cti_sys<N>`` CTIs are general system infrastructure CTIs that
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
+the multiple register operations that are required if manipluating the
+'regs' sub-dir elements directly.
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
+   * ``chan_set``: Set the channel - the set state will be propogated around
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
+   .../cti_sys0/channels# cat ../regs/trigoutstatus
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
