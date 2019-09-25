Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5110BD7D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 07:42:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yGvHw34rUbN+E9ySvAW14An9aC+lW457LMxreb6ZCrs=; b=hag0VYgS8Enw45
	toZVYBbAENaS9szhk35b+0QG4nBmBuGTuj4kGpk8deJIdRpkAVfVyvBydM21rwbtAXqUA4M/6knWM
	nxqr63pDJvk6yQ+P5PSBbIWEMQqX+WCufuUQ9XCRnR3mtGagLQVPY+b1ckb7auI4tMaK2H3oTWTgi
	65qcCaQNPdBOqMboG3S4pag3lLT4OwbF3y8v1uEIrGprSgALlGxiGeFRFOUwToPfAxeEnS5F8kaQj
	cvTP6nk+vg99dhE2ypb20aA4ZFsZnrptsJYLINcQAzzDjwC8/XhvfXZl0St5l01bPUVL+OqOFtbkF
	vcLTumG+ylSxa9SxYlhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD03g-0003a0-Tw; Wed, 25 Sep 2019 05:41:49 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD03U-0003ZQ-J9
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 05:41:38 +0000
Received: by mail-pg1-x544.google.com with SMTP id z12so2550247pgp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 22:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SMmj88Vr2l+xbZTK/K4atYZIDcxMS64bKPr57HDmIYI=;
 b=C1NbiwNtjlXTB9x++cXzglb3d3D+ImIUC9JjRVW878u4eONBMNiLKP4MGygGhFo7lK
 e4x5Iy5yPYX/Kf/e+zMVXtaVw8ACEAHjX8vfNhe9e//vwtRnZw/0lb/NtcirM+inu/To
 tNXxsXVdTQYs27NFYNmGHD9deK0rNmVktMDU0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SMmj88Vr2l+xbZTK/K4atYZIDcxMS64bKPr57HDmIYI=;
 b=DycbBaI/bWl8jnLIWIZ6Ed6MX9/80mCa++w69KKrX8kdxyrsDxywIRRESru71ZUCn/
 W+G+TfiNbQsdlTrTK0zzGFZfCyGhX+Kf9AmHxfn5Tb/sVweXdMYQp+qnTQHdIqmYTjUM
 +y66LtByNSy0PBh8AOExt/QsTYrNZBZejjmdLDd3v7gmbs0vCe+jt6qM4VSnmz0sd2z9
 5fwBdU0SxYl82329pdiicFWE98JkC435J+1rGosxXvp8dc8NwDElmb9BkgAx/L0lgqyN
 1A787a3vdtJ1Bx+QHKLELN6IQ7mS7jlq9AW0SRC8S5lnoX4qyDIcR7GCWN4CmouLRXp2
 xHpg==
X-Gm-Message-State: APjAAAXpoL0QG+jpZhr13AIrQ0oGkObg0eu4zm8WdlipJt8Vv7jC0HI2
 7rJEKqZ0ZMp8aKDHZ4JsUdb1kA==
X-Google-Smtp-Source: APXvYqzIdxtQTexWuejObIPusF+Jq6P2KW0CJO27N8YbknDzpjAq1m179AKDu99+yDB7J9F/5nTCpw==
X-Received: by 2002:a65:6799:: with SMTP id e25mr7341485pgr.271.1569390095094; 
 Tue, 24 Sep 2019 22:41:35 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id g12sm6551472pfb.97.2019.09.24.22.41.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2019 22:41:34 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Georgi Djakov <georgi.djakov@linaro.org>
Subject: [RFC PATCH] interconnect: Replace of_icc_get() with icc_get() and
 reduce DT binding
