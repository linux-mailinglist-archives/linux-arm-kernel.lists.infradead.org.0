Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FA76399C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 18:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nGBavVmXoyRBJTI7WtQP6qL+e0PWGdb3lSl8NxXTs5I=; b=SV1XbpJtCBmOwwegmY5UWjEw7x
	W14pReB7ai83WcTMGdi2HnRWBjCQpvhKXqvete6cBZNhU3vlMB7ReywHtzN56sf1iq5R7NrvqBCoH
	rEFm8qcZbbbVP3TCXAw3v10TsjGusVHH63t6ttEmSsja7UIl/TkCl18PqwwIFOnYjKRe9aMF1GxoN
	iCHJothqPWvD8EOLBRqbgrgii+S5kvFIhPUybhTp15BIuWzQ0WuQZyy/6LZSTeJj8o8Hek1L8+TUp
	N48qkaj6OmPQB5zJVSgNbWjHF0X5b2gzl/1C9gbjQdDvDK8/KOzr06UebinJ2XcDm1W62ztkaEw6M
	T3l5kSVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hktCE-0004Ja-P9; Tue, 09 Jul 2019 16:42:26 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hktC2-0004It-DI
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 16:42:17 +0000
Received: by mail-pg1-x543.google.com with SMTP id p10so9739529pgn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 09:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=f3PWe89T9EsJ9EBevcPPMOUjKPuMFj5LWN7iVtxL/K0=;
 b=G9niJZq4ecF2tRizkC1nCrLMrxquKWa2x094P4s0+PwB1n/UrCE6dpydw1A4lD8SXm
 oFsBgr8pjyqs8k8Td+Q/n1VqXJ9yTOkqUxMsuOl60HVhieOPVrUMhisFB+jNu0R+fIkA
 f+laHzbt62qOC+B72Ft14ySp6CE4gH6YjIHriZ1vmnKyL0VQe4IPR8NNYoTkGiSXstNE
 /Cha2kWdeN4e6cGv+aUwPYtOxkm8KP68x2c2s4iLaPhsgcgWc8BWYl53xHk7rtNV++hg
 NPA4j8TlUXvXnn+kSkUtV1Z1D69/ZQ5HvLYnO+SOM8w5rIGUJ1XjFc6bTzXhRlykjdVR
 VAJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=f3PWe89T9EsJ9EBevcPPMOUjKPuMFj5LWN7iVtxL/K0=;
 b=mrz2GOaZbrDcCLBZjqrM9sntSEEvdJ6cJA9Zi5AS5o7Zgo4O+V8QLe8Jw8X4o/LCv5
 +achlKnk9xlN8nHdzzMS6UPWKt4SLOmwWLt/QrFA1k1TnWKKVLrGarKYTCtr6/suJzxf
 O3nSLRVkiKAySm/cxmqB2Bw3vKU6KB/aWriDNRhruvSoadpwjo45PCioMeZyOJ4pK7DH
 YKeV1IUY7FHfFnQn262MjgjHEbTXfWC7bv7PpaM6SjL9y3uKX/MwimwSgGqDO2SNIOsB
 xvxQBNlW6kVleCYLQLOXBVqRBYII0m1is73FLWgxHmkxggfSq/WOtRoBJpzOB1M9hlYc
 jr2g==
X-Gm-Message-State: APjAAAVQa3XjeHJKZ30Rm+ydPyEldjAGRv/82HyjcxOJYN7juhhXSjXl
 WC8maox1dk5yb1Cb+ezId7TDLykt
X-Google-Smtp-Source: APXvYqxeVoj66lyh4cCHwWFWVxJCxW+y0LI2PVKfNuW0vipecBWgqyglKwAnto8pcoeHE+9Z0kEo6g==
X-Received: by 2002:a63:1226:: with SMTP id h38mr31247873pgl.196.1562690532909; 
 Tue, 09 Jul 2019 09:42:12 -0700 (PDT)
Received: from debian.net.fpt ([2405:4800:58f7:563b:d56c:af4b:a9fa:e854])
 by smtp.gmail.com with ESMTPSA id y23sm21971595pfo.106.2019.07.09.09.42.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 09:42:11 -0700 (PDT)
From: Phong Tran <tranmanphong@gmail.com>
To: corbet@lwn.net,
	mathieu.poirier@linaro.org,
	leo.yan@linaro.org
