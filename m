Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9541D63CB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 21:21:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XNBK0vYZA0lV5ZgDtzXxJYsJcwM3fvQh/SHVcguBJrM=; b=Ucvvl84a4eEQgG
	JXHK9VV7WaYGZJfaJnOw8MYotr52YJgykURgp7py5O4C1krLX/3hcr+TF+w1gEJQvI91w18fR78FB
	E5lO4bgEgC+fkdNwzXXyjxCUKrSjXizwCYoQzVoliyu9Qa416PvWVNb03zSsHAz3kxhLEMcZFRC3F
	DLDvi+XYdcWb9AsbWBPkKjLXaBd8JqDcL0hGD3CUr2DwF1y0seWihU8dK2yKpPYaRW3N+jqkCFNHl
	SgW3OeL8nkSjIuYoPG7MXzhE1PKcLJMRaOQSuMOCDHdlPNKlLJm47HiZZ9DdqzPdXcrPpBbNUzcO9
	/0BF7vPfssGsyU3S8LuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja2Mt-0007xt-VV; Sat, 16 May 2020 19:21:07 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja2MT-0007qM-Rn
 for linux-arm-kernel@lists.infradead.org; Sat, 16 May 2020 19:20:44 +0000
Received: by mail-qt1-x844.google.com with SMTP id c24so4882425qtw.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 16 May 2020 12:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=l8MBXHzo1KA9f1dfH4gxXPreM1Deeb9WOZhWNKpCMBo=;
 b=uaAEw75zEFXcj4qy4eVGMzsmNy9dU/z5vCVgTaHh+GMq9vueGZfENtJoATNGnthq9c
 LJNA+f7utMjDy8vVm65NXPHKPJAvEhmFKlICIaW0ehP/Nic+u6YIUbB+x5oE7e1nSgj8
 y8T3Ro/n9sN5olPXKLmHJNgQahE2rKUE2KEzsjEJsfZAZ2IMRV9NnW+2nCOgVCnFgSBt
 3Rw+a4OQn1tpwkLsQIqCzzMGJuiFEL5TMw5sdYhnHbVMS6rYuX06yR6t2P6E1bvtvK/R
 tg5EAw9zr/zIeOM6y98YvJnCqI3m4vawOHxLdF8JWNMZPSUiHhU5E+LmrmKlOjxXBng6
 kTvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=l8MBXHzo1KA9f1dfH4gxXPreM1Deeb9WOZhWNKpCMBo=;
 b=HKdQIUQ5I4XUAcEvY9ww8MDJTaiA4cUTsvhfwNgkxc7r5A3t8K9czC3qbrDqCZm6Sf
 SRe9/Ksy1A7JDB/8Oqzj/eO8iwwH+1AXc0jvRgbXrVg6Q8hWllz1jGkqqBnOvx3Bqpw+
 xT9Z6NPqm2oa7DgAVzO6kvt0rzepn/o+ijS4rxuVKByWwCTizAGSXr7ZV+l1a6kR9Ju2
 3zK4RGl61qyFsOVL6BCXPmaEaqpeOcCgjn9FMIlAMewZDLT3Kv5cWrLBBaBMd2NRSS/3
 lgVWx5ueWpyw+25VjG5ArIREVScRjY3K0sBKM19j+FddtMZ1mkD9Ghj22kz3nPDBeotJ
 oIpw==
X-Gm-Message-State: AOAM530sFJO0OpK+odfDKewtG8Yf2a80SoKV2HC2TP60e0pusDPi8thn
 26pDfIedINl6EGlyqLEMMXc=
X-Google-Smtp-Source: ABdhPJwm1GApw+QLvTEpxLUBK8Y+8YJynr03UcXo+f76HH66WDq5GrHR+U0g144axupK4kbscl2Mcg==
X-Received: by 2002:ac8:2aa6:: with SMTP id b35mr9111295qta.153.1589656840988; 
 Sat, 16 May 2020 12:20:40 -0700 (PDT)
