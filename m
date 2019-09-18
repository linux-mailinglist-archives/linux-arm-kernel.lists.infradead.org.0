Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F41B5E69
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 09:55:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5wv1bs3rw0aVO9GM6JB7zi0u+Tobp+8JUuPYLZwTCNU=; b=dPgMc4+D/+kwAJ
	3CMTtczGwvfjLe0u1jVSEFwuTFzwA8auq7dxxYpl2QcD3Ww3tPkq/1A6pyTSlWaFvn+x8U8lWeS5B
	JC6s4P9GnV5VkzOePTN8Jo5nYNGZ4cP/21CVTZvN5S9w9NXrbisTD9LnXYPFA1j9YFcdpEqAD6eEX
	eG2obkxbECd9apAVDhWmdZ/xt8bu4xBc3s3uwZvX5Fe6PMSkniJXGgoYlHNRHw/j6cGcLsQeZvAjj
	KxeSx9rpiCMMm/d/GWX6ljjsL3aIww3AZFxS1bCclpTF2y7fUWUcY1CaZrbi9fKI75sbRuH+yx0zZ
	qnfHpU85JLCjpNHPms1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAUne-0001r6-8R; Wed, 18 Sep 2019 07:54:54 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUmG-00019T-65
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 07:53:29 +0000
Received: by mail-pg1-x544.google.com with SMTP id x15so3519887pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 00:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X0YlaBg0eWRFmg01LcYcEakBboU2udItKz/WvLmsstE=;
 b=AkDFryyhXfRKyYsBUK/KXoVhWOS+frVLcJhgIH2cxTS3whUyNT8x2qvtaNcSFWmZvy
 5gsAQmmAO/3Gxs67mdVJcyC02/Jvf+6VXiHN1VH1qkQPZiu5eREbG0BkyO6aH3fnqqHS
 Id0cQ2DVr5dAEeR/Opp7cYg5Hk3IJT+duEw8CaFbEvueqmUysPnSgyXqEBzwtDxdFUKk
 sOhzOeSdHbNP7Xofpfxt+xqLByjC70EJpD0/NNRYwXvoJaRvuu1GZNfd19BNVYwMoCLK
 ZjFBOEMIA1l0YlAKCVd4B84k/44VcCjkkAsjE4giIMyTrTw0Ar5hauGdOXV4YG3vfhMH
 ilzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X0YlaBg0eWRFmg01LcYcEakBboU2udItKz/WvLmsstE=;
 b=Mhiw4e6OHQqOligIJefB6vXCwZ3gcw9GAwM3byctTxGEsPTrMuxXXTj9kLYyKpHxbD
 1ZzlIu002zDCjlMs60l+/51ehA8gXEOotE/c51Rdg7gTJ4pIN2c44fEb7in50PCPR84Q
 U62YPpTz2SYpLdNfMSdwEA++i1LbtHbKa+UOhaWNzhcljtpZDr73/BWKiiCzY7reK0kK
 TrzBdVL/ajLOovsyrhrLSXRnTwWrwV8FWx8nWZzwrwJ16sHGSY7vvdTMMl3w0K5o3nXN
 Uf5avS31BGRxW2jBbxsTJ5QfesjxjzHI7jDyA/649S255BXAazm6lKlCrQ4Hh7EtbeV1
 q4LA==
X-Gm-Message-State: APjAAAX5mLCWJfZxJIMAZzzyAR4JOfBw5IYqArbZNUMXrbDIAzsRmOdU
 3dWg+Ay9lym9CUemskknZiY=
X-Google-Smtp-Source: APXvYqzaZ48uQhaDCpAmPYWnFCbRwXOhnRpAWgBqtZsQrr7+jFYScd1DVyElD2iND+AbYLOOfNJGWQ==
X-Received: by 2002:a62:ab04:: with SMTP id p4mr2716826pff.227.1568793207344; 
 Wed, 18 Sep 2019 00:53:27 -0700 (PDT)
Received: from localhost.localdomain ([2001:268:c147:d9df:f819:e399:825f:f2dc])
 by smtp.gmail.com with ESMTPSA id h8sm5580715pfo.64.2019.09.18.00.53.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 00:53:26 -0700 (PDT)
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: jic23@jic23.retrosnub.co.uk
Subject: [PATCH v2 3/7] docs: driver-api: generic-counter: Update Count and
 Signal data types
Date: Wed, 18 Sep 2019 16:52:44 +0900
Message-Id: <f7e5486216f4368e1e00a20842928a1f0f6a4135.1568792697.git.vilhelm.gray@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1568792697.git.vilhelm.gray@gmail.com>
References: <cover.1568792697.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_005328_326627_270D4914 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
Cc: alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 patrick.havelange@essensium.com, linux-kernel@vger.kernel.org,
 William Breathitt Gray <vilhelm.gray@gmail.com>, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
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
