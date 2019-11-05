Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32CEDEFED1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 14:39:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lR5gC0AYoQn+GPrv8Vn7+tpx0ZTNQIDukeAJPVIgqzk=; b=rRf
	NlgoW1Fnu6omxxm16lvzCh51Y7JJbRFYo8di3rpfTV9koCs3VkMdDmRHzVC8V/jzOSxDLEhGhYnVO
	poxA8mlqE2qbqJZQQXw+sVNVeR4iRsZlivcN9EztU9ekMY8V/6u348EDAepxSSZ28hl8yFgXL8+YT
	SbVTLUAJWxnQz+pau2B/aGOqItr56A/MwqwL6dB+YeKxyHWQgLWXDE0AHKmcmG3RGyfDLqD90b9z1
	C7JIW7Phn0ptlZkp7GDX5yL5l9CEhlekvb2TeoizI6W6tHGsTMuzN+O5GRiYg7Y8b4kfPVO5GNEr6
	JvWRWrMKCT737TAHWOyR6EJis6+SuYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRz3Z-0002cR-DS; Tue, 05 Nov 2019 13:39:37 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRz0N-0000AV-Bv
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 13:36:24 +0000
Received: by mail-yb1-xb41.google.com with SMTP id b2so9343049ybr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 05:36:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=R0BVtLy8tZk3M5PggFKMIRuxlAbFKWFRccRMKUm6LL4=;
 b=iCBzZE46bGzZ8RB7nJunnWlyf8bXM7OUFlMozPQTGqOVmAe0OC7eZUOyUAPUeQCRRR
 STTpcH0au3fqEii+cDJcwDPUD5ztln0JxlZ6MGDa3FIt7qRqiKMs75rG5a3cQ/omJoYV
 Ug+m6s5zeFQeSW97bqAOFiOx5ff5OWantd2G+VdEgSAV/8+nZPX3QFQg2JYAqS1gRZwg
 i0uNYlCAtTpjoXrhv5/6UB1wRB4C4JIm+tQK7r9DVBxFwmQSHU2L3AxwvlOJjL9sNOln
 5yguvMj2sPYSMpiJ2hx2nwTAoTnp7Nf9G8+xzswL8xsNMl2XW2zQMeonPSepVfATWEmB
 xuhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=R0BVtLy8tZk3M5PggFKMIRuxlAbFKWFRccRMKUm6LL4=;
 b=Ld0vFgEva1j5opjBTUP8B9c3TnB6CA3bwC+oBxzyUk3pPWlOcz3N5bGwiEt/OSmI0D
 5pGm7SLcqBZh9LqYYkI8oBYNBB5r5jJfGHq7bAUZ8E7nndEKEPjZPNKlZkDXsPCpybD7
 JfV+FFQMC2LUI1oFx8IYM5wAEM73Q6RA7TaQFiTGZVcAj91iAD+3QExHgpPjbGWo197z
 nuToNbpcT3ICoo1nuFefpjsAj/dypraJC1vZEjWD8xKQ51HyGyf57S3mOQNWNNQZSMgW
 D033c8JS0Ytgz8Zk53oUjV+E1DFCpq3QBDjXh/2abPFJJkYkHn7ZSI4b7Pk9Uy6SIh6G
 Y0jQ==
X-Gm-Message-State: APjAAAXtaxZLTRt13SnRHpLtNCqWS1Thq2B/pr7A4LUUi7NabDoZwmGP
 SlicFmZxAZqS7q1KvLS6pPi7RaJT
X-Google-Smtp-Source: APXvYqzp5r3vCTdS72C331MvKwdeEYlhBRxMED8/skRM8kTsTyfwNJyIYgKNW2ovCUCpjqGtgxJ1fg==
X-Received: by 2002:a25:808b:: with SMTP id n11mr28509321ybk.191.1572960976584; 
 Tue, 05 Nov 2019 05:36:16 -0800 (PST)
Received: from aford-OptiPlex-7050.logicpd.com ([174.46.170.158])
 by smtp.gmail.com with ESMTPSA id j136sm9426654ywj.17.2019.11.05.05.36.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 05:36:15 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: imx6q-logicpd: Enable ili2117a Touchscreen
Date: Tue,  5 Nov 2019 07:35:55 -0600
Message-Id: <20191105133555.21893-1-aford173@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_053619_457801_16418E62 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: marex@denx.de, festevam@gmail.com, dmitry.torokhov@gmail.com,
 adam.ford@logicpd.com, linux-imx@nxp.com, linux-input@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, shawnguo@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The LCD used with the imx6q-logicpd board has an integrated
ili2117a touch controller connected to i2c1.

ili2117 support is scheduled to be introduced for Kernel v5.5.

This patch adds the node to enable this feature.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm/boot/dts/imx6q-logicpd.dts b/arch/arm/boot/dts/imx6q-logicpd.dts
index d96ae54be338..a5025f3009a9 100644
--- a/arch/arm/boot/dts/imx6q-logicpd.dts
+++ b/arch/arm/boot/dts/imx6q-logicpd.dts
@@ -73,6 +73,16 @@
 	status = "okay";
 };
 
+&i2c1 {
+	ili_touch: ilitouch@26 {
+		compatible = "ilitek,ili2117";
+		reg = <0x26>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_touchscreen>;
+		interrupts-extended = <&gpio1 6 IRQ_TYPE_EDGE_RISING>;
+	};
+};
+
 &ldb {
 	status = "okay";
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
