Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9174259B4A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 14:32:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QY3Xj+pmiwhgg0cDDwkR4GIWRkZSMLLcekkuGfoysfE=; b=HjkJsZzmqayIEr
	ME+6WUWhfpFW5xWdwShGCwW/R1ZLV8s16TGwk2cVPxJpVdo1JlG/bTjVJhIcMRfvSfHy94vqa6LUA
	Llo2tt/uVImN27z1tfox3dnRi2htXO3TsdcSaNrIDa/CLFdDpzF3Tpmj5Rib/bPcanF7Cztw84Tv7
	O+wFIsKkzSI+K8azeQ0wTy7GxdBh5l9AzoKdMeglMC3EaPr8vuSK+yQaJgCQJ+KdfpKu6GN9y8Em8
	iJ+x5SOiE3YR8FdM/Wx43obmnULwt2GsXqTRNuK0Brk86k0woINcXseB/6cDHd3wIPAQlPdmBD84w
	zRWTj66G/aKw+mJHZfsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgq2y-00065u-MQ; Fri, 28 Jun 2019 12:32:08 +0000
Received: from [186.213.242.156] (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hgq1U-00054r-2s; Fri, 28 Jun 2019 12:30:36 +0000
Received: from mchehab by bombadil.infradead.org with local (Exim 4.92)
 (envelope-from <mchehab@bombadil.infradead.org>)
 id 1hgq1R-0005Qz-Va; Fri, 28 Jun 2019 09:30:33 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Subject: [PATCH 01/39] docs: thermal: add it to the driver API
Date: Fri, 28 Jun 2019 09:29:54 -0300
Message-Id: <c9c7d7e0567aed7e36c4eb9c09ddfb6274913e9c.1561724493.git.mchehab+samsung@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1561724493.git.mchehab+samsung@kernel.org>
References: <cover.1561724493.git.mchehab+samsung@kernel.org>
MIME-Version: 1.0
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
Cc: linux-samsung-soc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 Eduardo Valentin <edubezval@gmail.com>, Kukjin Kim <kgene@kernel.org>,
 linux-pm@vger.kernel.org, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Javi Merino <javi.merino@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The file contents mostly describes driver internals.

Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 Documentation/driver-api/index.rst                   |  1 +
 .../{ => driver-api}/thermal/cpu-cooling-api.rst     |  0
 .../{ => driver-api}/thermal/exynos_thermal.rst      |  0
 .../thermal/exynos_thermal_emulation.rst             |  0
 Documentation/{ => driver-api}/thermal/index.rst     |  2 --
 .../{ => driver-api}/thermal/intel_powerclamp.rst    |  0
 .../{ => driver-api}/thermal/nouveau_thermal.rst     |  0
 .../{ => driver-api}/thermal/power_allocator.rst     |  0
 Documentation/{ => driver-api}/thermal/sysfs-api.rst | 12 ++++++------
 .../thermal/x86_pkg_temperature_thermal.rst          |  2 +-
 MAINTAINERS                                          |  2 +-
 include/linux/thermal.h                              |  4 ++--
 12 files changed, 11 insertions(+), 12 deletions(-)
 rename Documentation/{ => driver-api}/thermal/cpu-cooling-api.rst (100%)
 rename Documentation/{ => driver-api}/thermal/exynos_thermal.rst (100%)
 rename Documentation/{ => driver-api}/thermal/exynos_thermal_emulation.rst (100%)
 rename Documentation/{ => driver-api}/thermal/index.rst (95%)
 rename Documentation/{ => driver-api}/thermal/intel_powerclamp.rst (100%)
 rename Documentation/{ => driver-api}/thermal/nouveau_thermal.rst (100%)
 rename Documentation/{ => driver-api}/thermal/power_allocator.rst (100%)
 rename Documentation/{ => driver-api}/thermal/sysfs-api.rst (98%)
 rename Documentation/{ => driver-api}/thermal/x86_pkg_temperature_thermal.rst (94%)

diff --git a/Documentation/driver-api/index.rst b/Documentation/driver-api/index.rst
index 0dbaa987aa11..4e503e360860 100644
--- a/Documentation/driver-api/index.rst
+++ b/Documentation/driver-api/index.rst
@@ -56,6 +56,7 @@ available subsections can be seen below.
    dmaengine/index
    slimbus
    soundwire/index
+   thermal/index
    fpga/index
    acpi/index
    generic-counter
diff --git a/Documentation/thermal/cpu-cooling-api.rst b/Documentation/driver-api/thermal/cpu-cooling-api.rst
similarity index 100%
rename from Documentation/thermal/cpu-cooling-api.rst
rename to Documentation/driver-api/thermal/cpu-cooling-api.rst
diff --git a/Documentation/thermal/exynos_thermal.rst b/Documentation/driver-api/thermal/exynos_thermal.rst
similarity index 100%
rename from Documentation/thermal/exynos_thermal.rst
rename to Documentation/driver-api/thermal/exynos_thermal.rst
diff --git a/Documentation/thermal/exynos_thermal_emulation.rst b/Documentation/driver-api/thermal/exynos_thermal_emulation.rst
similarity index 100%
rename from Documentation/thermal/exynos_thermal_emulation.rst
rename to Documentation/driver-api/thermal/exynos_thermal_emulation.rst
diff --git a/Documentation/thermal/index.rst b/Documentation/driver-api/thermal/index.rst
similarity index 95%
rename from Documentation/thermal/index.rst
rename to Documentation/driver-api/thermal/index.rst
index 8c1c00146cad..68ceb6886561 100644
--- a/Documentation/thermal/index.rst
+++ b/Documentation/driver-api/thermal/index.rst
@@ -1,5 +1,3 @@
-:orphan:
-
 =======
 Thermal
 =======
diff --git a/Documentation/thermal/intel_powerclamp.rst b/Documentation/driver-api/thermal/intel_powerclamp.rst
similarity index 100%
rename from Documentation/thermal/intel_powerclamp.rst
rename to Documentation/driver-api/thermal/intel_powerclamp.rst
diff --git a/Documentation/thermal/nouveau_thermal.rst b/Documentation/driver-api/thermal/nouveau_thermal.rst
similarity index 100%
rename from Documentation/thermal/nouveau_thermal.rst
rename to Documentation/driver-api/thermal/nouveau_thermal.rst
diff --git a/Documentation/thermal/power_allocator.rst b/Documentation/driver-api/thermal/power_allocator.rst
similarity index 100%
rename from Documentation/thermal/power_allocator.rst
rename to Documentation/driver-api/thermal/power_allocator.rst
diff --git a/Documentation/thermal/sysfs-api.rst b/Documentation/driver-api/thermal/sysfs-api.rst
similarity index 98%
rename from Documentation/thermal/sysfs-api.rst
rename to Documentation/driver-api/thermal/sysfs-api.rst
index e4930761d3e5..fab2c9b36d08 100644
--- a/Documentation/thermal/sysfs-api.rst
+++ b/Documentation/driver-api/thermal/sysfs-api.rst
@@ -552,7 +552,7 @@ emul_temp
 sustainable_power
 	An estimate of the sustained power that can be dissipated by
 	the thermal zone. Used by the power allocator governor. For
-	more information see Documentation/thermal/power_allocator.rst
+	more information see Documentation/driver-api/thermal/power_allocator.rst
 
 	Unit: milliwatts
 
@@ -563,7 +563,7 @@ k_po
 	controller during temperature overshoot. Temperature overshoot
 	is when the current temperature is above the "desired
 	temperature" trip point. For more information see
-	Documentation/thermal/power_allocator.rst
+	Documentation/driver-api/thermal/power_allocator.rst
 
 	RW, Optional
 
@@ -572,7 +572,7 @@ k_pu
 	controller during temperature undershoot. Temperature undershoot
 	is when the current temperature is below the "desired
 	temperature" trip point. For more information see
-	Documentation/thermal/power_allocator.rst
+	Documentation/driver-api/thermal/power_allocator.rst
 
 	RW, Optional
 
@@ -580,14 +580,14 @@ k_i
 	The integral term of the power allocator governor's PID
 	controller. This term allows the PID controller to compensate
 	for long term drift. For more information see
-	Documentation/thermal/power_allocator.rst
+	Documentation/driver-api/thermal/power_allocator.rst
 
 	RW, Optional
 
 k_d
 	The derivative term of the power allocator governor's PID
 	controller. For more information see
-	Documentation/thermal/power_allocator.rst
+	Documentation/driver-api/thermal/power_allocator.rst
 
 	RW, Optional
 
@@ -598,7 +598,7 @@ integral_cutoff
 	example, if integral_cutoff is 0, then the integral term only
 	accumulates error when temperature is above the desired
 	temperature trip point. For more information see
-	Documentation/thermal/power_allocator.rst
+	Documentation/driver-api/thermal/power_allocator.rst
 
 	Unit: millidegree Celsius
 
diff --git a/Documentation/thermal/x86_pkg_temperature_thermal.rst b/Documentation/driver-api/thermal/x86_pkg_temperature_thermal.rst
similarity index 94%
rename from Documentation/thermal/x86_pkg_temperature_thermal.rst
rename to Documentation/driver-api/thermal/x86_pkg_temperature_thermal.rst
index f134dbd3f5a9..2ac42ccd236f 100644
--- a/Documentation/thermal/x86_pkg_temperature_thermal.rst
+++ b/Documentation/driver-api/thermal/x86_pkg_temperature_thermal.rst
@@ -40,7 +40,7 @@ This contains two trip points:
 - trip_point_1_temp
 
 User can set any temperature between 0 to TJ-Max temperature. Temperature units
-are in milli-degree Celsius. Refer to "Documentation/thermal/sysfs-api.rst" for
+are in milli-degree Celsius. Refer to "Documentation/driver-api/thermal/sysfs-api.rst" for
 thermal sys-fs details.
 
 Any value other than 0 in these trip points, can trigger thermal notifications.
diff --git a/MAINTAINERS b/MAINTAINERS
index 7ba6d174f49f..9d3a408f5ce1 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15762,7 +15762,7 @@ M:	Viresh Kumar <viresh.kumar@linaro.org>
 M:	Javi Merino <javi.merino@kernel.org>
 L:	linux-pm@vger.kernel.org
 S:	Supported
-F:	Documentation/thermal/cpu-cooling-api.rst
+F:	Documentation/driver-api/thermal/cpu-cooling-api.rst
 F:	drivers/thermal/cpu_cooling.c
 F:	include/linux/cpu_cooling.h
 
diff --git a/include/linux/thermal.h b/include/linux/thermal.h
index 681047f8cc05..e45659c75920 100644
--- a/include/linux/thermal.h
+++ b/include/linux/thermal.h
@@ -251,7 +251,7 @@ struct thermal_bind_params {
 	 * platform characterization. This value is relative to the
 	 * rest of the weights so a cooling device whose weight is
 	 * double that of another cooling device is twice as
-	 * effective. See Documentation/thermal/sysfs-api.rst for more
+	 * effective. See Documentation/driver-api/thermal/sysfs-api.rst for more
 	 * information.
 	 */
 	int weight;
@@ -259,7 +259,7 @@ struct thermal_bind_params {
 	/*
 	 * This is a bit mask that gives the binding relation between this
 	 * thermal zone and cdev, for a particular trip point.
-	 * See Documentation/thermal/sysfs-api.rst for more information.
+	 * See Documentation/driver-api/thermal/sysfs-api.rst for more information.
 	 */
 	int trip_mask;
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
