Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B9025E9B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 09:21:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U41IhXRkOGb2NJ2fvH0sKEMuTOi1xom2n33QNjNp3t8=; b=XYzuvmHqUTEBgN
	2vSnoqg0yzW14Lb8QTIGVVnsHnPJkgJKmzjqwdCt49NGasT06G1v0MyA6Kp0DTZKxNflFdzD33gE5
	erkDdLqKyad854o37qf6mvQhgJdcM2NGo7NvaGqpLVJL27UdWpWUAMNYGoI4wp8JBhA8OjetqUIKV
	gCaZeWbEcEFZwmn2b7aCwICXjgPXsAkVpluFk/2ZZXpCEAz+uCUWRqiZ7omZ2yccyZZtgWnOuCtSI
	r98Bvq56Wx9XAFLRk8VhTsbwAFV9+zg1LRvGBiGN1BD/JpkyW6IaJDXv9Ycy3rX1s1gvzWZynd4Je
	Vz2WNrDIPnRPuVlwv5yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTLYv-0006bW-9d; Wed, 22 May 2019 07:21:21 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLYn-0006au-HB
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 07:21:14 +0000
Received: by mail-pf1-x441.google.com with SMTP id u17so838498pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 00:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yjT5+TUdogD5IbDyotKdyR3j6dKa+aLy3uq/scgE75Q=;
 b=sJ7HVrCKpqUVy4tE5MK5M7kmRgJyS3uV4/2c4WG3VbWVVwdET1TrqFO14fp+jBDnKu
 lkZpiQp0cxoqaS1ZtxFITz4LC0sFTFx3uRspGF/89LWN6MCz6TEvUUcEkoO0n8VW6uQs
 ILeJs84C1vp3kDlp/wBj974ewbUOjIZUfYSGZ62D3DZcWzqBDHH8jQXq6Sx1DVNPNIAZ
 r+XYJTL2qSXcCHhdlz/72jqrhnQLqNpHUEOtKO0Q4reWBRo03Tp+pyg3p+irZnkZhonL
 J4PLxoYR5Psod0NX56u1/qqICInHVs9wkZeQZprJv8R8dmXjigr1/dSV/DuRK7wIRM1e
 5BSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yjT5+TUdogD5IbDyotKdyR3j6dKa+aLy3uq/scgE75Q=;
 b=MUvk+X+/NMpYXgrtxZ2UQl3O60TX/YdZd5BwJcjVLsN5RnsdELE8C0s5Yoz6tu09T8
 85ez5TjEeANQrdRROVawm2+nkJFMETPB8lZNdK8tUhLfJDBVPQWleepPaONJyxio5hB+
 LFVwWh+12YwqFQ5dqWI8EM/NrZtJaNRU4YIvtr1nnn06hik5PaNWUEoE7DdqwH4PrRcv
 7Lm0rK9BVlCfgQ+/peXK8/GPvXfZoQuwIlIcC0M+CGTAydLxf4VgfQhP/bm9auYz7jUp
 pdw4GOB4HXTT9J5Y6gN/ARZhz3DHjb1xrbcVUFjbsxRqzll2jE5jYpSPOPNkx7gS8AgQ
 DQxA==
X-Gm-Message-State: APjAAAV4AT5tQnRPPqFMDbcY7/SWRwjLH4N9TCbIf6E/PTBhSrbV7HnE
 gtmYnIAMSDcZBcJDnDwyV1WqrOdUWJE=
X-Google-Smtp-Source: APXvYqwpQYU0P0CAK6rkHMIR4e2vM1N9mIn2qJDItVQ3VqzMdCxPS2KcXGK2Smf7CiVy9/eGetZjUA==
X-Received: by 2002:aa7:8493:: with SMTP id u19mr93929323pfn.233.1558509672245; 
 Wed, 22 May 2019 00:21:12 -0700 (PDT)
Received: from localhost.lan (c-24-22-235-96.hsd1.wa.comcast.net.
 [24.22.235.96])
 by smtp.gmail.com with ESMTPSA id t5sm25307204pgn.80.2019.05.22.00.21.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 22 May 2019 00:21:11 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/2] ARM: dts: vf610-zii-dev: Fix incorrect UART2 pin
 assignment
Date: Wed, 22 May 2019 00:20:51 -0700
Message-Id: <20190522072052.2829-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_002113_595260_B91E10BC 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UART2 is connected to PTD22/23, not PTD0/1. Fix corresponding pinmux
node.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/vf610-zii-dev.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/vf610-zii-dev.dtsi b/arch/arm/boot/dts/vf610-zii-dev.dtsi
index 0507e6dcbb21..1f2e65ae2bd6 100644
--- a/arch/arm/boot/dts/vf610-zii-dev.dtsi
+++ b/arch/arm/boot/dts/vf610-zii-dev.dtsi
@@ -385,8 +385,8 @@
 
 	pinctrl_uart2: uart2grp {
 		fsl,pins = <
-			VF610_PAD_PTD0__UART2_TX	0x21a2
-			VF610_PAD_PTD1__UART2_RX	0x21a1
+			VF610_PAD_PTD23__UART2_TX	0x21a2
+			VF610_PAD_PTD22__UART2_RX	0x21a1
 		>;
 	};
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
