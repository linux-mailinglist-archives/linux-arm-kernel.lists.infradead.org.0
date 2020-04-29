Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C721BE602
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 20:13:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ytyxyhjr9YVyj4VY5bCC4bbnmiB2tbqs2f9OcPQYvIg=; b=DiEFjeKjigxy5N
	0ocickK7fD0WO2VK7ccKS0TA5TiNpNoRw2rkf0M2JUsZ+hBiLLT9yl6cnXKxSrJPreYszUCnRmzer
	3YASDrBBo0I5DHeCMjgcgcLCd1g+X1qs1+FI1PZ+Rw70FDenfZpS7JNRtt2TCRRQ8FIoRdJZEveLY
	/J3LvPl/1uhYxTqRCSWYLkFCCh7Nhq2epf4ZapdU87rJhFYWv4O/UenFi+ZbeWsPwQWtDE5HNNoUp
	k5D57Llq5TOjXPuHT5HFlZvspM7E4eDtB338mDNKBw54lZ5zkEwSxxeSQdj6lb0+9iY0W2rXnQyab
	lvgVr/I7361rICsB6YwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTrCW-0004i6-02; Wed, 29 Apr 2020 18:12:52 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTrBk-0004Ft-1Z
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 18:12:06 +0000
Received: by mail-qt1-x844.google.com with SMTP id v26so2718438qto.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 11:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2tsSqdNWnb3CiuOvg96gs7sg5rhYKvwHlBRsWbohoX4=;
 b=p4WsQDKVxAz07MQA8hvDDKFPZMOxcFuvPUKCfaz8nY2dZ7WnmYgSOoDOobts8uWuvo
 ZIcaaUm1ApaCNIvFdCdSbVP3+b4Qc6Xn23PTrLU9ul80cxZdoD02Ok2mE1EIMRIHJJXI
 yjExhQiHAHJg8SjYdCjE3cSHxPBoeMhEWCxsqJy64KziBdBvPyFIL2u7/RNmhnKXp+bv
 WTASNdkj+S4YmcGpI3V//KYIg/zkKVb+FuBQwALXWhCKmRTbslaW+HTZa98NStwz4dOi
 RkXlsx9MfonxSRxhbh0nh5F/kD1T0obPNRx34CvhmcVOTjjZZtbr+b/lHgijj5fe9fq0
 NN1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2tsSqdNWnb3CiuOvg96gs7sg5rhYKvwHlBRsWbohoX4=;
 b=r9enJj+dZvAc3CJecexSKO9/Ynwi5FLKe//kTZjI09ju5zHCfJX3Jb1td0YJJrE1Q4
 GFbzZOheX2QauQ/oGbnWX9f0ZwPUddZPp8U2vwz0VzCJYdpt5DuhfDzHFdzS3VYl186t
 swuBJjTb/XjIm+1k9FFra4FrefefyYuBzSVWbFMvY7AS+CTkPn2eP7PGmcpYK5A58TO9
 bgdrYQWG+CaVpwtsHAb/O+FBPn2e9VNDq/xIlZHvdF8RIlwZKk/BW6D44hQXPD0KhSuq
 1Lr7L9neGKUPDI2wqb3Y8fEsiMDw5fH/T9VLwOU92WP0l9LjbdTuM1yClsuxkqQjwlri
 C40Q==
X-Gm-Message-State: AGi0PuZGLTtkfTw/7jSM9raTFljcDAAAq0LsB8pNMvAk+ONzJLOJIbj7
 ahiRKCvlEqoSRXVzThwzhW4=
X-Google-Smtp-Source: APiQypKY8OpPGQ+A02xX2a1aWXbNyQ9A0dh8ssyUBdOY9769gG4lAy9hnA/fuVUNNmetqVHdZBDzeg==
X-Received: by 2002:aed:2766:: with SMTP id n93mr35352318qtd.130.1588183922632; 
 Wed, 29 Apr 2020 11:12:02 -0700 (PDT)
Received: from localhost.localdomain (072-189-064-225.res.spectrum.com.
 [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id o43sm16315082qtf.46.2020.04.29.11.12.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 11:12:01 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: jic23@kernel.org
Subject: [PATCH 4/4] docs: counter: Document character device interface
Date: Wed, 29 Apr 2020 14:11:38 -0400
Message-Id: <639b231a155fee0b1786aafb441f61e8094dcf75.1588176662.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1588176662.git.vilhelm.gray@gmail.com>
References: <cover.1588176662.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_111204_107097_358E974B 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
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
Cc: kamel.bouhara@bootlin.com, gwendal@chromium.org, david@lechnology.com,
 felipe.balbi@linux.intel.com, linux-iio@vger.kernel.org, syednwaris@gmail.com,
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, patrick.havelange@essensium.com,
 William Breathitt Gray <vilhelm.gray@gmail.com>, fabrice.gasnier@st.com,
 fabien.lahoudere@collabora.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds high-level documentation about the Counter subsystem
character device interface. The 0x3E major number and respective minor
number range is reserved for Counter character device interface ioctl
calls.

Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 Documentation/driver-api/generic-counter.rst  | 87 ++++++++++++-------
 .../userspace-api/ioctl/ioctl-number.rst      |  1 +
 2 files changed, 56 insertions(+), 32 deletions(-)

diff --git a/Documentation/driver-api/generic-counter.rst b/Documentation/driver-api/generic-counter.rst
index 3ab8125b9c05..959c4074078c 100644
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
 
@@ -409,25 +396,32 @@ driver can be exemplified by the following::
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
+        | Type: const char * |     | Type: unsigned long |
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
+         ---------------                 ----------------
+        / const char * /                / unsigned long /
+        ---------------                 ----------------
+                |                               |
+                |                               V
+                |                       +-----------+
+                |                       | ioctl     |
+                |                       +-----------+
+                |                       \ Count: 42 /
+                |                        -----------
                 |
                 V
         +--------------------------------------------------+
@@ -436,7 +430,7 @@ driver can be exemplified by the following::
         \ Count: "42"                                      /
          --------------------------------------------------
 
-There are three primary components involved:
+There are four primary components involved:
 
 Counter device driver
 ---------------------
@@ -456,3 +450,32 @@ and vice versa.
 Please refer to the `Documentation/ABI/testing/sysfs-bus-counter` file
 for a detailed breakdown of the available Generic Counter interface
 sysfs attributes.
+
+Counter chrdev
+--------------
+Translates counter data to the standard Counter character device; data
+is transferred via ioctl calls.
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
+`counterX`, where `X` is the respective counter device id. Device
+information and control is exposed via a set of standard Counter
+subsystem ioctl commands.
+
+.. kernel-doc:: include/uapi/linux/counter.h
+   :internal:
diff --git a/Documentation/userspace-api/ioctl/ioctl-number.rst b/Documentation/userspace-api/ioctl/ioctl-number.rst
index f759edafd938..8136a26fb81c 100644
--- a/Documentation/userspace-api/ioctl/ioctl-number.rst
+++ b/Documentation/userspace-api/ioctl/ioctl-number.rst
@@ -88,6 +88,7 @@ Code  Seq#    Include File                                           Comments
                                                                      <http://infiniband.sourceforge.net/>
 0x20  all    drivers/cdrom/cm206.h
 0x22  all    scsi/sg.h
+0x3E  00-1F  linux/counter.h                                         <mailto:linux-iio@vger.kernel.org>
 '!'   00-1F  uapi/linux/seccomp.h
 '#'   00-3F                                                          IEEE 1394 Subsystem
                                                                      Block for the entire subsystem
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
