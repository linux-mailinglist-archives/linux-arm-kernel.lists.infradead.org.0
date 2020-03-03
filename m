Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A97176F5D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 07:25:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qzRiRIY2bdx6bR8NCF0UQJ0CWlDkkqKPYSjlJ7ocNrU=; b=L/GJkVgfUZBYLLoc2rA1JPYwbN
	HhYGv85fP/pR15jFAigWKAyf1dj1MRHW0qYhUkMs4N9Rg2v8BgJqOrUioSHafr4ghD+rDbbyZGfA4
	PXLNe26zhB63++TximffO37moDuasK1a+okHorU4spzCk0P4jOer0wApzTPR+fyIrlW9dfdyBJLq0
	yLkVZA6M0Lx4rfucr7dJWC4vTGeFak5DaWDMyueWAbYVD64Tu8wxH/Uly5NWnqHZFq7P0WhHoFMGx
	NVs1EyzOyp2sVuFYAsGnB2kUYddc+Yg22eW8VhDEGjxuazrRDbUcWAvU3cDwvr+zMO38c6BU5hV/m
	ysBmSj4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j90zd-0003b4-DJ; Tue, 03 Mar 2020 06:25:25 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j90yB-0001Es-2c
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 06:23:56 +0000
Received: by mail-pj1-x1042.google.com with SMTP id 12so862124pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 22:23:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TI3Z8YY503FP0KWJnGcP8fCbF2AkQr8pkKXqhxZsBmc=;
 b=EAYDCY7S4bhB2WRC9nvVwFPyK5XgymtItdht/AXBXjWl4G4vRkAEs0a89EbW9UXGJK
 4AMHFHAVVrfXI6FGDnx3vHen7TN5/Bm2Nb0g3b3G83Dm5Yba+V9doMYTV2kSoU0LcqSV
 xcX2Os7LGLf/Um4io/wG7mTQVJVlazLWmGGyJIw5Yyk/N5LrLZ7QB1B4VGhb4lViumw3
 UZa0wiEtq3EuGyFUBCQ6rsGYCpdkivrV2VtUz+Uxkh47VVeKg7EwReRulojx6iBgrnb3
 pSrVqaGSdo5F0T7KirZrS113pbsX+uxXRBVqy0ZVgnqvKvY5B9RDlEJjcdfYJ2x7axJ0
 /2rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TI3Z8YY503FP0KWJnGcP8fCbF2AkQr8pkKXqhxZsBmc=;
 b=aaob9Z4z3FocaAOvZbVxvqqqLaKRFDMQf/qmpYXPgHizeHvdo/28ZMlshCRX8Q7rEo
 9J24le0E87DJN1x8+J0EMG1tZ7eRNVuGFXjwWgJqOAiDbiaPaAxYAxSTtT9LS9xXriLs
 d01WLJio+z9gekGvOHCIrvC89ByeQYOO8bm0gJb27sX1nu9a7RJ/KN9ETBIYnNjRmOsP
 S/3eYbM5no/OA+yrPqn4LAaxtcVDUIsIDzDiKj4d8xaSm6Qn/M6EQuwXpGBw4huA9g8+
 HYl2BLjvkb5SmrZ7k/5ZxEgDY6VBfEhcd5pbw9PDORFrueqEHB5fygcFtOUchE6KeFW2
 drWQ==
X-Gm-Message-State: ANhLgQ2R55UUG/0laH9SK7wVVdRSaTuQctqgP67gcW3WBEtRdTgV6Lwd
 LLlXelmMC48ha0mmqdeCtUA=
X-Google-Smtp-Source: ADFU+vt9tRuqC9HtMQlJWQEOzdX43o3XQH7276qTwTP1ViurSta8NASB80y6m5uKUP303TtRaWHTww==
X-Received: by 2002:a17:90a:f009:: with SMTP id
 bt9mr2411146pjb.150.1583216634072; 
 Mon, 02 Mar 2020 22:23:54 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 (c-24-4-25-55.hsd1.ca.comcast.net. [24.4.25.55])
 by smtp.gmail.com with ESMTPSA id k5sm7453526pfp.66.2020.03.02.22.23.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 22:23:53 -0800 (PST)
From: rentao.bupt@gmail.com
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, taoren@fb.com
Subject: [PATCH v7 6/7] ARM: dts: aspeed-g4: add vhub port and endpoint
 properties
Date: Mon,  2 Mar 2020 22:23:35 -0800
Message-Id: <20200303062336.7361-7-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200303062336.7361-1-rentao.bupt@gmail.com>
References: <20200303062336.7361-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_222355_185636_C0CCCA25 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tao Ren <rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tao Ren <rentao.bupt@gmail.com>

Add "aspeed,vhub-downstream-ports" and "aspeed,vhub-generic-endpoints"
properties to describe supported number of vhub ports and endpoints.

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Reviewed-by: Joel Stanley <joel@jms.id.au>
---
 No change in v2/v3/v4/v5/v6/v7.
   - It's given v7 to align with the version of the patch series.

 arch/arm/boot/dts/aspeed-g4.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi b/arch/arm/boot/dts/aspeed-g4.dtsi
index 807a0fc20670..8e04303e8514 100644
--- a/arch/arm/boot/dts/aspeed-g4.dtsi
+++ b/arch/arm/boot/dts/aspeed-g4.dtsi
@@ -164,6 +164,8 @@
 			reg = <0x1e6a0000 0x300>;
 			interrupts = <5>;
 			clocks = <&syscon ASPEED_CLK_GATE_USBPORT1CLK>;
+			aspeed,vhub-downstream-ports = <5>;
+			aspeed,vhub-generic-endpoints = <15>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_usb2d_default>;
 			status = "disabled";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
