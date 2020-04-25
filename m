Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A6F1B87FC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 19:09:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=t0X/OZnUw2O1SLvXyYyHPOEE2fxuBbDAL1WEg1DSAf0=; b=WB/
	VwDXVhxDY4f24hDviMKaFshDJfQintJXGeqV78n0ONxvfha/GNWg76DlmztxbzpJS+0ZrsTx7kE6/
	5Hxf9OTHFgzng/EgmymwJ4qrYaGI0Zd/CR+FiGzihaQUh82LojrdJFG/jRP13ts/W0i+kjiL4S7wt
	cNaSx7oFMQ+f3gQw94/Alln9XbA2CAZcjStULuk5aagvWymL4duF+R2Sa3fZVAmX7c2RlY4vTP0tX
	jR43joypVB8GA8XR9/+ZBKmvBMpujRnUG863CVGQnO1uz/giXAEMjUpexFURT4n4R6DAXNtmeo/sV
	x2CQKe7DIjiIOEQR9SFp2iz22bQ3DUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSOIP-0001AI-R2; Sat, 25 Apr 2020 17:08:53 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSOIF-00018c-PQ; Sat, 25 Apr 2020 17:08:45 +0000
Received: by mail-wm1-x343.google.com with SMTP id u127so15384033wmg.1;
 Sat, 25 Apr 2020 10:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=O1616GdJZQwMAYCstXMQMO+mfdnUnYcAiAdqWMQMdCk=;
 b=j4JzYTSp3PtLbLbdxcMK87wTyBA+cZ9QfDr8XV3TqsDzR2+kzS0Thq0j4qF6+KhnwD
 IxkXuVSgY+8xgG+zJPuIeQg4Z2vDQiIT8YdYB8qJCICmhw2XZJgLGhC8pW2KTQ30UnvX
 hSicDM9OkRCqIoKETGn428fQxa/T6bS2DIHZvssE6ZumH4i8Qg/36eFvQceQJw1BS5dQ
 RFxaawFiG8yK71Ig4F793o4iV8/Gf3F3o6tzuYu/7YvWSp++XqnqLyQlQpX4vuFJm/Ik
 8PXvxpO4gXICnXdJN3zj8WK9i2ilkslQMO1i5n8tGbhl6IEiKWi/pGD33gsrMe960Bv0
 qVjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=O1616GdJZQwMAYCstXMQMO+mfdnUnYcAiAdqWMQMdCk=;
 b=c4YVAKIRy+r/rxUNy+Zu6FHUNyeDulrNrIFC51/1uPN8AkG62r2rFpXPTz3mh2AhiK
 S6MgXA68e5sHNwhhP8A5OafRunYREke70XdDI6sN3v8smBcxxT7qMhAf5wSLVdnsfM4e
 XI0nVLk4Lj8QW8+WQg/mClrnjL+Un7rgQQv4O+ZcPpRl2xctorfU+cp20eZy4/hcQ4Xf
 wSibeqmY6rvMRT2zY0Wukt8nb2r27a0hbbjf9Fr9qtK/V1W5+4OTc6e4s+Wdhw3oNfXF
 s4n7abQJxPuWD5ViTIXlS0pr3OutPnm8ZQiQ0AaKkTMZLy9HiqwdMf6khC0V8MMLYwGY
 oDeg==
X-Gm-Message-State: AGi0PubKMitT8IA/jylnDQ1Cr3auhEzWmG94iaLkHYrFis0ymvVYc8RM
 iVqh5bfgu3TDAyowqfdyGmE=
X-Google-Smtp-Source: APiQypJ0HdhWPnrZxWn5tl/nMOJwIvph3SNIW4dQKPyjSEoo+S9vKcobegz/uTrZe6sqeXJ61115cA==
X-Received: by 2002:a1c:9d84:: with SMTP id
 g126mr15715568wme.184.1587834520927; 
 Sat, 25 Apr 2020 10:08:40 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id t67sm8549717wmg.40.2020.04.25.10.08.39
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 Apr 2020 10:08:40 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] dt-bindings: usb: dwc2: add power-domains property
Date: Sat, 25 Apr 2020 19:08:33 +0200
Message-Id: <20200425170833.26718-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_100843_863947_6292D751 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives this error:

arch/arm64/boot/dts/rockchip/px30-evb.dt.yaml: usb@ff300000:
'power-domains' does not match any of the regexes: 'pinctrl-[0-9]+'

With the conversion to yaml it also filters things
in a node that are used by other drivers like
'power-domains' for Rockchip px30 usb nodes,
so add them to 'dwc2.yaml'.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/dwc2.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/usb/dwc2.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml b/Documentation/devicetree/bindings/usb/dwc2.yaml
index fb2f62aef..9352a8ef6 100644
--- a/Documentation/devicetree/bindings/usb/dwc2.yaml
+++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
@@ -78,6 +78,9 @@ properties:
   phy-names:
     const: usb2-phy
 
+  power-domains:
+    maxItems: 1
+
   vbus-supply:
     description: reference to the VBUS regulator. Depending on the current mode
       this is enabled (in "host" mode") or disabled (in "peripheral" mode). The
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
