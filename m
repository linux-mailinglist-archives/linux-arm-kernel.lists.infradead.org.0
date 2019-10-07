Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC394CE2F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 15:17:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lLp1kK9wkqh76vCFew1X5l861GNJhlTVCeCqaH5QlVQ=; b=MQx/UCqrzX/IBZ
	ojUAbkkXTE/i9qb6YWkOQte9DbQou1GDz3h8GG3gEU5sF+q1LB14mSaFzYn2Q9pGjyTgtsFI7+9AM
	2oXYh/2gJH//6QJblr+WS7c6QO3O34wdyRZPi2FF5OUiQsbRRm8OgbeG8OHDkv3k5pcHtae6TgWQk
	pgRq2onu/Si3RPQuD4ti5+Bbr6BswACaZWJg5JqBgjJ9HyNCzQlrzG1NOGUyXGfyFtrfjx062DKre
	Lz8APjz9jVyKBD+zkcsEO7eg+11Ebt6KxcdywJ65PMdOBMYDR7D4zPOWZ16mGRItGVcWfAZMNegbi
	zqisQskn+jU8VPDRJdlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHStJ-0001dH-Nw; Mon, 07 Oct 2019 13:17:33 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHSt1-0001PK-Tk; Mon, 07 Oct 2019 13:17:19 +0000
Received: by mail-pg1-x544.google.com with SMTP id 23so8218274pgk.3;
 Mon, 07 Oct 2019 06:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aQptgICcCtWSSBgk772ZatoxsYgICaTNG3vZM+tN2JI=;
 b=fBinECWVUCIqe34f6Zm6eVHxOd/IF8rHVCJXk63l1nCydtUcpyb2geWtuN+s+Ay4gU
 IYQjoki5Gx0y7dqhznL3n+0H0tkinm2T/CN9NHGCk9vudJJxYJdUrpB0OwWS/qXUivMC
 xB0CuWqI5T8ka+YYVaSXrrfA/WjJHKvkNImhg79hHxu6RaHhy0FIW0y6uYG1MoVnIbkP
 1b2C0xnlTfa8ddknz2jCcTmGEUPTAeITZ6YjXFfbjR/Emrtso122HF7IOeC6DiU9zUFv
 q30VrZtsw3M1yntt8ev2mhejPd5LRVFYqomJYMnX0ryYMAV8zu2Po9vZJOdttW1LnNHL
 Mxlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aQptgICcCtWSSBgk772ZatoxsYgICaTNG3vZM+tN2JI=;
 b=VPzOhySXC27zf4yLcw/qHcjp94ZFcC+ZCR/4jH1iHCDw8xt8LZ51B2rJSiZWmnXWD7
 SW0+0l+KNSP1pPDRUe66U6qoev2qF5FQV6tHJ6gUj8TpdoV/vF7M2vTsrYiodPohlZAv
 P06/YG7L/zkr1Xv42AQF8nTHr98GQXNn4kw3sPPXCF+JBlkGA5cOtNxEQ7VEkVKfDUEu
 AX8SAYuypkrVEfZXmzXXo3jqv5XXchC6WaUte3j+5VRL+9MNIFDYbsG2JoGKk9C4NlCX
 URoGQfUFlykWeCToc7dYOW06JJVzIQiwsaqdHa5cokqV/7ftONRdhK4llP3+zfPEI7Vx
 9rdQ==
X-Gm-Message-State: APjAAAVW/rh/R06B3rk59oWVe/oj0XkzJbae7nRkKFQEpHN3iRoybqh4
 5BsD185cwCKBVDnAHIcJbgzpwCUU
X-Google-Smtp-Source: APXvYqzfY9skP87J/Jepml3CjVgEOVUZCdNt5zbuEYhEafhjGqPWB7v6/VCcFrt0DeUtkWOl/eN25Q==
X-Received: by 2002:a17:90a:380a:: with SMTP id
 w10mr33937550pjb.104.1570454232768; 
 Mon, 07 Oct 2019 06:17:12 -0700 (PDT)
Received: from localhost.localdomain ([103.51.74.138])
 by smtp.gmail.com with ESMTPSA id r186sm16938650pfr.40.2019.10.07.06.17.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 06:17:12 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [RFCv1 1/5] arm64: dts: meson: Add missing 5V_EN gpio signal for
 VCC5V regulator
Date: Mon,  7 Oct 2019 13:16:45 +0000
Message-Id: <20191007131649.1768-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191007131649.1768-1-linux.amoon@gmail.com>
References: <20191007131649.1768-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_061716_390047_3A20BFF4 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As per schematics add missing 5V_EN gpio signal to enable
VCC5V regulator node.

Fixes: c35f6dc5c377 (arm64: dts: meson: Add minimal support for Odroid-N2)
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index 42f15405750c..a9a661258886 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -94,6 +94,9 @@
 		regulator-max-microvolt = <5000000>;
 		regulator-always-on;
 		vin-supply = <&main_12v>;
+		/* U12 NB679GD 5V_EN */
+		gpio = <&gpio GPIOH_8 GPIO_OPEN_DRAIN>;
+		enable-active-high;
 	};
 
 	vcc_1v8: regulator-vcc_1v8 {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