Subject: [Patch V2] Documentation: coresight: covert txt to rst
Date: Tue,  9 Jul 2019 23:41:58 +0700
Message-Id: <20190709164158.3442-1-tranmanphong@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190705204512.15444-1-tranmanphong@gmail.com>
References: <20190705204512.15444-1-tranmanphong@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_094214_458172_82835752 
X-CRM114-Status: GOOD (  22.96  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tranmanphong[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: linux-doc@vger.kernel.org, tranmanphong@gmail.com, suzuki.poulose@arm.com,
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org, mchehab@kernel.org,
 linux-kernel-mentees@lists.linuxfoundation.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

as doc-guide of kernel documentation, use Sphinx tool to
generate the html/pdf... files.

This changes the plan text txt to rst format.

Signed-off-by: Phong Tran <tranmanphong@gmail.com>
---
ChangeLog:
V2:
  * Add coresight-cpu-debug
  * Update MAINTAINERS file
  * Avoid use markup as much as posible
---
 ...sight-cpu-debug.txt => coresight-cpu-debug.rst} |  63 ++--
 .../trace/{coresight.txt => coresight.rst}         | 352 +++++++++++----------
 Documentation/trace/index.rst                      |   2 +
 MAINTAINERS                                        |   4 +-
 4 files changed, 229 insertions(+), 192 deletions(-)
 rename Documentation/trace/{coresight-cpu-debug.txt => coresight-cpu-debug.rst} (84%)
 rename Documentation/trace/{coresight.txt => coresight.rst} (55%)

diff --git a/Documentation/trace/coresight-cpu-debug.txt b/Documentation/trace/coresight-cpu-debug.rst
similarity index 84%
rename from Documentation/trace/coresight-cpu-debug.txt
rename to Documentation/trace/coresight-cpu-debug.rst
index f07e38094b40..b219d75f4f8a 100644
--- a/Documentation/trace/coresight-cpu-debug.txt
+++ b/Documentation/trace/coresight-cpu-debug.rst
@@ -1,5 +1,6 @@
-		Coresight CPU Debug Module
-		==========================
+==========================
+Coresight CPU Debug Module
+==========================
 
    Author:   Leo Yan <leo.yan@linaro.org>
    Date:     April 5th, 2017
@@ -69,6 +70,7 @@ Before accessing debug registers, we should ensure the clock and power domain
 have been enabled properly. In ARMv8-a ARM (ARM DDI 0487A.k) chapter 'H9.1
 Debug registers', the debug registers are spread into two domains: the debug
 domain and the CPU domain.
+::
 
                                 +---------------+
                                 |               |
@@ -125,18 +127,21 @@ If you want to enable debugging functionality at boot time, you can add
 "coresight_cpu_debug.enable=1" to the kernel command line parameter.
 
 The driver also can work as module, so can enable the debugging when insmod
-module:
-# insmod coresight_cpu_debug.ko debug=1
+module::
+
+  # insmod coresight_cpu_debug.ko debug=1
 
 When boot time or insmod module you have not enabled the debugging, the driver
 uses the debugfs file system to provide a knob to dynamically enable or disable
 debugging:
 
-To enable it, write a '1' into /sys/kernel/debug/coresight_cpu_debug/enable:
-# echo 1 > /sys/kernel/debug/coresight_cpu_debug/enable
+To enable it, write a '1' into /sys/kernel/debug/coresight_cpu_debug/enable::
+
+  # echo 1 > /sys/kernel/debug/coresight_cpu_debug/enable
+
+To disable it, write a '0' into /sys/kernel/debug/coresight_cpu_debug/enable::
 
-To disable it, write a '0' into /sys/kernel/debug/coresight_cpu_debug/enable:
-# echo 0 > /sys/kernel/debug/coresight_cpu_debug/enable
+  # echo 0 > /sys/kernel/debug/coresight_cpu_debug/enable
 
 As explained in chapter "Clock and power domain", if you are working on one
 platform which has idle states to power off debug logic and the power
@@ -154,34 +159,34 @@ subsystem, more specifically by using the "/dev/cpu_dma_latency"
 interface (see Documentation/power/pm_qos_interface.txt for more
 details).  As specified in the PM QoS documentation the requested
 parameter will stay in effect until the file descriptor is released.
-For example:
+For example::
 
-# exec 3<> /dev/cpu_dma_latency; echo 0 >&3
-...
-Do some work...
-...
-# exec 3<>-
+  # exec 3<> /dev/cpu_dma_latency; echo 0 >&3
+  ...
+  Do some work...
+  ...
+  # exec 3<>-
 
 The same can also be done from an application program.
 
 Disable specific CPU's specific idle state from cpuidle sysfs (see
-Documentation/admin-guide/pm/cpuidle.rst):
-# echo 1 > /sys/devices/system/cpu/cpu$cpu/cpuidle/state$state/disable
+Documentation/admin-guide/pm/cpuidle.rst)::
 
+  # echo 1 > /sys/devices/system/cpu/cpu$cpu/cpuidle/state$state/disable
 
 Output format
 -------------
 
