Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C480816595B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 09:37:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SoKO65qRK96m8ySSsFICAjufHpt3xyHsqgCRqEd6F0I=; b=ZfT+Wa8hteqqHI
	Sm+sKgTUCe9TWubOasU5PL8xdzCAxcPkrd/+H/VfvtI2XR0QAaiRTCpZdrDeHU8Y2nOsmihPLHiTa
	YAHB2XnCJ68tKDPWb7d2FRe/af+4MPypP2j7lC5bhia+ASJb0BNCzXB5PlpHwyVt2azIjXrZ2zXj4
	T2y9QuVwnrk9aOja6b9/NFt26NL7n9pACvAMXFeKRRhk0qyo/AwcTFvj0a6ezh246wHX9isgC75T3
	iMoh768+PGGuyVTEZkgMHqPgaTwzOo7VzYkGQFsv0CtBdEYYqaTXNceKAb3Qqe9AdlN8/XWcDbQ5f
	tzStrOnMegaABAH7l+Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4hKB-0000qp-UB; Thu, 20 Feb 2020 08:36:47 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4hJM-0000Ca-W6
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 08:35:58 +0000
Received: by mail-pj1-x1044.google.com with SMTP id n96so577066pjc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 00:35:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6yNbKzpeTLMCoypRqoVy0w4NUhztDzPf4ESyfJztWiY=;
 b=Xs6bb2CzAuqxLioQuMk3z0BoJURSkm/VFyMgk9MekRXbneDMAJLoLqZESX5gWejMsr
 Cu7uvtcGmvwcOVjgLW4vs2M/GRrVL+l7AfAYWZ/0Xpni1Z+vJn5DH72vdIhcfRiv98CM
 a0CUL5GVb9Mi1Ef9jPNFdQY7D5wyTTq0Ac42FR4kmum21oWkHRf4YVMGzG7T6ul1IEqW
 ZvKcVueUE7XXr7/C5jY6QTZZEBHSEw7TUfxdKoNmytHRRWBfGSmb/wUrF9hMiFY5fzBH
 Gcr++v6mKxXTsQ4RW6kPbt0XoggG3huxZOk6c/KuE/jt3PawEPB26YBYomLeWiw0zIdw
 ghAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6yNbKzpeTLMCoypRqoVy0w4NUhztDzPf4ESyfJztWiY=;
 b=hPExy40llMBBegtPZjIKCet71523ZIcJHYKGU3SGLoQBcLcDqP5z7t6Pahu6Mk5vbQ
 rN/KmJjBs1UkZKn0xn+kZLyxByk/VfdQqGRiV+Ru/8M5k7ha0agOJsCoQQw42yK4VM9s
 wo3H1fQYTaNKZ+TEFsYs3juD0aR/I8O4Vn6ZBIpn9T83Q2Hkz+IqFPbIBfUMZyxrStaT
 0q1aHGr7mJPJXkeux+bV9vG1vzhOYKae+NNIKnt2ZLHY59pbWre+a6ZAZlsCGzA2cJcc
 6RCXbGBM7D9sA4kMnQ0WorgM/AFvAAmpu9KvCpxQJtG8EmqjSPyQJoyvKKSErBSXTSFC
 bqsA==
X-Gm-Message-State: APjAAAXj1AA3OOY5Ob17GSPE9A1aUOnU6ALasCwSSkOgqbcF8eHBPWY7
 4HW6kpM2PhpkClTfGl6EAbQ=
X-Google-Smtp-Source: APXvYqwKXY5bZ3GJFQYNZpSue+9Mt0J+NmUuqTaB2YessGYgmYwqmvpscnAZijk3U3VpNUJFWCzGNw==
X-Received: by 2002:a17:90a:ba91:: with SMTP id
 t17mr2349862pjr.74.1582187756393; 
 Thu, 20 Feb 2020 00:35:56 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id l13sm2319038pjq.23.2020.02.20.00.35.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 00:35:55 -0800 (PST)
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
Subject: [PATCH 3/6] dt-bindings: Add Guangdong Neweast Optoelectronics CO.
 LTD vendor prefix
Date: Thu, 20 Feb 2020 00:35:05 -0800
Message-Id: <20200220083508.792071-4-anarsoul@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200220083508.792071-1-anarsoul@gmail.com>
References: <20200220083508.792071-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_003557_031324_2EF9AA56 
X-CRM114-Status: GOOD (  10.85  )
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

Add vendor prefix for Guangdong Neweast Optoelectronics CO. LTD

Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 6456a6dfd83d..a390a793422b 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -665,6 +665,8 @@ patternProperties:
     description: Nexbox
   "^nextthing,.*":
     description: Next Thing Co.
+  "^neweast,.*":
+    description: Guangdong Neweast Optoelectronics CO., LT
   "^newhaven,.*":
     description: Newhaven Display International
   "^ni,.*":
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
