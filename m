Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B69F1F1487
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 10:31:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=W58b5bhWkEaj/if59m5kg6NvoFY9GAUpvukkE2+6QjA=; b=XTYMSacO7bEQSSV8iKZOW8L8nx
	TkrH33t49UVOPDY58tzwYTHlkCoa12c9aoSwaP68HtOpufGCOzrBVKlqfnnf0Vg+16QgYtrjdV0p0
	smnpmuXP9Oxcw+Gyyi4qT1aMvUmfzGf/IqtAP9TDuzpOfqmPH6fQhtnjEtNREXtVr0hw5hamPTIqf
	Qkt4b+l3caV2Yh+TQqw7DJEmf5SWdeoBZ8v3ryfjOy0hTuWB8zl1fNeU5q5+YoR6u8TBSGC7phcdq
	tXY1foqy5KSs9WF/uEfRq+GYW/jSYdFLg/1trl/Qt2TOooz8q83Y2BPTjBIsPt4VGfoIBG9dwN68q
	AaTIWZbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiDBX-0003lK-Mr; Mon, 08 Jun 2020 08:31:11 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiDB9-0003cG-EZ
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 08:30:48 +0000
Received: by mail-pj1-x1041.google.com with SMTP id a45so4753049pje.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 01:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8feILcDA0tIlewM1KO106AZP1TsRZlV0wrLhrdTJ7fk=;
 b=B+4fToX21iv9QoVjppr44/lc3ZFWBQL5JO6a0275yptTgsD+TOR9A/boCycuYUAFMr
 s3DV8OTQT7upBbdc7HXwhLR5Saea1NCSTfOwGRbbDHejss7/uan7AnGazjgLMmJBZKtd
 H9uVZkwQ+qRvuc34NfGPopkwptiy6DJMlnfp/xcPWG3SZh/1+6H70UHL3CJhpeQU23hU
 PObJzAwBoqFTlWdZu8gwUOEVslw0Qy6zIFLfStKtCys1sJOhgVm8KSVcz1ClmdKGpCf6
 WK+OGFNGbBvZuSnIKm/10x51jWms8hcCaxCsZvq9+Mk0vZjbVSskn57LFKSJWZDFzqSO
 BhrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8feILcDA0tIlewM1KO106AZP1TsRZlV0wrLhrdTJ7fk=;
 b=TZZf7b5U2xFJkn6GE8AdnB/GIAeJp80pWbB17kUnLVLvCQWZZezcVc2ZbvcAR5lxE8
 T77cQrzN9Pfka1aBiHb77mTO2s4ZD2bqTZtRa7a7nAgy6D4RBXkN0/qWSmRappOzKqRr
 EwVUUVj9c5RGYWV/KdebbaS7vX16kS9PcR+0/NOf6u+zh6tSNlbPkImktpIOPMHIUBV7
 gsIQwypUwVRFEdN3TBwxbnIleAWPj3Uz1yq7ljArvoLU5F6pbOgzW4dqDgaGxO61UUCF
 FRSYfnCisArXokxqw+2IU+3KSO7pxoIrdvDAmpybH1kpYqoDBciw/B9agZaB7GbeSJ+h
 uCyg==
X-Gm-Message-State: AOAM533raUiKfx1ZN3pfPx8q6YjeVsOaMclbYa0kfcNFJ20Qk0Y3Kvrm
 JB3NtHC/W9btBEyV+dVAtds=
X-Google-Smtp-Source: ABdhPJyeHWrRZ7QzXxletY3kLJIxJWIs+gLBJ56sWRWJ2KQLKn7J5lIcB99++scBN53d1bkhC2luYg==
X-Received: by 2002:a17:902:b601:: with SMTP id
 b1mr20489872pls.39.1591605047030; 
 Mon, 08 Jun 2020 01:30:47 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.191.42])
 by smtp.gmail.com with ESMTPSA id 27sm1210829pjg.19.2020.06.08.01.30.43
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jun 2020 01:30:46 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 linux@armlinux.org.uk, vladimir.murzin@arm.com,
 kstewart@linuxfoundation.org, allison@lohutok.net, info@metux.net,
 tglx@linutronix.de
Subject: [PATCH 1/2] ARM: dts: stm32: Setup 4M bytes reserved memory for mmap
Date: Mon,  8 Jun 2020 16:30:37 +0800
Message-Id: <1591605038-8682-2-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591605038-8682-1-git-send-email-dillon.minfei@gmail.com>
References: <1591605038-8682-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_013047_506587_5B2EA2D3 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

To mmap a framebuffer or v4l2 buffer from kernel to userspace on
no-mmu platform, we need rely on 'arm_nommu_dma_ops' from
arch/arm/mm/dma-mapping-nommu.c , so setup 4M bytes memory
reserved for this purpose.

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 arch/arm/boot/dts/stm32f469-disco.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f469-disco.dts b/arch/arm/boot/dts/stm32f469-disco.dts
index 9397db0c43de..082b24ee81f7 100644
--- a/arch/arm/boot/dts/stm32f469-disco.dts
+++ b/arch/arm/boot/dts/stm32f469-disco.dts
@@ -65,6 +65,20 @@
 		reg = <0x00000000 0x1000000>;
 	};
 
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		linux,dma {
+			compatible = "shared-dma-pool";
+			size = <0x400000>;
+			no-map;
+			linux,dma-default;
+		};
+
+	};
+
 	aliases {
 		serial0 = &usart3;
 	};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
