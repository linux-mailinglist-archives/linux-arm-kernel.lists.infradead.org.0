Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF181CF5C6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 15:27:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jr8urDve1L8kzOQlxAP3YCg0Hit0NXVJZ8GCPZVIRhA=; b=M8ojszPU1Lltfz
	GSxcxwezXkNacwbsqCj8o99fwkbktxwY/CfZunj2eIH05IHRP52BeW55lZm+ieNMlwwk7SSAwMmQj
	leye4PtZMzf7kz2XWGkrV7h6xuekyUr5P9uxkWzIT1lN8bUPXnwbROMGUUvTB4hvVuZ3E1q76Pci7
	p4PODDGvpCV+EDpzdfcBjmxfncaYyur3mWufkVTRAw7clQe5KlhiZQfnZUoOuaePMmqxLTNOeNWTN
	pCIrLzRGoybE7V9MmgRUvWqSftyo6CnEkg/PJ1g3FKqfX9h4ysWQ8Ym3AWgLcg42l2lXl7P+SE7V5
	jccaR092oFXyfa+Cxd6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYUwn-0002i1-GG; Tue, 12 May 2020 13:27:49 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUvS-0001Yc-G1
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 13:26:28 +0000
Received: by mail-wr1-x444.google.com with SMTP id e16so15376420wra.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 06:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OOA2tjrCMzpEGVQ4wsZGsx+qQve4HNZ307qi+80/974=;
 b=tFn1g6VnvjqXPa5wWer0AZBSgCntLE7a3TDJber7TVz1ksZz0vw9pfhNaKabsusts3
 Q4u3+Y5oY5lvmSGLH9CJQ6iSHnMcGwSbDi5N3mV6iaXU3iwtcRge+GOCgHJTPwx0Dunt
 2WFUIUd54IjSQ9oSGEb5gWVJfC/jZJ4qc9HgNV0GYgD+1BXgina5rNgxqjWB/aEYVW5+
 7le4q61yeaatKEThlrAGb+ERtdyhtKTxWq8CMOPXoSKqAyWd9kFZ6ufh5iuxUIRomUzA
 PmDi5o+TmXmttNyl87E1DKIAW4CJtNXTrTnaFSIGPzR94ZZjgoBRGo+8WdBKfJvQHsR5
 byRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OOA2tjrCMzpEGVQ4wsZGsx+qQve4HNZ307qi+80/974=;
 b=EqcOXv9f/xWxCZQ2Df96SAobp/ybIF6+/Yu7iQBhq6suyyOgGRflsKLSiAvPHtL6CA
 s0fyvK657nvdf6rXjixp8XxJxyRael3zQ34NDhicOzHADS47u+Vtwzd8ppzEb1uFh3i9
 TBL9GAli2Z7M+vSLIx52YxlKxd6hwm5tfAvf3A7A/m8jNgVphLgQ/OTMKB6gnVv8axX3
 ek3cwhkwbzOfmYse6a79qfdHNd8LuHMUZsvNINhSIsEM9SZ1q04uiCJLQmVJ1KQwyQV6
 VEjA/orUMT+pPXDSvKX1+BeRz1Ii1FMMVb5eKRrrF+uprynUYPIz8Pe76RtM5Gs7lIne
 jepg==
X-Gm-Message-State: AGi0Puams9LR1+ydKxeOexRFKXVQpSjiJ5BjpUNVFejBXmWIrjq57Ejl
 /5XaxMRdbY9jkMJGynjI3JaTBQ==
X-Google-Smtp-Source: APiQypLPHEVWduy/3LzWWOhygupngnUuDQ/k1GFsn734lHfe0CkKPw+iJ6B+0gL3o0nrI8H96uujxg==
X-Received: by 2002:a5d:400f:: with SMTP id n15mr13811365wrp.419.1589289984995; 
 Tue, 12 May 2020 06:26:24 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:4460:3fd3:382:4a71])
 by smtp.gmail.com with ESMTPSA id
 g15sm14441844wro.71.2020.05.12.06.26.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 06:26:24 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: lee.jones@linaro.org, srinivas.kandagatla@linaro.org, rui.zhang@intel.com,
 daniel.lezcano@linaro.org, amit.kucheria@verdurent.com
Subject: [PATCH v2 5/6] MAINTAINERS: add myself as maintainer for Khadas MCU
 drivers
Date: Tue, 12 May 2020 15:26:12 +0200
Message-Id: <20200512132613.31507-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200512132613.31507-1-narmstrong@baylibre.com>
References: <20200512132613.31507-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_062626_555368_368D6C69 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the HWMON and NVMEM drivers along the MFD drivers and header
as Maintained by myself.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 MAINTAINERS | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index b816a453b10e..609baa78d810 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9431,6 +9431,16 @@ F:	include/linux/kdb.h
 F:	include/linux/kgdb.h
 F:	kernel/debug/
 
+KHADAS MCU MFD DRIVER
+M:	Neil Armstrong <narmstrong@baylibre.com>
+L:	linux-amlogic@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
+F:	drivers/mfd/khadas-mcu.c
+F:	include/linux/mfd/khadas-mcu.h
+F:	drivers/hwmon/khadas-mcu-fan.c
+F:	drivers/nvmem/khadas-mcu-user-mem.c
+
 KMEMLEAK
 M:	Catalin Marinas <catalin.marinas@arm.com>
 S:	Maintained
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