-Here is an example of the debugging output format:
-
-ARM external debug module:
-coresight-cpu-debug 850000.debug: CPU[0]:
-coresight-cpu-debug 850000.debug:  EDPRSR:  00000001 (Power:On DLK:Unlock)
-coresight-cpu-debug 850000.debug:  EDPCSR:  handle_IPI+0x174/0x1d8
-coresight-cpu-debug 850000.debug:  EDCIDSR: 00000000
-coresight-cpu-debug 850000.debug:  EDVIDSR: 90000000 (State:Non-secure Mode:EL1/0 Width:64bits VMID:0)
-coresight-cpu-debug 852000.debug: CPU[1]:
-coresight-cpu-debug 852000.debug:  EDPRSR:  00000001 (Power:On DLK:Unlock)
-coresight-cpu-debug 852000.debug:  EDPCSR:  debug_notifier_call+0x23c/0x358
-coresight-cpu-debug 852000.debug:  EDCIDSR: 00000000
-coresight-cpu-debug 852000.debug:  EDVIDSR: 90000000 (State:Non-secure Mode:EL1/0 Width:64bits VMID:0)
+Here is an example of the debugging output format::
+
+  ARM external debug module:
+  coresight-cpu-debug 850000.debug: CPU[0]:
+  coresight-cpu-debug 850000.debug:  EDPRSR:  00000001 (Power:On DLK:Unlock)
+  coresight-cpu-debug 850000.debug:  EDPCSR:  handle_IPI+0x174/0x1d8
+  coresight-cpu-debug 850000.debug:  EDCIDSR: 00000000
+  coresight-cpu-debug 850000.debug:  EDVIDSR: 90000000 (State:Non-secure Mode:EL1/0 Width:64bits VMID:0)
+  coresight-cpu-debug 852000.debug: CPU[1]:
+  coresight-cpu-debug 852000.debug:  EDPRSR:  00000001 (Power:On DLK:Unlock)
+  coresight-cpu-debug 852000.debug:  EDPCSR:  debug_notifier_call+0x23c/0x358
+  coresight-cpu-debug 852000.debug:  EDCIDSR: 00000000
+  coresight-cpu-debug 852000.debug:  EDVIDSR: 90000000 (State:Non-secure Mode:EL1/0 Width:64bits VMID:0)
diff --git a/Documentation/trace/coresight.txt b/Documentation/trace/coresight.rst
similarity index 55%
rename from Documentation/trace/coresight.txt
rename to Documentation/trace/coresight.rst
index efbc832146e7..fc9486b7bd87 100644
--- a/Documentation/trace/coresight.txt
+++ b/Documentation/trace/coresight.rst
@@ -1,5 +1,6 @@
-		Coresight - HW Assisted Tracing on ARM
-		======================================
+======================================
+Coresight - HW Assisted Tracing on ARM
+======================================
 
    Author:   Mathieu Poirier <mathieu.poirier@linaro.org>
    Date:     September 11th, 2014
@@ -26,7 +27,7 @@ implementation, either storing the compressed stream in a memory buffer or
 creating an interface to the outside world where data can be transferred to a
 host without fear of filling up the onboard coresight memory buffer.
 
-At typical coresight system would look like this:
+At typical coresight system would look like this::
 
   *****************************************************************
  **************************** AMBA AXI  ****************************===||
@@ -93,17 +94,17 @@ intricate IP blocks such as STM and CTI.
 Acronyms and Classification
 ---------------------------
 
-Acronyms:
+Acronyms::
 
-PTM:     Program Trace Macrocell
-ETM:     Embedded Trace Macrocell
-STM:     System trace Macrocell
-ETB:     Embedded Trace Buffer
-ITM:     Instrumentation Trace Macrocell
-TPIU:    Trace Port Interface Unit
-TMC-ETR: Trace Memory Controller, configured as Embedded Trace Router
-TMC-ETF: Trace Memory Controller, configured as Embedded Trace FIFO
-CTI:     Cross Trigger Interface
+   PTM:     Program Trace Macrocell
+   ETM:     Embedded Trace Macrocell
+   STM:     System trace Macrocell
+   ETB:     Embedded Trace Buffer
+   ITM:     Instrumentation Trace Macrocell
+   TPIU:    Trace Port Interface Unit
+   TMC-ETR: Trace Memory Controller, configured as Embedded Trace Router
+   TMC-ETF: Trace Memory Controller, configured as Embedded Trace FIFO
+   CTI:     Cross Trigger Interface
 
 Classification:
 
@@ -118,7 +119,7 @@ Misc:
 
 
 Device Tree Bindings
-----------------------
+--------------------
 
 See Documentation/devicetree/bindings/arm/coresight.txt for details.
 
@@ -133,57 +134,79 @@ The coresight framework provides a central point to represent, configure and
 manage coresight devices on a platform.  Any coresight compliant device can
 register with the framework for as long as they use the right APIs:
 
