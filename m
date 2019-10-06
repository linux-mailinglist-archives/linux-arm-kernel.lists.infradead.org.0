Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A39CD35A
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 18:04:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5wv1bs3rw0aVO9GM6JB7zi0u+Tobp+8JUuPYLZwTCNU=; b=t0u28U9fWZi8vx
	AjXLAs93h+R5Vj171tCd2KbB15AbCVaCFWAiR3MxwmHUoAmOLKBUIobg5rPhQHblf/tc2wUjYkqAA
	nQUXfrzMzIffMx8p5peJQX/tx6XOvET5nUbhmKLfo0x0crm5QAzhCuJoeGohotxZ0bxRO1g0jr+bQ
	PlFpiLNFNl7fUZ9iiqoRhZf+XIC/k0sg5Ny8pMGEHxXZXMm3NPbQgiWCTlM7YUk88YbROPlUd9Sh5
	WEEtosjsh1hBjTqS3iW1CnQ3yfIuU1YcB5zPHyHfII7r+rNmQCRztmRF57Bb/vEvAYWyspSwyNOke
	Epva6ljlXvfV8yvqCh+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH913-0005RH-0Y; Sun, 06 Oct 2019 16:04:13 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH90N-00053C-Vg
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 16:03:33 +0000
Received: by mail-yb1-xb41.google.com with SMTP id w141so3283116ybe.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 06 Oct 2019 09:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X0YlaBg0eWRFmg01LcYcEakBboU2udItKz/WvLmsstE=;
 b=fyQ5xERCIVVSDumVC4ubV58r5dQvmSwwgM1gDnffp4c+23b97gjExIR2w5eKv7/8Jq
 ziZYQoR+ekNbyGmg5MyCdRKQCpjPl96Gg05vwaXu+bKwftDmAqbbBSH5E6QwSe5Ye+LQ
 xBUefkUGCXsIWAzl+r81TYehHx4jhYKp4zVdIT8iewLeyrco31I++sQZr0GkvC3qWrAI
 ySzHJ9fVZA81+D7Pk/jT9oRRn9rbqPtPhS1BPMSDfCtq7jRYvKthUyl4YoB3plYqlI9i
 4S/8SyDDMH2Wqfnrbl6M9RacL1dX7HAom4on1ZHwAGQZJQp1mHNTFfq/qMP0zFcmFZqo
 4HYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X0YlaBg0eWRFmg01LcYcEakBboU2udItKz/WvLmsstE=;
 b=kc1Z1lLjqlbF4gVfYyX+7rI7cIJP5PikNqN4QSpP8bfS1RVmwzhyDjC5/j1rha2sY1
 ys3BevKbDAv2B9fO0gnp9dKJY3z5AbVV+i2+9PcqMI1HOHAGc5vBc2PtiCTwhnKSJJte
 y5H+tHVDmwm6Qa84VspVcvyHZnFUOPoUaUYvjJrcLp838zIOk1NIAziZBIaqDvUMkWwC
 ZjG3lrTcr7UaiNPXINXdZSMGSNP5dvpUIhuLzCWnyntoF+gk+RscMuNfmArNEhohXAuP
 BIsdMXxngqdtrp8RUPNKFv2liPnRp6rSzYV+Ttqox9bFvNOssyDJ00+NLd1Ohai/MSRW
 fUDQ==
X-Gm-Message-State: APjAAAXvg/XMV3mVZ2i5qFEUxICf21z+dXlnbnbGRNP8Qq+oAXlVy7zP
 6izkYjm+wngehHZfbb/QE1I=
X-Google-Smtp-Source: APXvYqxNW/YNL3A3scV1Qc1+vAzbrjym3yfhoINYZ8xNzXVB83HFsdfnpe2UcuggrPJqmHwKu7egzA==
X-Received: by 2002:a25:ce08:: with SMTP id x8mr8866430ybe.177.1570377811262; 
 Sun, 06 Oct 2019 09:03:31 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id y129sm3341816ywy.41.2019.10.06.09.03.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 09:03:30 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: jic23@kernel.org
Subject: [PATCH v4 2/2] docs: driver-api: generic-counter: Update Count and
 Signal data types
Date: Sun,  6 Oct 2019 12:03:11 -0400
Message-Id: <75a9ca9837f4d66cb4912cfa535176e27f7c219a.1570377521.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570377521.git.vilhelm.gray@gmail.com>
References: <cover.1570377521.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_090332_016178_DEB23461 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
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
Signal data is either SIGNAL_LOW or SIGNAL_HIGH.

Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 Documentation/driver-api/generic-counter.rst | 22 +++++++-------------
 1 file changed, 8 insertions(+), 14 deletions(-)

diff --git a/Documentation/driver-api/generic-counter.rst b/Documentation/driver-api/generic-counter.rst
index 8382f01a53e3..161652fc1025 100644
--- a/Documentation/driver-api/generic-counter.rst
+++ b/Documentation/driver-api/generic-counter.rst
@@ -39,10 +39,7 @@ There are three core components to a counter:
 COUNT
 -----
 A Count represents the count data for a set of Signals. The Generic
-Counter interface provides the following available count data types:
-
-* COUNT_POSITION:
-  Unsigned integer value representing position.
+Counter interface represents the count data as an unsigned integer.
 
 A Count has a count function mode which represents the update behavior
 for the count data. The Generic Counter interface provides the following
@@ -93,19 +90,16 @@ SIGNAL
 A Signal represents a counter input data; this is the input data that is
 evaluated by the counter to determine the count data; e.g. a quadrature
 signal output line of a rotary encoder. Not all counter devices provide
-user access to the Signal data.
-
-The Generic Counter interface provides the following available signal
-data types for when the Signal data is available for user access:
+user access to the Signal data, so exposure is optional for drivers.
 
-* SIGNAL_LEVEL:
-  Signal line state level. The following states are possible:
+When the Signal data is available for user access, the Generic Counter
+interface provides the following available signal values:
 
-  - SIGNAL_LEVEL_LOW:
-    Signal line is in a low state.
+* SIGNAL_LOW:
+  Signal line is in a low state.
 
-  - SIGNAL_LEVEL_HIGH:
-    Signal line is in a high state.
+* SIGNAL_HIGH:
+  Signal line is in a high state.
 
 A Signal may be associated with one or more Counts.
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
