Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB6334B64
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 17:03:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JA0+D3DCS0+YwWm6z2dqFK3I6WCk6HQBLzwfpQXieRg=; b=oQy6HwYViabt05uTB5TlpqK026
	PDEDNLG6EWzBfP6jrXEl5U8fG5+3i7yoy7cVWeeWumVTHhGDkKYLk675LlZEjHW62LSE5oCSdSCr+
	teoPh6jy2wfFgZzG7m6tTAJppF6YahutOx8iOQzviIMC6ATqx5vQtKXeCzRBKUY9fRDKOtIABvGHe
	VVf7lEj1pf+9nAG7a9nnFrI4NRHiax176zfiqYwJrqP1skRXUDopIrkSZxLWWh7MKX93IwHyvHvJ4
	f/gjQ2jKU6WNsZpT3uW2kbJ1XwkoPZyFOXBHfqRAPdjgY6Wa15EgAVv7xR9u6VomJFjmwmgo6Eaws
	WGYwfoZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYAyI-0002il-TQ; Tue, 04 Jun 2019 15:03:30 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAy1-0002TH-EN
 for linux-arm-kernel@bombadil.infradead.org; Tue, 04 Jun 2019 15:03:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SnjvT/D0cW1JiliaxzQrnOjeQzlchEAI6VR+JZ5y+Qk=; b=QF5SWB5EIg/Ab4LbJztF1bks0
 ogkK7mWL/XDaYIqlWuRzqV1VQdqRyE16jYMdOKLrEbGfH+mYGReXGSJpevkYsDXbqOHRXh8evXYHg
 gw9qPMR7XxIhNxE453Ri6mMAjWgjilTJAJDR+Xwhy7WO/nCf4YM6hs4D35HMyykZak0/98KYshTju
 kPgwq0vwxjfIHupHnK5j/yoPlZMC/MgxKC6I3pxxErb6zKgDjl2V8vVsi4POAGOdAxvZLlPvLdOI9
 zKXnbZOLX7+lPB5WkvEZKAxHJc3teKs+QF8VqdK65eXW6oQKnWRmy/bsX1y35/mFOrueLYJyeNn1s
 nCougYk0A==;
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAic-0008P7-NA
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 14:47:22 +0000
Received: by mail-wr1-x441.google.com with SMTP id p11so11301372wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 07:47:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SnjvT/D0cW1JiliaxzQrnOjeQzlchEAI6VR+JZ5y+Qk=;
 b=b1GKNOnN95jk6p9sY+UTKLGXWVTPtbcumXKRhyS/7BVQ0GSsVUG3onM+bQfdjl6yoc
 ukbAzcipgmBZWkOSbAkttBYNgCq6tDvGfhzOFjJAodCqZKHhLdCtnFSdGB+EhpvJVWVv
 Ao5yFwm+UVLgGbs0siLkS87AK9ePzyhi+lbK6avLEqyfxa2tcWEtIsf8/g+PA8vxqy0a
 XzPgCwVb972Ddl9WFCD+0q8Qg0S6z4D/KffGpWfog+syujg7OJWZPxJemwHT44InwjGo
 +8Z8xPxWQpIyOay3xiAVFFEa5JWwSWFNWlvuDSWLPeUWykVajK4/5dpKHsoeVERZzb2i
 hWIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SnjvT/D0cW1JiliaxzQrnOjeQzlchEAI6VR+JZ5y+Qk=;
 b=C8HKiLe0KRDvBp53fUN6Eed4G/zfbtaFtfR/8e1XraW3X18X8JyQcM0lH2vxYjsxqN
 98vq/ryhsLEHfKbnNgUl57W4At8eL5v6oKhaCbBRR55gVP7ep2LeTAte4ktuEUVxT7M9
 Gffc8eVKOOdKK9O5cc25ux4ma9BCYdIxiz4UaMKNCiM7RltPkjAd/j9sgb11LktRb4h0
 hvONSnHlYP2MkSM8xR1TmDJgDP6RDaLcAIh5oU2p8NmKlzO9aTh3SIIqgfeIYPq7U5uR
 UdpaQ/RrVRsiIRXDeMt5tKnRozA0FLFyAAziXj6wpGwhj5Q0dZcp1LOXYjm3vo7BZATg
 hJag==
X-Gm-Message-State: APjAAAXFsT45IAJzqTLtYZGxjPw2RUIHqcSdDvEHrX+N7s3OpRGmhbqC
 L+cQhGAoeyH5Ak2Ylh8pFnSe/A==
X-Google-Smtp-Source: APXvYqyRQhjdyMK6YK07C+dlJF+QvuSSvZcEwhbdHS+SKqZ1uaK2nDj1a6UiJjyrdfuKgXxc/NmwfQ==
X-Received: by 2002:adf:e54b:: with SMTP id z11mr6859295wrm.198.1559659637766; 
 Tue, 04 Jun 2019 07:47:17 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id v184sm3649639wme.10.2019.06.04.07.47.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 07:47:17 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: jic23@kernel.org,
	khilman@baylibre.com
Subject: [PATCH 1/3] Documentation: dt-bindings: add the Amlogic Meson
 Temperature Sensor
Date: Tue,  4 Jun 2019 16:47:12 +0200
Message-Id: <20190604144714.2009-2-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604144714.2009-1-glaroque@baylibre.com>
References: <20190604144714.2009-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_154718_860644_245B409B 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
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
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds the devicetree binding documentation for the Temperature
Sensor found in the Amlogic Meson G12 SoCs.
Currently only the G12A SoCs are supported.

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 .../iio/temperature/amlogic,meson-tsensor.txt | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/temperature/amlogic,meson-tsensor.txt

diff --git a/Documentation/devicetree/bindings/iio/temperature/amlogic,meson-tsensor.txt b/Documentation/devicetree/bindings/iio/temperature/amlogic,meson-tsensor.txt
new file mode 100644
index 000000000000..d064db0e9cac
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/temperature/amlogic,meson-tsensor.txt
@@ -0,0 +1,31 @@
+* Amlogic Meson Temperature Sensor
+
+Required properties:
+- compatible:	depending on the SoC and the position of the sensor,
+		this should be one of:
+		- "amlogic,meson-g12a-cpu-tsensor" for the CPU G12A SoC sensor
+		- "amlogic,meson-g12a-ddr-tsensor" for the DDR G12A SoC sensor
+		followed by the common :
+		- "amlogic,meson-g12a-tsensor" for G12A SoC family
+- reg:		the physical base address and length of the registers
+- interrupts:	the interrupt indicating end of sampling
+- clocks:	phandle identifier for the reference clock of temperature sensor
+- #io-channel-cells: must be 1, see ../iio-bindings.txt
+- amlogic,ao-secure: phandle to the ao-secure syscon
+
+Optional properties:
+- amlogic,critical-temperature: temperature value in milli degrees Celsius
+	to set automatic reboot on too high temperature
+
+Example:
+	cpu_temp: temperature-sensor@ff634800 {
+		compatible = "amlogic,meson-g12a-cpu-tsensor",
+			     "amlogic,meson-g12a-tsensor";
+		reg = <0x0 0xff634800 0x0 0x50>;
+		interrupts = <GIC_SPI 35 IRQ_TYPE_EDGE_RISING>;
+		clocks = <&clkc CLKID_TS>;
+		status = "okay";
+		#io-channel-cells = <1>;
+		amlogic,meson-ao-secure = <&sec_AO>;
+		amlogic,critical-temperature = <115000>;
+	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