-struct coresight_device *coresight_register(struct coresight_desc *desc);
-void coresight_unregister(struct coresight_device *csdev);
+.. c:function:: struct coresight_device *coresight_register(struct coresight_desc *desc);
+.. c:function:: void coresight_unregister(struct coresight_device *csdev);
 
-The registering function is taking a "struct coresight_device *csdev" and
-register the device with the core framework.  The unregister function takes
-a reference to a "struct coresight_device", obtained at registration time.
+The registering function is taking a
+::
+
+    struct coresight_desc *desc
+
+and register the device with the core framework.  The unregister function takes
+a reference to a
+::
+
+   struct coresight_device *csdev
+
+The pointer csdev obtained at registration time.
 
 If everything goes well during the registration process the new devices will
-show up under /sys/bus/coresight/devices, as showns here for a TC2 platform:
+show up under /sys/bus/coresight/devices, as showns here for a TC2 platform::
 
-root:~# ls /sys/bus/coresight/devices/
-replicator  20030000.tpiu    2201c000.ptm  2203c000.etm  2203e000.etm
-20010000.etb         20040000.funnel  2201d000.ptm  2203d000.etm
-root:~#
+    root:~# ls /sys/bus/coresight/devices/
+    replicator  20030000.tpiu    2201c000.ptm  2203c000.etm  2203e000.etm
+    20010000.etb         20040000.funnel  2201d000.ptm  2203d000.etm
+    root:~#
 
-The functions take a "struct coresight_device", which looks like this:
+The functions take a struct coresight_device, which looks like this::
 
-struct coresight_desc {
-        enum coresight_dev_type type;
-        struct coresight_dev_subtype subtype;
-        const struct coresight_ops *ops;
-        struct coresight_platform_data *pdata;
-        struct device *dev;
-        const struct attribute_group **groups;
-};
+    struct coresight_desc {
+            enum coresight_dev_type type;
+            struct coresight_dev_subtype subtype;
+            const struct coresight_ops *ops;
+            struct coresight_platform_data *pdata;
+            struct device *dev;
+            const struct attribute_group **groups;
+    };
 
 
 The "coresight_dev_type" identifies what the device is, i.e, source link or
 sink while the "coresight_dev_subtype" will characterise that type further.
 
-The "struct coresight_ops" is mandatory and will tell the framework how to
+The struct coresight_ops is mandatory and will tell the framework how to
 perform base operations related to the components, each component having
-a different set of requirement.  For that "struct coresight_ops_sink",
-"struct coresight_ops_link" and "struct coresight_ops_source" have been
+a different set of requirement.  For that struct coresight_ops_sink,
+struct coresight_ops_link and struct coresight_ops_source have been
 provided.
 
-The next field, "struct coresight_platform_data *pdata" is acquired by calling
-"of_get_coresight_platform_data()", as part of the driver's _probe routine and
-"struct device *dev" gets the device reference embedded in the "amba_device":
+The next field
+::
+
+    struct coresight_platform_data *pdata
+
+is acquired by calling of_get_coresight_platform_data(), as part of
+the driver's _probe routine and
+::
 
-static int etm_probe(struct amba_device *adev, const struct amba_id *id)
-{
- ...
- ...
- drvdata->dev = &adev->dev;
- ...
-}
+    struct device *dev
+
+gets the device reference embedded in the amba_device::
+
+    static int etm_probe(struct amba_device *adev, const struct amba_id *id)
+    {
+     ...
+     ...
+     drvdata->dev = &adev->dev;
+     ...
+    }
 
 Specific class of device (source, link, or sink) have generic operations
-that can be performed on them (see "struct coresight_ops").  The
-"**groups" is a list of sysfs entries pertaining to operations
+that can be performed on them (see struct coresight_ops).  The
+::
+
+    const struct attribute_group **groups
+
+is a list of sysfs entries pertaining to operations
 specific to that component only.  "Implementation defined" customisations are
 expected to be accessed and controlled using those entries.
 
@@ -191,9 +214,12 @@ expected to be accessed and controlled using those entries.
 How to use the tracer modules
 -----------------------------
 
-There are two ways to use the Coresight framework: 1) using the perf cmd line
-tools and 2) interacting directly with the Coresight devices using the sysFS
-interface.  Preference is given to the former as using the sysFS interface
+There are two ways to use the Coresight framework:
+
+1. using the perf cmd line tools.
+2. interacting directly with the Coresight devices using the sysFS interface.
+
+Preference is given to the former as using the sysFS interface
 requires a deep understanding of the Coresight HW.  The following sections
 provide details on using both methods.
 
@@ -202,107 +228,107 @@ provide details on using both methods.
 Before trace collection can start, a coresight sink needs to be identified.
 There is no limit on the amount of sinks (nor sources) that can be enabled at
 any given moment.  As a generic operation, all device pertaining to the sink
