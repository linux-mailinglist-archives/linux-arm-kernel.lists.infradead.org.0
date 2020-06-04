Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A50A71EDBEC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 05:47:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zRQm1BIAkYA+bgvJ0vhRgKoZkrfTvMNSo6dwG1YB8HI=; b=UElVAx5z3F0TqR0ARos9VI8apl
	RE8d4CUCiW91fy8NqUY47QZQ8B+b41wxzQ4exlbAZeIBz3pgmiyHtTW+cxKUEqbP/QNt+r5yk9qgr
	TUZZR6XNVGHSXY+f1I47bs23wZTqc4d21oF7EuL6Nt0M6vLFvm/YDA/rUNItoBJsIVLUFZKmddj+y
	0XhlWVz7AyaOF7i+05IhVMJ7zZZWMOUyVS6VNhUVMYqOB5J+vtKKJbV9g5fBTV8WtUfvqkUjq6zjS
	ulLUj3IETz/ifKnjKgJjhxWxR+q5UWZQCw6bipKRow6P/Eoo3ptLTLanID6XADQHJyBdIRe+5lPHO
	vFqpdGbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jggqg-0005ko-Sj; Thu, 04 Jun 2020 03:47:22 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jggqL-0005ZE-A7; Thu, 04 Jun 2020 03:47:02 +0000
Received: by mail-pg1-x542.google.com with SMTP id p21so2895570pgm.13;
 Wed, 03 Jun 2020 20:47:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NxEaSPQeIOPRkfXUqBGWXS3DhANeE89pJJUJwsIWN6U=;
 b=XMh2NLBLCV1jRAsM/ApPVYMn0b8sSfJSvOD39kjJ1Om9Wed9iwphuhaPW9wZ3rsBHv
 u8UUaLG7LjbGEYX+lAyn6swrDVh9AvFtLNGkHG7klLKXrNclPthMtPF0i2sh2fLO3ys5
 wwT90Pe51q16aPifitePxyi03f77GMxf4NvhwVuaMusm7QLwD7q0iLO+TUj49JVRlbNe
 6cyzApJCV7abeGs6zUhOHAfrRSSPel6w+A6rfY006mPcSKCANZernfLy0CFifmBw7JAm
 XzUF0f/amIWLBpuMk7lrwlZdWFc2dYJbjwYnxzaY/mSz2cMDGqig2Qns1uSdl28izDXv
 BrJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NxEaSPQeIOPRkfXUqBGWXS3DhANeE89pJJUJwsIWN6U=;
 b=gcClKHkn3Jx0rBBdIvM8245b28pM4PMcG2Xs2afPAeKwslNzA0ySoOKbC3hl5fffK4
 0DmwqP5MIjRsVcW1WyGC2stBegu7HLFJbP6HZx2usAatP4eRJU9A4XqDqSeATT+X1OyG
 X4Rmc5I521RpajvCeVi7zY1lWU5LqF86j/J//o6B7qimvt2QNjf4hjOBflbUi/I0QB5v
 Me8DxBFXYDSGNrq1y+aKTcsLYdvXt1k7v6lErv+VkJRyHeEr5MGrc53OzW98aJ8d06pi
 +ymeK0ow5GE0ghHqcZF+bZGmmJ3svnVs+37eZAhJ2j8uuLHxBPQ2cg0D8tPJuNHplklz
 h1CQ==
X-Gm-Message-State: AOAM5338y96BSkOM7Z3ONuDaXmu3f51Q/FjVxX0y/Ph4t2KIYAVSlW/1
 kRq15wv8MLcRd8yUMLkl42M=
X-Google-Smtp-Source: ABdhPJyuRIpehL8ILBEuAv8MYZ88AthlobDOSBfpKUE+4FSI+ipnlgCRqSzcWpGqCddTssyAUSN10g==
X-Received: by 2002:a05:6a00:150c:: with SMTP id
 q12mr2251871pfu.270.1591242420517; 
 Wed, 03 Jun 2020 20:47:00 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id p19sm3083367pff.116.2020.06.03.20.46.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 20:46:59 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: spi: Document bcm2711 and bcm7211 SPI
 compatible
Date: Wed,  3 Jun 2020 20:46:53 -0700
Message-Id: <20200604034655.15930-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200604034655.15930-1-f.fainelli@gmail.com>
References: <20200604034655.15930-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_204701_348877_081D46C0 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, lukas@wunner.de,
 Ray Jui <rjui@broadcom.com>, Rob Herring <robh+dt@kernel.org>,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Martin Sperl <kernel@martin.sperl.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The BCM2711 and BCM7211 chips use the BCM2835 SPI controller, but there
are severl instances of those in the system and they all share the same
interrupt line. Document specific compatible strings such that the
driver can take appropriate actions.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 Documentation/devicetree/bindings/spi/brcm,bcm2835-spi.txt | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/spi/brcm,bcm2835-spi.txt b/Documentation/devicetree/bindings/spi/brcm,bcm2835-spi.txt
index f11f295c8450..3d55dd64b1be 100644
--- a/Documentation/devicetree/bindings/spi/brcm,bcm2835-spi.txt
+++ b/Documentation/devicetree/bindings/spi/brcm,bcm2835-spi.txt
@@ -5,7 +5,8 @@ SPI0, and the other known as the "Universal SPI Master"; part of the
 auxiliary block. This binding applies to the SPI0 controller.
 
 Required properties:
-- compatible: Should be "brcm,bcm2835-spi".
+- compatible: Should be one of "brcm,bcm2835-spi" for BCM2835/2836/2837 or
+  "brcm,bcm2711-spi" for BCM2711 or "brcm,bcm7211-spi" for BCM7211.
 - reg: Should contain register location and length.
 - interrupts: Should contain interrupt.
 - clocks: The clock feeding the SPI controller.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