Date: Tue, 24 Sep 2019 22:41:33 -0700
Message-Id: <20190925054133.206992-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_224136_655061_2C9F3DC0 
X-CRM114-Status: GOOD (  26.57  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, David Dai <daidavid1@codeaurora.org>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Evan Green <evgreen@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I don't see any users of icc_get() in the kernel today, and adding them
doesn't make sense. That's because adding calls to that function in a
driver will make the driver SoC specific given that the arguments are
some sort of source and destination numbers that would typically be
listed in DT or come from platform data so they can match a global
numberspace of interconnect numbers. It would be better to follow the
approach of other kernel frameworks where the API is the same no matter
how the platform is described (i.e. platform data, DT, ACPI, etc.) and
swizzle the result in the framework to match whatever the device is by
checking for a DT node pointer or a fwnode pointer, etc. Therefore,
install icc_get() as the defacto API and make drivers use that instead
of of_icc_get() which implies the driver is DT specific when it doesn't
need to be.

The DT binding could also be simplified somewhat. Currently a path needs
to be specified in DT for each and every use case that is possible for a
device to want. Typically the path is to memory, which looks to be
reserved for in the binding with the "dma-mem" named path, but sometimes
the path is from a device to the CPU or more generically from a device
to another device which could be a CPU, cache, DMA master, or another
device if some sort of DMA to DMA scenario is happening. Let's remove
the pair part of the binding so that we just list out a device's
possible endpoints on the bus or busses that it's connected to.

If the kernel wants to figure out what the path is to memory or the CPU
or a cache or something else it should be able to do that by finding the
node for the "destination" endpoint, extracting that node's
"interconnects" property, and deriving the path in software. For
example, we shouldn't need to write out each use case path by path in DT
for each endpoint node that wants to set a bandwidth to memory. We
should just be able to indicate what endpoint(s) a device sits on based
on the interconnect provider in the system and then walk the various
interconnects to find the path from that source endpoint to the
destination endpoint.

Obviously this patch doesn't compile but I'm sending it out to start
this discussion so we don't get stuck on the binding or the kernel APIs
for a long time. It looks like we should be OK in terms of backwards
compatibility because we can just ignore the second element in an old
binding, but maybe we'll want to describe paths in different directions
(e.g. the path from the CPU to the SD controller may be different than
the path the SD controller takes to the CPU) and that may require
extending interconnect-names to indicate what direction/sort of path it
is. I'm basically thinking about master vs. slave ports in AXI land.

Cc: Maxime Ripard <mripard@kernel.org>
Cc: <linux-pm@vger.kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: <devicetree@vger.kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Evan Green <evgreen@chromium.org>
Cc: David Dai <daidavid1@codeaurora.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 .../bindings/interconnect/interconnect.txt    | 19 ++++---------------
 include/linux/interconnect.h                  | 13 ++-----------
 2 files changed, 6 insertions(+), 26 deletions(-)

diff --git a/Documentation/devicetree/bindings/interconnect/interconnect.txt b/Documentation/devicetree/bindings/interconnect/interconnect.txt
index 6f5d23a605b7..f8979186b8a7 100644
--- a/Documentation/devicetree/bindings/interconnect/interconnect.txt
+++ b/Documentation/devicetree/bindings/interconnect/interconnect.txt
@@ -11,7 +11,7 @@ The interconnect provider binding is intended to represent the interconnect
 controllers in the system. Each provider registers a set of interconnect
 nodes, which expose the interconnect related capabilities of the interconnect
 to consumer drivers. These capabilities can be throughput, latency, priority
-etc. The consumer drivers set constraints on interconnect path (or endpoints)
+etc. The consumer drivers set constraints on interconnect paths (or endpoints)
 depending on the use case. Interconnect providers can also be interconnect
 consumers, such as in the case where two network-on-chip fabrics interface
 directly.
@@ -42,23 +42,12 @@ multiple paths from different providers depending on use case and the
 components it has to interact with.
 
 Required properties:
-interconnects : Pairs of phandles and interconnect provider specifier to denote
-	        the edge source and destination ports of the interconnect path.
-
-Optional properties:
-interconnect-names : List of interconnect path name strings sorted in the same
-		     order as the interconnects property. Consumers drivers will use
-		     interconnect-names to match interconnect paths with interconnect
-		     specifier pairs.
-
-                     Reserved interconnect names:
-			 * dma-mem: Path from the device to the main memory of
-			            the system
+interconnects : phandle and interconnect provider specifier to denote
+	        the edge source for this node.
 
 Example:
 
 	sdhci@7864000 {
 		...
-		interconnects = <&pnoc MASTER_SDCC_1 &bimc SLAVE_EBI_CH0>;
-		interconnect-names = "sdhc-mem";
+		interconnects = <&pnoc MASTER_SDCC_1>;
 	};
diff --git a/include/linux/interconnect.h b/include/linux/interconnect.h
index d70a914cba11..e1ae704f5ab1 100644
--- a/include/linux/interconnect.h
+++ b/include/linux/interconnect.h
@@ -25,23 +25,14 @@ struct device;
 
 #if IS_ENABLED(CONFIG_INTERCONNECT)
 
-struct icc_path *icc_get(struct device *dev, const int src_id,
-			 const int dst_id);
-struct icc_path *of_icc_get(struct device *dev, const char *name);
+struct icc_path *icc_get(struct device *dev, const char *name);
 void icc_put(struct icc_path *path);
 int icc_set_bw(struct icc_path *path, u32 avg_bw, u32 peak_bw);
 void icc_set_tag(struct icc_path *path, u32 tag);
 
 #else
 
-static inline struct icc_path *icc_get(struct device *dev, const int src_id,
-				       const int dst_id)
-{
-	return NULL;
-}
-
-static inline struct icc_path *of_icc_get(struct device *dev,
-					  const char *name)
+static inline struct icc_path *icc_get(struct device *dev, const char *name)
 {
 	return NULL;
 }

base-commit: b5b3bd898ba99fb0fb6aed3b23ec6353a1724d6f
-- 
Sent by a computer through tubes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
