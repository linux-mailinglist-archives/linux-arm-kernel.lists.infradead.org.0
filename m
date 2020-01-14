Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47AC013AD78
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 16:20:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4phTJzqIz4MuN/RASg+vEVtLiqKgFCdQfrlYVAdsqI0=; b=QydoqbHmoAXhDA
	WBKCqECE550Kz45XKdk9neG6c6E4z4X0ztIntwRVTsE+IDCnPRoUIp089iU8Ubb6ERMFvkDmEkx6A
	tRNHVZKUhFb2X5QGndA/fJgGNa8iDybWMKxKXPpC2xVKVGmU2AnBpb5aLr94joTegcf0Dvm6KAzmI
	b1GlfXndtGk6wNEf6VcoXkzcNAJ+gvO5ABrbm2v7/+gg6J0tTFwMHeUwb8HEP5j4pqkj0S/MHBFzR
	ILaXdMswTMfqy4CLsChytrgRHhhiY3SwExH9nfyFSZ25TrqeHDG9/eYRJfGO1vR0F1tI6rNeY6jWk
	3bcEiat5mk5a3pYtmOvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irNzh-0004Df-Ok; Tue, 14 Jan 2020 15:20:37 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irNyc-00029F-F4
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 15:19:34 +0000
Received: by mail-pf1-x442.google.com with SMTP id q10so6728666pfs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 07:19:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pYLYIQ4AXwrDijnXG7fyC1V6sRvDJ4/R/roB4Qo6Zxw=;
 b=anhpgPS0TNrx4rscQ1fsJUX3ipjlnKo0kACDbboWahGlXANNmsDyqqaSOxvhUl6RKR
 Ix5h67Q5h2dXu309FdYQuqNKF/2z6nMXE4d1Ew3yGA0Xv3+EF9O8YDIt9H2wehmB5tG4
 rfYlxxmxvYSo7AikwOIDBPdLvU0mUBN0F3s5v66FuBOAVZDcmftL55Abq+kvW3QSMy25
 N7eWgHCXn18AIMtkrs9d3WXX387lsDiGgXZHBPTEhW+I+ajdF5+9ZZDuf22hB4oP06s6
 7V+hSGrEqKEdfXcEc+m2zKe0YxAg7V0IpXta41rH/enA4GIT12K4a7jp5OX0KqOg/zKj
 mWoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pYLYIQ4AXwrDijnXG7fyC1V6sRvDJ4/R/roB4Qo6Zxw=;
 b=VoQrDzCs1tzIsbFQ6gWWZJUY4nMdkiyFEYjnc5/HAubQjSsKJ6VhhMJ+JxnHrDRLjC
 nkxTGc4GTsdZk9SwhId+lhhq7j6r+YvT2o/lXx7Z1rNZn+STqZEatZZAk+Fz2VsxSujv
 vsyXPsUiquTxnIBAl1HbTeXWQyrXNRdrPU1thohwD+YHperSNFwJnw59Nq1eRV02PtaG
 GcTuG6CcnsywVwzwOEpGb4BAZKER0nRoun03iE80EVaIToB/R+9bAc12yXkPb/hwHnHN
 Ag/wiOPeXuxCTZTkbPbHbkzvbNbmF6GwxmtvZ87bE/eEe4+1/6j7e46fYlDSdQDQ81KP
 gd4w==
X-Gm-Message-State: APjAAAVZa1BApKo7BrRmKf+FdOXD6XhK+adMDcO2/fLxEedtOCJNM6vE
 /ktoEQjQyBui9wRqSQ5B2rwB+SPX
X-Google-Smtp-Source: APXvYqwviDgHrH8oA4UwR2DqLHslkWeyWCa7d0tpYyg91c68HslBpCVNjqbP4sGBQUi0uuu8jAJR3g==
X-Received: by 2002:a62:a209:: with SMTP id m9mr25365455pff.16.1579015169572; 
 Tue, 14 Jan 2020 07:19:29 -0800 (PST)
Received: from localhost.localdomain (c-67-165-113-11.hsd1.wa.comcast.net.
 [67.165.113.11])
 by smtp.gmail.com with ESMTPSA id 207sm18834425pfu.88.2020.01.14.07.19.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 07:19:28 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/5] ARM: dts: vf610-zii-spb4: Add voltage monitor DT node
Date: Tue, 14 Jan 2020 07:19:04 -0800
Message-Id: <20200114151906.25491-4-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200114151906.25491-1-andrew.smirnov@gmail.com>
References: <20200114151906.25491-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_071930_507788_AF5EC6DB 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, linux-kernel@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a DT node for various voltage supply rails connected to SoC's ADC
for voltage monitoring purposes.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/vf610-zii-spb4.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/vf610-zii-spb4.dts b/arch/arm/boot/dts/vf610-zii-spb4.dts
index 77e1484211e4..55b4201e27f6 100644
--- a/arch/arm/boot/dts/vf610-zii-spb4.dts
+++ b/arch/arm/boot/dts/vf610-zii-spb4.dts
@@ -42,6 +42,14 @@
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 	};
+
+	supply-voltage-monitor {
+		compatible = "iio-hwmon";
+		io-channels = <&adc0 8>, /* 28V_SW   */
+			      <&adc0 9>, /* +3.3V    */
+			      <&adc1 8>, /* VCC_1V5  */
+			      <&adc1 9>; /* VCC_1V2  */
+	};
 };
 
 &adc0 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
