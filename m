Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D99016595C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 09:37:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iKBSJtCmgrDjmq82/3z3yJxXg8fJooLyEIEj/J4Gp0Y=; b=VpUdZKyb+EHkvZ
	ZSZg79PP+O39Po8Erby/lK8Wlk21eTsIdnF11IXVSInvtI70YnZRsVoYWeePP2Z5gwumAOXRcSwiz
	ESsYnAVeSHc1eogHo9UrxhaBjMAt148DYJv1ibBkoWX2GFA5MG/+1jPh0VDMf6IDSfUdzjzBzOEH1
	e2OSy63ADpp5+R3GCl5QdKb11CKZWactusgfI/XX9xUKK80zqQRrrHa5c4tocbP2el8bfav6izQ3+
	HF+MxWFU+kN4MgnajN+vEzUuUTZ/PP1r+aKIs+I8CouR61SJYpK2KjWU7aOWzIFGBC0hErxfZuzmQ
	jyD9QJN51vdhXp08erVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4hKS-00014m-ME; Thu, 20 Feb 2020 08:37:04 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4hJO-0000DC-2I
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 08:35:59 +0000
Received: by mail-pj1-x1043.google.com with SMTP id r67so583115pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 00:35:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ijTyB6ZR5pfL9IN/EaJ22u7Sp0djdDBIhKNgT7JvipY=;
 b=b3u9Ja078tSmcCLcfoMQJDexdgyH/UZUnFYqU4ZxbLy6czS/yTF/tJ2B8Yy102S8sN
 U35/QiLltRKbOx17qqhB/GkFDaJejvf4ImYkPJ25DMx7AXr1DiGNp1qeccXsGpTmPjUP
 L6keUCh/INygIGP1TJB5/Vo/Z7pz9epIu2+IHkFdNt/rgqueYxtm0/ZTVnAUYhoJH5Ha
 TOH7wvgMIqCYUNxrwLgoS2ReFdCSfBx6ddtW3rxgGGCW7Yyz+sfheNQqlsYX0SgdP2Ud
 3/xrhFyrS6DTh24Z7fd2eRhzaA2g/EzfPLcCqvIVOr3owpGad3Hza66L98rZlOmnSkND
 k14g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ijTyB6ZR5pfL9IN/EaJ22u7Sp0djdDBIhKNgT7JvipY=;
 b=o5gGGEJF2v4nV14ZLEykeE8A/cNhzKyrUdDRS4TGZlsv4GASkI0N3VN2j4RLQ7RiZj
 64FqWJnUqvXeQ9/SXJGpucogL7tPmUBgnHR2KvI2Zk56uH/X1y4GDa86G0JZedEVj5sr
 HayDgWUxe7CspW2nYlyOR/rdeRsCFmVNDzv4g294hQBRX7ZE/2Gwclpu+ruycVFKfC2P
 FRIWmYo3guR1OYAUozGqL/9lgwY4qAarOrpIGYDlOPJvdlSEJquY7cPc0B8Jof565RI3
 lZIkG2D01MxGgxVTHqC0y3EOBjHsomdM5P+K8g55OYq/rCTTsk1RSjwd/DGKg8PpbxPg
 0uag==
X-Gm-Message-State: APjAAAUMs4M0VZ4LWFENERE3pixDIzZKUbk0dXFhDEHImvlz4vPE2ZHl
 yt8qb+60avKGxIhB4eDKb4E=
X-Google-Smtp-Source: APXvYqx+XcOfE7rl34bx8Kj5W10tYHXxB9gA64KZqWfc1a/TzGmCwogwaY6RZV8h7YFo8hBwokFMIQ==
X-Received: by 2002:a17:90a:b381:: with SMTP id
 e1mr2289733pjr.38.1582187757461; 
 Thu, 20 Feb 2020 00:35:57 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id l13sm2319038pjq.23.2020.02.20.00.35.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 00:35:57 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime@cerno.tech>, Chen-Yu Tsai <wens@csie.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Icenowy Zheng <icenowy@aosc.io>, Torsten Duwe <duwe@suse.de>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Stephan Gerhold <stephan@gerhold.net>, Mark Brown <broonie@kernel.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Samuel Holland <samuel@sholland.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/6] dt-bindings: display: simple: Add NewEast Optoelectronics
 WJFH116008A compatible
Date: Thu, 20 Feb 2020 00:35:06 -0800
Message-Id: <20200220083508.792071-5-anarsoul@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200220083508.792071-1-anarsoul@gmail.com>
References: <20200220083508.792071-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_003558_111382_4168167E 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [anarsoul[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit adds compatible for NewEast Optoelectronics WJFH116008A panel
to panel-simple binding

Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 8fe60ee2531c..721de94cc80a 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -43,6 +43,8 @@ properties:
       - satoz,sat050at40h12r2
         # Sharp LS020B1DD01D 2.0" HQVGA TFT LCD panel
       - sharp,ls020b1dd01d
+        # NewEast Optoelectronics CO., LTD WJFH116008A eDP TFT LCD panel
+      - neweast,wjfh116008a
 
   backlight: true
   enable-gpios: true
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
