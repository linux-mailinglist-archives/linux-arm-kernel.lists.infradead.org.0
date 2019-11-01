Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 791B3EC3F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 14:44:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RWJc1WPiVMPIc/RrQC0bY+9Vef14J+MPihyBaKXIapg=; b=deY
	EbGgBk3XBqHHT1XR5tTY82gBjqW1iZhJeO1PjlUvlk3wtNmaO/acluu0yoaqMBfuxGhmmZKSQfWRh
	g3egzjoRmcDO/eTQ0Dna+vS0B98kqRdgDzrbcHYE1V3HU7kaSZq3QtMMPbjs+VaRNFqQONV2D80vn
	VbZBlt5xoiOSo7c8PQevGA/QJ+cqX2YPYKchYy4fmfHnz731utydqZB9qRaYdgYMrred25a/ThWxs
	EGn0q5PPsWjfiPCqVZOsoRHPYlIkIsiEzQD0yQS3JRg4hcTgUl5g7BQpcpJHOTR8boR20XxmMIlFQ
	npDFwaWc7zmbpf3cA7B3QZ7NtcrIqiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQXDu-0005li-QZ; Fri, 01 Nov 2019 13:44:18 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQXD3-0004jJ-7t
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 13:43:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1572615789;
 bh=kcBKcJVOa9O9gt/1gGKhUY/mTXUJsEdNU9cT780Y7Og=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=XoByljlPxUx2ORHxVRylkGzQHBRaOhdOBUSliRz9zmfeGNoM6nKTrj4yRwcWVeLAv
 60abCnG42zVXdU3+WUCWyOMBVt2bLg51VXdoa1xt0/9vexbu7LvFXlCkS1NGACj5op
 njiP9I1SdecTozWYl7AOiTJOe1kBT835OnFxAUG4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MVNB1-1iZ5Ug1luZ-00SLQ7; Fri, 01 Nov 2019 14:43:09 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Markus Mayer <mmayer@broadcom.com>
Subject: [PATCH 0/4] ARM: Enable thermal support for Raspberry Pi 4
Date: Fri,  1 Nov 2019 14:42:25 +0100
Message-Id: <1572615749-9524-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:LYhrgAqYuJOSKZBHS4xtwA6qw+Fd7NI7pnQJ1JEonsrCmfvtrIH
 Lyq+cNclMYkZADaN6b92h1cQbUBuJfONajbE6qeK1AFP7U/h2xJQ8P+r6vNODLZwZhZ2ktO
 InieNmIR8xR/yHy3Q51s8ZZx+IG1AHDs4AvYognOK0TIYxglAVQ4arD9pW9QuppgrqwRRGj
 CERsa8Vesen2yT7oA5lPw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:7sBRXt/lcKo=:iyAG+/n+l2vq9c1Lv6rdmK
 oZOzFVFYUoeBQXkrBSSZro4Xi9DwaC/cZyG9NXwLaw+Oob+aNnPe8TB1kG0+hC/9WMGEjvrKi
 ht99cgtuWDjfH17nU5MXUsPhtv70Af1Rg5XLlgQX4ChkSpwxYeCem3b2umMdN1pfuvyFq4hUc
 vVM2MgLN5WKRqLUzNS5gGSdomiFeliBF915Gfb2c8GzWkY2NxDMtppRP0BpME2HpMGfyoO0+D
 iYMoALpyHcNPEsSsYAC36MD8AV3eeXxPcf+q66ApkMJuI5Metvdt7UqBAO4LNteg+sdKo+8id
 T2Uo14Uw8VjQC+X6dlMO3LSbYGtL1KIZp6D9PHS9YGC1dZv+UO08UxFlD3OAWz3KsLyDksxYy
 7Kp6U+kiyp//FnTEsW+jPWTEFQXTi2+wxCWniMo6GkVVZkNe/nYZukVA1n6EQLPX1+W/zewYP
 kfp/TtI0dstoZJ0hxXA5+mQE8u1jD/CIX+fbuBiXLjqsn5567kbqt2CSB8bM+MxCVH4kc3NMf
 0zvMbkq9rondCg4XtKutQcPa21/BcaKd4ig5gIPY5s7MiUX6VdGGr21BTDG1tmraXJSdaYuaq
 RFefkC53yFd7BmtIO53K8DKpNQyNqVT4D3peO/hBsEjXVjC5lODvrPXj94uGia0prycDtuP7+
 S8A+TAMEBDfKQ9Bvvx9oqpA8lUHK1beVqz2NLdpABWNPFGDU9mEt7IMWanWwwMq3zD0JNSx4c
 gokYLzVj6HvyOe/gR3AQp6jz41mX8+VCklXgQAYJYOoWnPF+ZjXFgPFhjulYn+U178kydwB1g
 3KEz+K3bRmcZbxfHHUPMipHkowE9/GOmdm9I4NKx4yhq4QY4G17UY4T0D+fKKdIGKarJ2aQeR
 MWKkE8F1Oqwh8ilH7bIyFDb01fpjp9WMJdzH4zMoGCzuOssfnwaO6c81yB0ZYiJn6PuwEfojx
 6wdBOrQ50UBOJ+8Ala1O6nF8ELXwodyRpzCqH/CNgxafsLCjITtUPHLPgJmWPgp3iB/sxPs45
 8hKBuiJQwX1olIO/rRnREf256C61AtjOiAk/2d/4YKoWLOtjxLCas77YTgyGxHsW5t16Y8WSS
 He6b0WX4JSi7/JRFpz3SnAXu9d9KP/j8s0+anO5FY4REYqIU2Lz0HoaNlb//MnZ2p25sXu0ts
 5Hldo73ASMxmhg4EfplLu8R5s9dSlHyl9Fc8gZCKitzbGYHhmYOQj/VRIE6qdRecTBU1skvsB
 CHl/KE4xvW/OvQuS+iKyaQrmebJwb9QRuF/34Cw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_064325_576383_2351E261 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 Chen-Yu Tsai <wens@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series enables thermal support for the Raspberry Pi 4. Neither the
bcm2835_thermal nor the brcmstb_thermal are suitable for the BCM2711.
So add a new thermal driver to read out the SoC temperature from the
AVS RO block of the BCM2711.

Stefan Wahren (4):
  dt-bindings: Add BCM2711 thermal
  thermal: Add BCM2711 thermal driver
  ARM: dts: bcm2711: Enable thermal
  ARM: configs: Build BCM2711 thermal as module

 .../bindings/thermal/brcm,bcm2711-thermal.txt      |  39 ++++++
 arch/arm/boot/dts/bcm2711.dtsi                     |   9 ++
 arch/arm/configs/multi_v7_defconfig                |   1 +
 arch/arm64/configs/defconfig                       |   1 +
 drivers/thermal/broadcom/Kconfig                   |   8 ++
 drivers/thermal/broadcom/Makefile                  |   1 +
 drivers/thermal/broadcom/bcm2711_thermal.c         | 146 +++++++++++++++++++++
 7 files changed, 205 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/brcm,bcm2711-thermal.txt
 create mode 100644 drivers/thermal/broadcom/bcm2711_thermal.c

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