-class will have an "active" entry in sysfs:
-
-root:/sys/bus/coresight/devices# ls
-replicator  20030000.tpiu    2201c000.ptm  2203c000.etm  2203e000.etm
-20010000.etb         20040000.funnel  2201d000.ptm  2203d000.etm
-root:/sys/bus/coresight/devices# ls 20010000.etb
-enable_sink  status  trigger_cntr
-root:/sys/bus/coresight/devices# echo 1 > 20010000.etb/enable_sink
-root:/sys/bus/coresight/devices# cat 20010000.etb/enable_sink
-1
-root:/sys/bus/coresight/devices#
+class will have an "active" entry in sysfs::
+
+    root:/sys/bus/coresight/devices# ls
+    replicator  20030000.tpiu    2201c000.ptm  2203c000.etm  2203e000.etm
+    20010000.etb         20040000.funnel  2201d000.ptm  2203d000.etm
+    root:/sys/bus/coresight/devices# ls 20010000.etb
+    enable_sink  status  trigger_cntr
+    root:/sys/bus/coresight/devices# echo 1 > 20010000.etb/enable_sink
+    root:/sys/bus/coresight/devices# cat 20010000.etb/enable_sink
+    1
+    root:/sys/bus/coresight/devices#
 
 At boot time the current etm3x driver will configure the first address
 comparator with "_stext" and "_etext", essentially tracing any instruction
 that falls within that range.  As such "enabling" a source will immediately
-trigger a trace capture:
-
-root:/sys/bus/coresight/devices# echo 1 > 2201c000.ptm/enable_source
-root:/sys/bus/coresight/devices# cat 2201c000.ptm/enable_source
-1
-root:/sys/bus/coresight/devices# cat 20010000.etb/status
-Depth:          0x2000
-Status:         0x1
-RAM read ptr:   0x0
-RAM wrt ptr:    0x19d3   <----- The write pointer is moving
-Trigger cnt:    0x0
-Control:        0x1
-Flush status:   0x0
-Flush ctrl:     0x2001
-root:/sys/bus/coresight/devices#
-
-Trace collection is stopped the same way:
-
-root:/sys/bus/coresight/devices# echo 0 > 2201c000.ptm/enable_source
-root:/sys/bus/coresight/devices#
-
-The content of the ETB buffer can be harvested directly from /dev:
-
-root:/sys/bus/coresight/devices# dd if=/dev/20010000.etb \
-of=~/cstrace.bin
-
-64+0 records in
-64+0 records out
-32768 bytes (33 kB) copied, 0.00125258 s, 26.2 MB/s
-root:/sys/bus/coresight/devices#
+trigger a trace capture::
+
+    root:/sys/bus/coresight/devices# echo 1 > 2201c000.ptm/enable_source
+    root:/sys/bus/coresight/devices# cat 2201c000.ptm/enable_source
+    1
+    root:/sys/bus/coresight/devices# cat 20010000.etb/status
+    Depth:          0x2000
+    Status:         0x1
+    RAM read ptr:   0x0
+    RAM wrt ptr:    0x19d3   <----- The write pointer is moving
+    Trigger cnt:    0x0
+    Control:        0x1
+    Flush status:   0x0
+    Flush ctrl:     0x2001
+    root:/sys/bus/coresight/devices#
+
+Trace collection is stopped the same way::
+
+    root:/sys/bus/coresight/devices# echo 0 > 2201c000.ptm/enable_source
+    root:/sys/bus/coresight/devices#
+
+The content of the ETB buffer can be harvested directly from /dev::
+
+    root:/sys/bus/coresight/devices# dd if=/dev/20010000.etb \
+    of=~/cstrace.bin
+    64+0 records in
+    64+0 records out
+    32768 bytes (33 kB) copied, 0.00125258 s, 26.2 MB/s
+    root:/sys/bus/coresight/devices#
 
 The file cstrace.bin can be decompressed using "ptm2human", DS-5 or Trace32.
 
 Following is a DS-5 output of an experimental loop that increments a variable up
 to a certain value.  The example is simple and yet provides a glimpse of the
 wealth of possibilities that coresight provides.
