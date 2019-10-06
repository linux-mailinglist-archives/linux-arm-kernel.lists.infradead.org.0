Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7595CD917
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 22:04:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L0ckgsYzI8t1fliXi4KtGxg2YjZoHiv9GFYHhk+saPk=; b=RDWETly9uK16d7
	vPG4g2ZXwIuFfDi1WNM5GdW6RmTCQTqeqkqyTXtts9d+SN6ZB3hqc4Fo8/J7OnMSCV3zOrG5USVZu
	ygZSII5I0RbvWc2+c9lJ1iIrczl9n8pKBWuKrNy0Aii3oH1mAdFvyf9EfDRsRH7LjpKaB04CgfbBE
	ninsgEbLWt5k/t5DHyeKLmUEGC5nYmQNMZVyaZ8Uof3vKrioEzpDgxNoKr8SFRROiJf9KZNBZM37I
	bfUCE9Z9IMOP7KoASX/tY9jKy5KuRXz+aIEklBCFgms6IdUUEJXx4mNbL9J8O5mz00ZrVecYq8EEH
	L2jWNbGTDc+Tq3IZTKJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHClB-0005Gs-7E; Sun, 06 Oct 2019 20:04:05 +0000
Received: from mail-yw1-xc33.google.com ([2607:f8b0:4864:20::c33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHCkf-0004sA-BT
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 20:03:35 +0000
Received: by mail-yw1-xc33.google.com with SMTP id m13so4333293ywa.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 06 Oct 2019 13:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oi1lDkMlTFONnp6bwWaGnqUvaiX5vepqhjmjsnY4BQc=;
 b=LBbx5c6oe/DCoJegdyvkhilRsrfMIqU1E1Q/6QHocTi1xd4DvJDg8qxjOgu91Ccd7X
 IpFtmWi/mtWV2ozmStU60+ocRReTEq6hwuhohf1gODtt8k9IYFNYGW+EkxMq8dvk02bv
 y8SdobV4fvu1QSDn/FYcCnGV0FvMFdjT/oN4UPm2zEVen9phKHif2qtoHAVTkOc9kW1v
 ibGVflyXht7pQOoCLpAFbfS7E63yZWS5KYtCiT56ma9BCRdR1zNsDozbirkm4Fi+f6N+
 F28mr8vQ/dEEy/SobhSt9P8nzh5aRzlM6XQfx88QE0A7MLf1pga0IqiOyPu6KQOTmlwN
 GkGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oi1lDkMlTFONnp6bwWaGnqUvaiX5vepqhjmjsnY4BQc=;
 b=Ynh0Pdh/LVzn3ws6N7K4Mpic6XlHqPGNb2uTN30CAm0wvxGcTrjhj1PgIzRVuRrKfQ
 w+J2GWWjHe5tgTH9GkvOHzRCEFeek89G6EuCEWBTO7AK2CKgbOcyt+YB/5rJ36IPh2Zr
 hBHXqZObM8b/6T49DaHSEfiYJx0fOPsQkbS6XWdtaJ4ITrfuyvlik3oG5Tof1rk1ZoA8
 7J0tDJ1dt5u2rUZMjLuiwckT3ER5X7qx2yxyQvOvstcfqZlw1o7sLS6i6gRRmLEpmpN/
 g00y1glIUZxdF74Jn6R1K3lvk7ygXweX7tAyQC9Zx7vEDpsGkBd3AF6vUuzDF6tPk0gq
 MQNA==
X-Gm-Message-State: APjAAAUjH586lBza0/Bn0EWNq45/V0KsD4FTLoJryNsXSww87b2A6Lnx
 Yxw7WvsFrNCX0X7/C3LRCm0=
X-Google-Smtp-Source: APXvYqyW8RVmQI6J41bkpIKVj8Zd5IiblHuEB0TjHzh3r1P2DVY6tYSPzDgwRTyxamsLWg/zD4eouA==
X-Received: by 2002:a81:7a02:: with SMTP id v2mr17797467ywc.398.1570392212146; 
 Sun, 06 Oct 2019 13:03:32 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id x16sm3765266ywx.103.2019.10.06.13.03.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 13:03:31 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: jic23@kernel.org
Subject: [PATCH v5 2/3] docs: driver-api: generic-counter: Update Count and
 Signal data types
Date: Sun,  6 Oct 2019 16:03:10 -0400
Message-Id: <927b67f2c645faab1182229625e93913c2a267ef.1570391994.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570391994.git.vilhelm.gray@gmail.com>
References: <cover.1570391994.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_130333_392294_2833979C 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c33 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: benjamin.gaignard@linaro.org, alexandre.torgue@st.com,
 linux-iio@vger.kernel.org, patrick.havelange@essensium.com,
 linux-kernel@vger.kernel.org, William Breathitt Gray <vilhelm.gray@gmail.com>,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 david@lechnology.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Count data is now always represented as an unsigned integer, while
Signal data is either SIGNAL_LOW or SIGNAL_HIGH. In addition,
clarification changes and additions are made to better explain the
theory of the Generic Counter interface and its use.

Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 Documentation/driver-api/generic-counter.rst | 162 +++++++++++--------
 1 file changed, 92 insertions(+), 70 deletions(-)

diff --git a/Documentation/driver-api/generic-counter.rst b/Documentation/driver-api/generic-counter.rst
index 8382f01a53e3..e622f8f6e56a 100644
--- a/Documentation/driver-api/generic-counter.rst
+++ b/Documentation/driver-api/generic-counter.rst
@@ -7,7 +7,7 @@ Generic Counter Interface
 Introduction
 ============
 
-Counter devices are prevalent within a diverse spectrum of industries.
+Counter devices are prevalent among a diverse spectrum of industries.
 The ubiquitous presence of these devices necessitates a common interface
 and standard of interaction and exposure. This driver API attempts to
 resolve the issue of duplicate code found among existing counter device
@@ -26,23 +26,72 @@ the Generic Counter interface.
 
 There are three core components to a counter:
 
-* Count:
-  Count data for a set of Signals.
-
 * Signal:
-  Input data that is evaluated by the counter to determine the count
-  data.
+  Stream of data to be evaluated by the counter.
 
 * Synapse:
-  The association of a Signal with a respective Count.
+  Association of a Signal, and evaluation trigger, with a Count.
+
+* Count:
+  Accumulation of the effects of connected Synapses.
+
+SIGNAL
+------
+A Signal represents a stream of data. This is the input data that is
+evaluated by the counter to determine the count data; e.g. a quadrature
+signal output line of a rotary encoder. Not all counter devices provide
+user access to the Signal data, so exposure is optional for drivers.
+
+When the Signal data is available for user access, the Generic Counter
+interface provides the following available signal values:
+
+* SIGNAL_LOW:
+  Signal line is in a low state.
+
+* SIGNAL_HIGH:
+  Signal line is in a high state.
+
+A Signal may be associated with one or more Counts.
+
+SYNAPSE
+-------
+A Synapse represents the association of a Signal with a Count. Signal
+data affects respective Count data, and the Synapse represents this
+relationship.
+
+The Synapse action mode specifies the Signal data condition that
+triggers the respective Count's count function evaluation to update the
+count data. The Generic Counter interface provides the following
+available action modes:
+
+* None:
+  Signal does not trigger the count function. In Pulse-Direction count
+  function mode, this Signal is evaluated as Direction.
+
+* Rising Edge:
+  Low state transitions to high state.
+
+* Falling Edge:
+  High state transitions to low state.
+
+* Both Edges:
+  Any state transition.
+
+A counter is defined as a set of input signals associated with count
+data that are generated by the evaluation of the state of the associated
+input signals as defined by the respective count functions. Within the
+context of the Generic Counter interface, a counter consists of Counts
+each associated with a set of Signals, whose respective Synapse
+instances represent the count function update conditions for the
+associated Counts.
+
+A Synapse associates one Signal with one Count.
 
 COUNT
 -----
-A Count represents the count data for a set of Signals. The Generic
-Counter interface provides the following available count data types:
-
-* COUNT_POSITION:
-  Unsigned integer value representing position.
+A Count represents the accumulation of the effects of connected
+Synapses; i.e. the count data for a set of Signals. The Generic
+Counter interface represents the count data as a natural number.
 
 A Count has a count function mode which represents the update behavior
 for the count data. The Generic Counter interface provides the following
@@ -86,60 +135,7 @@ available count function modes:
     Any state transition on either quadrature pair signals updates the
     respective count. Quadrature encoding determines the direction.
 
-A Count has a set of one or more associated Signals.
-
-SIGNAL
-------
-A Signal represents a counter input data; this is the input data that is
-evaluated by the counter to determine the count data; e.g. a quadrature
-signal output line of a rotary encoder. Not all counter devices provide
-user access to the Signal data.
-
-The Generic Counter interface provides the following available signal
-data types for when the Signal data is available for user access:
-
-* SIGNAL_LEVEL:
-  Signal line state level. The following states are possible:
-
-  - SIGNAL_LEVEL_LOW:
-    Signal line is in a low state.
-
-  - SIGNAL_LEVEL_HIGH:
-    Signal line is in a high state.
-
-A Signal may be associated with one or more Counts.
-
-SYNAPSE
--------
-A Synapse represents the association of a Signal with a respective
-Count. Signal data affects respective Count data, and the Synapse
-represents this relationship.
-
-The Synapse action mode specifies the Signal data condition which
-triggers the respective Count's count function evaluation to update the
-count data. The Generic Counter interface provides the following
-available action modes:
-
-* None:
-  Signal does not trigger the count function. In Pulse-Direction count
-  function mode, this Signal is evaluated as Direction.
-
-* Rising Edge:
-  Low state transitions to high state.
-
-* Falling Edge:
-  High state transitions to low state.
-
-* Both Edges:
-  Any state transition.
-
-A counter is defined as a set of input signals associated with count
-data that are generated by the evaluation of the state of the associated
-input signals as defined by the respective count functions. Within the
-context of the Generic Counter interface, a counter consists of Counts
-each associated with a set of Signals, whose respective Synapse
-instances represent the count function update conditions for the
-associated Counts.
+A Count has a set of one or more associated Synapses.
 
 Paradigm
 ========
@@ -286,10 +282,36 @@ if device memory-managed registration is desired.
 Extension sysfs attributes can be created for auxiliary functionality
 and data by passing in defined counter_device_ext, counter_count_ext,
 and counter_signal_ext structures. In these cases, the
-counter_device_ext structure is used for global configuration of the
-respective Counter device, while the counter_count_ext and
-counter_signal_ext structures allow for auxiliary exposure and
-configuration of a specific Count or Signal respectively.
+counter_device_ext structure is used for global/miscellaneous exposure
+and configuration of the respective Counter device, while the
+counter_count_ext and counter_signal_ext structures allow for auxiliary
+exposure and configuration of a specific Count or Signal respectively.
+
+Determining the type of extension to create is a matter of scope.
+
+* Signal extensions are attributes that expose information/control
+  specific to a Signal. These types of attributes will exist under a
+  Signal's directory in sysfs.
+
+  For example, if you have an invert feature for a Signal, you can have
+  a Signal extension called "invert" that toggles that feature:
+  /sys/bus/counter/devices/counterX/signalY/invert
+
+* Count extensions are attributes that expose information/control
+  specific to a Count. These type of attributes will exist under a
+  Count's directory in sysfs.
+
+  For example, if you want to pause/unpause a Count from updating, you
+  can have a Count extension called "enable" that toggles such:
+  /sys/bus/counter/devices/counterX/countY/enable
+
+* Device extensions are attributes that expose information/control
+  non-specific to a particular Count or Signal. This is where you would
+  put your global features or other miscellanous functionality.
+
+  For example, if your device has an overtemp sensor, you can report the
+  chip overheated via a device extension called "error_overtemp":
+  /sys/bus/counter/devices/counterX/error_overtemp
 
 Architecture
 ============
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
