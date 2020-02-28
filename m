Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 423F1173C42
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 16:54:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3hqWOclF+GtqM/08GhnyR60r3VHykb6iuoV2SBol8xA=; b=kLu
	AELUNLobefQcfzP1wfuLVYe/dIYkm7091NMvvnsgvv7dk4Notlve+epZ2t6j1VODWIGJewLcNE5S6
	kLU1HiqLya1kXnjUs06x3CaAEjpyDBaKbQps2ilVFdckmoklC/OZ5oPcZoB/OM7mzUjsXnSnOhMq/
	gp6hIeHrY2z200CuBoMiZdmTxkOTOhh+k3i74sJEs4jkMKpd7fJh3cXcha9JJwaWNaBd4PG13nDny
	ykQYQXeF0tqpWNUKClwB3oN2NJYrshYo0R5qhqnJCzs9oFsi4bUgSPr3L+Kfg8caFICNxew36aKiO
	zkBlS5nr0ekZ/nR5mgp58U/ElMA1yJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hyM-0003GF-6u; Fri, 28 Feb 2020 15:54:42 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hxm-0002lG-CL; Fri, 28 Feb 2020 15:54:07 +0000
Received: by mail-wm1-x341.google.com with SMTP id m3so3750736wmi.0;
 Fri, 28 Feb 2020 07:54:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=UnHHbDAdvtO8h9pXqYzVSvwO5cpEfaizem81sO0+IbY=;
 b=mwo5krf+TP5YBV5kCqHdALropR3rGAaQPQsSeAaFDvT2KfJzzpDpld41PsWOUPu9yR
 SfSsCCsqYezsVUy3MiyzNU/Bnv94YNEc7xPAbPYPs/ltISG4s48rOBM8Scuv7C0/X7Sl
 301ht93Ts+gu42aRFMDDqMLy5R6CcATxiv5ZM45/A3OunnWT1z0oajeks3rZWD758uJx
 4P0u/yGI/UKCdGERRsTcz0nA8T6lDz17A5YvFtVUqPbnxG2yVske1fPD0MHSvsuD+ph7
 MqFPm1AYZ7RAvPVoCGbVfkc6UWR61hqWTALElFQW9P+adRA/er6teHLTFkpo6EzFJrPX
 oPpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=UnHHbDAdvtO8h9pXqYzVSvwO5cpEfaizem81sO0+IbY=;
 b=qy5oXTP748LbbrI5TlHhvuKxvylTM0F4dfgtXvg6UO+idFeybDaJ0mocTvi/Yj/nPe
 bGDmfbhysoZkOeRqYJRkSzAtsHJ8WWh6MGeHFXIWPPyM/Ne+qkNHPl9paMq+alBdzJcH
 ur4yndY7Ru8LCqSbpDnrW6/QiSDCGe9M9eJhZegLjI7aJpBD7IHX/kGbkW8fLhv1lzaW
 EiipU0r3DU4ymcdf3+foYhJdlq9QN9z52W9o1FMCwSLpWw4TJEN5+juhY2Xae3RGAMQ7
 07QrFq6rP1MzV3g3E+fuYkrrJYXuLh3YxTkNW8jA3EPzXGNWbjmAxNzP+U3pe/5Tv9YD
 hiYw==
X-Gm-Message-State: APjAAAXwQmXuczGUfaGABOdVwv5aaGFF93kQDNEcFCc0PFoGRnffVROE
 MYE66trPBS8LaobqIuxbPEnWJ6i0
X-Google-Smtp-Source: APXvYqy6MHSQi7PXS4Pw8FIuZnkKbkV4byY5sYhJHmJnRPExf678SmIF2GPxvBOpO9OP9PzhBQTIKg==
X-Received: by 2002:a05:600c:414e:: with SMTP id
 h14mr5324321wmm.179.1582905242754; 
 Fri, 28 Feb 2020 07:54:02 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id m125sm2706605wmf.8.2020.02.28.07.54.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Feb 2020 07:54:02 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 1/3] ARM: dts: rockchip: add sram to bus_intmem nodename for
 rv1108
Date: Fri, 28 Feb 2020 16:53:52 +0100
Message-Id: <20200228155354.27206-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_075406_424026_675B07EA 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives these errors:

arch/arm/boot/dts/rv1108-elgin-r1.dt.yaml:
bus_intmem@10080000: $nodename:0: 'bus_intmem@10080000'
does not match '^sram(@.*)?'
arch/arm/boot/dts/rv1108-evb.dt.yaml:
bus_intmem@10080000: $nodename:0: 'bus_intmem@10080000'
does not match '^sram(@.*)?'

Fix this error by adding sram to the bus_intmem nodename
in rv1108.dtsi.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/sram/sram.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rv1108.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index 9bb109d66..c3621b3e6 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -102,7 +102,7 @@
 		};
 	};
 
-	bus_intmem@10080000 {
+	bus_intmem: sram@10080000 {
 		compatible = "mmio-sram";
 		reg = <0x10080000 0x2000>;
 		#address-cells = <1>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
