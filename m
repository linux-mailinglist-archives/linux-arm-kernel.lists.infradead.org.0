Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1C71D63D3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 21:21:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8fg2V4Vk3ru7vqM92gzeVqD1A6XhmmLvMIdhtT/kU7s=; b=fCGnR8w3f/mm5o
	PZG/FPkh881pEjBz7UotLSKGyBMEX9bLytWuXHk8aper3GPDMvL/gREoL27VXxD7iS2NykviARrfg
	CDV1xvSSmSFyZVqNLtYQKmhFMGGVyFCWdIV5HW0Bpg/GZk2ujA5TaxNAQy8vtHL9uaVWagMwjV4cp
	he8UwUYfi614CAMUnR9Jd6o2D8q9c7GvfUPbSkZI6RU1S66kLSwJGraOd4W1iXaoXHR6b2zC8iO5q
	dqy6QzjudI7WF61lnrzp7UgmFX/q3kGxnsjIBsCqUknHiY1HPFz5btzlgk9n1YHBbzc+nSRUkLnD/
	en67xSlRGbc6As1Chugg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja2NF-0008HS-3I; Sat, 16 May 2020 19:21:29 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja2MX-0007rS-0W
 for linux-arm-kernel@lists.infradead.org; Sat, 16 May 2020 19:20:47 +0000
Received: by mail-qt1-x841.google.com with SMTP id o19so4859556qtr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 16 May 2020 12:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VwCAFe7MBCqJ2a3UC8HemYjtQtYkC6zmx8xai56rLfc=;
 b=fbL3q6avYx3M4P/cPgZcdIzEGnk6vehyBCli11hV3Wksa00cJmRvC5npEJwONngXvf
 M3obtU/uKlPmhiGi8MPXLeQdNY/fXaPcJqVDmdaxCm+qHAzhabob/nSgZ0AzEYI89GZV
 3RxjJINcfVKvL/y40rhATW7mTT2sSC0CFUYXhBesM9gEqOz8HBeU3aT2lUX9xFmx5Lx1
 vG26CYvW2Cy2OpUIG4cWmUg+78ydQZ4wEXREg+LhLlUqtFfYVpA+eZmD4+y2Enh3B2Av
 bJXgBWK49dxmEIQ3PCeyuFpY8uE801G7gfas4jkxeJioISFCsF6g9pQUI7Bk8zNC+2eA
 q3kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VwCAFe7MBCqJ2a3UC8HemYjtQtYkC6zmx8xai56rLfc=;
 b=Uk5eT2xlh1mViFGpHQ4j9UITHHymS3R4P3zTNShLmJMjnaNvvHxQhLWHCukcA6o1qn
 mL5fJ9jRo7+jXYYU99NXoWbZ6cIvOiF7v7iL1BjspHAa9vcXF/lRR9w5gm0fq6X89C9T
 V5fEj04MaKB9EIBoodFusepHUsMGoiY0gUoiN6kyEC1N1f1BxOaJSchV84Nfyoljal2W
 TQux9Tpqif9S0ReqHnayTUK7ksa9jWburNIi7jkyJHCHd/vIFNMO0QAU+ubr6QtqAW5v
 t1uxQjr2JKJ8cqPcqQycbiJ3OKbZU33HZ6PHS5sYkfycd1XbfniMHZ964BQU9QhX9kEL
 buLw==
X-Gm-Message-State: AOAM530yQKwBJm71osJIlP8RUHEJeSPWN0S5fpTtSzD7s+0oASV7jUUc
 TUnGPmu3SC/Aa7tf8qPvj4cbzTsJe0SMcA==
X-Google-Smtp-Source: ABdhPJzo2+BnZF7E3lsdOjU0oT5HoCFBnq5wOVRK4nYC/5f97QFj0Ggf8cSSDoGXGVI7c9IUtE053Q==
X-Received: by 2002:ac8:7b35:: with SMTP id l21mr9455431qtu.21.1589656844149; 
 Sat, 16 May 2020 12:20:44 -0700 (PDT)
