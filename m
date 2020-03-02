Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F83E1759E1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 12:58:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AZ+opMNKX+SKDssQKCdmq8RBp3PaBI+vKWG3aq7nZ8s=; b=RGac0uYyHIaKMu+3/62pK5bmvI
	H31HpbDWenSbGc5VyesC3fr1SRvpg7gdEUJsgZorNkG63hz9+HzJjg71WK1eIjedOkF3Zkx3iwNGj
	B9YwEdSJNW+qpF+gvNHZSu/A45xU0Ot/Yz2kgL56O2cB3A1YEytz5ESdFrxcDbqWjxeBAXIWcJeqm
	8r2Z4JwUhbBW+ZUYC1mmAtKOc6DtBn5JuALdcz1lVUQ4VTJo1MeWyprEVK+jU3TqHVnsAPLcBDve9
	sy5dyYj1XhYYXzBZ1vz8lM5TDal9HoSc/biioRZVpNvWVSpZa1N+tDgzIpeAgUfH6UGQLEpsmfzWS
	nWJa5XjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8jig-000595-Ue; Mon, 02 Mar 2020 11:58:46 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8jiK-00051L-0K; Mon, 02 Mar 2020 11:58:26 +0000
Received: by mail-wm1-x344.google.com with SMTP id a25so2375571wmm.0;
 Mon, 02 Mar 2020 03:58:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=iflJIvqjKSNmZN001KRyauVV1RXmgC8qmOhi3NV99NM=;
 b=ezO+T8QRjR4ODnmGvsIE0lrcK6rPy0G8gECUFGVgsrkx9JZfsEO7a1N/l0qa1g3+3p
 n9fZhznzVJPWvdHdzTKWt4uKBQTOsdfsAOso0ewM9QgdzzEMceDBMZsX826sdfKXe8ZG
 B0aBxChJaMHAsWd1ZQ9PD6AajioSEiqiT+OPFhIXg5ikIs5Hf9K+OljC6iNLuYcyYOdU
 rs66rtLbIgtaBWhiSmd6Bxd8LD5D/FBkgec5bocLw+MQ/kOHyMp0+yqKdGL3qZA+bNkv
 8b8lTMr+fkYRhnAhL7lb5Qx3cI1OsfiGnIUStELGJr7jdeLSbvQIDJaOZtftoP+b26pI
 U24g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=iflJIvqjKSNmZN001KRyauVV1RXmgC8qmOhi3NV99NM=;
 b=snXjJhQGMjXc5t/I4hCoy3SkguGMZUldd2JB2nw3iPJBjJOMgn+gV9zde1jWKWXbBz
 RuUeZrqjWZHYFkmuC4PAb0rA6SBaNr23XWvCloveybufxzeFpgHVvHWYcg2+d3/FU+V1
 6GwP5b3vbXVSFdtn6YLCs/dzIkasZGiwyntEtRf9FEx+/uFFaqtTKGE1zNyPogbQV3cy
 9tLY4WNiQtzQAJ8CApqBjTU0r22Hw9b6bjXpiDFl2XPy7vJYL1wZ0ltVz8v8Syzvw49d
 BDNLdcjVuKMxJ1bN6A9rUsGSf+b6fvsjtM+lZBFX6vt2EWH6xz3NPs/WLm2ADAh/T26Y
 Qonw==
X-Gm-Message-State: ANhLgQ2fxfYjCmCigEZ/jdQf04zjIg2NmDbt8qF0FF4Eu7yrDeoqUl2p
 NuSmGO8jkYBCYBguo8zspnw=
X-Google-Smtp-Source: ADFU+vuOFSIJepvCdWl91GQTBHdvvIeCtHEsEkk20T6cmsn+Xd75wm81zY1l1J8AeghRp+J1fjLtQQ==
X-Received: by 2002:a1c:9d0d:: with SMTP id g13mr5238660wme.111.1583150300592; 
 Mon, 02 Mar 2020 03:58:20 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id o16sm12653303wrj.5.2020.03.02.03.58.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Mar 2020 03:58:20 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 2/2] dt-bindings: usb: dwc2: add compatible property for
 rk3368 usb
Date: Mon,  2 Mar 2020 12:58:12 +0100
Message-Id: <20200302115812.7207-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200302115812.7207-1-jbx6244@gmail.com>
References: <20200302115812.7207-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_035824_874687_BC5156C7 
X-CRM114-Status: GOOD (  10.79  )
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

arch/arm64/boot/dts/rockchip/rk3368-evb-act8846.dt.yaml: usb@ff580000: compatible:
['rockchip,rk3368-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
is not valid under any of the given schemas
arch/arm64/boot/dts/rockchip/rk3368-geekbox.dt.yaml: usb@ff580000: compatible:
['rockchip,rk3368-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
is not valid under any of the given schemas
arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dt.yaml: usb@ff580000: compatible:
['rockchip,rk3368-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
is not valid under any of the given schemas
arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dt.yaml: usb@ff580000: compatible:
['rockchip,rk3368-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
is not valid under any of the given schemas
arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dt.yaml: usb@ff580000: compatible:
['rockchip,rk3368-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
is not valid under any of the given schemas
arch/arm64/boot/dts/rockchip/rk3368-r88.dt.yaml: usb@ff580000: compatible:
['rockchip,rk3368-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
is not valid under any of the given schemas

The compatible property for rk3368 dwc2 usb was somehow never added to
the documention. Fix this error by adding
'rockchip,rk3368-usb', 'rockchip,rk3066-usb', 'snps,dwc2'
to dwc2.yaml.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/dwc2.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/usb/dwc2.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml b/Documentation/devicetree/bindings/usb/dwc2.yaml
index e9f4cea21..14aeb67e8 100644
--- a/Documentation/devicetree/bindings/usb/dwc2.yaml
+++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
@@ -45,6 +45,10 @@ properties:
           - const: rockchip,rk3328-usb
           - const: rockchip,rk3066-usb
           - const: snps,dwc2
+      - items:
+          - const: rockchip,rk3368-usb
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
