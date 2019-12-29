Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BAB12C36C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 17:29:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=W6mGfXc0JE4a977giDwRKDPFDQrzxw18tHP7S3pT+l4=; b=Qsi9+S4NUdSG/JMWbSdsjHYNRX
	VpY5RxFOJskOB2ETdFStB7AEnHKEtI8Z+qiu9OeLSNw+aSp3ktf6EGQ8TFqt8GtkbmMVl2cdl5qAq
	5/wkzTvdDYd2zXZGQorOCXFeN6b2sS18rGin36tIhA0V915khmawo5gqaiSyTEL5TtcYwC7ox2rsR
	dxEJSfu/JwpOTRlzt+VLewqgi6Wwsd4vps7r2np+k5CIDKg3qfJMKC7qsi3ztx0XRd2zk9jSMDZRe
	3R91H/TMbvublw/N6ZA7eaLpe+wS+G1b5Z+VAazTrtwdNRiUz0NUudtV2wUF6c6C4HEtxSHgdagN4
	z3rYHHaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilbRi-0006W3-UF; Sun, 29 Dec 2019 16:29:39 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilbQo-0005zw-R8
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 16:28:44 +0000
Received: by mail-lj1-x241.google.com with SMTP id o13so19803215ljg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Dec 2019 08:28:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=globallogic.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=obMh8XTaHYb/hrwA03bev5cmgIzHacNi7+oYmLrptLw=;
 b=Pm/R6mA0jYabAm6zVxMJIumdUmGH3EQ2cKoUF+Vd2dBswWtQP5bPl1Dm/puplwwbKh
 GEzGix3Z8uQnJdN4ru6pdafLRRrJ6cQ0NQnle23pXKAPmMznIzBYb+STJ5GcNApvJ+5n
 gEgmy8rgYiFeNJRra7bYbDP8A5qflq9AGp61r3vV911nqvzjhr0Crx/SKVBNpKbXROyU
 g32X0PIZeoma0NwQ7puSO/iMqQCRqRhE0fcoO1FFBAskyIJfIhEm2d2oLDxn/17wh7ii
 tfgvNcauleCqWi6weDLypTiO9TcL2a6bVHYGClq5ssHNMWgh+E34pXMTXJcaGk8ewBlQ
 qk6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=obMh8XTaHYb/hrwA03bev5cmgIzHacNi7+oYmLrptLw=;
 b=HtLo+EaV2cBvmS4gNs61vxYBVImVkrA153oqyBhMUmPaPGAUe7wsplmc5sfQLjHfPC
 kKqbIKRmKIpKvzgR7QqHjFNUhzbvQG3ydnpDJ8eh8pGrw7DNCYx6pEUw4bMgtXGYpgtN
 s8YHtkTzhvsnndQWC5DEBa6j1Kz84NwLrA8FhdqFd/TTZc5fH6AS0c8HRrTVN8A55mIA
 Q549tyrpqNbxb2A31+O6IW7HOLk6SJiWAxU7QJmWUtV6OqEt4wPnhMxpQ18RrWf+4ZW3
 WgfPiMbsIh9N2KSRwo/wjE8ENLwhcz2Rg9Rhst0i1SdhT361yizeVohe2/kikpRs6MV0
 DUTQ==
X-Gm-Message-State: APjAAAU8flcHmFyyupVOdjY4oTGf9aptMsQi9wC1UG8ZzluVpZe7ESab
 GHpNzMDdwzQHPlZRAkd4dQL5EQ==
X-Google-Smtp-Source: APXvYqyk/Z+wI5g5MjHiImymXWVQkPbDZjOPP2utmy1NOg+UkAkIEmkBDnQDeNrAMncBwarAH7oF3Q==
X-Received: by 2002:a2e:9999:: with SMTP id w25mr25471407lji.142.1577636921176; 
 Sun, 29 Dec 2019 08:28:41 -0800 (PST)
Received: from virtualhost-PowerEdge-R810.synapse.com ([195.238.92.107])
 by smtp.gmail.com with ESMTPSA id u13sm17284858lfq.19.2019.12.29.08.28.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Dec 2019 08:28:40 -0800 (PST)
From: roman.stratiienko@globallogic.com
To: mripard@kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 jernej.skrabec@siol.net
Subject: [PATCH v2 4/4] drm/sun4i: Update mixer's internal registers after
 initialization
Date: Sun, 29 Dec 2019 18:28:28 +0200
Message-Id: <20191229162828.3326-4-roman.stratiienko@globallogic.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229162828.3326-1-roman.stratiienko@globallogic.com>
References: <20191229162828.3326-1-roman.stratiienko@globallogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_082842_874317_B8FA1F5A 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Roman Stratiienko <roman.stratiienko@globallogic.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Roman Stratiienko <roman.stratiienko@globallogic.com>

At system start blink of u-boot ghost framebuffer can be observed.
Fix it.

Fixes: 9d75b8c0b999 ("drm/sun4i: add support for Allwinner DE2 mixers")
Signed-off-by: Roman Stratiienko <roman.stratiienko@globallogic.com>
Reviewed-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
v2:
- Picked 'Reviewed-by' line
- Added 'Fixes' line
---
 drivers/gpu/drm/sun4i/sun8i_mixer.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/sun8i_mixer.c
index 5d90a95ff855..86711d8a9c84 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
@@ -576,6 +576,9 @@ static int sun8i_mixer_bind(struct device *dev, struct device *master,
 	regmap_update_bits(mixer->engine.regs, SUN8I_MIXER_BLEND_PIPE_CTL(base),
 			   SUN8I_MIXER_BLEND_PIPE_CTL_EN_MSK, 0);
 
+	regmap_write(mixer->engine.regs, SUN8I_MIXER_GLOBAL_DBUFF,
+		     SUN8I_MIXER_GLOBAL_DBUFF_ENABLE);
+
 	return 0;
 
 err_disable_bus_clk:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
