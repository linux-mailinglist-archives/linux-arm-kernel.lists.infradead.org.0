Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E00B13AD77
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 16:20:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=64B/nWpzqQt3BTDq8yffIIRekL7kwYBWyzHe0p6mDRc=; b=fN8Tus37eYC8UY
	uIU91oSzUgxEx+szxGQKpWd0wK6+wmih8RsgCl2gkO/+hnKDEOqhJdMKLI0YsUmG18BsNVv5JwmJv
	44KNcb8plOUxT63VYUB5cZwwUqAUZ/+0zVCIS3qcdFVEEpVaHx+P3Zn0EDb5CQx8dhqAjhxOJIv4j
	7u5a+SSLOiXGoHvx1yJZwgIjdpkvkJ58nndzPHHaSaixhyDgi81QrVVRBFQAqy1X6H98Q2J9ksELl
	NtoSKSFZV2T9P99nawg/Dm70Qf6PFnhSgZUHnpLvdM1J4wv/wWJPgK4SBLTMrV9+Qr9DqjuL8rjeH
	dSLjQnBJU6jg87hqDk3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irNzO-0002nM-H7; Tue, 14 Jan 2020 15:20:18 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irNya-00028e-Kr
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 15:19:34 +0000
Received: by mail-pf1-x441.google.com with SMTP id p14so6731232pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 07:19:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uMWy9u/32jVL1tXriZ9xy59fE2pwEAGTC/AyEXL/bc8=;
 b=DcQbpa5XsdLmDArxppuX0QUlt+0JecePQVimW1hZS6yqNKV8WedJ1vYTK6hHiWOM0p
 os1JhrPNE+Dhkr1uyfcI5eAYf25io4b/BJ5rB4LgbEjujkmmRsoK6ODXV3TuUHyamQXu
 S+eMETdSe1vOKzDxMhPOh06+1tXqK4/ocIIonLHOUSlWv/xHXOHA0yjPmn8JSbhYMl4G
 fAdXP9drouHYBd30NfvoGcznbJzemetl2KLo86Hk1Nyx6pVtjLPwRB43/8j5uXhgRfD9
 EQctZimuVNgkcJ96A3Z3Ge7sPL20jd9/N2Na9pGKjcH+Jq+c8WnZ7TJ9mHuHCh0VvFhV
 sbxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uMWy9u/32jVL1tXriZ9xy59fE2pwEAGTC/AyEXL/bc8=;
 b=gNsxn6/4svyQ3Fgxg0FqmAW86ZF9HRTxWIlREvb6EI+rxxH/Hoaw0q4BtoGd1+e4RY
 I8S+lr5stDtaURz4ofoUX8K+WpaZ+FKl7T+5Qh1JM6bX0kvUPLHdRkIYM4Tp5RpU5UlJ
 anPhUGWJmQCUcxH90CLRfe7CLZypXKxYC7vSH8w3zLk1DpIvntq9DXwHCcdvZyPNCCmY
 hiWRnBRcL7f7Oz9Z0BGopeLTG7SRrlUGv2Ra4jljethqJf+OH2B0HXDVsogKPTJF7JLN
 /F8IAfGEV5hMh+xRSM+dQPEje82KW6DDZZRJu67nHbbpp2tex/Ww3llOkdRqJJThkBDn
 EYsA==
X-Gm-Message-State: APjAAAWlmwxpnuIn9CK+B9FnidhBxVqmkTwGKWfkvNOTaooaOvKYB7G/
 JPXyODQFq5OtORclnE2qjlAsBfAa
X-Google-Smtp-Source: APXvYqzIQi4kLmAraK/ke5nkp/cK8TN4YzKhEtyN2XiAzZrW/qst02Mb/5Yu89lTJeh1dC98Y9Q3gA==
X-Received: by 2002:a63:1c13:: with SMTP id c19mr27595123pgc.450.1579015167647; 
 Tue, 14 Jan 2020 07:19:27 -0800 (PST)
Received: from localhost.localdomain (c-67-165-113-11.hsd1.wa.comcast.net.
 [67.165.113.11])
 by smtp.gmail.com with ESMTPSA id 207sm18834425pfu.88.2020.01.14.07.19.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 07:19:26 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/5] ARM: dts: vf610-zii-ssmb-dtu: Add voltage monitor DT node
Date: Tue, 14 Jan 2020 07:19:03 -0800
Message-Id: <20200114151906.25491-3-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200114151906.25491-1-andrew.smirnov@gmail.com>
References: <20200114151906.25491-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_071928_677481_7560D6FF 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
 arch/arm/boot/dts/vf610-zii-ssmb-dtu.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/vf610-zii-ssmb-dtu.dts b/arch/arm/boot/dts/vf610-zii-ssmb-dtu.dts
index 847c5858fea1..a6c22a79779e 100644
--- a/arch/arm/boot/dts/vf610-zii-ssmb-dtu.dts
+++ b/arch/arm/boot/dts/vf610-zii-ssmb-dtu.dts
@@ -46,6 +46,14 @@
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 	};
+
+	supply-voltage-monitor {
+		compatible = "iio-hwmon";
+		io-channels = <&adc0 8>, /* 12V_MAIN */
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
