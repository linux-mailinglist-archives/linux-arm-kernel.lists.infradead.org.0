Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D3A9B071
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 15:10:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=s+yBOqoaJGP8wNzGwI/nZP3f6AM4/IVOyLu2cCLVfsg=; b=fZ3+AD8ZGAXgfhXPGNF0jcoDVE
	+cA005moVp5+Amp6ingzEy34xYD/WNfJI2N3POiXfCKrOPdwZRXbLDb7GzjDMFoMeJAnJoaVAArFO
	DWYCiL5BHZwcNO9fTGOwbu6xYs8XnCRFysDG4JWkoq4x0pEwgzbFhqjdJW64U9q0tDYkv1z+MzzPP
	f6L5LWgPp00DFC2QUpd+qnVGlNg9/X5lreyHrczuo/ubMNi4tIN8JJ1OEeXZWMn25g2vLRTPNCU38
	XIqv2X/xfJ67ffYS/b4AmZvd2dMebgX61vmbRbfKpBsU3kp1qMzd/KOwyf6Et2DxHgFGOkJSNVE3G
	knXlkFAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i19Ka-0006V0-7r; Fri, 23 Aug 2019 13:10:16 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i19Jx-00055l-J2; Fri, 23 Aug 2019 13:09:39 +0000
Received: by mail-wr1-x444.google.com with SMTP id b16so8575036wrq.9;
 Fri, 23 Aug 2019 06:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MRgcnuzG2I8lDuGL1jMNsqN/KgyJ2300oOMbrHcQPAk=;
 b=UqHtalEMPEp3cSm+E2tTMndX4iPSkrW7CknIbiyhI7JRQv9rH2Rk6ZpoWDasM7bS2g
 fbDOBgLxD04GDfGsaEYGYZlE/IZ8DYSS6DBuV1m2s2LXImC2UdQsCWbLJIaTrvGjaLoe
 uobQ55c5l9XrUmvtrySAQlGTinrOQkwxVfrwn+4XNsgGfs3zGmgpNUzF9jACZP7jgiWV
 HC/GR8yzSH5Vg8rIiGgiPeYjFhkrMgMvKn4I7US4uWTmDsYJ7qJytWAInzN7TQhwiFDx
 wdklaIoI8CPt0zCZ/dt5yxrRe/WnsDcBxZe1HRcb/KqxaE4EoAZtJpO3FC1igcKlM9ul
 mnKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MRgcnuzG2I8lDuGL1jMNsqN/KgyJ2300oOMbrHcQPAk=;
 b=C/0bmMjR29eRW7oK8nHeguUiNKL6tvizj5XH4u0QG7qrzihc/kuvqzQPpdn0b4ETvO
 SEGlw7Ngkl7eR4HzoiGG8K3iP6QL9iJuLMcoTFNNjH7h9qzbdO1Xyog/AtXT1PpFqzdl
 TLCeN3hNZUhMx0k8t7Ta8gXt1vWQoO+XMEPr4Ctw+7r9Aoq8eY0Nw9q9ilLJobEkqk0P
 BV0NNt3xozwIeoAz4qZDBOom3wzkpk5U0QnxFkvrUkSh4uLrTHjnh0VmbN1UeC6OL09A
 OXfSFkwyfNmuaBUSF4VNSRywtOuB5nCoZWFhAvmRBEtEwOYKd1VmVyYKqznntmlAIAed
 /dtg==
X-Gm-Message-State: APjAAAVCdfV3QjmF4ZWvyaO+y4eSlmk6WeRhYvkcV8+oFzisRLguuh8u
 2j6KUQNiYAyIfKy2SCexkSY=
X-Google-Smtp-Source: APXvYqxcQ+4cLIrzVciiwjDYzpbA9TaWEp26IDcmHpMs2V3goBt61z+hwndHALj9mnOCwTB+n0vPPw==
X-Received: by 2002:adf:a55d:: with SMTP id j29mr4849842wrb.275.1566565774269; 
 Fri, 23 Aug 2019 06:09:34 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id m7sm4359854wmi.18.2019.08.23.06.09.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 23 Aug 2019 06:09:33 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: arm: amlogic: Add support for the Ugoos AM6
Date: Fri, 23 Aug 2019 17:08:36 +0400
Message-Id: <1566565717-5182-3-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566565717-5182-1-git-send-email-christianshewitt@gmail.com>
References: <1566565717-5182-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_060937_659989_C24C7CBD 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Oleg Ivanov <balbes-150@yandex.ru>,
 Chrisitian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Ugoos AM6 is based on the Amlogic W400 reference design using the S922X
chipset. Hardware specifications:

- 2GB LPDDR4 RAM
- 16GB eMMC storage
- 10/100/1000 Base-T Ethernet using External RGMII PHY
- 802.11 a/b/g/b/ac + BT 5.0 sdio wireless (Ampak 6398S)
- HDMI 2.0 (4k@60p) video
- Composite video + 2-channel audio output on 3.5mm jack
- S/PDIF audio output
- Aux input
- 1x USB 3.0
- 3x USB 2.0
- 1x micro SD card slot

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 325c6fd..2ded61d 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -139,6 +139,7 @@ properties:
         items:
           - enum:
               - hardkernel,odroid-n2
+              - ugoos,am6
           - const: amlogic,g12b
 
 ...
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
