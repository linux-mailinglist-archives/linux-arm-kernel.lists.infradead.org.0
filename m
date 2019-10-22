Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85985DFC74
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 06:06:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gzIV3gf7U6Evvo8c+TzJvY2b9xCaYdDn0v99QoXHYWw=; b=FWa74RzLJ6SBe2
	QodNi77FVvfgwvArUHsbW5wmzn3N+6Rbqu1BB/sj1VBMBMAHQSNWZDiMfpeoxdbdO+7Eya4EG8Rj4
	kANTu19BX7pN/5A2ulR2PxzUvUVmn8Sw1hCQc1kHqJd/DRIt13NouyGW/Gd0zaYQCXhgdOrO8GPBB
	y3akT2AeVnrG2ziWqkEQOtp2pNl+rww2zesopMCnxeYI4nWj99T4KdpMx/Kb0HOpsYGZWDTxpkYtd
	9S2O5adF9/XtXD8F+FlXbembGQLxwDsPaEqjVi7mxJLvT3LCVJrt12FLzvn8H+lOBhBNM16Gbzj+p
	4nr+54E2j2ISDQ8DHA9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMlQk-0004w5-4c; Tue, 22 Oct 2019 04:05:58 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMlQ9-0004Wn-C9
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 04:05:22 +0000
Received: by mail-pf1-x444.google.com with SMTP id y5so9779439pfo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 21:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bvDsvRwPfcgldx1LeklB7J/5Yzxu9yHwJdbavvwR4Wo=;
 b=nv9TZUONTfn2dSraMbNzPS6RYqeRWCDRij1vxog1Qym35FvjMVPkawBQFmZECv0PZb
 Lz266mg1REaBVhlL7/fqjDNfLk8gplYJ8WvmcjIGorKnWkO4j+f9ogIN5E9IKnEdF5HI
 SvSULYCChllQY+fA0n/PQQEStsaHgagJVMlDvEosG5K/P70MkVT2gp12VpjAVAO/kB7P
 y/4Raa2exKmFP4WMEDyX91JODQboDbigbv1kcK7r9hVlv9X50FolOFrQFSNmcV5BVjFk
 HMrEMiEBjD26G+RKQIjw+B2l0BvB5rUKUDzx+seq7G3QcGdQx+KQyICqLInwEvnNI6wN
 Aveg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bvDsvRwPfcgldx1LeklB7J/5Yzxu9yHwJdbavvwR4Wo=;
 b=ONdXf0Wo4EmJ9gcS5sbpe8r8DkeBPXRCYbW6eDc3xyok1KWcU7H3G6ilxIZhJT3SDO
 /Yvmx4GbsAwvEcz/Hk8fDiw1nKuq5Vk67RRH8rBB1UfMj9fgwcXFIZG03Q88RPNN3KuS
 wjeUFvqbp+rxrNSmxmMaFgv/Lh1ClmKsL/4LP7XflhkGuNsiNkWxtzVwa87qqBA9GJ1A
 HNVR6Zl/XXliQY4IO9n2HE+WWoY+zee3zL8w1eRhyxW0Qhpxix/q5VlijweOjFo25B+S
 RnZVBc6Q0qlYg+uA1jyXu53fuMH7ziej1YJyryd752LB5ZvqFYhYOX2n4/CzNNQZIZfv
 0HpA==
X-Gm-Message-State: APjAAAWm7ohCE6eZLSS1xixDsIqq6HH7R5R23gNeSdNQQzDoMTXrSQKW
 PrMvYdcwopVEUHnXDpcWr0xFymOy
X-Google-Smtp-Source: APXvYqzqe1MXlja2x8rhvx2cmcIDk27akdvPynUOLWps4bFjuSxrtOBiL9KkmR2fjxDn4c5DsI4aQA==
X-Received: by 2002:a62:a50b:: with SMTP id v11mr1766600pfm.164.1571717120413; 
 Mon, 21 Oct 2019 21:05:20 -0700 (PDT)
Received: from localhost.lan (c-67-185-54-80.hsd1.wa.comcast.net.
 [67.185.54.80])
 by smtp.gmail.com with ESMTPSA id n3sm18778738pff.102.2019.10.21.21.05.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 21:05:19 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] ARM: dts: imx6qdl-zii-rdu2: Specify supplies for
 accelerometer
Date: Mon, 21 Oct 2019 21:05:00 -0700
Message-Id: <20191022040500.18548-3-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191022040500.18548-1-andrew.smirnov@gmail.com>
References: <20191022040500.18548-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_210521_414836_703597FC 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, linux-kernel@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Chris Healy <cphealy@gmail.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Specify 'vdd' and 'vddio' supplies for accelerometer to avoid warnings
during boot.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
index a8c86e621b49..42c0a728216d 100644
--- a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
@@ -360,6 +360,8 @@
 		interrupt-parent = <&gpio1>;
 		interrupt-names = "INT2";
 		interrupts = <20 IRQ_TYPE_LEVEL_LOW>;
+		vdd-supply = <&reg_3p3v>;
+		vddio-supply = <&reg_3p3v>;
 	};
 
 	hpa2: amp@60 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
