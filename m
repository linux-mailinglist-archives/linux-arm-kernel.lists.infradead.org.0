Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDB1D8217
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 23:22:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GvsXxEMqQCo7c04lawMu20HSWgFVXpw7YtWp7mWBT5k=; b=tw2
	2dJT6fyERCnh3D0GZh12oXKnvRaRr6yN5QO3g8WOWpn5zRnMjzCAIzsRYufjrc1tk8CLdc/i3Laz0
	DfMc9rGaLQ9WTsMskNiv48AWrC0BxgqiQasrSVVTpXA1uUzkoZ7qalfbH4Z03UFblMPV+LbrUrKg2
	yMMnDs3LnYiWO0dE89m0tqxGFq0pUL35AStjlIrfhKaLcreo9IHJqr/fOkk7V4PC41u8/ipttB34J
	d0Cs2d40ZVoERovxGCXrjCGxWwR0vs9rGotO/EZAeAMgBOgdUjTiL/bnwWMt1tdZL7y/zpQf16frG
	8nmL7CET5mdEkLZGivGgQg7BXrIfMcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKUH1-0004Eq-Sl; Tue, 15 Oct 2019 21:22:31 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKUFT-00030W-9U
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 21:20:58 +0000
Received: by mail-wr1-x442.google.com with SMTP id v8so25554720wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 14:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=gQc1r1ib/WAI/h8loP6CN8X5jrpz3S38qvA1z7LgOPY=;
 b=bbmlUFcW3Hlhbp/CMbhjjOr4SasG3lOEMH8bDrHAR9UUlKDgHAvfGJSv8+mRGUKMBk
 1lIcgmdXlK4U5TjVYJEuT9HjsOC7L0qgXMtuI0d4B5U1HvVKvhIHk5WuxdonpurZQUXW
 vS5fGv+VFj6hHpqShaW5Is33c7bthlwr6rVYZdhvB0emV5TySylAD5Wywog46vMxf2gd
 FEjF28f6P7EW/RtLPB7hYYwkSzyYdPAz+w45thbCQLCQ8RGXqvh6HhwcpJ0sdBt9b+cK
 IbzM609UKMyNjo6ZFc5u8ztqv/Pb1A/7IzWdtX2YFPMcwYz2lJZIo3kbDCLNdokDQUse
 5IaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=gQc1r1ib/WAI/h8loP6CN8X5jrpz3S38qvA1z7LgOPY=;
 b=gE2JkyaZeBQqoL3KrGg1RMJL1A9mHP/3fmyTysEE5FgezV8/pWi2lCa9qy1JazPaqn
 I289qo/9JYCsICoPjGQ14lpFM8wYDM14iMeSqnZrm8lfm3eAZAzo96ojQb0Ir4pvsP/I
 4izRrsF1TvxlLqFTcvmG9V8Hqz20NNr1LHxdXAX0A5Mv3JgdJeVQLEmMzCIEZ5tQh1NQ
 SW7wC1Ksn7zr98EfGC/uoyMwLjzr/g5r3snwDGvSA3PNoi5VgARTl2y3GOH9il/aWPoU
 CjL0vLXpVGjnH4yytGb3GlMA5UWnmzEbKZeiSTSH6pnIfyP+yVW8F5wgcsB5QnkiyLTz
 xUlA==
X-Gm-Message-State: APjAAAUsWLkDdforNIFlAuG+jVKquLYjn25FUO/W7Mr0/lDnOiX9476v
 P40yXvD1kmBAdBeNDX5mfTfMdg==
X-Google-Smtp-Source: APXvYqweUupN2R/PZTaLYqLXTlbWF/L6LtoymPyIcmk/AGFkqrkRyH8nw4C3r0u1Mi+6Gg/deRZYHw==
X-Received: by 2002:adf:fa86:: with SMTP id h6mr32118497wrr.186.1571174450393; 
 Tue, 15 Oct 2019 14:20:50 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:39d2:21a2:678a:9501])
 by smtp.gmail.com with ESMTPSA id g185sm517649wme.10.2019.10.15.14.20.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 14:20:49 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org
Subject: [PATCH v3 00/11] coresight: etm4x: Fixes and updates for sysfs API
Date: Tue, 15 Oct 2019 22:19:53 +0100
Message-Id: <20191015212004.24748-1-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_142055_330485_950165D0 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: gregkh@linuxfoundation.org, suzuki.poulose@arm.com,
 mathieu.poirier@linaro.org, corbet@lwn.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Review of ETMV4 sysfs code resulted in a number of minor issues being
discovered.

Patch set fixes these issues:-
1) Update for ETM v4.4 archtecture.
2) Add missing single shot comparator API.
3) Misc fixes and improvements to sysfs API
4) Updated programmers documentation and reference.

Changes since v2 (reviews from Mathieu and Leo):-
  Patch 0002 now adds stable tag. Tested on 4.9, 4.14, 4.19
  Applies to coresight/next (5.4-rc1)
  Documentation changed to .rst format to match recent updates that
  converted other CoreSight .txt files.
  Misc typo / comment changes.

Changes since v1 (from reviews by Mathieu and Leo):-
  Usability patch split into 2 separate functional patches.
  Docs patch split into 3 patches.
  Misc style and comment typo fixes.

Mike Leach (11):
  coresight: etm4x: Fixes for ETM v4.4 architecture updates.
  coresight: etm4x: Fix input validation for sysfs.
  coresight: etm4x: Add missing API to set EL match on address filters
  coresight: etm4x: Fix issues with start-stop logic.
  coresight: etm4x: Improve usability of sysfs - include/exclude addr.
  coresight: etm4x: Improve usability of sysfs - CID and VMID masks.
  coresight: etm4x: Add view comparator settings API to sysfs.
  coresight: etm4x: Add missing single-shot control API to sysfs
  coresight: etm4x: docs: Update ABI doc for sysfs features added.
  coresight: docs: Create common sub-directory for coresight trace.
  coresight: etm4x: docs: Adds detailed document for programming etm4x.

 .../testing/sysfs-bus-coresight-devices-etm4x | 183 ++--
 .../{ => coresight}/coresight-cpu-debug.rst   |   0
 .../coresight/coresight-etm4x-reference.rst   | 798 ++++++++++++++++++
 .../trace/{ => coresight}/coresight.rst       |   2 +-
 Documentation/trace/{ => coresight}/stm.rst   |   0
 MAINTAINERS                                   |   3 +-
 .../coresight/coresight-etm4x-sysfs.c         | 312 ++++++-
 drivers/hwtracing/coresight/coresight-etm4x.c |  32 +-
 drivers/hwtracing/coresight/coresight-etm4x.h |  17 +-
 9 files changed, 1245 insertions(+), 102 deletions(-)
 rename Documentation/trace/{ => coresight}/coresight-cpu-debug.rst (100%)
 create mode 100644 Documentation/trace/coresight/coresight-etm4x-reference.rst
 rename Documentation/trace/{ => coresight}/coresight.rst (99%)
 rename Documentation/trace/{ => coresight}/stm.rst (100%)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
