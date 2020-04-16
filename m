Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 861501AC107
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 14:22:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8WebNtk9QyRh9PZ4eOX6jmVWNvOyEkf6jjMQJaqOh7w=; b=UppyKgO+2ZRTIc
	sKs9JVY0Shc0Tjou1AR7Eze5627OdOm/M3OfMRVAsh8jnU6EBMq017qa25Vh3BKry7QVNPh4Ai73V
	BriFbVpr1R+ygMpUAlFyNtJNHM9/a/tOOD+7dGVJVVw1ZnOJKocCq/Ap2QqXbfzptGYYpwXHl3TWV
	NHQq/9WHYJCgLACGQ/oVHJa7k0vDShGaPOVkSDkjH/IVDxS/cOtwjHTXLM/5oGHSjvnQH/Xfsvy3x
	xdc0OXA6UorbELlX3jDF8ZxjUCB8LNecsm2h9N5pZIwp1q8x2cD7rXvkyosrmJC9SgCUi3WawHvGp
	gfs+cFziJM2ru6gp2G/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP3Wn-0002cs-2R; Thu, 16 Apr 2020 12:21:57 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP3UQ-0006GF-6N
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 12:19:32 +0000
Received: by mail-wr1-x441.google.com with SMTP id h26so4558718wrb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 05:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5xKsDuTS/b8pkudrA3+ZTmFYrQeIvG+CZAqBEzqZ3Dc=;
 b=C/QuP+23ba+HpXCW7TkCLHiADtwgSsIdOR+oPFOZVaE0PbyjEC6LrUNjYKBAdOkoX0
 osqaqVpT6Q1dNd1mxwgcNZpfCZeN/DI8hxpCt8iFlSS9UVWYh4ULKdOPKfxGIulRpIS6
 lyrLkbOTX6dZqJb+FGIEPJrhtZu1Ao1F9WyVqkos65EytdXOpDGsXLZ5opzfLUaA7jXF
 iSj1bmTI4mBhMTTHEpqSSVnegz3DAeS+Z/mwDHPAvZf3xUooAjMGKFbcOaF+XvmYit4X
 +lb8e0nVCLjezjWX372sIlwu8mkYooDgi9zmxHRtr7TFWKbPRA1o77sqraWbzrm1aqxX
 qpBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5xKsDuTS/b8pkudrA3+ZTmFYrQeIvG+CZAqBEzqZ3Dc=;
 b=QMANhsaS3Mz6l2i96iiDk7e7nqeOpNH0Us39D87/PV+qXGjMLUX1i3izGdL6PCeUN+
 5gFF+eIPSjiG9p83dgnVarbaFHpyjb0/TFSELnipOtMzBuMlX565K2OEgSst6ODOR9ss
 zHsTOOH78/Sy9F8qWeuDUIU586NFstOhDHq6K0C/IoipHAs+BHmuVfH9QrItSwlErynd
 /XOnYyLfpHRQ492Sx/b91pcNzif/N9RjN54YdIv3rNEyzw7HLcZKkxEHZk1dyvnaTB0O
 RpOk02nKKN03ydSMIY235RmVPUaf0Y3N+GSVidyFTDfYL3Uq2v5VDTqBupvKKj7k02a5
 jNkg==
X-Gm-Message-State: AGi0PuYtWcKI0TUvsEPRgebEziqRRliumJtEPjMcQd8wofr3EoWJHRKi
 ffYF1ZlHTDK1HOUXbCDZRbwETg==
X-Google-Smtp-Source: APiQypIwF3U+8d9Ho+lglkTrjPR+KRKR42tOySGCFmPymXBHdmMt4a7vmvgcXC21weI5cT/rmadK9Q==
X-Received: by 2002:adf:f604:: with SMTP id t4mr26175984wrp.399.1587039566409; 
 Thu, 16 Apr 2020 05:19:26 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:39cc:a07:8b48:cc56])
 by smtp.gmail.com with ESMTPSA id
 i13sm22035602wro.50.2020.04.16.05.19.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 05:19:25 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: kishon@ti.com, balbi@kernel.org, khilman@baylibre.com,
 martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org
Subject: [PATCH v3 7/8] doc: dt: bindings: usb: dwc3: remove amlogic
 compatible entries
Date: Thu, 16 Apr 2020 14:19:09 +0200
Message-Id: <20200416121910.12723-8-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200416121910.12723-1-narmstrong@baylibre.com>
References: <20200416121910.12723-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_051930_258075_ACD4143D 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rob Herring <robh@kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/usb/dwc3.txt | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/dwc3.txt b/Documentation/devicetree/bindings/usb/dwc3.txt
index 9946ff9ba735..d03edf9d3935 100644
--- a/Documentation/devicetree/bindings/usb/dwc3.txt
+++ b/Documentation/devicetree/bindings/usb/dwc3.txt
@@ -15,8 +15,6 @@ Required properties:
 Exception for clocks:
   clocks are optional if the parent node (i.e. glue-layer) is compatible to
   one of the following:
-    "amlogic,meson-axg-dwc3"
-    "amlogic,meson-gxl-dwc3"
     "cavium,octeon-7130-usb-uctl"
     "qcom,dwc3"
     "samsung,exynos5250-dwusb3"
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
