Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF5044B6B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 20:56:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i3P5V7jgz7nOBvZGnnjjfRuwoMXZwNzdc0F09lBrgz0=; b=LtnVnL3UrCwAGG
	eKEPsEItoSiTIu1ndCtgR1DUl2EL5pIHoOq3TvG90R4f4h0IuDWH3EWqfhqv9nTk2OSutDgXMLUgJ
	AOwrJcO44jzlE2fx9hlVWi1QYTUceeSd/TmU40ZlA5OrerGa6y6uHmMpUdczuY5aYjp1MWTR2QI3u
	I3oFu51WMjeUvWqsJOQ2kvoD94ssQNq6sFhKNPGr1zbroAjX5uzFQGK1LLTh+Of1r9dHek3hn2saQ
	Jvmze5UMbCe4o4RqrkoMpQ/JK1hwl2kBGBpm6jN3jjz4rMqRzpoohoumlpatvuM8dNAdkI6tkd4p2
	IXpvFjFowXoEuR7YPogQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbUte-0000Bm-1d; Thu, 13 Jun 2019 18:56:26 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbUrc-0005zs-PU
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 18:54:22 +0000
Received: by mail-pl1-x643.google.com with SMTP id b7so3485068pls.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 11:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sk+uYjhqJHAw964SCFGOxu5y7oNB40UpzgVh7GqXmwg=;
 b=fBsDzS4JeqKEhAEeQoe57Gg6zI4DRJe+6X0Jpla0pRzUX5dwOlDJ0aTXE9tGmj1KTb
 dThn0C4kaitvtTYciol0iT8B+ePfWv7AlL58S8oQHnLqu4EhB33n+WSObLFlu9V+XrDX
 nx2ai8wBzG3Q7T7EGeD5ShFcX+LnCdLUk1rMs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sk+uYjhqJHAw964SCFGOxu5y7oNB40UpzgVh7GqXmwg=;
 b=U8Buiyhgin7JftL9H56cDpxrn8OaR8MIfoKfvF2Dt757eQN0Jgo2tEiTTinissBuwv
 9PjGwEdSxLa0YmAYftclJPvEeT8oMZo/TAgeTspJpa410Up0wBvB5LCT73QO+Nhdx8qP
 BCYfab+RtSrxFxtW95SBnJJwFOFwxpwyCEXXNFQvzQWL6YqxvJnjLgnoZp4e3eGb3Jjo
 xzzn2Go5qOJxDY9khsCsM9XuRxYZNCRSksvLhhKZzRbFwx8rm4FbwLI+kV1EaFoJisIs
 GsnJHiqjOkPrE0BLnPqlzLA8W1PAMIQYSJPycPc077L5lEx1GY3FrxkyXQdyv+sLo3/+
 oJUg==
X-Gm-Message-State: APjAAAUgL7wZpKUtl+218gX677pZZsemY/kz1l/TWBiQmuL6CjZKU+L6
 1Lywn2VZRelm7Ig5OjM6m8fiRA==
X-Google-Smtp-Source: APXvYqxdCbhYLN1KvxrQ0Bk6AS/+DAcgn/aZPji8xl3m3SbFHzYoliwV48IHU6lpqn7tNm9669WzBA==
X-Received: by 2002:a17:902:6acc:: with SMTP id
 i12mr12248821plt.214.1560452060308; 
 Thu, 13 Jun 2019 11:54:20 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id p43sm946314pjp.4.2019.06.13.11.54.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 11:54:19 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>
Subject: [PATCH 7/9] dt-bindings: sun6i-dsi: Add R40 DPHY compatible (w/ A31
 fallback)
Date: Fri, 14 Jun 2019 00:22:39 +0530
Message-Id: <20190613185241.22800-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190613185241.22800-1-jagan@amarulasolutions.com>
References: <20190613185241.22800-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_115420_868487_D6D945FF 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MIPI DSI PHY controller on Allwinner R40 is similar
on the one on A31.

Add R40 compatible and append A31 compatible as fallback.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt b/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
index 438f1f999aeb..b7ad1be33008 100644
--- a/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
+++ b/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
@@ -40,6 +40,7 @@ Required properties:
   - compatible: value must be one of:
     * allwinner,sun6i-a31-mipi-dphy
     * allwinner,sun50i-a64-mipi-dphy, allwinner,sun6i-a31-mipi-dphy
+    * allwinner,sun8i-r40-mipi-dphy, allwinner,sun6i-a31-mipi-dphy
   - reg: base address and size of memory-mapped region
   - clocks: phandles to the clocks feeding the DSI encoder
     * bus: the DSI interface clock
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
