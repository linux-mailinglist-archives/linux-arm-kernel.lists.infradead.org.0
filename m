Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C780172405
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 17:53:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9udCOqPwpHR5btyULq87Y0neBmuTT8QJLxxIdcRDrVE=; b=kzO1KMkvV3TwpE
	aXVq5UieYqGk07tsu4PJNfWJmP9rqGl4drJxA6bdA9O9FfppYqycgAp9McPd+7Yxjwh36MDlzwt4S
	AlFiIQkmthidqkgJP0o8atdVPFFUc7RJRWzRQe+/0ZZgX73tA5Dt8rs10IEsyfGz6agqE5yt5KIh5
	pgbf2GIMP/jVu/RUuAtnNuyif5MmkAiN9Y1R1XNg28ex5XENSsc1ePSwSP83tHV2t7kchiCl/53P0
	nrN07KBvetnUynZ98dD1BggPf5b0SSsbKiS1BczXaQCmDOO1XUWvrNlaX0Vi9DDIEvT7OEZa9wO5a
	EC6YOba9000aEZp2pzvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7MP6-0002Bx-7w; Thu, 27 Feb 2020 16:52:52 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7MOw-0002BE-U1
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 16:52:44 +0000
Received: by mail-ed1-x541.google.com with SMTP id p3so4059232edx.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 08:52:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ivstkqAc2jBTEhbTH0moaUv+ywd1mANmLsnT4sGxaf4=;
 b=oRLJ3DCLUdlQ8CO7KWH+bg60QqHSKOVPuWAk0vqDM5EdwmNloknnBn142+nMTNQoPm
 b3p/S8pPec8UQukUYQhvGLDq0LfDQUFkVjE+P+mW2f2DJpWSRx0Y2jwbYHvu00LrH3Vo
 AXhpY5mFgmqS3K5euSDd2b+8xwFk/XxLZoadkoig2Q5M1KkXtxCfhHU3aUeGbjp4yg0H
 2gaZdORkbNCqiFRA4FDP+/kkCpvuJzSVtaVg1okPbuVvvlTMntUcSI6nrT05VqbvRKks
 sibhYxGQAAYOA/StYtTXVn2DBl4XmQBhyiNxEZkjWfRRojQ3d4CeXXnltmXtfr68vnYN
 +mZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ivstkqAc2jBTEhbTH0moaUv+ywd1mANmLsnT4sGxaf4=;
 b=Bkl+YRw6nOZ4M6b4Hh9Qug+pNnMUUWL1EiDmAAupST3UdrAzkPVlIlLqYn8l7EGXnG
 9PEsf/U74n6q0RsLq8y9lC2fV3YThB0s3tspBMrTredK1bH55DiI8Oy0iMUQS8YOBsTm
 FI3mo3TGHgpa4O4FS6UvXH8A9WxWcBTIUVu8tZxEGY0OM4m0oKgOFbkNSLRIK6TDDw8D
 9h4SNO6hG2iYrWGy9JvbSpxz97TTB3NA7POpQVtb1+cGR42duWCTnGoA4sMoZda42p6F
 CdL6RSMo7ONdF4zBvtvSC9xMyyB/WYrZWLIsYGvNjKRgEXf2CYbu326o3E8ROfzYlvLA
 hWbw==
X-Gm-Message-State: APjAAAUo579ffC45fwTKEdRZnsSkC2roijfhmimZQdZK47NtekB9AJEa
 F98+Hl/Y0vsgTNfhaOAXPDE=
X-Google-Smtp-Source: APXvYqwMntBRGuKgTGlUYF8FPtdnWphoE5YRSZavfhj8926aPLeCq19BiEK36bddRONndGmfKDXyvQ==
X-Received: by 2002:aa7:c552:: with SMTP id s18mr5325160edr.331.1582822361093; 
 Thu, 27 Feb 2020 08:52:41 -0800 (PST)
Received: from localhost.localdomain ([5.2.67.190])
 by smtp.googlemail.com with ESMTPSA id f13sm388541edq.26.2020.02.27.08.52.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 08:52:40 -0800 (PST)
From: Tomasz Maciej Nowak <tmn505@gmail.com>
To: jason@lakedaemon.net, andrew@lunn.ch, sebastian.hesselbarth@gmail.com,
 robh+dt@kernel.org, mark.rutland@arm.com, gregory.clement@bootlin.com,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: marvell: espressobin: add ethernet alias
Date: Thu, 27 Feb 2020 17:52:32 +0100
Message-Id: <20200227165232.11263-1-tmn505@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_085242_965080_18918F55 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tmn505[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [tmn505[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The maker of this board and its variants, stores MAC address in U-Boot
environment. Add alias for bootloader to recognise, to which ethernet
node inject the factory MAC address.

Signed-off-by: Tomasz Maciej Nowak <tmn505@gmail.com>
---
 arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi
index c8e2e993c69c..42e992f9c8a5 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi
@@ -11,6 +11,12 @@
 #include "armada-372x.dtsi"
 
 / {
+	aliases {
+		ethernet0 = &eth0;
+		serial0 = &uart0;
+		serial1 = &uart1;
+	};
+
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
