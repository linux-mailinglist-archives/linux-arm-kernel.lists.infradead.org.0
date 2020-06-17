Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EEF1FC3A9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 03:41:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oqs0kl00gWlCFaiQ9zPJekyNdQyQGgr30jiTDX2Z3zU=; b=WJCjk/SZ/58yQ8
	4P17bWG7BZyGqcej44ARlaaFnU4thFayGvNXwjkoTfmfy85UdEgyQ/w2bI/DJwbuxExCttkyyuhZI
	nRxrYy3XFGYemPfFktzSksdaUpIq/tXJZPrrslzCmdN0DTkXl9lAIrmQ6/ASEFXeByay6zIYDi0O1
	WZo248UbVpU6ZFIO8Q0O7p7TCHbnZQNya47mUfFNSs/Lut3N0jPQq1Hm6N45y8xFDsmKBAqfiqwHg
	0C/tPbN8nBrdVsuVAmwvUnuRcegN9CSfE1PQ4JfEoDbHZEL1ZRP6CYxP4Ib6FyyTIDnDeiY7x3w58
	w9NZa8oyerWuPTXHnklQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlN55-0003lE-MO; Wed, 17 Jun 2020 01:41:35 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlN4G-0003DB-7w
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 01:40:47 +0000
Received: by mail-qk1-x743.google.com with SMTP id b4so577290qkn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 18:40:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iWwCvXGLu1d/G++bm7Oxn/c4JGmCfQ82ajY1qfafTpE=;
 b=HIgvMYLotp2h5l+AVet4rhc5L93WzEhO+AOYx5JGqwBg+NTBJL2yCwhpsqqPX2xeIV
 SEU3TQJ0/txS7XZIvCLkliGTluk0Uf9rDIxorpCz/0K45cQfhBuBRiej69bQGz6pMAXU
 OwDImDm792HuORCnRGS0kEq/isnW5VVTInw5FmylN+Ktp8xstSzo1ZbkGffqQg/xmOQD
 rnFthKu55yM2WGGzRf3eXRPhe/EWwUep6x4aBZN3enj1jNQ+3z/lDvsISBGQ3aj8zcoO
 M3z/xA+HYEX6wtUYhxX3DXHrGj7PmrQleDVp0i9sTG3/H3id753GZy3poMwwY57Rxz1z
 on/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iWwCvXGLu1d/G++bm7Oxn/c4JGmCfQ82ajY1qfafTpE=;
 b=dueYqGsrMsS2JCXwEAwXmz0Kg/gMi9qnHjcrhrhoayyEj1Vqq+DwuFYAuYLWkhXdkH
 BFBOX0nWAe4nzrUC2X2n1GoBXFkWOyIOTYwTyfWKNU7pa6T/J5zj6L4pjYpOUyDxndwy
 k1hiTBslCTFkkYIhrLdnAyHODs7Q+mOca96IrH9KX3JE0PYCc074TCsVwO2EJSOfZSam
 PjGMe+CC5YjezIsAV4L/jZijAvCeUAhQWorLdFIwaC3LcsVeX3jVL255JYCtAQmP6Yoi
 xKtqEl7rTCmgA4oV20Nt5cgAd3SZguwEOFEoeali1/hbnnqfBT1GoNGK1ffLoouCtrJT
 HnQw==
X-Gm-Message-State: AOAM532QZ8qzkqvctj8TOLu3liqf+8Glc2Gs+5z+5q95Qhr4r9kibkFq
 dT907yULpc1oSkvYwiANm0IhAiIaa77cNA==
X-Google-Smtp-Source: ABdhPJwE3D3cZ9qs43mDkPVXfw5Jp+J/fhH36c9wvJ3LklRXK0DNFu/9EuqwqrvQbUSn0+uZ2ek82Q==
X-Received: by 2002:a37:9cc7:: with SMTP id
 f190mr23211573qke.236.1592358042991; 
 Tue, 16 Jun 2020 18:40:42 -0700 (PDT)
