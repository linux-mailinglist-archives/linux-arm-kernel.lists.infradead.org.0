Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A42496FF0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 04:58:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tlb7BK4S8pT7yQQbFPzQPHLNnJmHRijdCQoU1yd+pJw=; b=hoy3nAE/S36Wu6QEnUabfipInV
	PnFXdVOOueU5xOrizcXopWHsouKTiwG04V2gciZtooLTI5PKkvef0uvI7nA4U0s+Gc3mLZWyZgjCE
	bicFu6HE35qBwb6fyOmIBo6KgGjQcuQmMn7/omPef9vnvTBDPo2iYITdGmcBpgYSg/NoKVF8R1W+o
	FiUS6dV4KsfXJ/BKy2O9W94Sp8NUVbvv/47gQSSUuPOvqdpwzsHwHvQQEVTgJFEX9OqDUbc+y89e2
	WVaKosub7DjwXznxjIHmqXK/T5ddrZHP5+enMdiNnBVJ90Cmuhfxrffen44HYsBRo5MKFKNtyc3En
	ObGAW+UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0GpH-00066g-2C; Wed, 21 Aug 2019 02:58:19 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0GoV-00057s-8d
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 02:57:33 +0000
Received: by mail-pl1-x642.google.com with SMTP id y1so483109plp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 19:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kTpWa1DIkfpJvRELBVr27cwiqR/tR9AaU9awO2MhQyc=;
 b=Bx/FYls7hvU12xUnK9D44oXA2TbC9SSL5DdUH6Iw1+OJSmnQVYyvJljQg+8PNXLbH9
 HZP4dGbtSMUmcWbHaa7MaUu4w3TLvcZW5rFCnls4nLhAFJslZDEUiGT+wIRnKkDDDaYg
 pau0XSRlGkX2YztDlmWlhjiNy0ccBy0rG3n21M4wJDxqws9Xmw98NixJtW8l7moGGnzb
 xEd9GuUTCrBIe5qhtlNcwYt60jMECW3EPtonYnYNpwVR0LV4EQCMMRNSg09oBjwJh2/V
 NwiSuaDf6Ky7D6UcFh8bU4v1kiz/beSPRzNAVXvrGlBe2ZkWty0/H/s9ES9hC8Q07cKY
 2V8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kTpWa1DIkfpJvRELBVr27cwiqR/tR9AaU9awO2MhQyc=;
 b=iSZoXMXS5IhAYqVSlceRUUkQBUft9K4/NqH9aYFVtDXunZPSl8wPhqi1LRsBu/JCAD
 Y0lJbRXHZ095om+/JHIlz6m7ti6KTUZtnJMyhXb0mNoeDY+MjpT1YMVvOqVHqTfIR0fc
 owKJDdPdJH4z5eqU/gB8UVkBEiuHnHSYEKK4oxkuqxX1Tx2cw/wCTPwSmijR1gkyMiaK
 BhHM0+55WgT4cml9A0VKUukKeaokbitVwathjYH4ULWnwMxOngysep9AHkO1DkQsNLib
 EMlCujM47ZhKNEePhVvVyROg12nJOnCYieuXidoH7VmiOMnLZkbQDRMe4YtMS6c8Yp1n
 tUeQ==
X-Gm-Message-State: APjAAAU3ts4mQfxhIdkveMkBQwJdDjdz2Svy/h0SxN9dMXmZtD54d0gI
 8bAI8tWzH1EW7rZEm0b8IDcE
X-Google-Smtp-Source: APXvYqzCYAHgUzWM5dAbKNZL5kxfN/EKhDekTXkWvc05Dn2pTYNnf9p4ZucvDiRW7wRjry35NYiMew==
X-Received: by 2002:a17:902:e30f:: with SMTP id
 cg15mr31950918plb.46.1566356250180; 
 Tue, 20 Aug 2019 19:57:30 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7101:175:ddd7:6c31:ebc7:37e8])
 by smtp.gmail.com with ESMTPSA id
 d16sm13251682pfd.81.2019.08.20.19.57.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 19:57:29 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: [PATCH v3 6/7] MAINTAINERS: Add entry for Actions Semi SD/MMC driver
 and binding
Date: Wed, 21 Aug 2019 08:26:28 +0530
Message-Id: <20190821025629.15470-7-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190821025629.15470-1-manivannan.sadhasivam@linaro.org>
References: <20190821025629.15470-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_195731_334561_5B57CB46 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linus.walleij@linaro.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, thomas.liau@actions-semi.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add MAINTAINERS entry for Actions Semi SD/MMC driver with its binding.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index c31e6492b601..d13138330b97 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1375,6 +1375,7 @@ F:	drivers/clk/actions/
 F:	drivers/clocksource/timer-owl*
 F:	drivers/dma/owl-dma.c
 F:	drivers/i2c/busses/i2c-owl.c
+F:	drivers/mmc/host/owl-mmc.c
 F:	drivers/pinctrl/actions/*
 F:	drivers/soc/actions/
 F:	include/dt-bindings/power/owl-*
@@ -1383,6 +1384,7 @@ F:	Documentation/devicetree/bindings/arm/actions.yaml
 F:	Documentation/devicetree/bindings/clock/actions,owl-cmu.txt
 F:	Documentation/devicetree/bindings/dma/owl-dma.txt
 F:	Documentation/devicetree/bindings/i2c/i2c-owl.txt
+F:	Documentation/devicetree/bindings/mmc/owl-mmc.yaml
 F:	Documentation/devicetree/bindings/pinctrl/actions,s900-pinctrl.txt
 F:	Documentation/devicetree/bindings/power/actions,owl-sps.txt
 F:	Documentation/devicetree/bindings/timer/actions,owl-timer.txt
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
