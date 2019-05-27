Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E012B00B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 10:23:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U7KqFzd6/wOwasPaEYWNs8n1tgtxnbZf6chiR4NJD6s=; b=r9kgRyquHF3NwR
	UcMvCsLrmmifGbIrs7fBzLdHG9VwKbwjndJcB/08gPoFIeCLzawsDAtTZyLwrX/ImWHB2EykvTfCD
	5vtbIJtaxSiKZD3YUhgBKh1JosQlL2KQvfD72EQf/GyUIu19PcGOo3uFZdZpr+FHV1gJ3BYka5nWt
	rg/hzBKQF4OrYCkqZXErAixxJApuM5UQ8XWgdoDDImrwnbo2kTXGZJpWGl8nw680yjh1lbzCM39lN
	iwb1D0EzzpjH0Mklp2UKcUwS5Dqh+AEe3k4U4kRsIDEyvnHZejqxrf/RNLaIQiDLSc6eDnxKG9n2S
	znfL811ZhmmLsIilfZRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVAuY-0000tV-BJ; Mon, 27 May 2019 08:23:14 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVAuP-0000sZ-U8
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 08:23:07 +0000
Received: by mail-wm1-x344.google.com with SMTP id d17so2025196wmb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 01:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=M1HoTg11CiJSEjSyfyiy7/iq8y5KaaqCfsxPsdKYjw8=;
 b=SurNPXVNqG3MD6k/IbxKijckX/KQpH0i865vfJvUR4F33jMDcZcJTOP++T+VxU7S72
 +/64GbUB4mjTZSI7lMJLp0vqVF85Km0w9iYYbjYScIT5AVLIuQpRCROcsO1ozXWTI3H4
 V7GxNjJsvsA/UiihdCpizY2dRRgJKkZx4FIw1D8gxkXYqxEFjGHq9mwiFfEWf9z0zmdW
 TfKEmanefRTayv8ppg3yxGppqaU5lxGDmOk+z9g6B4uQYoH83tu554De3JOKH1JxulEq
 68M1PtWdiFDd5pzBe+0qJriwqnTl7KDECPGRABQvDyeS5fYMYrgogepV4K1Ya8yC76u2
 Lsyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=M1HoTg11CiJSEjSyfyiy7/iq8y5KaaqCfsxPsdKYjw8=;
 b=bcaIUOyDxleRBRKCVwgSD/IfQnp9digH+UNx+W0RNuGoB4GgpKjUJR1jaSOwdPqcHt
 WmYgrNKClbDnWmuS7MfEuarVZzfiHJz+QeqtIkF0RsVu6feeBXEsThJS7Eyhu1E2Hoag
 KO7DJPSFDdizHt6Ajy7SKslOgRcDMKdda9WOhcXAcAZ+E2CcWIciHdvwDuJTknGKnH3z
 RIltSFug6kn4nmdS1O8vhx1a9q4yDYituNOmAX5IX4i/Q9SY3L2n0HqlKv5GaUMrqAMQ
 sOocLfuZl4k14O62Wv6l7GJoJSd0u+XPU9nnobRqjJ9uGBCNLtLCaMSYQf0E6PKfGXlE
 801Q==
X-Gm-Message-State: APjAAAUk+tWTRzdN1maPwU5+1YgnsIyvlPThnAJeQLNbt+KIhatIx2/b
 RfvoW4GumThzFThevHUPy5QiPg==
X-Google-Smtp-Source: APXvYqz5G9osnUZUYi4yhJKpYIwouvHJ855I3B3nClb2YmknYiniuVlhjaFoR9HDfUiAM1uTJoNDBQ==
X-Received: by 2002:a05:600c:1109:: with SMTP id
 b9mr4076225wma.107.1558945383865; 
 Mon, 27 May 2019 01:23:03 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id n5sm14482754wrj.27.2019.05.27.01.23.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 01:23:03 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 David Lechner <david@lechnology.com>, Adam Ford <aford173@gmail.com>
Subject: [RESEND PATCH v5 0/5] ARM: da850: enable cpufreq in DT mode
Date: Mon, 27 May 2019 10:22:54 +0200
Message-Id: <20190527082259.29237-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_012306_021391_D9BB1976 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Note: resending rebased on top of v5.2-rc2

===

This series adds cpufreq-dt operating points for da850 boards supported
with device tree (da850-lcdk, da850-lego-ev3, da850-evm).

Last patch enables CPUFREQ_DT in davinci_all_defconfig.

v1 -> v2:
- use the VDCDC3_1.2V regulator as cpu-supply on da850-evm

v2 -> v3:
- drop patch 1, as the revision tag is in fact correctly passed to the kernel
  by u-boot
- only enable the 375 operating point for da850-evm as this is the standard
  frequency for this board

v3 -> v4:
- split the first patch into three separate changesets: one adding the
  operating points to the main dtsi and two enabling cpufreq on da850-lego-ev3
  and da850-lcdk
- remove the operating point not mentioned in the datasheet (415 MHz)
- fix commit message in patch 4/5

v4 -> v5:
- only enable a single OPP for da850-lcdk due to the problem with the OHCI
  controller becoming unresponsive after cpufreq transitions
- fix the name of the pmic on da850-evm

Bartosz Golaszewski (1):
  ARM: dts: da850-evm: enable cpufreq

David Lechner (4):
  ARM: dts: da850: add cpu node and operating points to DT
  ARM: dts: da850-lego-ev3: enable cpufreq
  ARM: dts: da850-lcdk: enable cpufreq
  ARM: davinci_all_defconfig: Enable CPUFREQ_DT

 arch/arm/boot/dts/da850-evm.dts        | 13 +++++++
 arch/arm/boot/dts/da850-lcdk.dts       | 36 +++++++++++++++++++
 arch/arm/boot/dts/da850-lego-ev3.dts   | 30 ++++++++++++++++
 arch/arm/boot/dts/da850.dtsi           | 50 ++++++++++++++++++++++++++
 arch/arm/configs/davinci_all_defconfig |  1 +
 5 files changed, 130 insertions(+)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
