Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E69B6601
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 16:24:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5wv1bs3rw0aVO9GM6JB7zi0u+Tobp+8JUuPYLZwTCNU=; b=UaFtd1bBmkevQI
	rRUpUZCgMmk1v0xkYUD6hudMemnda4e94hwzWx7kvjkJzCaAn3XdUHQMMdX1DCZIO6wWaX8JKUWb3
	cPzS6L7oqzs5FZ2ICI8Bq/sy2gnnNOBjBYl7Lb1u4ltW0lIfO8/mH8Ja7irvBhU4syn6e3CVyNpF9
	1BjAB3tL1R4zG/fICXY5utJRYk0DpzOjjMTuMT9EyGMm/Hn98I+W8QqoxnyFaZKOKjDBAMUUBMtCD
	4qjJIKCQEeOQz5J3C8JV47s8oR6z+1/mlEHsBYjg+32YOHasWEsiMucsqOthE8PF+TLJZhx6TR1di
	rpoKKD9nKBt17wfByOeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAasS-0000P9-Hi; Wed, 18 Sep 2019 14:24:16 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAaro-0008PO-IV
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 14:23:38 +0000
Received: by mail-pf1-x444.google.com with SMTP id x127so57337pfb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 07:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X0YlaBg0eWRFmg01LcYcEakBboU2udItKz/WvLmsstE=;
 b=AQUtfExt8PphIK/V+c+mEJ3tgaUEISxw78DBCeSXeyLH9gYToCX1fyDRsFiqifcLuN
 c5domyKtQbNk8UW32C/o8pZxeVKctq+eYM2nl/a+mrfcyhODXnb1TWcvL3vFe3MDygUK
 358nsEwOyj4l+QNqq6/0BFrGmo5RY6rTAIZqbnkTVAqAnMc+ybt1H0p7QnhLAYo0iSGa
 W/AAiFLjZJoyfi3SME//ZCANuAHVX9bV2/CFWUIAQL4r8biRaX9RplWV0+THsCypl3Gp
 G+ZgOwie51YPSdJZmnm4/9gLYzpCIxn8HXzoM2hzP3BYjAceYcayoq/G0oXGgCoTG/i3
 u3EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X0YlaBg0eWRFmg01LcYcEakBboU2udItKz/WvLmsstE=;
 b=EsbNPc5k4cv837OdwXmRUj9vvybNyc90P4/lsFAwx3C8vnTTXIgMDpzjgG9faM3j2H
 5+t/YlL6SAfPTgZVHVoBhtOq9eAVS8D8YeTen3qWahTPREoAVrccqhYRii31//f59sPZ
 hDVSRLd9t5iNKiXNm6SH5/yef44w28DMb+BBp9bYcJJXa+exwQKFZnziSFyRubf07H0K
 2e7VnQ244W5UGc1Fn5XLZXY6PzEUvNfH8oY+cywZGf+xqjSxUJfepbQnYJ2P1AQZaPt8
 AQwLU3cwyp7U2BvjRpvzDo1gQVZ0NC6O3fscPXD+7WYK0w+hU6GNHBwz1qBKqcAg28cL
 sxyA==
X-Gm-Message-State: APjAAAVD01xAgIiF9La8GlEdksSzjNp0z9bby8OpcWJDyLgox4MpM+Qp
 lSFxUzNNXs2eoUfkHKtcDBI=
X-Google-Smtp-Source: APXvYqwraF/YHqWdOvbISaW0toiHH71DUpkNZY1Cp7PbrQONBy+X5ThJP7vWM980IKlnropOI/g2qw==
X-Received: by 2002:a17:90a:c8a:: with SMTP id v10mr3943216pja.6.1568816615452; 
 Wed, 18 Sep 2019 07:23:35 -0700 (PDT)
Received: from localhost.localdomain ([2001:268:c145:8e3a:1c91:3b66:30:c335])
 by smtp.gmail.com with ESMTPSA id
 d5sm10996675pfa.180.2019.09.18.07.23.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 07:23:34 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: jic23@jic23.retrosnub.co.uk
Subject: [PATCH v3 2/2] docs: driver-api: generic-counter: Update Count and
 Signal data types
Date: Wed, 18 Sep 2019 23:22:46 +0900
Message-Id: <e7517c4062cfa186f90dc9e16765bd0745068c0b.1568816248.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1568816248.git.vilhelm.gray@gmail.com>
References: <cover.1568816248.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_072336_803356_F7499236 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
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
