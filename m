Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C606E98AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 10:02:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aLzPDw3DHRUJV2Y6fSwILNDTmSzt5MTNxc0HkpS8G/0=; b=QtuMW4e09nMR5peOYYodlx97Fg
	2o743bmSOdgRKkDCuXayE2qSykw2fKnXSQYpihj64OVjpirrLm2Wti0e8miHi89PzD6g0MVFSGS/Y
	vAXQrBMe7AZoQdyTYvVIS0ZtE2whhxCzT9DHOCOGaFrsX5HScswKrTjOOGmC7GCiluR3L3vKqAtjN
	iLsO33GqKNc8OP4S+YPGyr48xQwBpRaPkiud9FFP8TJeBlZfmeM7P+WwLh/zZTkYSE1HzYn4p1Olj
	8fmaDze9mzF8Ta0cOzAc6wKSwVnyjYy9CvntUEP7/thqRpjc4ozT4vOu2PWJXme/5Yyma9LMcaEq2
	nkpi5aKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPjs2-0003tV-Fw; Wed, 30 Oct 2019 09:02:26 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPjra-0003j4-Cd
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 09:02:00 +0000
Received: by mail-pl1-x644.google.com with SMTP id q16so682865pll.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 02:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=m5azgLhd2I2E3q9JQtIgUVQ0suPVCkYbQEeRBm5oMb8=;
 b=SNIJd0jrHsBMX6/ZKZfmY+w36WI2FQ8qqZCU7AAOSX1m1BH+waTBtt4HsR5Cpitl0M
 qizjCUyqfRXUfN6QTVJOMhqIJjxSn2xIGAaLdkeydUjLLMvQqr564H7wMctcKfSwSKhI
 34pcDje4oDfteKOd0sOIWEPkpGduCiO9uBJes8AEfdXJj//H+RJxVEhKME1VjEfcglcv
 bQtYVMecgFVUuv8CqgXp3WMq/wv1mpqGjiGcc+F8WXGpzrls96q4j9uVNmvQtTjNZqOy
 xRH30D1vP/r22R/QtbgSOmLCKl/U61AlaG9mLcczOCemky44THQcAFq/cMwg0aH4OZ4p
 j7dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=m5azgLhd2I2E3q9JQtIgUVQ0suPVCkYbQEeRBm5oMb8=;
 b=PjkmXjDPU4O8UkE+YzSRhFacDbIAGS5jazfPVZ1L4xKCIgWnYTLQxY+XRV4c+poh2C
 CRsqQAD++Y0YoDksUnUd8PQwSWp0RiFEsSkY2RfPgRrqxoXUkAm3u/ZLffNwxbR/yrpK
 RAei52ojOWAW28Bui2LC8Bl4TVPx891E9F1wR3uzvrZNKYVS/XUDbuOEMVq5/P2ajI1+
 /aQuK8Wdhd86oCCeopqM6Pbvv0rxgtuCRqcPZ3e9K5ePzMvgRZm6bJtTJ4EJdI5E9sE7
 RGUS5kZR/C3nRleGZrdVhp53IKLnm015VEm51H0h1JngtFjVDABZyRFcb7e0puI3eyZK
 OWxQ==
X-Gm-Message-State: APjAAAUnvjlrl6M+O4q5cKIeOOHkXcJjRnaVWmLWxylajQZQttBusUn8
 dZS+Qdrw+bUaaR7XcvrEhS3w
X-Google-Smtp-Source: APXvYqx1+RxRWncZTcuyUZhz6kgWlf5fD+XfO4AMeFborkT4X05rfAgRFXHGr0HdkiWpGhfJT+G4fg==
X-Received: by 2002:a17:902:d891:: with SMTP id
 b17mr3445548plz.310.1572426117078; 
 Wed, 30 Oct 2019 02:01:57 -0700 (PDT)
Received: from localhost.localdomain
 ([2409:4072:618e:77d9:c9fa:423a:3851:8df4])
 by smtp.gmail.com with ESMTPSA id g24sm2070351pfi.81.2019.10.30.02.01.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 02:01:56 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	robh+dt@kernel.org
Subject: [PATCH v2 1/4] dt-bindings: leds: Document commonly used LED triggers
Date: Wed, 30 Oct 2019 14:31:21 +0530
Message-Id: <20191030090124.24900-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191030090124.24900-1-manivannan.sadhasivam@linaro.org>
References: <20191030090124.24900-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_020158_561826_162E2D39 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dan Murphy <dmurphy@ti.com>, devicetree@vger.kernel.org,
 Pavel Machek <pavel@ucw.cz>, linux-kernel@vger.kernel.org,
 darshak.patel@einfochips.com, Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, festevam@gmail.com,
 linux-leds@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 prajose.john@einfochips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit documents the LED triggers used commonly in the SoCs. Not
all triggers are documented as some of them are very application specific.
Most of the triggers documented here are currently used in devicetrees
of many SoCs.

Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: Dan Murphy <dmurphy@ti.com>
Cc: linux-leds@vger.kernel.org
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../devicetree/bindings/leds/common.txt         | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/leds/common.txt b/Documentation/devicetree/bindings/leds/common.txt
index 9fa6f9795d50..2a6806161590 100644
--- a/Documentation/devicetree/bindings/leds/common.txt
+++ b/Documentation/devicetree/bindings/leds/common.txt
@@ -55,6 +55,23 @@ Optional properties for child nodes:
      "timer" - LED flashes at a fixed, configurable rate
      "pattern" - LED alters the brightness for the specified duration with one
                  software timer (requires "led-pattern" property)
+     "mmc[N]" - LED indicates [N]th MMC storage activity
+     "flash" - LED indicates camera flash state
+     "torch" - LED indicates camera torch state
+     "audio-mute" - LED indicates audio mute state
+     "audio-micmute" - LED indicates mic mute state
+     "bluetooth-power" - LED indicates bluetooth power state
+     "usb-gadget" - LED indicates USB gadget activity
+     "usb-host" - LED indicates USB host activity
+     "mtd" - LED indicates MTD memory activity
+     "nand-disk" - LED indicates NAND memory activity (deprecated),
+                  in new implementations use "mtd"
+     "disk-read" - LED indicates disk read activity
+     "disk-write" - LED indicates disk write activity
+     "none" - No trigger assigned to the LED. This is the default mode
+              if trigger is absent
+     "cpu" - LED indicates activity of all CPUs
+     "cpu[N]" - LED indicates activity of [N]th CPU
 
 - led-pattern : Array of integers with default pattern for certain triggers.
                 Each trigger may parse this property differently:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
