Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 109CB15B33C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 22:58:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VxZDPclgJ8ah8fK3PhQv6sHmorF5gUllwnFt9sduKK8=; b=L7kAta8rU3Fn56/lQEpiUMoGN8
	BQ5LHRmnf9unWW2mkQnJ7LP9iNg3Kj2kgoLaOfXg4rYX+0K1s4YqZK/VRAxUEyoy5+2j0IQXabrz5
	7MXqfIzza45m1FOfZj+zk090TuxlkRk1jXtihqcukeYDwNAc94DenKyifu2xuzhFQvL7SxjNl4Jm7
	lChLEXrh8Q8C94hL+yfTz/e32D5sadfKYZh93TKzMAYMSkXamPVNX/UUl0HwRBO0GhQQvMnsvSvog
	NTI7LMvBU3UumqbCzEg0gYbG27dTQS1wd4CPI4S2GZrHREE6++KiBD/0UWoRDWSAPbM/ANR7w39SM
	oEL7AM3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j201f-0008OZ-1R; Wed, 12 Feb 2020 21:58:31 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j200i-0007gT-7e
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 21:57:33 +0000
Received: by mail-pf1-x443.google.com with SMTP id p14so1904747pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 13:57:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=fcer5maloVUCbkrSQe8DVkPL6Lk2CjvPvSpxHsxWCA0=;
 b=lGInGhknBbblmThHtOa744jV16eu2Xyt2aJIm0PxY//v6EDHVQoK5BSn+MknS02bMV
 tbA5WHwtJZorWqS04XVWCwpGUBQU+pbfOzlFLHLYtxu40nNkRBDitMK+dVqXc8tARDcO
 BepqoRcl4CHTjalDmGkH5eDUSt9LuKa7irkD/hbmNIT3gDaL5bubldX9qYxCDbQWSKrh
 /9W0WufeNzu/OvP1Hh3lXXAeBj348e2RqbvpWSuAEN8t+BDZ1l7H0vtcCs8DjOeUHm4m
 GP2hqK3qtscWZE3htNBsmE7cXAi4Kn84itEE0Cos0Z+wHhZ8G70Aj+nH+EU7/Qi2/CNe
 QiRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=fcer5maloVUCbkrSQe8DVkPL6Lk2CjvPvSpxHsxWCA0=;
 b=BZZUIGhbB8tUJ3ldVGxTYq0/ZoOT61EG00hYn1vcskgePtO6V0/Xr3zutGysKm7fhD
 CVpPncobfcTtR5yAydwmiVahPbCnUn/aR/vfgpehrIFEe82MMTH9Z4Uii0Uo06VXrhXA
 3d6i9aLEnIV6R0udOtmE0iFxfjWX0RQJ6FN7M4qiQCSX1ii7uzlrnEvX2QFHea/fA8Zn
 yCsWV6v19NKU2b5gPDUcArYXvKux+ctREipzlLXhWHK3rsQIkVTFLAhYICFEAN2Gaz3u
 pHdB1QYEWUkXmq5DzeiRNGa7azGdq9UYf+rJOLADFijTE8eGo6EQGfi8jFe9MAnkUTLM
 MpHw==
X-Gm-Message-State: APjAAAVKzq2ZgJI+qXaTGBpDNs1h4Ih+fwNrf2uRwDaz2Cmw3w4AlP4t
 tCr4rKyx0ZJdKTb7kLhqHSM+4h8kAfI=
X-Google-Smtp-Source: APXvYqxclQ88Laxxq1gwYJEcZ4+1ZPZl3eGG+pqs9MZeB3l0Bz+whOVPNY0gnX+iG+v3p+tsU2Y4Qg==
X-Received: by 2002:aa7:94b0:: with SMTP id a16mr10508433pfl.35.1581544650459; 
 Wed, 12 Feb 2020 13:57:30 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:200::3:533f])
 by smtp.gmail.com with ESMTPSA id r6sm214431pfh.91.2020.02.12.13.57.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2020 13:57:30 -0800 (PST)
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
Subject: [PATCH v2 3/5] ARM: dts: aspeed-g5: add vhub port and endpoint
 properties
Date: Wed, 12 Feb 2020 13:57:15 -0800
Message-Id: <20200212215717.9474-4-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200212215717.9474-1-rentao.bupt@gmail.com>
References: <20200212215717.9474-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_135732_279105_F0BE1ABB 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
---
 Changes in v2:
   - None. The patch is newly added and it's given v2 to align with
     version of the patch series.

 arch/arm/boot/dts/aspeed-g5.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index ebec0fa8baa7..f12ec04d3cbc 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -195,6 +195,8 @@
 			reg = <0x1e6a0000 0x300>;
 			interrupts = <5>;
 			clocks = <&syscon ASPEED_CLK_GATE_USBPORT1CLK>;
+			aspeed,vhub-downstream-ports = <5>;
+			aspeed,vhub-generic-endpoints = <15>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_usb2ad_default>;
 			status = "disabled";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
