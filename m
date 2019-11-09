Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD91F5EC2
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 12:35:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=shrygLt3spZQC+REOusXhzwetVe4vuKeHV3p1RGwn+A=; b=W5HfXzGTzRuea0
	ccWXrEzfpDH37/whtSFro2FBxJ2YxkaDZbYDzaVa0uulYK2sk8Qr3gjgFvinjHWlA1AHXutgX7/X1
	S+8KWhxvk+jF9HOxcHqjF9mrUpmffCTHJxGmM24hOEl7DfBFqBUE/ogN/l3mf0pCBte7EDmF5LVbo
	aY+Xx0WSD/8erpN/M8HaQDfcB/6ycmuTlLKIrMrVm6UzJVOWDF6hysnBoBFuAGDh47vPFukuH+Eba
	rXvjObFKrBQ0ffguyQX2XasEhEixVlWliQ+7LtzmataqXfqk1r1e8NF3cRRSsQkSIaDGYPMsNfS4f
	+eOMBRcoRzNvOY0wj4ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTP10-0006vZ-56; Sat, 09 Nov 2019 11:34:50 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTP0r-0006v8-3x
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 11:34:42 +0000
Received: by mail-wr1-x443.google.com with SMTP id b3so9755062wrs.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 09 Nov 2019 03:34:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0U2Hfl11NqYYCRdPoKWLjnogI538taxuOyQTz7nQ32Q=;
 b=YpeGzP57HZS0B/szmrSnq2N1OK7R9hLTkIAINAiLjyxUZD6vB4nYs6qZcrVKvWYSru
 lqIN6Fi4vGUGvKULrHMbKdyvPoUs0KeJnt2rDuUYLtR9cW+IXLCr8wwEjvRzeAzvE9UF
 HoLGmIDBvWKRNGmM77gMUovveyp+yvuTqXcisfO7xCSXdUHNyNZqdE3fCOvAhTirXRUS
 vhifDt/QELsDqNsuZz939uO+VOQ5BeiB+i7fV9XE6zYy97qNDfETAIKRZi/ldjEMooWa
 aY+Zevqq/qoPx9JzBF3/b3CjJ5BS+wLt6v3O/+Ksa4SOK9K8g+KuzDxJFwp0F62FPR2X
 XaqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0U2Hfl11NqYYCRdPoKWLjnogI538taxuOyQTz7nQ32Q=;
 b=K9DURARU4LgeHkJfgIqWFJrMknJu+XdgPReazbd6reZQ07MIAe4rRIHTUQ1YOmtnQL
 tPjFLN+MFdyLoQkPCRt3DiHL9mctRHTiPp4r2hJwi7zzH7cT/elWALwCvkAu46HTYcSp
 8fnYep6fjoug+EA6Hx3Zzs0epzR74B4SFgIU8r4H0WyxTNqktmx2mPnZQBWat4kU1kJZ
 w3h3e0ek6QYYE3WlYy4hLZ0kO67uSgVVcldeB7KM76/Fc0uIni3R6nPN/zwIrN6NZOaE
 9bHbshTShc7U2eXEko36zynzeVN9e3/eJb/zSOadvRGuFX4KvfdzNTXqptEqlJf1lZw5
 VVKw==
X-Gm-Message-State: APjAAAUIJ47EPTsmlBiSK8dnMyZj4Fevb673V4DLuyh77+iPahv9UC1D
 2fEoOQESrAzk3IOQNUe0cGs=
X-Google-Smtp-Source: APXvYqyUAT7GapiKbn1vROHyc9EbmUXEZOwyowIJ5U3tqgNJU9lP2tj97o64e33k/C9h+VhfqFiwGQ==
X-Received: by 2002:adf:fd85:: with SMTP id d5mr12919249wrr.101.1573299279019; 
 Sat, 09 Nov 2019 03:34:39 -0800 (PST)
Received: from mamamia.internal (a89-183-63-51.net-htp.de. [89.183.63.51])
 by smtp.gmail.com with ESMTPSA id w132sm13964296wma.6.2019.11.09.03.34.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 Nov 2019 03:34:37 -0800 (PST)
From: Andre Heider <a.heider@gmail.com>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH] arm64: dts: allwinner: orange-pi-3: Enable IR receiver
Date: Sat,  9 Nov 2019 12:34:36 +0100
Message-Id: <20191109113436.17979-1-a.heider@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_033441_157902_EE63F5FA 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (a.heider[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Orange Pi 3 has an on-board IR receiver, enable it.

Signed-off-by: Andre Heider <a.heider@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
index eb379cd402ac..d3e30a67587c 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
@@ -263,6 +263,10 @@
 	};
 };
 
+&r_ir {
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_ph_pins>;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
