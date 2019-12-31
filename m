Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2158012D8C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 14:06:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZTW/vvJlHJwRvulVpW7N/JQ407EY+wi5to5L2Pq4uI=; b=NJNaNvn6uC8US2
	FqkqrIAqN2+JSY0dNdYKhe7So/PxKrarPu9cMPnXWxS9EGYMbiTPoGSyn1JsC72Kq/ebUenovKIAd
	fDIyNB7Shvth4gml8ZOgMX1ZqlB7LrfFo8I4kG9iHFg4N0hK6E7geae2PYZrMpVIyNIPOS1QMLDdI
	Lk6tsHqaDaitkedTiIt2pLOucvI1mnrysl9DVnUD11PwiSQqZx6+PjN5CWVhXOM5b9BRo6Swukoi6
	7E0aYgL1fKoLA5oz27nAsAu7ciMu6M9ZZQ6CNrVBTQJWoMAOzCGbk/2rShhOvtj/mYNyAgGplbQ7d
	2f4+zEpzi7zpjxmrSqaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imHEB-0005kJ-Kx; Tue, 31 Dec 2019 13:06:27 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imHDX-0005UG-O9
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 13:05:49 +0000
Received: by mail-pf1-x444.google.com with SMTP id q8so19731758pfh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 05:05:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GHERosgBsujakP2B/I6YHrJDTfsLICVpu4z4584lwQw=;
 b=Z9lmykbL1nS45J4e96jiJrcedroR8CQp8/MeoSvUrSO/T8/6PwYaSv4AglTj72wHS8
 TEehWz56jErqgZn5HhjOH/Ea8HEBcam9LJPgZi8vJvfIbZO03k+uNYgiAnX/eFP938py
 Gcm3jjwouXbnUzeY6J7ALjylcPQEVRXGeFhyE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GHERosgBsujakP2B/I6YHrJDTfsLICVpu4z4584lwQw=;
 b=eQYrLuqkEXjVWGDNl79L3X9R+aP9anAmaaPOrOidGA8lraqWaUMAQRJUVcL52r3Ms/
 EJjmRaJ9vr34G5CfqJuCtiCi8Um9OZcNqH1toPOc7/HLIGBXL6vUENcw0OwbUwWlaFdt
 QbnpLR8CdVOh9gd6jyyIXCt30RyNcSHxyheVbeDWxcNwGhY4s+RAVkXyl/XDIkVxewoT
 D6ODKy0oc3ov/BeJmcig7G9uZ5KqObjGaL4scUDeDz5r8fgbAO0ilSL+ofqHpHR/a8Pu
 NAh+vy98VQyoVPfMqIAk44MNEZmtiNv7ErqXyEFyayQVRcC87meRjrEwg7MZrV0oK2OO
 H8XQ==
X-Gm-Message-State: APjAAAXRmevU0pApKew0cyNK83CFFPJXoxUEy8pxVcOS2w+Qf5/EyPOC
 TOKmO4zc6y7NiYHkSN9jD/QHkw==
X-Google-Smtp-Source: APXvYqw2sViAJoSwquTTS8URdM3Gc8OxZVcyoU64PLz9q9NvLdSS35ykWYOHT21Xmz7I1N3x+F2elA==
X-Received: by 2002:a62:a21e:: with SMTP id m30mr67506229pff.56.1577797546877; 
 Tue, 31 Dec 2019 05:05:46 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.115])
 by smtp.gmail.com with ESMTPSA id i3sm55204089pfg.94.2019.12.31.05.05.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 05:05:46 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 1/9] dt-bindings: display: Add TCON LCD compatible for R40
Date: Tue, 31 Dec 2019 18:35:20 +0530
Message-Id: <20191231130528.20669-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191231130528.20669-1-jagan@amarulasolutions.com>
References: <20191231130528.20669-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_050547_802307_A3545E02 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Like TCON TV0, TV1 allwinner R40 has TCON LCD0, LCD1 which
are managed via TCON TOP.

Add tcon lcd compatible R40, the same compatible can handle
TCON LCD0, LCD1.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Acked-by: Chen-Yu Tsai <wens@csie.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changes for v3:
- none

 Documentation/devicetree/bindings/display/sunxi/sun4i-drm.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/sunxi/sun4i-drm.txt b/Documentation/devicetree/bindings/display/sunxi/sun4i-drm.txt
index 31ab72cba3d4..9e9c7f934202 100644
--- a/Documentation/devicetree/bindings/display/sunxi/sun4i-drm.txt
+++ b/Documentation/devicetree/bindings/display/sunxi/sun4i-drm.txt
@@ -160,6 +160,7 @@ Required properties:
    * allwinner,sun8i-a33-tcon
    * allwinner,sun8i-a83t-tcon-lcd
    * allwinner,sun8i-a83t-tcon-tv
+   * allwinner,sun8i-r40-tcon-lcd
    * allwinner,sun8i-r40-tcon-tv
    * allwinner,sun8i-v3s-tcon
    * allwinner,sun9i-a80-tcon-lcd
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
