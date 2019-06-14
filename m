Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34072464B6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:44:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Anwn3JZbajQFqfon1U0Vmlvc4oVpIdyo6L4ReGuNvk=; b=l+UhkLLT7sbDzX
	NQGyRxTpQGDOrhpJIKhGGf1xay3f7qundIu8XDlYz0/slhK7uDR2SDGj8hWt34xAyebxdT3ywF6nO
	5sFQJnyjMWXijwgtHn/1/ScPNXsg7OtpeQ2vUbyCo7QsQ9y1KYcddXMq9fMkSS3bVv7RrVnjscVoW
	PnfQ4HGdZv1WMMpJT0/orqwMHPFtE2VmzHlPp6k0MWZjWKIHvogrcWXl8Bas5XjwkzN0b4wYS4XMz
	iGSjLC5NwvBeytK0lg36F5y4tsNxoM2qsS2eVuzMWM0oh5T317zuvePjVCj4bUG0A5cFy5R4MQeAZ
	LgPvwghtyVgVsNvO/PCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpJe-0007oP-29; Fri, 14 Jun 2019 16:44:38 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpIo-00074K-8X
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 16:43:47 +0000
Received: by mail-pf1-x441.google.com with SMTP id c85so1802434pfc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 09:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vlwa0s5nqheQS3zabJv02XXNAZF54w3RCaO1lz7mJ5Q=;
 b=qyDQb+/76FQ6lTl+mdRWZykq7uCJj62GkbjTONISkaUVyPOfFAVxh65BAsgt6CPzut
 9ZhtdcgyXulLsQ1H3JMr+aIhTmdWStjDH33vZohhqIgSFCH9Bmt1KPxsjMRXuFEmqAAd
 VsjLDD8ARz48aonbrS/nKu3429nfJ9hSppYtE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vlwa0s5nqheQS3zabJv02XXNAZF54w3RCaO1lz7mJ5Q=;
 b=hbcADOAfD4fe1CeJw9SdfeOivdvDUAa1U+KSw3qaBRmZZ1VsqZokFwrFMGUidt3feO
 2/OfoGTy8ZOiB+k7h9/3PRgL62JTgv4z+x7kWdyet5Ho3eIPcu24XdKMtvc7KsfKNYEX
 a5Axoam5uaOQ7OXlY/8Hz351ueGY9jwga38VfyuQRZcz7h0unPmhLNQHjUCo/RNnIpE4
 JYPVXOWlQSiDOOSFl9nclo7sNyt8g34Kthm03AIdO26jhLrTR575Y4FIGBR1uwOPE5ZK
 rRCagbyGnJI4IsdZVHFhZ+XuydS5p8YWOHJf6mddAzIR69gW2WkUSywSca0QAMB3+fod
 5EwQ==
X-Gm-Message-State: APjAAAWeNoLTyD7sldy7GWWe55mfH97v3mERA/hSR+uI5xKKRmwPPrhf
 FG4IehNR4Ki1tZwcrPGOaxlZLQ==
X-Google-Smtp-Source: APXvYqzxQKiNS3nurPOM/V2GvxzGm9mKdD7TK0cz5nTv+lySbEQRBjB51s0f2UVYbHxtO6KpqnOlHw==
X-Received: by 2002:a17:90a:af8e:: with SMTP id
 w14mr12320434pjq.89.1560530625092; 
 Fri, 14 Jun 2019 09:43:45 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id 85sm1639583pfv.130.2019.06.14.09.43.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 09:43:44 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>
Subject: [PATCH v2 1/9] dt-bindings: display: Add TCON LCD compatible for R40
Date: Fri, 14 Jun 2019 22:13:16 +0530
Message-Id: <20190614164324.9427-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190614164324.9427-1-jagan@amarulasolutions.com>
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_094346_332549_1448D033 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-sunxi@googlegroups.com,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>
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
---
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