-
-Info                                    Tracing enabled
-Instruction     106378866       0x8026B53C      E52DE004        false   PUSH     {lr}
-Instruction     0       0x8026B540      E24DD00C        false   SUB      sp,sp,#0xc
-Instruction     0       0x8026B544      E3A03000        false   MOV      r3,#0
-Instruction     0       0x8026B548      E58D3004        false   STR      r3,[sp,#4]
-Instruction     0       0x8026B54C      E59D3004        false   LDR      r3,[sp,#4]
-Instruction     0       0x8026B550      E3530004        false   CMP      r3,#4
-Instruction     0       0x8026B554      E2833001        false   ADD      r3,r3,#1
-Instruction     0       0x8026B558      E58D3004        false   STR      r3,[sp,#4]
-Instruction     0       0x8026B55C      DAFFFFFA        true    BLE      {pc}-0x10 ; 0x8026b54c
-Timestamp                                       Timestamp: 17106715833
-Instruction     319     0x8026B54C      E59D3004        false   LDR      r3,[sp,#4]
-Instruction     0       0x8026B550      E3530004        false   CMP      r3,#4
-Instruction     0       0x8026B554      E2833001        false   ADD      r3,r3,#1
-Instruction     0       0x8026B558      E58D3004        false   STR      r3,[sp,#4]
-Instruction     0       0x8026B55C      DAFFFFFA        true    BLE      {pc}-0x10 ; 0x8026b54c
-Instruction     9       0x8026B54C      E59D3004        false   LDR      r3,[sp,#4]
-Instruction     0       0x8026B550      E3530004        false   CMP      r3,#4
-Instruction     0       0x8026B554      E2833001        false   ADD      r3,r3,#1
-Instruction     0       0x8026B558      E58D3004        false   STR      r3,[sp,#4]
-Instruction     0       0x8026B55C      DAFFFFFA        true    BLE      {pc}-0x10 ; 0x8026b54c
-Instruction     7       0x8026B54C      E59D3004        false   LDR      r3,[sp,#4]
-Instruction     0       0x8026B550      E3530004        false   CMP      r3,#4
-Instruction     0       0x8026B554      E2833001        false   ADD      r3,r3,#1
-Instruction     0       0x8026B558      E58D3004        false   STR      r3,[sp,#4]
-Instruction     0       0x8026B55C      DAFFFFFA        true    BLE      {pc}-0x10 ; 0x8026b54c
-Instruction     7       0x8026B54C      E59D3004        false   LDR      r3,[sp,#4]
-Instruction     0       0x8026B550      E3530004        false   CMP      r3,#4
-Instruction     0       0x8026B554      E2833001        false   ADD      r3,r3,#1
-Instruction     0       0x8026B558      E58D3004        false   STR      r3,[sp,#4]
-Instruction     0       0x8026B55C      DAFFFFFA        true    BLE      {pc}-0x10 ; 0x8026b54c
-Instruction     10      0x8026B54C      E59D3004        false   LDR      r3,[sp,#4]
-Instruction     0       0x8026B550      E3530004        false   CMP      r3,#4
-Instruction     0       0x8026B554      E2833001        false   ADD      r3,r3,#1
-Instruction     0       0x8026B558      E58D3004        false   STR      r3,[sp,#4]
-Instruction     0       0x8026B55C      DAFFFFFA        true    BLE      {pc}-0x10 ; 0x8026b54c
-Instruction     6       0x8026B560      EE1D3F30        false   MRC      p15,#0x0,r3,c13,c0,#1
-Instruction     0       0x8026B564      E1A0100D        false   MOV      r1,sp
-Instruction     0       0x8026B568      E3C12D7F        false   BIC      r2,r1,#0x1fc0
-Instruction     0       0x8026B56C      E3C2203F        false   BIC      r2,r2,#0x3f
-Instruction     0       0x8026B570      E59D1004        false   LDR      r1,[sp,#4]
-Instruction     0       0x8026B574      E59F0010        false   LDR      r0,[pc,#16] ; [0x8026B58C] = 0x80550368
-Instruction     0       0x8026B578      E592200C        false   LDR      r2,[r2,#0xc]
-Instruction     0       0x8026B57C      E59221D0        false   LDR      r2,[r2,#0x1d0]
-Instruction     0       0x8026B580      EB07A4CF        true    BL       {pc}+0x1e9344 ; 0x804548c4
-Info                                    Tracing enabled
-Instruction     13570831        0x8026B584      E28DD00C        false   ADD      sp,sp,#0xc
-Instruction     0       0x8026B588      E8BD8000        true    LDM      sp!,{pc}
-Timestamp                                       Timestamp: 17107041535
+::
+
+    Info                                    Tracing enabled
+    Instruction     106378866       0x8026B53C      E52DE004        false   PUSH     {lr}
+    Instruction     0       0x8026B540      E24DD00C        false   SUB      sp,sp,#0xc
+    Instruction     0       0x8026B544      E3A03000        false   MOV      r3,#0
+    Instruction     0       0x8026B548      E58D3004        false   STR      r3,[sp,#4]
+    Instruction     0       0x8026B54C      E59D3004        false   LDR      r3,[sp,#4]
+    Instruction     0       0x8026B550      E3530004        false   CMP      r3,#4
+    Instruction     0       0x8026B554      E2833001        false   ADD      r3,r3,#1
+    Instruction     0       0x8026B558      E58D3004        false   STR      r3,[sp,#4]
+    Instruction     0       0x8026B55C      DAFFFFFA        true    BLE      {pc}-0x10 ; 0x8026b54c
+    Timestamp                                       Timestamp: 17106715833
+    Instruction     319     0x8026B54C      E59D3004        false   LDR      r3,[sp,#4]
+    Instruction     0       0x8026B550      E3530004        false   CMP      r3,#4
+    Instruction     0       0x8026B554      E2833001        false   ADD      r3,r3,#1
+    Instruction     0       0x8026B558      E58D3004        false   STR      r3,[sp,#4]
+    Instruction     0       0x8026B55C      DAFFFFFA        true    BLE      {pc}-0x10 ; 0x8026b54c
+    Instruction     9       0x8026B54C      E59D3004        false   LDR      r3,[sp,#4]
+    Instruction     0       0x8026B550      E3530004        false   CMP      r3,#4
+    Instruction     0       0x8026B554      E2833001        false   ADD      r3,r3,#1
+    Instruction     0       0x8026B558      E58D3004        false   STR      r3,[sp,#4]
+    Instruction     0       0x8026B55C      DAFFFFFA        true    BLE      {pc}-0x10 ; 0x8026b54c
+    Instruction     7       0x8026B54C      E59D3004        false   LDR      r3,[sp,#4]
+    Instruction     0       0x8026B550      E3530004        false   CMP      r3,#4
+    Instruction     0       0x8026B554      E2833001        false   ADD      r3,r3,#1
+    Instruction     0       0x8026B558      E58D3004        false   STR      r3,[sp,#4]
+    Instruction     0       0x8026B55C      DAFFFFFA        true    BLE      {pc}-0x10 ; 0x8026b54c
+    Instruction     7       0x8026B54C      E59D3004        false   LDR      r3,[sp,#4]
+    Instruction     0       0x8026B550      E3530004        false   CMP      r3,#4
+    Instruction     0       0x8026B554      E2833001        false   ADD      r3,r3,#1
+    Instruction     0       0x8026B558      E58D3004        false   STR      r3,[sp,#4]
+    Instruction     0       0x8026B55C      DAFFFFFA        true    BLE      {pc}-0x10 ; 0x8026b54c
+    Instruction     10      0x8026B54C      E59D3004        false   LDR      r3,[sp,#4]
+    Instruction     0       0x8026B550      E3530004        false   CMP      r3,#4
+    Instruction     0       0x8026B554      E2833001        false   ADD      r3,r3,#1
+    Instruction     0       0x8026B558      E58D3004        false   STR      r3,[sp,#4]
+    Instruction     0       0x8026B55C      DAFFFFFA        true    BLE      {pc}-0x10 ; 0x8026b54c
+    Instruction     6       0x8026B560      EE1D3F30        false   MRC      p15,#0x0,r3,c13,c0,#1
+    Instruction     0       0x8026B564      E1A0100D        false   MOV      r1,sp
+    Instruction     0       0x8026B568      E3C12D7F        false   BIC      r2,r1,#0x1fc0
+    Instruction     0       0x8026B56C      E3C2203F        false   BIC      r2,r2,#0x3f
+    Instruction     0       0x8026B570      E59D1004        false   LDR      r1,[sp,#4]
+    Instruction     0       0x8026B574      E59F0010        false   LDR      r0,[pc,#16] ; [0x8026B58C] = 0x80550368
+    Instruction     0       0x8026B578      E592200C        false   LDR      r2,[r2,#0xc]
+    Instruction     0       0x8026B57C      E59221D0        false   LDR      r2,[r2,#0x1d0]
+    Instruction     0       0x8026B580      EB07A4CF        true    BL       {pc}+0x1e9344 ; 0x804548c4
+    Info                                    Tracing enabled
+    Instruction     13570831        0x8026B584      E28DD00C        false   ADD      sp,sp,#0xc
+    Instruction     0       0x8026B588      E8BD8000        true    LDM      sp!,{pc}
+    Timestamp                                       Timestamp: 17107041535
 
 2) Using perf framework:
 
@@ -327,7 +353,7 @@ A Coresight PMU works the same way as any other PMU, i.e the name of the PMU is
 listed along with configuration options within forward slashes '/'.  Since a
 Coresight system will typically have more than one sink, the name of the sink to
 work with needs to be specified as an event option.  Names for sink to choose
-from are listed in sysFS under ($SYSFS)/bus/coresight/devices:
+from are listed in sysFS under ($SYSFS)/bus/coresight/devices::
 
 	root@linaro-nano:~# ls /sys/bus/coresight/devices/
 		20010000.etf   20040000.funnel  20100000.stm  22040000.etm
@@ -343,14 +369,14 @@ to use for the trace session.
 
 More information on the above and other example on how to use Coresight with
 the perf tools can be found in the "HOWTO.md" file of the openCSD gitHub
-repository [3].
+repository [#third]_.
 
 2.1) AutoFDO analysis using the perf tools:
 
 perf can be used to record and analyze trace of programs.
 
 Execution can be recorded using 'perf record' with the cs_etm event,
-specifying the name of the sink to record to, e.g:
+specifying the name of the sink to record to, e.g::
 
     perf record -e cs_etm/@20070000.etr/u --per-thread
 
@@ -369,12 +395,14 @@ Generating coverage files for Feedback Directed Optimization: AutoFDO
 
 'perf inject' accepts the --itrace option in which case tracing data is
 removed and replaced with the synthesized events. e.g.
+::
 
 	perf inject --itrace --strip -i perf.data -o perf.data.new
 
 Below is an example of using ARM ETM for autoFDO.  It requires autofdo
 (https://github.com/google/autofdo) and gcc version 5.  The bubble
 sort example is from the AutoFDO tutorial (https://gcc.gnu.org/wiki/AutoFDO/Tutorial).
+::
 
 	$ gcc-5 -O3 sort.c -o sort
 	$ taskset -c 2 ./sort
@@ -403,28 +431,30 @@ difference is that clients are driving the trace capture rather
 than the program flow through the code.
 
 As with any other CoreSight component, specifics about the STM tracer can be
-found in sysfs with more information on each entry being found in [1]:
+found in sysfs with more information on each entry being found in [#first]_::
 
-root@genericarmv8:~# ls /sys/bus/coresight/devices/20100000.stm
-enable_source   hwevent_select  port_enable     subsystem       uevent
-hwevent_enable  mgmt            port_select     traceid
-root@genericarmv8:~#
+    root@genericarmv8:~# ls /sys/bus/coresight/devices/20100000.stm
+    enable_source   hwevent_select  port_enable     subsystem       uevent
+    hwevent_enable  mgmt            port_select     traceid
+    root@genericarmv8:~#
 
 Like any other source a sink needs to be identified and the STM enabled before
-being used:
+being used::
 
-root@genericarmv8:~# echo 1 > /sys/bus/coresight/devices/20010000.etf/enable_sink
-root@genericarmv8:~# echo 1 > /sys/bus/coresight/devices/20100000.stm/enable_source
+    root@genericarmv8:~# echo 1 > /sys/bus/coresight/devices/20010000.etf/enable_sink
+    root@genericarmv8:~# echo 1 > /sys/bus/coresight/devices/20100000.stm/enable_source
 
 From there user space applications can request and use channels using the devfs
-interface provided for that purpose by the generic STM API:
+interface provided for that purpose by the generic STM API::
+
+    root@genericarmv8:~# ls -l /dev/20100000.stm
+    crw-------    1 root     root       10,  61 Jan  3 18:11 /dev/20100000.stm
+    root@genericarmv8:~#
+
+Details on how to use the generic STM API can be found here [#second]_.
 
-root@genericarmv8:~# ls -l /dev/20100000.stm
-crw-------    1 root     root       10,  61 Jan  3 18:11 /dev/20100000.stm
-root@genericarmv8:~#
+.. [#first] Documentation/ABI/testing/sysfs-bus-coresight-devices-stm
 
-Details on how to use the generic STM API can be found here [2].
+.. [#second] Documentation/trace/stm.rst
 
-[1]. Documentation/ABI/testing/sysfs-bus-coresight-devices-stm
-[2]. Documentation/trace/stm.rst
-[3]. https://github.com/Linaro/perf-opencsd
+.. [#third] https://github.com/Linaro/perf-opencsd
diff --git a/Documentation/trace/index.rst b/Documentation/trace/index.rst
index 6b4107cf4b98..b7891cb1ab4d 100644
--- a/Documentation/trace/index.rst
+++ b/Documentation/trace/index.rst
@@ -23,3 +23,5 @@ Linux Tracing Technologies
    intel_th
    stm
    sys-t
+   coresight
+   coresight-cpu-debug
diff --git a/MAINTAINERS b/MAINTAINERS
index 558acf24ea1e..04b006e5cc0a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1549,8 +1549,8 @@ R:	Suzuki K Poulose <suzuki.poulose@arm.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	drivers/hwtracing/coresight/*
-F:	Documentation/trace/coresight.txt
-F:	Documentation/trace/coresight-cpu-debug.txt
+F:	Documentation/trace/coresight.rst
+F:	Documentation/trace/coresight-cpu-debug.rst
 F:	Documentation/devicetree/bindings/arm/coresight.txt
 F:	Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt
 F:	Documentation/ABI/testing/sysfs-bus-coresight-devices-*
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
