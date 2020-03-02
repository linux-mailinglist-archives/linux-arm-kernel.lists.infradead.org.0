Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69729175BE2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 14:39:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xAkF+yl+jj6BNMZSo4jfF4CtzjZRnu0eYfWTY8AXENs=; b=J8e
	sQGIzFVRQWeu1EXrQjydVjYRIEB619Gfwa5pkbFnoA9ru7s1QMsL9PqOqhovCxaVcHdJ6DCEg+Ax2
	WpoXUlL2oRpjK5EqRmKGR5/RAre1zt8zzTPgnKHEM4TAaZ9P4XOjGzUVFA/nRFfLTw54sH4KglCry
	oFQwuQeBExjg9+7ay/l7PBM4ATEiBeEPamv3dL672Gk+0FyC0DnTI+GYklUcizrQmvYo29WKYZeZW
	1HSOXaSZ1jqapa3tnGYJfn54QAUinNPLVS9nRzlRuNHS1+pd7JS/F8xlvuBK5sOzHVS1XJKGci1Ck
	rJWoqHfNxXvlleZnUaqmTYNDCYzEHIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8lID-0002QM-1o; Mon, 02 Mar 2020 13:39:33 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8lHz-0002Om-0B; Mon, 02 Mar 2020 13:39:20 +0000
Received: by mail-wr1-x442.google.com with SMTP id n7so4723054wrt.11;
 Mon, 02 Mar 2020 05:39:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=y30GtIKkLuXdZ608Vv+U7ffueQj6lNYrKY5cOlCGJWA=;
 b=CxQHiOKFe7ZzXJLcK5wp6OzvJvmZhhnV3uPVF6sEObJThCvTywHm8YZkYstRXorFtY
 7mU6xsDnjrR/6k3jR1AYFAQn5Uwiuja6zn8KU7YoC5n0uduGhqpcVvP2Dba76Ppwbi0R
 9NxBAMor0dOD2dR1HJ6BNmuB1cf3aFMAxmkufUXxY4h6g8i3JZFL4iHkMgrLS0SPMj/u
 WKUfh9XLzYr30ODN+dvZawdfLcFiFWe6OopI7ymd+ctdnc6NbgWiY1spwu2b0HLTrb9T
 DuBhLhtea87ZQc6j/cCB9rndfb3eZ4sJn+3jEY1kUuuWSdPlkM1oYNy/QWv/B6qhS8Lq
 926A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=y30GtIKkLuXdZ608Vv+U7ffueQj6lNYrKY5cOlCGJWA=;
 b=fLV0Rjct/svgzOeLbe9+UbTs5ldmUyx6/RYV5x9Q5bouet9Y62KQ7G5tvAywQkHArZ
 84iHvFpQ/l3HewgU6f5D/3QeDyrObUe3wZ/iu/hy7HmRP6A5TbFSCD6OoAZTedG+6Q1S
 9033q2rfQVX41I/QNBdam0pU8oj059icFo85yakVhhw89f7qxiUJ94mJgwi1ZnSXZmqC
 mr4yVymCuLM7oNsuQc0c7VZv6rLZ5bOpmxvMwfmDRBG103ZRpmCRdsdSByCorPX+FHI5
 RYgDxu1E/RggE+Z3JG32jF4bv0syNr4stkJ9NpSF0nN/Kj8DLADj+SuKzgTllQQaSd48
 nrTg==
X-Gm-Message-State: APjAAAWJ+2Plw8Di1X6rs5SL2D3l8WhJnBp1xl0/MkQVBq/XAVJyIxJb
 EWhSmhxrGrx5hY23nEuO4cs=
X-Google-Smtp-Source: APXvYqz0713bLlc6REVU5kywq15hHrHb7olDzMQo8OCB1Bf4rscbNsPKwBFQkUjKwLNK1Tn05DNDhg==
X-Received: by 2002:adf:de83:: with SMTP id w3mr22815692wrl.275.1583156357691; 
 Mon, 02 Mar 2020 05:39:17 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id j12sm28710917wrt.35.2020.03.02.05.39.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Mar 2020 05:39:17 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] dt-bindings: serial: snps-dw-apb-uart: add compatible
 property for rk3308 uart
Date: Mon,  2 Mar 2020 14:39:10 +0100
Message-Id: <20200302133910.10942-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_053919_072522_CFC5C814 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-serial@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives these errors:

arch/arm64/boot/dts/rockchip/rk3308-evb.dt.yaml: serial@ff0d0000: compatible:
['rockchip,rk3308-uart', 'snps,dw-apb-uart']
is not valid under any of the given schemas
arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dt.yaml: serial@ff0a0000: compatible:
['rockchip,rk3308-uart', 'snps,dw-apb-uart']
is not valid under any of the given schemas

The compatible property for the Rockchip rk3308 uart was somehow never
added to the documention. Fix this error by adding 'rockchip,rk3308-uart'
to snps-dw-apb-uart.yaml.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/serial/
snps-dw-apb-uart.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index b42002542..b962f8db4 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -27,6 +27,7 @@ properties:
               - rockchip,rk3066-uart
               - rockchip,rk3188-uart
               - rockchip,rk3288-uart
+              - rockchip,rk3308-uart
               - rockchip,rk3328-uart
               - rockchip,rk3368-uart
               - rockchip,rk3399-uart
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
