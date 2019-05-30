Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E442FF04
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 17:12:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mE44BP8hTxDcGTtybCKgZ3A5BPOq57mYlp+bdu6akms=; b=aEL
	bEcbiCoG45c9bdGrxbnF3QQPGnqJAoouw+TYrfH8lC4pLBpZ4nVWHpH8ixKQhSpn8yHo1w+hcU++a
	x0IpJR2b2ElsatLAfN/JVnrt4mXen6G19OVmSt5oXsZId9Sp16gYeOhCgEWUMwZKyHURug3cRsmxZ
	2bWBTvKftPD4UxOiRvw+Aa995UsW90X3ttKx1rmSqmMWVKjA+ypBZO4+djCYL6BTHnpmJ6+DghwCc
	3IORcRm6Of7ugXlr8q4teacw3yxJgkamFRXmhW0XzH5HMufRB5zqQ+s1YAjpbmbqzmTR3q3coc0Hf
	RALP7F71HWh29aqmVgqezBNbg5gJ5fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWMiy-0001Ee-JL; Thu, 30 May 2019 15:12:12 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWMiK-00018q-7Q
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 15:11:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D7CD915AD;
 Thu, 30 May 2019 08:11:31 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 7F7C73F59C; Thu, 30 May 2019 08:11:30 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] Documentation: coresight: Update the generic device names
Date: Thu, 30 May 2019 16:11:17 +0100
Message-Id: <1559229077-26436-1-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_081132_282368_907E9BD3 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Jonathan Corbet <corbet@lwn.net>, coresight@lists.linaro.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 leo.yan@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the documentation to reflect the new naming scheme with
latest changes.

Reported-by: Leo Yan <leo.yan@linaro.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Jonathan Corbet <corbet@lwn.net>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 Documentation/trace/coresight.txt | 34 +++++++++++++++++++---------------
 1 file changed, 19 insertions(+), 15 deletions(-)

diff --git a/Documentation/trace/coresight.txt b/Documentation/trace/coresight.txt
index efbc832..7b427cf 100644
--- a/Documentation/trace/coresight.txt
+++ b/Documentation/trace/coresight.txt
@@ -326,16 +326,20 @@ amount of processor cores), the "cs_etm" PMU will be listed only once.
 A Coresight PMU works the same way as any other PMU, i.e the name of the PMU is
 listed along with configuration options within forward slashes '/'.  Since a
 Coresight system will typically have more than one sink, the name of the sink to
-work with needs to be specified as an event option.  Names for sink to choose
-from are listed in sysFS under ($SYSFS)/bus/coresight/devices:
+work with needs to be specified as an event option.
+On newer kernels the available sinks are listed in sysFS under:
+($SYSFS)/bus/event_source/devices/cs_etm/sinks/
 
-	root@linaro-nano:~# ls /sys/bus/coresight/devices/
-		20010000.etf   20040000.funnel  20100000.stm  22040000.etm
-		22140000.etm  230c0000.funnel  23240000.etm 20030000.tpiu
-		20070000.etr     20120000.replicator  220c0000.funnel
-		23040000.etm  23140000.etm     23340000.etm
+	root@localhost:/sys/bus/event_source/devices/cs_etm/sinks# ls
+	tmc_etf0  tmc_etr0  tpiu0
 
-	root@linaro-nano:~# perf record -e cs_etm/@20070000.etr/u --per-thread program
+On older kernels, this may need to be found from the list of coresight devices,
+available under ($SYSFS)/bus/coresight/devices/:
+
+	root@localhost:/sys/bus/coresight/devices# ls
+	etm0  etm1  etm2  etm3  etm4  etm5  funnel0  funnel1  funnel2  replicator0  stm0 tmc_etf0  tmc_etr0  tpiu0
+
+	root@linaro-nano:~# perf record -e cs_etm/@tmc_etr0/u --per-thread program
 
 The syntax within the forward slashes '/' is important.  The '@' character
 tells the parser that a sink is about to be specified and that this is the sink
@@ -352,7 +356,7 @@ perf can be used to record and analyze trace of programs.
 Execution can be recorded using 'perf record' with the cs_etm event,
 specifying the name of the sink to record to, e.g:
 
-    perf record -e cs_etm/@20070000.etr/u --per-thread
+    perf record -e cs_etm/@tmc_etr0/u --per-thread
 
 The 'perf report' and 'perf script' commands can be used to analyze execution,
 synthesizing instruction and branch events from the instruction trace.
@@ -381,7 +385,7 @@ sort example is from the AutoFDO tutorial (https://gcc.gnu.org/wiki/AutoFDO/Tuto
 	Bubble sorting array of 30000 elements
 	5910 ms
 
-	$ perf record -e cs_etm/@20070000.etr/u --per-thread taskset -c 2 ./sort
+	$ perf record -e cs_etm/@tmc_etr0/u --per-thread taskset -c 2 ./sort
 	Bubble sorting array of 30000 elements
 	12543 ms
 	[ perf record: Woken up 35 times to write data ]
@@ -405,7 +409,7 @@ than the program flow through the code.
 As with any other CoreSight component, specifics about the STM tracer can be
 found in sysfs with more information on each entry being found in [1]:
 
-root@genericarmv8:~# ls /sys/bus/coresight/devices/20100000.stm
+root@genericarmv8:~# ls /sys/bus/coresight/devices/stm0
 enable_source   hwevent_select  port_enable     subsystem       uevent
 hwevent_enable  mgmt            port_select     traceid
 root@genericarmv8:~#
@@ -413,14 +417,14 @@ root@genericarmv8:~#
 Like any other source a sink needs to be identified and the STM enabled before
 being used:
 
-root@genericarmv8:~# echo 1 > /sys/bus/coresight/devices/20010000.etf/enable_sink
-root@genericarmv8:~# echo 1 > /sys/bus/coresight/devices/20100000.stm/enable_source
+root@genericarmv8:~# echo 1 > /sys/bus/coresight/devices/tmc_etf0/enable_sink
+root@genericarmv8:~# echo 1 > /sys/bus/coresight/devices/stm0/enable_source
 
 From there user space applications can request and use channels using the devfs
 interface provided for that purpose by the generic STM API:
 
-root@genericarmv8:~# ls -l /dev/20100000.stm
-crw-------    1 root     root       10,  61 Jan  3 18:11 /dev/20100000.stm
+root@genericarmv8:~# ls -l /dev/stm0
+crw-------    1 root     root       10,  61 Jan  3 18:11 /dev/stm0
 root@genericarmv8:~#
 
 Details on how to use the generic STM API can be found here [2].
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
