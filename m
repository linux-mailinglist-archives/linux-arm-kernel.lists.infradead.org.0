Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1616F13AD74
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 16:20:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5YG852CQWb/uKMCkx5XnsVDkshAixtBTa0PE5sLoU8E=; b=if6XtvClE0sMe6
	VqwQX1Yn3bJ3nzWAzaVgLvCUvgowjxVzKy06po489DG/aUWXWiwhtKVPSHvgoYTlNv8M6y2Y/cxg6
	uHg3dF2cAsJ4BrxIGSwtJWLLs4wod4T+JyTGzVrYhIgN+RSLLR4mE5OzIDL2TNUoo4wvs+mnOgi3F
	ErL2N4gApsMWqxoG6Gob0o3KiwRxLGe36enrMZfrF7KbjE6UyGQeLWnBBiqKa6RI9BLbJ7jDWtYm+
	DIvcN/4+1Xh/70wr5A0DcXVmHsrvqK6VuZtGlyNIIQDk7SLIYo9Wr0boYZ+UEVWw3F8gsMMA5RSsz
	7IH82nUyPArEWH3w1IGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irNz5-0002Wj-PC; Tue, 14 Jan 2020 15:19:59 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irNyZ-00028O-4m
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 15:19:31 +0000
Received: by mail-pg1-x542.google.com with SMTP id z124so6515735pgb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 07:19:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oHR18xSTLKzfXADaEQF/DRKA3JuNk6378Q7TLhUdjGA=;
 b=MX5VY8kt+Tn08+h/fUUpnksMzFRwu9H0e26yWbE8j5DnU0ARn+a7YISb5IkjPzWtO0
 1ZugUunTv+iew4DJKfLLQVK6n/S72uRin1uStVNAFPzXPWGCgx7qyczs1GGFIXpjiCI5
 my1Oo8oejUQdpbuc9GRruc4wo1ctQL4arNvSPOIFwhtwzfJAOtbVicF8gn/nvJ6pO0t1
 T9Db9wXh9I2kE86IGIx7kUzQOoKphmv53dNhNCzUUNjchLxIR+DTuvWUv+7FX7LoENJu
 Iryolc0bS5DHW+6PCdaXdHKP5Z/ex+PYHS/XVoytpycChKkQ3IGFcmP+SS6Ow7x6HUgU
 JlMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oHR18xSTLKzfXADaEQF/DRKA3JuNk6378Q7TLhUdjGA=;
 b=R1VYGaeahgbJ3vHXAHCn+aUqHf7SN/wTvp3wHAP81/UL6qWj1znUeI5KQ4OS0Eq+iT
 th3Z1c1+qiEhdMwhh0hTmR9Te6tHG5l0HMJZtDB4C59Wm+CT5kTEke6z0fMZWghHgCvV
 KlsHNT2kyg7mBmCXNFvqEc2DM9+OGvU0ho97IijSD30u6X4Y/h1MP57mlscFDhe24KJf
 +raBIjoKsVuwxvcQxPDZAq6xS8YqHUUnnC8+svVsGqnfwgfSAjsDDUnZcuLnYkxclo5z
 WrR5fqcsNXL8ZCNxJqVcG5a8bkIyJ+4181Vxc3OzXGTcrvrDv1G1NyG2egaN4UsVzg0Q
 DHlg==
X-Gm-Message-State: APjAAAWkpXAlgweSppyDds0Vancmt/Y3eex2M9OyQyl0i46SixxsXBAK
 ad9+9iPuEyNEOWqkttxBhnPQ5Lg9
X-Google-Smtp-Source: APXvYqz5rxYxys49gaz1iQGzXcuSBUjumrrreqOitO48K/qaFccWPnB47zLTKKj7thqJ7REaulAUpA==
X-Received: by 2002:aa7:982d:: with SMTP id q13mr26222953pfl.152.1579015166342; 
 Tue, 14 Jan 2020 07:19:26 -0800 (PST)
Received: from localhost.localdomain (c-67-165-113-11.hsd1.wa.comcast.net.
 [67.165.113.11])
 by smtp.gmail.com with ESMTPSA id 207sm18834425pfu.88.2020.01.14.07.19.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 07:19:25 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/5] ARM: dts: vf610-zii-ssmb-spu3: Add voltage monitor DT node
Date: Tue, 14 Jan 2020 07:19:02 -0800
Message-Id: <20200114151906.25491-2-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200114151906.25491-1-andrew.smirnov@gmail.com>
References: <20200114151906.25491-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_071927_184927_00FAD526 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
 arch/arm/boot/dts/vf610-zii-ssmb-spu3.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/vf610-zii-ssmb-spu3.dts b/arch/arm/boot/dts/vf610-zii-ssmb-spu3.dts
index 453fce80f858..3d05c894bdc0 100644
--- a/arch/arm/boot/dts/vf610-zii-ssmb-spu3.dts
+++ b/arch/arm/boot/dts/vf610-zii-ssmb-spu3.dts
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
