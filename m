Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE56EE705
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 19:13:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=W/I9XFe3hNme4N3lFj25ZhMHiorCRf8Wc7exsErhLy8=; b=AV5
	L4IPA8VbP7/BLRBUydysOQnUMPiZdUpPyrJR1+vgkw+o0CG2BFddg0Kv6/0aydajmKkoMfulfkO5j
	bI/qth8s9OILLkMVVS/K6bbnuWq7oGkM5xN6UunqmBIkWiuiy7IXSkazXebecvEd9zze0Luw2u7GH
	OmhhU26p1C7s39FnBD31zncT5Xdf0+4QavYRGo390JBVrsQNBaXMK6LLUOhHRopOAAaA+PrT18WO5
	S6TKfUcPCdayunxLuQBos95O8cAdfGfixzXWpQZ+F7TcvllWbYqAiuME7HbGRrQEwTWNHkFQoia+A
	iyrA8fayhh9oDMyeaS10mFOO1zF15RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRgql-0006ys-Q7; Mon, 04 Nov 2019 18:13:11 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRgqV-0006x7-JB
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 18:12:56 +0000
Received: by mail-pf1-x443.google.com with SMTP id 193so11541889pfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 10:12:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=IOrnVjzKQTHajn3CFMHgF0C3ygPTxYZvls8u9qhJFmc=;
 b=PS6PHmQNfAUlHw8UA707P0dlj6K2TOGPCwtXYXxWtzCOKkaoOK4zw98M2wLImdMUwR
 ckMGK8OKLC14u5DIX1TAeZeIiKjyvGCyrhnyYgaLR0KTC8z5pfkRp3YB8tKu2QduS5lf
 fi5d86sMpsv6+PgrOSJD+Mm3CYd02h3x8g1JNDkvr9VV7+pTXLL1j3IaFBb9S2aptR40
 DiWL+iW9wbUDbwKk+NcTUT/FIxpA9f3djtP2lCZGGpGiI5huY+Ow51AeIl3zKOFuAWVA
 HEO2Lok9edb3v0Q2KOFHqw6kRTRzmFiD7zaYlw9OFJg0VgTQ3HF+FRElsGinDEnF3/zq
 JySQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=IOrnVjzKQTHajn3CFMHgF0C3ygPTxYZvls8u9qhJFmc=;
 b=Wn4N5CjxZ1IhqjiJ7JoXePbWQu5LMsdBKgHb2ZdYz2NSBhCY6knH0va3lf8t9Hmnij
 fulg8AO4DExJXwUIlBzAQkgJPqd5J7/aLGo/ElvK8L1KDDGneAx0f/LIbYloBKsKrCv/
 j/ZSmzCdhgg8o+6JmVNk03BZriK+190uNpDg+OvEImLkpK3biMihNO0QF3A+im35ii8e
 wLZojaOFZr3DhqnF8bXXax7Pm/ukvZXO2IQt1jLrflxxgiL7FDT/X6c3a8XYT5iZCvWd
 jKZl+9B4MCoi8+dbDUPv2J+xC6x4e0pvKZAjaGug6mbNXchSvEoBGYPGFsPgtlpKSyag
 hKYA==
X-Gm-Message-State: APjAAAVzeVoQBcsvZCEhVsCUlY7xwInL3mqbz4/c//hwy+ki0a+QiEGB
 bOCPQ7WOXthVGc49oz24di4B0SC75uo=
X-Google-Smtp-Source: APXvYqxehQz2p3EAwjX8rJ5mLXOpKAM3g/M8xfqjrwh66Mqgil1TPv+RtKTQE2XfgLYqtKEQoPpVIg==
X-Received: by 2002:a17:90a:fc90:: with SMTP id
 ci16mr555884pjb.140.1572891173307; 
 Mon, 04 Nov 2019 10:12:53 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id o12sm16149520pgl.86.2019.11.04.10.12.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 10:12:52 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 00/14] coresight: next v5.4-rc6	
Date: Mon,  4 Nov 2019 11:12:37 -0700
Message-Id: <20191104181251.26732-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_101255_636900_10E93A4B 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg,

I collected the following for inclusion in the v5.5 kernel cycle.  Please have a
have a look when time permits.

Applies correctly on the char-misc-next (da80d2e516eb) branch.

Regards,
Mathieu

Andrew Murray (2):
  coresight: etm4x: Save/restore state across CPU low power states
  dt-bindings: arm: coresight: Add support for
    coresight-loses-context-with-cpu

Mark Brown (1):
  coresight: Add explicit architecture dependency

Mike Leach (8):
  coresight: etm4x: Fixes for ETM v4.4 architecture updates.
  coresight: etm4x: Fix input validation for sysfs.
  coresight: etm4x: Add missing API to set EL match on address filters
  coresight: etm4x: Fix issues with start-stop logic.
  coresight: etm4x: Improve usability of sysfs - include/exclude addr.
  coresight: etm4x: Improve usability of sysfs - CID and VMID masks.
  coresight: etm4x: Add view comparator settings API to sysfs.
  coresight: etm4x: Add missing single-shot control API to sysfs

Rikard Falkeborn (1):
  coresight: etm4x: Fix BMVAL misuse

Tanmay Vilas Kumar Jagdale (1):
  coresight: etm4x: Add support for ThunderX2

Yabin Cui (1):
  coresight: Serialize enabling/disabling a link device.

 .../devicetree/bindings/arm/coresight.txt     |   9 +
 drivers/hwtracing/coresight/Kconfig           |   1 +
 .../coresight/coresight-etm4x-sysfs.c         | 312 ++++++++++++++--
 drivers/hwtracing/coresight/coresight-etm4x.c | 351 +++++++++++++++++-
 drivers/hwtracing/coresight/coresight-etm4x.h |  81 +++-
 .../hwtracing/coresight/coresight-funnel.c    |  36 +-
 .../coresight/coresight-replicator.c          |  35 +-
 .../hwtracing/coresight/coresight-tmc-etf.c   |  26 +-
 drivers/hwtracing/coresight/coresight.c       |  51 +--
 include/linux/coresight.h                     |   6 +
 10 files changed, 825 insertions(+), 83 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
