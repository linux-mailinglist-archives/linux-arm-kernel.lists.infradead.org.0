Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D45116F947
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 09:12:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=anQFpGzSkI8IBbKtjkscYMGuTNi8IBx1f7ryKOpbIQ4=; b=NUXv3B191+285a
	VyP0wvrXMEDMQsqqwv88YNzVR2CeJlhZYqbOVNDVdMHvHr7VbKohas0brz70I9kD9oQKr8t4lNbcq
	p27kG4qmaeRzFa9TSIHJ6PLhfmuWhOctg7DrOaYPazvpEuklClpuIdh1nARq7aHgGVbwUQ2d9UAeL
	DNq8Ux3oAlmn2fRtjEYbI2QEFz9SsD8mL0pK+qeYhw864dbHZoD4qv2z3wiRIOFxP5kjt9+cGXF32
	U1GcKdog5IoElC7tP0e4kSeB6uhotxHuDO0FXghwnV/ScLxd+6TtAaNNox4x40LRQl7k4Cj5QGKgC
	VUXOowbwTnzHE53PQGUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6rnR-0001ln-T4; Wed, 26 Feb 2020 08:11:57 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6rmJ-0000tK-MR
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 08:10:48 +0000
Received: by mail-pf1-x42d.google.com with SMTP id i19so1066942pfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 00:10:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UNDrMK3Cuph8hAawynxP4ClnMYdwocSlmGrvdp+XI7U=;
 b=TBrP0h2wisco9iwCPRUPdbzfKPQaem8N0CCbkufM0ubNMvNGPVi7J4OrKi6XaCKbH6
 hh3Y+bgMR/KAzZy3SJxpHSn/W55kTsTGse062SF7bXdc1s6lOwPqxkWqbnhYBTrOOQRL
 P5UEoGPV5IsF76w8fyduRaTE03AV7RIeG3tdyzE6dWtIWMgpvpx224lpnK6HQOTLFKGx
 8NN0VzAznR0u0zIR0NAXJZCtJ32GmXNwAp/DudApysZdxoB5XwxmgmLNpboYi0ogxMJL
 H4NuemzoK00dffBEXYJVCaGEH3TCcpoSWqSDpn+UxmqlsA7Meikom5RyLGooaap33bAj
 PsSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UNDrMK3Cuph8hAawynxP4ClnMYdwocSlmGrvdp+XI7U=;
 b=tNIHOh5/U2zSCDF9YxBv2gBrXaOp1Ic3Ed0/DF9W1SwZlsOm8NdJnPoG/Qzz4Zzq9f
 XO2KlEwTsZL/p5cUoBsgJp31//jbQwtydKN7A6Bc8syqlzNqTKkbH0lWw27byIqRQNVb
 LZPrt8szaFd6cOQMgYuhMuft7xy3AEwAflpXSPhYxAZ/7/+17p9vRxIYfeQL25gxolY5
 wcpVsTQNM58hJqeMjh5zlpTHzNVNi6eK1DfN4jgGyciaKSD2NkiJ8h94ilf+WPFSg2EC
 tfX9NpVWx/fPa+99QUAGGBQZ6Rda+Iwf3iK2ypaJcz83ttVMLmZuoHn2gUauHWp5uwPX
 nOQg==
X-Gm-Message-State: APjAAAXSV09JyCccUw4DNzettQ7Qf47judkIMcKg29H1A33F/f9wiexa
 clMeRPA3ejNUAeXoRpvNjIE=
X-Google-Smtp-Source: APXvYqx16ATSH0Ri7QydUSr5etiFpP7VXGwv2ajzCwfEDuf3Fsc6V5gruuHjTDm3C4cjgRnxu80rnQ==
X-Received: by 2002:a63:42c2:: with SMTP id p185mr2844380pga.268.1582704646751; 
 Wed, 26 Feb 2020 00:10:46 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id v7sm1679230pfn.61.2020.02.26.00.10.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 00:10:46 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime@cerno.tech>, Chen-Yu Tsai <wens@csie.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Torsten Duwe <duwe@suse.de>, Icenowy Zheng <icenowy@aosc.io>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Stephan Gerhold <stephan@gerhold.net>, Mark Brown <broonie@kernel.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Samuel Holland <samuel@sholland.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 4/6] dt-bindings: display: simple: Add NewEast
 Optoelectronics WJFH116008A compatible
Date: Wed, 26 Feb 2020 00:10:09 -0800
Message-Id: <20200226081011.1347245-5-anarsoul@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226081011.1347245-1-anarsoul@gmail.com>
References: <20200226081011.1347245-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_001047_734455_8E1B858A 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [anarsoul[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit adds compatible for NewEast Optoelectronics WJFH116008A panel
to panel-simple binding

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 8fe60ee2531c..0e5d01ac32e1 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -39,6 +39,8 @@ properties:
       - boe,nv140fhmn49
         # GiantPlus GPM940B0 3.0" QVGA TFT LCD panel
       - giantplus,gpm940b0
+        # NewEast Optoelectronics CO., LTD WJFH116008A eDP TFT LCD panel
+      - neweast,wjfh116008a
         # Satoz SAT050AT40H12R2 5.0" WVGA TFT LCD panel
       - satoz,sat050at40h12r2
         # Sharp LS020B1DD01D 2.0" HQVGA TFT LCD panel
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