Received: from localhost.localdomain (072-189-064-225.res.spectrum.com.
 [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id a14sm1917014qkn.16.2020.06.16.18.40.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 18:40:42 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: jic23@kernel.org
Subject: [PATCH v3 4/4] docs: counter: Document character device interface
Date: Tue, 16 Jun 2020 21:40:02 -0400
Message-Id: <061c85baa1c2e1bf1510b6235a82b44ba2a89931.1592341702.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1592341702.git.vilhelm.gray@gmail.com>
References: <cover.1592341702.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_184044_315197_D0AAF9C4 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Documentation/ABI/testing/sysfs-bus-counter  |  31 +++++
 Documentation/driver-api/generic-counter.rst | 132 ++++++++++++++-----
 2 files changed, 127 insertions(+), 36 deletions(-)

diff --git a/Documentation/ABI/testing/sysfs-bus-counter b/Documentation/ABI/testing/sysfs-bus-counter
index 566bd99fe0a5..8533a8732544 100644
--- a/Documentation/ABI/testing/sysfs-bus-counter
+++ b/Documentation/ABI/testing/sysfs-bus-counter
@@ -193,6 +193,37 @@ Description:
 		both edges:
 			Any state transition.
 
+What:		/sys/bus/counter/devices/counterX/chrdev_format
+KernelVersion:	5.9
+Contact:	linux-iio@vger.kernel.org
+Description:
+		Data format of the respective character device node of the
+		Counter. Reading this attribute returns the current data format
+		of the respective character device node; writing to this
+		attribute sets the current data format of the respective
+		character device node. This attribute interfaces via the
+		following format:
+
+		Components/extensions are specified by a character identifier
+		and an index offset; whitespace serves as delimiters. The
+		following character identifiers are supported:
+
+		C: Count
+		S: Signal
+		E: Extension
+		A: Synapse Action
+		F: Count Function
+
+		Count/Signal extensions may be specified by first specifying the
+		respective owning component then the desired extension
+		immediately following without delimiting whitespace; Synapse
+		Action and Count Function are specified in a similar manner.
+
+		For example, "C4 C2E6 C0F S7E1 C3A4 S5" would specify the
+		following data format: Count 4, Count 2's Extension 6, Count 0's
+		Count Function, Signal 7's Extension 1, Count 3's Synapse Action
+		4, Signal 5.
+
 What:		/sys/bus/counter/devices/counterX/name
 KernelVersion:	5.2
 Contact:	linux-iio@vger.kernel.org
diff --git a/Documentation/driver-api/generic-counter.rst b/Documentation/driver-api/generic-counter.rst
index 8aaa6cd37fd4..d46ce65d1488 100644
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
 
@@ -378,13 +365,13 @@ driver is exemplified by the following::
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
@@ -399,25 +386,32 @@ driver is exemplified by the following::
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
@@ -426,7 +420,7 @@ driver is exemplified by the following::
         \ Count: "42"                                      /
          --------------------------------------------------
 
-There are three primary components involved:
+There are four primary components involved:
 
 Counter device driver
 ---------------------
@@ -446,3 +440,69 @@ and vice versa.
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
+A `/sys/bus/counter/devices/counterX/chrdev_format` sysfs attribute is
+available to expose the character device data format.
+
+Users may write to this sysfs attribute to select the components they
+want to interface -- the layout can be determined as well from the
+order. For example::
+
+# echo "C0 C3 C2" > /sys/bus/counter/devices/counter0/chrdev_format
+
+This would select Counts 0, 3, and 2 (in that order) to be available
+in the `/dev/counter0` node as a contiguous memory region.
+
+Users can select extensions in a similar fashion::
+
+# echo "C4E2 S1E0" > /sys/bus/counter/devices/counter0/chrdev_format
+
+This would select extension 2 from Count 4, and extension 0 from
+Signal 1.
+
+Users may read from this `chrdev_format` sysfs attribute in order to see
+the currently configured format of the character device.
+
+Users may perform read/write operations on the `/dev/counterX` node
+directly; the layout of the data is what they user has configured via
+the chrdev_format sysfs attribute. For example::
+
+# echo "C0 C1 S0 S1" > /sys/bus/counter/devices/counter0/chrdev_format
+
+Yields the following `/dev/counter0` memory layout::
+
+        +-----------------+------------------+----------+----------+
+        | Byte 0 - Byte 7 | Byte 8 - Byte 15 | Byte 16  | Byte 17  |
+        +-----------------+------------------+----------+----------+
+        | Count 0         | Count 1          | Signal 0 | Signal 2 |
+        +-----------------+------------------+----------+----------+
+
+The number of bytes allotted for each component or extension is
+determined by its respective data type: u8 will have 1 byte allotted,
+u64 will have 8 bytes allotted, etc.
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
