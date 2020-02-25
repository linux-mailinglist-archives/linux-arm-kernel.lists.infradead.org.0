Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B5916F3D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 00:50:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oHA58rw/B2YZl13W9VY/Zi0nVpzOSS36Z5X9a6JCYw4=; b=nwZL3oeaQ9xuV+av7khCBUhbT3
	0t/yD7zX6r0E+EtByyzDVgQzpvZrbT84dhqV4tR4bCAGvMudlkeY7DWiobnD96nsuxrO4l4J/3xJm
	U8DP5/94lY1Hgtnmouyok19xaORoBUQEzEtSkFzcRsQkXtuxyZOiwYgqCi6epN/gWUQFcbuB9QClW
	VHAhKY8Vvp9VOU2ksFs1ya++iOpkD8GwEbOe+JHa1Fl2Wd5SgqKJPFN/v12aKP5l5l0ti/92qMXhF
	aP4tI05uKGS94Cm8XaMScViSnnrHFWoaEg/KobqPn5W9j6fOg9jVG8LGRpD8mZjwbI1kcurr91QWh
	J6UZnOSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6jyT-0003MA-5O; Tue, 25 Feb 2020 23:50:49 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6juf-0007Mz-Um
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 23:46:58 +0000
Received: by mail-wm1-x341.google.com with SMTP id t23so1070854wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 15:46:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TYlyvESdtJkkzEIVJoYhQjClltnzu2fIaM1HVjBTbAU=;
 b=Krc9sIsewtpswOvKmk7/S+COuYzreBWD7Ca8jY17fZ3k6AjVVACajXiS4CMmO1Nwtj
 v8D7QrhulrHl9PWsix3qtVdoUc2Z8N6LW9X0B7qS0YEKS5IP19BbEUnU++EaiUjj6wci
 KiRACC46tsHkWepzwmCV9H+GZZHdDtj4UyIxnM/IRi47C99hdartYCGwy3BZ0xASNVP+
 MDXYP48thmVn9W5WTj36Vv0peDrX/4uGae7VRvlPqThnWBRRgrTXWvdiSL88lAULo4Dx
 h6br15BkZNibYmn5UzAy/nL1OWM3dcCqrOunkGIbZP4T1dlmHaldJ/e+1HE3qalfG4tK
 03wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TYlyvESdtJkkzEIVJoYhQjClltnzu2fIaM1HVjBTbAU=;
 b=TryRp+AHlJBR0fUmCJxDm2+t3VAopKsd0OzFBZkV51G+AZJqEqdP2blwRj+Jn15hc8
 7rMI/NNQl0dcsqthy7fyQ2cKTtatVeR0n14qxULTuJ3Emy1IlcnUNoWU7wJePR6WBZr8
 6BGlixXwt53O71jhHjdwsnOL0egOYgIPVzZbMifjHmzo5ILS0GZ+g8045IcnVSTjTzjl
 wIa7O1XYaUepUI2gpkqiX4Bv4Q5cThuKmFpGUaTWWRWVJXd/Hp9ObCWtOU7bca/Fery6
 nz/dqyzONBicZrhTUcU2VePTSZU9NFhwOsRVsl2qJ5qpuN5ZLe7X+T2yfXfcfHRRcdJN
 EZig==
X-Gm-Message-State: APjAAAW6nAUV5uueA78lTBqEB01zpMZSyqtpqmMdn1K9XGGjtNteiCOH
 Qm7yOnC1pTvwhmHuiEYVOlEcmQtdXQM=
X-Google-Smtp-Source: APXvYqwY6Dl9BUk+IfJpxezAcmeZBSNghy55b16qrsor7bN8A4eNGfhfbLFlczmxqOt85MjNWpJtWg==
X-Received: by 2002:a1c:7ec5:: with SMTP id z188mr1582353wmc.52.1582674412106; 
 Tue, 25 Feb 2020 15:46:52 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:186c:5f6c:221d:5ce])
 by smtp.gmail.com with ESMTPSA id t133sm356278wmf.31.2020.02.25.15.46.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 15:46:51 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 coresight@lists.linaro.org, linux-doc@vger.kernel.org
Subject: [PATCH v10 15/15] Update MAINTAINERS to add reviewer for CoreSight
Date: Tue, 25 Feb 2020 23:46:11 +0000
Message-Id: <20200225234611.11067-16-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200225234611.11067-1-mike.leach@linaro.org>
References: <20200225234611.11067-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_154654_096980_143829CF 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: lorenzo.pieralisi@arm.com, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com, linux-arm-msm@vger.kernel.org, corbet@lwn.net,
 liviu.dudau@arm.com, agross@kernel.org, robh+dt@kernel.org, maxime@cerno.tech,
 sudeep.holla@arm.com, Mike Leach <mike.leach@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Added myself as a designated reviewer for the CoreSight infrastructure
at the request of Mathieu Poirier.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 80e908129509..a2ef2633ddea 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1676,6 +1676,7 @@ F:	arch/arm/mach-ep93xx/micro9.c
 ARM/CORESIGHT FRAMEWORK AND DRIVERS
 M:	Mathieu Poirier <mathieu.poirier@linaro.org>
 R:	Suzuki K Poulose <suzuki.poulose@arm.com>
+R:	Mike Leach <mike.leach@linaro.org>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	drivers/hwtracing/coresight/*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
