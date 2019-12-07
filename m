Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D81115FA5
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 23:49:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hkNXpXUnX5faYpAAATASafN6GaohJd2j2VxWIsJY7Os=; b=Ig6I4jF4y2t0Kl
	4EDZ5O7KH7nomNmL46RlLSMP9bDIu77S9SnoDYZHKq+5BzcEBIEc1ou9lHX3ctQ5lVa8KyePnKQ8o
	G2qQlRZctsmwHkS1lGRkoAiYsLZSpDUBO+T8fh+SMNnlRCdzBbgjFpIhM3dhUz6MP/1YtJ9HZphV5
	03PcqCOGyobpiGUxTXEkRPhZf3Zz8A98SywArSr15fJ3rhSSgI7YuM4OK8O9pPEFd1g/6Wvz6iQ0E
	w0j2Sf8VrWQ3t75P/TLJ0iWWcOHMYcA+UPvDhDflRe8hqZkGBvH4JdrxA0PBlKjyAC8Fi3jFNEZFw
	lV6ugxIXa/LO0awQuQ/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idiso-0003eJ-4g; Sat, 07 Dec 2019 22:49:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idis2-00038i-4E; Sat, 07 Dec 2019 22:48:15 +0000
Received: from ziggy.de (unknown [95.169.229.25])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1335524681;
 Sat,  7 Dec 2019 22:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575758892;
 bh=fQiHeTSkXa+q0MUHJbEeA+eMFm4vY8RORCB2PwtjnWI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ATvc5XgEKBnyQmykQVFhL2x6QB9sfUZk+OXJI6aKl618V6PDw+zl7yuV1BOxRuwCQ
 0gkAd6WF+8i5Mh/qxHLsA0m++R3o4tTUw+SQb5IKfBzhrZtB/b6bnhS1UXSr/yJmNF
 3lPiABM6zPffZVMJWlz3Nx9BzHhaXo/5GSVYi/qg=
From: matthias.bgg@kernel.org
To: robh+dt@kernel.org, mark.rutland@arm.com, ck.hu@mediatek.com,
 p.zabel@pengutronix.de, airlied@linux.ie, mturquette@baylibre.com,
 sboyd@kernel.org, ulrich.hecht+renesas@gmail.com,
 laurent.pinchart@ideasonboard.com, enric.balletbo@collabora.com
Subject: [resend PATCH v6 02/12] dt-bindings: mediatek: Add compatible for
 mt7623
Date: Sat,  7 Dec 2019 23:47:30 +0100
Message-Id: <20191207224740.24536-3-matthias.bgg@kernel.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191207224740.24536-1-matthias.bgg@kernel.org>
References: <20191207224740.24536-1-matthias.bgg@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_144814_423962_E76FCBC2 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: matthias.bgg@kernel.org, devicetree@vger.kernel.org, rdunlap@infradead.org,
 frank-w@public-files.de, sean.wang@mediatek.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, sean.wang@kernel.org, wens@csie.org,
 drinkcat@chromium.org, linux-mediatek@lists.infradead.org, mbrugger@suse.com,
 hsinyi@chromium.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Matthias Brugger <mbrugger@suse.com>

MediaTek mt7623 uses the mt2701 binings as fallback.
Document this in the binding description.

Signed-off-by: Matthias Brugger <mbrugger@suse.com>
---
 .../devicetree/bindings/display/mediatek/mediatek,disp.txt      | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
index c71c8a4b73ff..a747895574f1 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
@@ -42,6 +42,8 @@ Required properties (all function blocks):
 	"mediatek,<chip>-disp-od"		- overdrive
 	"mediatek,<chip>-mmsys", "syscon"	- provide clocks and components management
   the supported chips are mt2701, mt2712 and mt8173.
+  For mt7623, compatible must be:
+        "mediatek,mt7623-<component>" , "mediatek,mt2701-<component>"
 
 - reg: Physical base address and length of the function block register space
 - interrupts: The interrupt signal from the function block (required, except for
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
