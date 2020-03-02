Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9489175712
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 10:28:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=J66J2NSojV0DWghqEYQ5uCvpW2FsDMp1Xj+iqRAQAFs=; b=fk8
	0OSwLRj5aCqAd9njjJVWsDKi2cPVhmwwkn+C0qCYqBwosfgynTraEF4sI22895wqDiKAlvY0bzJZr
	LSA5f7pJkdPmj5GqDs/QrR0VRXzR0rd07iQF2nK5d1uLgkaIBIwoTHM/s5HQfpkPgNCGbl3BmGchA
	00vLYQzDh8eYsYLCFwFff33AY5PKyo39vYG7RvDOJkAP1shZ2XzxnRm8VmDCbH0Ak73i7p21TSWWm
	YRjqzgk4dIXRmbf+R/p62bZInTxRvE+e2MJGUMOq/pTIB9uI7oxazKaDrGNwZeRjlpBQgHVF5TRh0
	hI4tvX1fKoYR1F54sr+zufWil+cKc5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8hNI-0006HH-9g; Mon, 02 Mar 2020 09:28:32 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8hMw-00066h-5D; Mon, 02 Mar 2020 09:28:11 +0000
Received: by mail-wm1-x341.google.com with SMTP id f15so10217930wml.3;
 Mon, 02 Mar 2020 01:28:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=sR0FhEsXSKCCDrYRRwKUYpG9davzGH2FG45Vb4rPVY0=;
 b=pe2NDbzEDUeJVBuGPCC0zHwwRrT2VgikGLIph0jn/amj7jKusxj8bBgx6xhWEh6+ys
 Dln/FDJbTM2pAwgFnMu6mLaqxZhH0Yf5kWOKxv9iy+uma5UlYkOXrR22t6SwSiz9YmFV
 UE/qvfBMjf/GMqsq0UAB87X4ysYD5sCn6f7kLR8Wz+sJUEB7wB3a2kZsp4aVYOKe2Mx+
 p5t+Ma3TwPiW0J+Rm0rW6VJbOf5DkjNDnF31IJeIgEvLUjH9qjyl3oJad8gznYQCXP5i
 rBYftUrErtUSpYZCizAtnye+vXYI7TIWm/UMZe4G2vT6nC3rxFIUAa5fSrjSc0zuAqjg
 9s6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=sR0FhEsXSKCCDrYRRwKUYpG9davzGH2FG45Vb4rPVY0=;
 b=R/lTk7IUGti+ij771cs3SVBY+C/bHDoWExm4nY4RVPFYC2GeOkUSFQh0ET02V/aTtY
 mm+7xp4XsH11t8aNudaBaqNTs/pQvCk4Muz9uI7qORNiRaghKe255LNPyCrEuFXDcYlk
 N0pf6+hld8KC+CUR752a7t99jVRS+fHh4XZ86qy/4XMCMyYtSjpzIAw2Rb2GeaT/wVB9
 zdsuaDTXKOSIJv8vsKC/EArLUe+F44Iy0L18BvGjy6w6luTqNxvaDFodmwDwdr+DqPen
 Hzffdr9KrjnFYzS5yyQhFMhmn08dMyLUhuTRqg5UjYhnNDYcaXsvL5U0EYITOO/D3ttt
 g8Iw==
X-Gm-Message-State: APjAAAU1OCl6NYgEV4hMa8tRZYkhyr6k6tnIBjB2bdqUkw9YftMifFdh
 4ecX7HqoMjwVSXan2sC8Duna/gcr
X-Google-Smtp-Source: APXvYqy8B+IgcMqy+8qba2hEueNLMFC5ir1xC35q040W4SL8MWxcVg98fLxouNiejPKaNx3J23vsNw==
X-Received: by 2002:a1c:7419:: with SMTP id p25mr18094748wmc.129.1583141287239; 
 Mon, 02 Mar 2020 01:28:07 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id m3sm6409586wrx.9.2020.03.02.01.28.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Mar 2020 01:28:06 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 1/3] dt-bindings: arm: fix Rockchip Kylin board bindings
Date: Mon,  2 Mar 2020 10:27:57 +0100
Message-Id: <20200302092759.3291-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_012810_195532_0BE32E72 
X-CRM114-Status: GOOD (  12.35  )
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
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

A test with the command below gives this error:

arch/arm/boot/dts/rk3036-kylin.dt.yaml: /: compatible:
['rockchip,rk3036-kylin', 'rockchip,rk3036']
is not valid under any of the given schemas

Normally the dt-binding is the authoritative part, so boards should follow
the binding, but in the kylin-case the compatible from the .dts is used for
years in the field now, so fix the binding, as otherwise
we would break old users.

Fix this error by changing 'rockchip,kylin-rk3036' to
'rockchip,rk3036-kylin' in rockchip.yaml.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/rockchip.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 874b0eaa2..203158038 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -443,7 +443,7 @@ properties:
 
       - description: Rockchip Kylin
         items:
-          - const: rockchip,kylin-rk3036
+          - const: rockchip,rk3036-kylin
           - const: rockchip,rk3036
 
       - description: Rockchip PX3 Evaluation board
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
