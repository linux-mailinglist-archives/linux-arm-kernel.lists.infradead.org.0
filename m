Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B5D175713
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 10:28:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HkB3KsxMmaX217DdAde2Ka8haJl+mS1E118XXnJ7jlI=; b=QCS42kmCya9sO5voXoN6cDpDAJ
	YZOcUU0TJpiJhY+iG2EwgFiylqieMElZBeON2NaH1grq5dJWgS920UGRChzOFHVqpr9HvQxthYfi7
	xpMGcg1939zGoIN/1xoRYoZQ+Oo1H74MCinzfJeByr7J4/a08XUShqEuye9/jmonCJyV4PvcY3cIV
	BechDnFcuRnoO84mslVVIigRwRZwlFCmbdrmqumfFaYoubYRyR2whM1wp5ipsdelaZ3E/Crz96c17
	usY4oOPkee3uoaJokeH0Xhvfx5tBmIIQ5KoSfgc7+lX+chq+c7LlU+DgBCM+R62nVlG/OHwPKllqb
	PStuh7yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8hNb-0006gA-Ea; Mon, 02 Mar 2020 09:28:51 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8hMy-00066q-A3; Mon, 02 Mar 2020 09:28:13 +0000
Received: by mail-wr1-x444.google.com with SMTP id j16so11614533wrt.3;
 Mon, 02 Mar 2020 01:28:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JT9LGJ3nprOFd57YdHFTo6kmk4rD0oOGffgTW8cRvZI=;
 b=GjhnHUAs17IpwhpIp4EZFaFCjGdIMvqXOl3gcf0RMYe3UkTvWSpAM2NPK9wbb7+qzg
 +ru36XkESaCNdY3Po6JQvG2rFJssKOi1GQYirmXNjKqntHvOAdLzqoqsMPJVASt2mY0L
 Gk3yHOlg6JZXifIic6opV9dIFOimFgGi/YT1tW4+UxB9DgRrUIE/9SH4KAp2tGfR/HXO
 MfFXTMG2DFuLXzDQn6kFdf1GUcM6EpEkbRJZnvuj8/6SC1uSr6w2TDs2b1gl6JeHaw6i
 v2wowbsg+sPT5wAmlWnpwbxKEaG0kDPJgNszXWP0roOi9K+H95ibCVtCeqWjO8LGHLc5
 D2HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JT9LGJ3nprOFd57YdHFTo6kmk4rD0oOGffgTW8cRvZI=;
 b=WvgEV2OcnmwLm5OvNH7tmvYLpTvwaCvDVGuqUv1n9NoguHXZx+aI8BYW8OFF8fbMOO
 zvMsl1DM7ytOLbzwhI6JwTEMUWA9kxTSZ4YWIfSzc10PUvyVz8DRQhX1BdmAa7Yf97u1
 RnYNngZjUhpoVSu7OgYN72K95KZG7/rDF3MSW4rJjaM9LstbjEAp6gQNW2S5x82Mf/QH
 Md8kXkYJJA3V9/yB/7Wv9jKgoM7QTBBYHmO16ZKaUt8WUCgGhvk4VncCx2rvakTRuiVE
 Xb/8yJyg04aDNl95eFVs4PFAOhD9u83oq0O+nnGStSORkC3fVLh7Mrh27Ch3dsJSS2a0
 Ukxw==
X-Gm-Message-State: APjAAAX0wq0JuVvTnbPi/5B190lbxCR3BHm4h4vSjuLkmH6G94jrjKh1
 SanXNzAxBPlH72TXE0NtpHU=
X-Google-Smtp-Source: APXvYqzL+2Y04yOkKtalVlUtycPgO8/i1gUbA2dSLsaEONtKnP6nRDz3qDuKl9EaY2YE+bZHdqN2KA==
X-Received: by 2002:adf:dd05:: with SMTP id a5mr21467583wrm.108.1583141289113; 
 Mon, 02 Mar 2020 01:28:09 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id m3sm6409586wrx.9.2020.03.02.01.28.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Mar 2020 01:28:08 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 3/3] arm64: dts: rockchip: fix compatible property for
 rk3399-evb
Date: Mon,  2 Mar 2020 10:27:59 +0100
Message-Id: <20200302092759.3291-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200302092759.3291-1-jbx6244@gmail.com>
References: <20200302092759.3291-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_012812_390020_11BDC706 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

arch/arm64/boot/dts/rockchip/rk3399-evb.dt.yaml: /: compatible:
['rockchip,rk3399-evb', 'rockchip,rk3399', 'google,rk3399evb-rev2']
is not valid under any of the given schemas

'google,rk3399evb-rev2' was a no longer used variant for Google.
The binding only mentions 'rockchip,rk3399-evb', 'rockchip,rk3399',
so fix this error by removing 'google,rk3399evb-rev2' from
the compatible property in rk3399-evb.dts and change it into
generic rk3399-evb support only.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/rockchip.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-evb.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
index 77008dca4..d1afd1e1d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
@@ -9,8 +9,7 @@
 
 / {
 	model = "Rockchip RK3399 Evaluation Board";
-	compatible = "rockchip,rk3399-evb", "rockchip,rk3399",
-		     "google,rk3399evb-rev2";
+	compatible = "rockchip,rk3399-evb", "rockchip,rk3399";
 
 	backlight: backlight {
 		compatible = "pwm-backlight";
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