Received: from localhost.localdomain (072-189-064-225.res.spectrum.com.
 [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id g19sm3160409qke.32.2020.05.16.12.20.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 May 2020 12:20:43 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: jic23@kernel.org
Subject: [PATCH v2 4/4] docs: counter: Document character device interface
Date: Sat, 16 May 2020 15:20:02 -0400
Message-Id: <db0a9206d31c82f8381316ef5ff9872bfb53665b.1589654470.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1589654470.git.vilhelm.gray@gmail.com>
References: <cover.1589654470.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_122045_089548_7C4A84C4 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
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

This patch adds high-level documentation about the Counter subsystem
character device interface.

Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 Documentation/driver-api/generic-counter.rst | 112 +++++++++++++------
 1 file changed, 76 insertions(+), 36 deletions(-)

diff --git a/Documentation/driver-api/generic-counter.rst b/Documentation/driver-api/generic-counter.rst
index 8f85c30dea0b..58045b33b576 100644
--- a/Documentation/driver-api/generic-counter.rst
+++ b/Documentation/driver-api/generic-counter.rst
@@ -223,19 +223,6 @@ whether an input line is differential or single-ended) and instead focus
 on the core idea of what the data and process represent (e.g. position
 as interpreted from quadrature encoding data).
 
-Userspace Interface
-===================
-
-Several sysfs attributes are generated by the Generic Counter interface,
-and reside under the /sys/bus/counter/devices/counterX directory, where
-counterX refers to the respective counter device. Please see
-Documentation/ABI/testing/sysfs-bus-counter for detailed
-information on each Generic Counter interface sysfs attribute.
-
-Through these sysfs attributes, programs and scripts may interact with
-the Generic Counter paradigm Counts, Signals, and Synapses of respective
-counter devices.
-
 Driver API
 ==========
 
@@ -377,13 +364,13 @@ driver can be exemplified by the following::
                 +----------------------------+          |
                 | Processes data from device |   -------------------
                 |----------------------------|  / driver callbacks /
-                | Type: unsigned long        |  -------------------
+                | Type: u64                  |  -------------------
                 | Value: 42                  |          |
                 +----------------------------+          |
                         |                               |
-                 ----------------                       |
-                / unsigned long /                       |
-                ----------------                        |
+                 ----------                             |
+                / u64     /                             |
+                ----------                              |
                         |                               |
                         |                               V
                         |               +----------------------+
@@ -398,25 +385,32 @@ driver can be exemplified by the following::
                         |               / driver callbacks /
                         |               -------------------
                         |                       |
-                +-------+                       |
+                +-------+---------------+       |
+                |                       |       |
+                |               +-------|-------+
+                |               |       |
+                V               |       V
+        +--------------------+  |  +---------------------+
+        | Counter sysfs      |<-+->| Counter chrdev      |
+        +--------------------+     +---------------------+
+        | Translates to the  |     | Translates to the   |
+        | standard Counter   |     | standard Counter    |
+        | sysfs output       |     | character device    |
+        |--------------------|     |---------------------+
+        | Type: const char * |     | Type: u64           |
+        | Value: "42"        |     | Value: 42           |
+        +--------------------+     +---------------------+
                 |                               |
-                |               +---------------+
-                |               |
-                V               |
-        +--------------------+  |
-        | Counter sysfs      |<-+
-        +--------------------+
-        | Translates to the  |
-        | standard Counter   |
-        | sysfs output       |
-        |--------------------|
-        | Type: const char * |
-        | Value: "42"        |
-        +--------------------+
-                |
-         ---------------
-        / const char * /
-        ---------------
+         ---------------                 ----------
+        / const char * /                / u64     /
+        ---------------                 ----------
+                |                               |
+                |                               V
+                |                       +-----------+
+                |                       | read      |
+                |                       +-----------+
+                |                       \ Count: 42 /
+                |                        -----------
                 |
                 V
         +--------------------------------------------------+
@@ -425,7 +419,7 @@ driver can be exemplified by the following::
         \ Count: "42"                                      /
          --------------------------------------------------
 
-There are three primary components involved:
+There are four primary components involved:
 
 Counter device driver
 ---------------------
@@ -445,3 +439,49 @@ and vice versa.
 Please refer to the `Documentation/ABI/testing/sysfs-bus-counter` file
 for a detailed breakdown of the available Generic Counter interface
 sysfs attributes.
+
+Counter chrdev
+--------------
+Translates counter data to the standard Counter character device; data
+is transferred via standard character device read/write calls.
+
+Sysfs Interface
+===============
+
+Several sysfs attributes are generated by the Generic Counter interface,
+and reside under the `/sys/bus/counter/devices/counterX` directory,
+where `X` is to the respective counter device id. Please see
+Documentation/ABI/testing/sysfs-bus-counter for detailed information on
+each Generic Counter interface sysfs attribute.
+
+Through these sysfs attributes, programs and scripts may interact with
+the Generic Counter paradigm Counts, Signals, and Synapses of respective
+counter devices.
+
+Counter Character Device
+========================
+
+Counter character device nodes are created under the `/dev` directory as
+`counterX`, where `X` is the respective counter device id. Defines for
+the standard Counter data types are exposed via the userspace
+`include/uapi/linux/counter-types.h` file.
+
+The first 196095 bytes of the character device serve as a control
+selection area where control exposure of desired Counter components and
+extensions may be selected. Each byte serves as a boolean selection
+indicator for a respective Counter component or extension. The format of
+this area is as follows:
+
+* For each device extension, a byte is required.
+* For each Signal, a byte is reserved for the Signal component, and a
+  byte is reserved for each Signal extension.
+* For each Count, a byte is reserved for the Count component, a byte is
+  reserved for the count function, a byte is reserved for each Synapse
+  action, and byte is reserved for each Count extension.
+
+The selected Counter components and extensions may then be interfaced
+after the first 196095 bytes via standard character device read/write
+operations. The number of bytes available for each component or
+extension is dependent on their respective data type: u8 will have 1
+byte available, u64 will have 8 bytes available, strings will have 64
+bytes available, etc.
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
