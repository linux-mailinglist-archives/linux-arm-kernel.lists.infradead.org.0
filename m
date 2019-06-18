Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD98E4AC7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 23:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PYp/cQRr7WoWpx/y674YngWTXBnlGfiHSPeXsiTI5qY=; b=QOa
	dlHxLEPk3SUg9VBW7qT0lsVur2gIsIojKBb6StMLgVkpfvPnlwLWc/hbx8JETmAdl8oSq4xNy9Grp
	SfIKGXfg01lW/YXWzroOxdn9NiLN5Q4OnOfCR5k65tpwb8X1LXwdwJVhDas5BkZPC8Q6ku4ituusP
	zpId2oAvRN9oRptNU9xuEN+/DBgB0kaUJS7pp+38k1mWWdoeRHLAAj615gXtDraK2yXfco3rFDs3V
	H73uLKX+NP5S9TZt2SiUtV1MmEtbMEPDNv/UDXVm3rYYCy+vyPod07BF8D3UEYJLPnJ8a2nb5AHG9
	sFTDdkNXBi0hhKzK2jFo6CSRhBtaMQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdLIV-0006gM-4C; Tue, 18 Jun 2019 21:05:43 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdLIL-0006fs-8x
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 21:05:34 +0000
Received: by mail-wr1-x442.google.com with SMTP id x4so985466wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 14:05:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Owfnfi210bHG1KCwxED8o2q5fezVlInfI5jl0eNKEeI=;
 b=tXd4wZnAEtzG4ZCi51jSRC5yJgInu58CiLl+5O15+09xhtHxypQT/Imiq+WzTDyEjm
 zvcz8EcTQjHl0gIguBkTqXOPx7pzy12CArANSNhjbWiQKzwpU6x2rq6QwiN8Zup/zmbu
 y+L5WbDuSvQ/gj4+uA7H0XEjoOG26XMxIBCAYIf6buwDzg/1Di5Vqdv0ElixvmD18fhY
 PtZmkzlpAZpYDxotPNXTzDT1UCiRnEqKQvJfePHNUeM7dXz4lMLWzfd5ZWYnbkfpB5nV
 mTDSiWbbANfAWDMw/jY2JetRSDmZoe8C68VvhQkZzhKHlxXWddGxUwQlt2qYWKChocls
 /yNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Owfnfi210bHG1KCwxED8o2q5fezVlInfI5jl0eNKEeI=;
 b=Wxk7llO3j2Ub2D9eXkge1jIOCMGXGJ4uDBfbL7it0DFmS/uUEW2muEMTqiHzBZqfK/
 pqX5DJt06FAgumq+s98LCBncHl8Rax/lVmudcOxcX6HQj4H9nKNvinIjIU5+9n38Hjt3
 j/6z3Tw5eqY7k+vJ7Pd9MRL3nwUepMv01DhIiwxzCgexCpqcR8CzZIcoiYTJUA/K5qMR
 kFH9qqZnd2Imrp5UQQzx6p1WtBllYQhV5ju7Xt/Sv6aspFJHs5Clc6O/VKbS8bqXooJA
 g9oVlzrmamVEYQ+uzNJ7iOVdJomj7xLL/Tp3E9bB5OJG1U9wFJXPeRIzsxUAa8B/bUW0
 zgxw==
X-Gm-Message-State: APjAAAU1ougKNDJfSwyjFGh2J5ZZUQU0mZZ5W5uCx+ot8O6l/5g1HORk
 mdR+wn+EB9veQ+C1XRvHca0=
X-Google-Smtp-Source: APXvYqzuuLGELMPFkAg7k0kkbez3Tn1R9vAHVUTeupwHe3hO4aYZSehvzMHMRdchUTaBQrP0/ZOduw==
X-Received: by 2002:adf:edcd:: with SMTP id v13mr4292343wro.210.1560891931820; 
 Tue, 18 Jun 2019 14:05:31 -0700 (PDT)
Received: from localhost.localdomain ([188.27.67.107])
 by smtp.gmail.com with ESMTPSA id v27sm31492545wrv.45.2019.06.18.14.05.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 14:05:31 -0700 (PDT)
From: Daniel Baluta <daniel.baluta@gmail.com>
X-Google-Original-From: Daniel Baluta <daniel.baluta@nxp.com>
To: shawnguo@kernel.org
Subject: [PATCH] arm64: dts: imx8qxp: Add lsio_mu13 node
Date: Wed, 19 Jun 2019 00:05:16 +0300
Message-Id: <20190618210516.28866-1-daniel.baluta@nxp.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_140533_338256_DD25803C 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, aisheng.dong@nxp.com, anson.huang@nxp.com,
 devicetree@vger.kernel.org, Daniel Baluta <daniel.baluta@nxp.com>,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 shengjiu.wang@nxp.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

lsio_mu13 node is used to communicate with DSP.

Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index b2cb818c76c6..dcdbd86897ed 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -448,6 +448,14 @@
 			status = "disabled";
 		};
 
+		lsio_mu13: mailbox@5d280000 {
+			compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+			reg = <0x5d280000 0x10000>;
+			interrupts = <GIC_SPI 192 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <2>;
+			power-domains = <&pd IMX_SC_R_MU_13A>;
+		};
+
 		lsio_gpio0: gpio@5d080000 {
 			compatible = "fsl,imx8qxp-gpio", "fsl,imx35-gpio";
 			reg = <0x5d080000 0x10000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
