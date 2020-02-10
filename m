Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 942BD15852E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 22:44:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=t1MFPbI81mSZEgY1Lty4qA8iXFYAM8k7og+YC+5yGJ0=; b=mV2Xoo1wkb+dGfL4aYMHh8pJRO
	xav7g7XI7qZKna3XzeKSEIPq3ZNL0auIoaEc60SjOKVTijOGYJafzWYNANRb+rLs+ShjF4k6XUGYm
	bPc2CjFbJIpFCbDvrP6Y8am/F5/dOne7g8qoS0obXtTTJJDpPIjjFPtr2ftIZDOgiCPZHkcqGSJoY
	p4OwYSNJb77JgCGdBN+boyjkvwlC2+ZA/TfyYFMAVO2xlGAmbfiVUdYLGvDGmMyaPUB85tNc3rHqh
	HCE3QNAP/5cvAg/X/8ol5o+30VdIpIjs3D9HWOGgD5zp4mLStsSaDVYO8wWpgUa0kMDNMhXJ+3rk+
	gMl3/dMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Gqs-0007XF-76; Mon, 10 Feb 2020 21:44:22 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Gmv-0004By-LZ
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 21:40:25 +0000
Received: by mail-wm1-x341.google.com with SMTP id c84so951573wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 13:40:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SCiRbjJzZzwrllYyfm6P2Mav2in2VZ7vyAfMSm3q4rc=;
 b=gFdoLe7zW3MzhxuT/BRGf8IFSl2qk9HwrXAz4eHkASYgHa1YIVtZBeDmPtVMCtHeNv
 fKIWXhICFvM1YHmYoq0KJv4wI0rwtVNK3Us+gAGivIh3w1dvBt6jBYWC/1xLf+Y3q3Ws
 2kd2nVlYxkNbqDDYNMEZFDdt/id6ZeUBG35a2MDxwtwjL00cZoQrF1QhTHzIMpoJeZei
 WFwaOpiso6d9BCnytx05rJIoCarFATvyc6sEVm/QrAsQc5uxo2OLdwHd6iwJ7zbJn50x
 eMbggHJMDWvQkauMpLGUY/KFc89zr77k8PbN1CNzRbzfO/Q5AVEVTLK/OwxVFF2tXv0O
 EFjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SCiRbjJzZzwrllYyfm6P2Mav2in2VZ7vyAfMSm3q4rc=;
 b=fF9m0N9kDl0bT99yru6afHI0Rb9yZGHlGtsu/zcApLvc9QMnatbTc3xmo62f3VhhNK
 3Wfd5GRcERdu0S6fpGOfAtAXhdRcZNHDG4HbHcFewNOHso2/0Tg+6gnFg1+TxTSU6juC
 gvy1gQ88Ud/sPPUWzYXz7Vuai38Cx2AdIG/+edGetmn97RZmzpa30Sn7oNNha5gQmhxi
 kYlc0zu+QY2v0T7RXgCnTKz8FQLjuGo3R4/ib3M60U1hRbgbBK/s4UI9asyEvOqMSy0z
 jC4KIosdPlV+wfwdrSSjvmh57dQfYG4JlucmdmRzmLcfJ8EpVvegL0BvolN6giv2J9Zj
 t7Ig==
X-Gm-Message-State: APjAAAXbemMPe2NdUej6uevp9vYybw3DRB6Bwvr8XOvi3zXbpbHcU/+F
 KF5QvObo3IcK4CS21xGPMmke2A==
X-Google-Smtp-Source: APXvYqwQ/YYU75x4QkwRfXeToVq56G39tKupvt9fLKoHnEygZ9u9x+PZB6YHn9wuXHgKPAYc4sSLUA==
X-Received: by 2002:a1c:7203:: with SMTP id n3mr969416wmc.119.1581370815993;
 Mon, 10 Feb 2020 13:40:15 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:a1cf:b00b:5683:ed40])
 by smtp.gmail.com with ESMTPSA id u14sm2118582wrm.51.2020.02.10.13.40.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 13:40:15 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v9 15/15] Update MAINTAINERS to add reviewer for CoreSight.
Date: Mon, 10 Feb 2020 21:39:24 +0000
Message-Id: <20200210213924.20037-16-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200210213924.20037-1-mike.leach@linaro.org>
References: <20200210213924.20037-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_134017_736402_9A29B5C8 
X-CRM114-Status: GOOD (  10.25  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: lorenzo.pieralisi@arm.com, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com, linux-arm-msm@vger.kernel.org, corbet@lwn.net,
 liviu.dudau@arm.com, agross@kernel.org, robh+dt@kernel.org, maxime@cerno.tech,
 sudeep.holla@arm.com
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
index 20a6557f157b..dc9e9776c001 100644
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
