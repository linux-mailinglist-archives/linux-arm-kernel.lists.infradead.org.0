Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8161759E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 12:58:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zjvgSGkGnnmFsmHF/3oe9d+yOdXq9E+4p045GoCIu4M=; b=WuB
	rtvC6d5xIBIPJ2H/eGtnRyR8clXoTOKNOQjhygLnqEUEQXTJ3wCz5P8MrIZnmliehQFGDnub1/BGu
	utFO28Qzs3l5g/d5oQtXTbP4P0vJqOcWpxMU+W/yzL0cOOwVheL4qa0aa/TyvXKFD4zrRNjp/45ub
	c3oeq7kUY0sC4tRT/Z9DxiC5G4qINcLcWQM3KZqyGa814ctGGz5qknGjCAQKF5frSbD0D5BYVA0CN
	idcWCafUPXM8mTRiwGrejqCNZYAkxvh2WnVeajddr+TcKNqUk8Co2Ky22Ff6jNVmdwV5SuKAoTApr
	G1lQ1ssuvTrkQnruvlC1N+4RRx0sneQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8jiQ-00052W-NG; Mon, 02 Mar 2020 11:58:30 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8jiK-00051M-0E; Mon, 02 Mar 2020 11:58:26 +0000
Received: by mail-wm1-x344.google.com with SMTP id a132so857671wme.1;
 Mon, 02 Mar 2020 03:58:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=+bOUkmuWmtrqLnmLhYcvBOjbDQxV1smzTu5vD7lLcDs=;
 b=sIzU5chb1GcVyQMtdhpn+YMKLwGB4nwgzWG4cTyD3MtUUTWThAccAtZgHBK2bvUasL
 R8Hbv6HtwejqQMuIQi1wfxlo+0bbSQMujWY58KyK2vyrPX1EdzYoYeRqnl+DsVKoNA2C
 gSFJd6WZtAo9jY3QDaXyVqLy7c/Lv7fjjA9lvu5SW03q6BkHXwJHqyaVkNm0G2zAvLSl
 TV5XCTgdRZ+MmZ/ZSS4mpaJx0+XPiVaeefJpxE/HbeQxRcZIqBQqzkDSGr2kFHMVBrVO
 TJ7LFy6gPcbPwtgaZ0LYmKTWqjRy4xVmEQGD7+FSkHJR37xQGgBwRKT4hgFWeRd7hKoY
 P5eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=+bOUkmuWmtrqLnmLhYcvBOjbDQxV1smzTu5vD7lLcDs=;
 b=Bz5L4jaDH1K7EQqCZJIe651i4/3F2qM607PvJjH4xf/SVikl/4Cafc0Qtjb9cVD/BZ
 WIfrVOQE3U+6nGKL8NPiorLVIJc4D4bT9gms1182TOQ+CyZmPXUa/Zjr3uJ2B7WV+J9m
 lJaJtyDn+0vMupdP+O7Fea3tw+fJDhNZg5erIKhyfgeIM2MPpY0BzGWYf0YDtZpQM5d6
 fLotbuiJ7JvScHdGQvPX51Elczy30aO4QH2czHN0YAeveH186M6DVR2oCvcqMTwPzXCP
 8b8DVDdLVvAn0h9WGjKkzqMZkIvtOqm/InBBojQ3anVlvz8C/JqfymrHHfFkYmc9eDpj
 akvw==
X-Gm-Message-State: APjAAAVArTO+wCMaxt0pn3qHR68mRjjkjWrDPREJWDUwsh/IkPnR5bUb
 1qkyRdZ9cLOhn/A9amuLESI=
X-Google-Smtp-Source: APXvYqwn+pGS0GpOR51cYA0edtXDgnNHd3aAxUL57dOeGCuHOdepkQXfPsdL9BGqEiQLUUFCtRYQZQ==
X-Received: by 2002:a1c:a502:: with SMTP id o2mr12079496wme.94.1583150299586; 
 Mon, 02 Mar 2020 03:58:19 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id o16sm12653303wrj.5.2020.03.02.03.58.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Mar 2020 03:58:19 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 1/2] dt-bindings: usb: dwc2: add compatible property for
 rk3328 usb
Date: Mon,  2 Mar 2020 12:58:11 +0100
Message-Id: <20200302115812.7207-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_035824_874722_02A499F8 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives these errors:

arch/arm64/boot/dts/rockchip/rk3328-a1.dt.yaml: usb@ff580000: compatible:
['rockchip,rk3328-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
is not valid under any of the given schemas
arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: usb@ff580000: compatible:
['rockchip,rk3328-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
is not valid under any of the given schemas
arch/arm64/boot/dts/rockchip/rk3328-rock64.dt.yaml: usb@ff580000: compatible:
['rockchip,rk3328-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
is not valid under any of the given schemas
arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dt.yaml: usb@ff580000: compatible:
['rockchip,rk3328-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
is not valid under any of the given schemas

The compatible property for rk3328 dwc2 usb was somehow never added to
the documention. Fix this error by adding
'rockchip,rk3328-usb', 'rockchip,rk3066-usb', 'snps,dwc2'
to dwc2.yaml.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/dwc2.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/usb/dwc2.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml b/Documentation/devicetree/bindings/usb/dwc2.yaml
index e95ba9373..e9f4cea21 100644
--- a/Documentation/devicetree/bindings/usb/dwc2.yaml
+++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
@@ -41,6 +41,10 @@ properties:
           - const: rockchip,rk3288-usb
           - const: rockchip,rk3066-usb
           - const: snps,dwc2
+      - items:
+          - const: rockchip,rk3328-usb
+          - const: rockchip,rk3066-usb
+          - const: snps,dwc2
       - const: lantiq,arx100-usb
       - const: lantiq,xrx200-usb
       - items:
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