Received: from localhost.localdomain (072-189-064-225.res.spectrum.com.
 [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id g19sm3160409qke.32.2020.05.16.12.20.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 May 2020 12:20:40 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: jic23@kernel.org
Subject: [PATCH v2 2/4] docs: counter: Update to reflect sysfs internalization
Date: Sat, 16 May 2020 15:20:00 -0400
Message-Id: <2a8d7fe2e0ea435e19c89ba2aff15218c7b6eb91.1589654470.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1589654470.git.vilhelm.gray@gmail.com>
References: <cover.1589654470.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_122041_947728_ACF2E599 
X-CRM114-Status: GOOD (  21.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kamel.bouhara@bootlin.com, gwendal@chromium.org, david@lechnology.com,
 linux-iio@vger.kernel.org, patrick.havelange@essensium.com,
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, William Breathitt Gray <vilhelm.gray@gmail.com>,
 fabrice.gasnier@st.com, syednwaris@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Counter subsystem architecture and driver implementations have
changed in order to handle Counter sysfs interactions in a more
consistent way. This patch updates the Generic Counter interface
documentation to reflect the changes.

Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 Documentation/driver-api/generic-counter.rst | 215 +++++++++++++------
 1 file changed, 149 insertions(+), 66 deletions(-)

diff --git a/Documentation/driver-api/generic-counter.rst b/Documentation/driver-api/generic-counter.rst
index e622f8f6e56a..8f85c30dea0b 100644
--- a/Documentation/driver-api/generic-counter.rst
+++ b/Documentation/driver-api/generic-counter.rst
@@ -250,8 +250,8 @@ for defining a counter device.
 .. kernel-doc:: drivers/counter/counter.c
    :export:
 
-Implementation
-==============
+Driver Implementation
+=====================
 
 To support a counter device, a driver must first allocate the available
 Counter Signals via counter_signal structures. These Signals should
@@ -267,25 +267,58 @@ respective counter_count structure. These counter_count structures are
 set to the counts array member of an allocated counter_device structure
 before the Counter is registered to the system.
 
-Driver callbacks should be provided to the counter_device structure via
-a constant counter_ops structure in order to communicate with the
-device: to read and write various Signals and Counts, and to set and get
-the "action mode" and "function mode" for various Synapses and Counts
-respectively.
+Driver callbacks must be provided to the counter_device structure in
+order to communicate with the device: to read and write various Signals
+and Counts, and to set and get the "action mode" and "function mode" for
+various Synapses and Counts respectively.
 
 A defined counter_device structure may be registered to the system by
 passing it to the counter_register function, and unregistered by passing
 it to the counter_unregister function. Similarly, the
-devm_counter_register and devm_counter_unregister functions may be used
-if device memory-managed registration is desired.
-
-Extension sysfs attributes can be created for auxiliary functionality
-and data by passing in defined counter_device_ext, counter_count_ext,
-and counter_signal_ext structures. In these cases, the
-counter_device_ext structure is used for global/miscellaneous exposure
-and configuration of the respective Counter device, while the
-counter_count_ext and counter_signal_ext structures allow for auxiliary
-exposure and configuration of a specific Count or Signal respectively.
+devm_counter_register function may be used if device memory-managed
+registration is desired.
+
+The struct counter_data structure is used to define counter extensions
+for Signals, Synapses, and Counts.
+
+The "type" member specifies the type of data (e.g. unsigned long,
+boolean, etc.) handled by this extension. The "read" and "write" members
+can then be set by the counter device driver with callbacks to handle
+that data.
+
+Convenience macros such as `COUNTER_DATA_COUNT_U64` are provided for use
+by driver authors. In particular, driver authors are expected to use
+the provided macros for standard Counter subsystem attributes in order
+to maintain a consistent interface for userspace. For example, a counter
+device driver may define several standard attributes like so::
+
+	struct counter_data count_ext[] = {
+		COUNTER_DATA_DIRECTION(count_direction_read),
+		COUNTER_DATA_ENABLE(count_enable_read, count_enable_write),
+		COUNTER_DATA_CEILING(count_ceiling_read, count_ceiling_write),
+	};
+
+This makes it intuitive to see, add, and modify the attributes that are
+supported by this driver ("direction", "enable", and "ceiling") and to
+maintain this code without getting lost in a web of struct braces.
+
+Callbacks must match the function type expected for the respective
+component or extension. These function types are defined in the struct
+counter_data structure as the "`*_read`" and "`*_write`" union members.
+
+The corresponding callback prototypes for the extensions mentioned in
+the previous example above would be::
+
+	int count_direction_read(struct counter_device *counter,
+				 struct counter_count *count, u8 *direction);
+	int count_enable_read(struct counter_device *counter,
+			      struct counter_count *count, u8 *enable);
+	int count_enable_write(struct counter_device *counter,
+			       struct counter_count *count, u8 enable);
+	int count_ceiling_read(struct counter_device *counter,
+			       struct counter_count *count, u64 *ceiling);
+	int count_ceiling_write(struct counter_device *counter,
+				struct counter_count *count, u64 ceiling);
 
 Determining the type of extension to create is a matter of scope.
 
@@ -313,52 +346,102 @@ Determining the type of extension to create is a matter of scope.
   chip overheated via a device extension called "error_overtemp":
   /sys/bus/counter/devices/counterX/error_overtemp
 
-Architecture
-============
-
-When the Generic Counter interface counter module is loaded, the
-counter_init function is called which registers a bus_type named
-"counter" to the system. Subsequently, when the module is unloaded, the
-counter_exit function is called which unregisters the bus_type named
-"counter" from the system.
-
-Counter devices are registered to the system via the counter_register
-function, and later removed via the counter_unregister function. The
-counter_register function establishes a unique ID for the Counter
-device and creates a respective sysfs directory, where X is the
-mentioned unique ID:
-
-    /sys/bus/counter/devices/counterX
-
-Sysfs attributes are created within the counterX directory to expose
-functionality, configurations, and data relating to the Counts, Signals,
-and Synapses of the Counter device, as well as options and information
-for the Counter device itself.
-
-Each Signal has a directory created to house its relevant sysfs
-attributes, where Y is the unique ID of the respective Signal:
-
-    /sys/bus/counter/devices/counterX/signalY
-
-Similarly, each Count has a directory created to house its relevant
-sysfs attributes, where Y is the unique ID of the respective Count:
-
-    /sys/bus/counter/devices/counterX/countY
-
-For a more detailed breakdown of the available Generic Counter interface
-sysfs attributes, please refer to the
-Documentation/ABI/testing/sysfs-bus-counter file.
-
-The Signals and Counts associated with the Counter device are registered
-to the system as well by the counter_register function. The
-signal_read/signal_write driver callbacks are associated with their
-respective Signal attributes, while the count_read/count_write and
-function_get/function_set driver callbacks are associated with their
-respective Count attributes; similarly, the same is true for the
-action_get/action_set driver callbacks and their respective Synapse
-attributes. If a driver callback is left undefined, then the respective
-read/write permission is left disabled for the relevant attributes.
-
-Similarly, extension sysfs attributes are created for the defined
-counter_device_ext, counter_count_ext, and counter_signal_ext
-structures that are passed in.
+Subsystem Architecture
+======================
+
+Counter drivers pass and take data natively (i.e. `u8`, `u64`, `char *`,
+etc.) and the shared counter module handles the translation between the
+sysfs interface. This gurantees a standard userspace interface for all
+counter drivers, and helps generalize the Generic Counter driver ABI in
+order to support the Generic Counter chrdev interface without
+significant changes to the existing counter drivers.
+
+A high-level view of how a count value is passed down from a counter
+driver can be exemplified by the following::
+
+       Count data request:
+       ~~~~~~~~~~~~~~~~~~~
+                 ----------------------
+                / Counter device       \
+                +----------------------+
+                | Count register: 0x28 |
+                +----------------------+
+                        |
+                 -----------------
+                / raw count data /
+                -----------------
+                        |
+                        V
+                +----------------------------+
+                | Counter device driver      |----------+
+                +----------------------------+          |
+                | Processes data from device |   -------------------
+                |----------------------------|  / driver callbacks /
+                | Type: unsigned long        |  -------------------
+                | Value: 42                  |          |
+                +----------------------------+          |
+                        |                               |
+                 ----------------                       |
+                / unsigned long /                       |
+                ----------------                        |
+                        |                               |
+                        |                               V
+                        |               +----------------------+
+                        |               | Counter core         |
+                        |               +----------------------+
+                        |               | Routes device driver |
+                        |               | callbacks to the     |
+                        |               | userspace interfaces |
+                        |               +----------------------+
+                        |                       |
+                        |                -------------------
+                        |               / driver callbacks /
+                        |               -------------------
+                        |                       |
+                +-------+                       |
+                |                               |
+                |               +---------------+
+                |               |
+                V               |
+        +--------------------+  |
+        | Counter sysfs      |<-+
+        +--------------------+
+        | Translates to the  |
+        | standard Counter   |
+        | sysfs output       |
+        |--------------------|
+        | Type: const char * |
+        | Value: "42"        |
+        +--------------------+
+                |
+         ---------------
+        / const char * /
+        ---------------
+                |
+                V
+        +--------------------------------------------------+
+        | `/sys/bus/counter/devices/counterX/countY/count` |
+        +--------------------------------------------------+
+        \ Count: "42"                                      /
+         --------------------------------------------------
+
+There are three primary components involved:
+
+Counter device driver
+---------------------
+Communicates with the hardware device to read/write data; e.g. counter
+drivers for quadrature encoders, timers, etc.
+
+Counter core
+------------
+Registers the counter device driver to the system so that the respective
+callbacks are called during userspace interaction.
+
+Counter sysfs
+-------------
+Translates counter data to the standard Counter sysfs interface format
+and vice versa.
+
+Please refer to the `Documentation/ABI/testing/sysfs-bus-counter` file
+for a detailed breakdown of the available Generic Counter interface
+sysfs attributes.
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
