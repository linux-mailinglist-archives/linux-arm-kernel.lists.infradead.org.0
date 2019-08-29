Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DBAA290A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 23:33:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2+4CX6utIm2suuxQAcCKbdJCTmsI2hpXqBOYhnBjKkI=; b=QTA
	R7+apwrhPA3rVHloWxRaz3d05O9YOAGxXMcRo2xd0jYFBpgTWVl3WwjJW2Vv+PFyc+jt7Th/QjyJ9
	sSMUDAK5qht9A1In+I0dX69aqCGNrG9v9x2a+mE28WzF6miNqtz3yLuRqChPAIAuNs85WXSwD3JRb
	WH9T/6hNWHikWeS0BgS2l6BsqaZdhcfv/J2yPM+GgnrMzoUsewZzQKy3Mb+5pc5ym4ISzJdxEOOtG
	0Mr1dyPFsM2RL9m2Pdpwt7FEC8lTHN7Bf9KmgIn9JAO1SDYjrZjXsLZmEMeeeqaouIMwuCB19w+Ws
	him5am32SsEpb6QzqUdGpoWq/z9pKlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3S34-0002jY-6C; Thu, 29 Aug 2019 21:33:42 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3S2u-0002i3-Ok
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 21:33:34 +0000
Received: by mail-wr1-x441.google.com with SMTP id z11so4892319wrt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 14:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=lEmIC2brBwIOaUuTMoAwbZWVI4jzGGOcoWTA2PJKcu4=;
 b=qA0pk86YuNLLwtnHjHpwOu4qnlD1yVCUlvUZRQHaJHaxLtlG4RJd0myIPMbyIJh+0i
 Ol+PKLB1XeGkJW2uS+w07WAKFOVJpP+tRZXDf9vt8/u6izghP8qoLRcwTs6OHIMJ07Rs
 hvbfnysCV7hvXi0ZbAKqSr7+970hh4b5pBMtW/IrQeadbxHKJ/YvmkQxUwLlwdAv4ukh
 d3rTZzZWxZqFENfKBVT6urEY4IgEXOYWxMngsc9hVjuEPQ4K/OGh8zysEjTPhCtqPeS8
 48fZAGMcmijkjDUK/w21gDg1L2TPtBQ7tOoRY4nDbMkkQW7hJibk8IrjYsqVcRtXlvbl
 GmPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=lEmIC2brBwIOaUuTMoAwbZWVI4jzGGOcoWTA2PJKcu4=;
 b=I/Akawgkanbh/TnkcHCkKw1tkWoLSwUv0Ur2mMjPli4UQoXvol/GLdXw2RRIFWAqKy
 lOSJx4dU+z4i15FMyMXD+E9XkZBjG7n0Kwu4Qgl5DSF/S8N1sNfE9zIA718GdVBJ7Dzl
 Z/5iU7SzeOakduma02dUa5bMaNySWZPJT+Z1Lv4Fs2Qdi5MZPFU2MZJqh+zPDB/0k7gr
 hVBGOgm1f3f/3ubFs+DWDCyr6amBO29DBINaVAqn1Str7U7QqDmpS3dpPmnCuMwg+53i
 xyAkj0102DYuGeUwBZl0m49RVgh5QMOrn62gIESFp3dDKwdnOomWgjmfGmoNzVmfulyC
 gvug==
X-Gm-Message-State: APjAAAXl1zK8gwPLte6NC/fn0VIm2100MII7pnVSpzvh37K26ifOey13
 8sX319i6exUP8rw7X87PDWfLFw==
X-Google-Smtp-Source: APXvYqw697zgUtyEhXttple1jGJzyCb+Z8FJUMg0WU7sKX+dMmN7ovEmc8FMXXeY7ccT03Aw4cVvrQ==
X-Received: by 2002:a5d:4f81:: with SMTP id d1mr14445024wru.177.1567114409799; 
 Thu, 29 Aug 2019 14:33:29 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:c44b:1415:84d1:2692])
 by smtp.gmail.com with ESMTPSA id o17sm4515711wrx.60.2019.08.29.14.33.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 14:33:29 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, mathieu.poirier@linaro.org,
 linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v2 00/11]  coresight: etm4x: Fixes and updates for sysfs API
Date: Thu, 29 Aug 2019 22:33:10 +0100
Message-Id: <20190829213321.4092-1-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_143332_814633_9DCB974E 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: gregkh@linuxfoundation.org, corbet@lwn.net, suzuki.poulose@arm.com
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

 .../testing/sysfs-bus-coresight-devices-etm4x | 183 ++++---
 .../{ => coresight}/coresight-cpu-debug.txt   |   0
 .../coresight/coresight-etm4x-reference.txt   | 458 ++++++++++++++++++
 .../trace/{ => coresight}/coresight.txt       |   0
 MAINTAINERS                                   |   3 +-
 .../coresight/coresight-etm4x-sysfs.c         | 312 +++++++++++-
 drivers/hwtracing/coresight/coresight-etm4x.c |  32 +-
 drivers/hwtracing/coresight/coresight-etm4x.h |  18 +-
 8 files changed, 905 insertions(+), 101 deletions(-)
 rename Documentation/trace/{ => coresight}/coresight-cpu-debug.txt (100%)
 create mode 100644 Documentation/trace/coresight/coresight-etm4x-reference.txt
 rename Documentation/trace/{ => coresight}/coresight.txt (100%)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
