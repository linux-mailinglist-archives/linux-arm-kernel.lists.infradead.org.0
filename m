Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9B810D022
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 01:16:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9SH63d49rzEnX84D3CnUayhQGTvzR2nk6IjQere2Fmc=; b=WcSj3R4YHhLHLS
	mdVGsvsny6RD8OfUr7qPfIUiSRQyAed20BZzOsg8MbEweU0QGYxe8lqt0TPbT9xjj/lkUD26DtBjF
	OSJdgtalg8EmRT2KztmxwlmMI5tvSqs6FLfBXgrSV3xg0XaYZK8qRUdFeVwjo+SrHVq/vmHIbzyLs
	BlPRMnSqqvAPvXz4xuOfTVSWczIwXs8wdIXX/XGusFL/plhOJ6BLIQPzbtOGzGrJyeI+hF/BkGzZC
	q9S5TgwLzCsecLVWfn5/0thPFO6s0pmsPHJntm08XFE43CAZhBt2UWs+HBbMhrc3zaUUxGi4+T1K4
	s64zAPdd1Fy5+d2wUJJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaTx8-000565-0z; Fri, 29 Nov 2019 00:16:06 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaTww-00055X-Rv
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 00:15:56 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ca19so2905574pjb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 16:15:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dpxFtxxgBElM+YJglBfx04/eAo0nvXB7AnoxAb/3UH0=;
 b=hFf8A3Xuv+sXyGmJvDCRUD4X5Sxql7d54f08MeyyQc2L2AhMvtWP0mOin+7b8F8KiH
 7iykoIqbtUPxSYdOqptxx9NZZUvlvLbM5yeZqgKlekBCyN8Q9AkKk/FhlJZwdmHZH/ne
 SWx4DbiXDrugh7fr7i2j05qfN0X8NylHkM2dAvalFJXZQqofGgRtAoqeW8Kug5sU4bHG
 sN+xqwgogDJ4dJOcU0jnJv8fYQnRHAFfYYYek+wjT4B7DQqq6Hna9IWJuaEtFLaZmu7o
 BJaudMXDRGwL7x7zTZ+AoqDnt5k/7EzAAE79vZ1iDWPK93IW/l1UNKBeycwY2macDkPZ
 dnXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=dpxFtxxgBElM+YJglBfx04/eAo0nvXB7AnoxAb/3UH0=;
 b=ndMIdYwb2E5luDAYlLstUkSPInc6TQJqzgL3v08/Xas8+Qk1Dg10gY0ShFWP9SdXQH
 +NRNeZ+/pN8qrne1edK8I+zt9DerVXnJ25pjEjA4WsSY/IqRw81lTOcxzdjKK6fKN2UA
 i6Ld+FW09V01jhR5gsR4gfF6uCZCJ63U83O2MAe2V2tKppSl6PUlr8JrSkcQMJFZ9fC6
 3Y58GpTuHZhIq/3syrfBoPQfblZ8r2PLn0jm3F8j1dLE75+j+H3K0rSDZio+nj4CwtX1
 qe+SYBpxHwHaD7CiuXdWP77ettcte3Uts3K/zFK0HAHXjoLmYz15qmjMb4PR5DNliwOC
 5bSQ==
X-Gm-Message-State: APjAAAXj9m48Ielvii6rYsunHCXRpUXztLPdzFBth6o2VkKgxAChNVM/
 CUVBjtshGtBBlGSCNAYtzt4=
X-Google-Smtp-Source: APXvYqxAFkWBLKQ16x08JOih5XHtxlgt8S5/tHtG4Wu9OpQMLx6GJcY1sTin3i+g5nxR2RtZAzZVsA==
X-Received: by 2002:a17:90a:d58e:: with SMTP id
 v14mr16105905pju.142.1574986121012; 
 Thu, 28 Nov 2019 16:08:41 -0800 (PST)
Received: from localhost.localdomain ([45.124.203.14])
 by smtp.gmail.com with ESMTPSA id d188sm21302075pfa.157.2019.11.28.16.08.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 16:08:40 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v2 1/2] dt-bindings: mfd: Add ast2600 to ASPEED LPC
Date: Fri, 29 Nov 2019 10:38:26 +1030
Message-Id: <20191129000827.650566-2-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191129000827.650566-1-joel@jms.id.au>
References: <20191129000827.650566-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_161554_928280_CE29000E 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The AST2600 has the same LPC layout as previous generation SoCs.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
v2: Fix cut and paste error in reset bindings
---
 Documentation/devicetree/bindings/mfd/aspeed-lpc.txt | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/aspeed-lpc.txt b/Documentation/devicetree/bindings/mfd/aspeed-lpc.txt
index 86446074e206..a5d89aa9a3c1 100644
--- a/Documentation/devicetree/bindings/mfd/aspeed-lpc.txt
+++ b/Documentation/devicetree/bindings/mfd/aspeed-lpc.txt
@@ -46,6 +46,7 @@ Required properties
 - compatible:	One of:
 		"aspeed,ast2400-lpc", "simple-mfd"
 		"aspeed,ast2500-lpc", "simple-mfd"
+		"aspeed,ast2600-lpc", "simple-mfd"
 
 - reg:		contains the physical address and length values of the Aspeed
                 LPC memory region.
@@ -64,6 +65,7 @@ BMC Node
 - compatible:	One of:
 		"aspeed,ast2400-lpc-bmc"
 		"aspeed,ast2500-lpc-bmc"
+		"aspeed,ast2600-lpc-bmc"
 
 - reg:		contains the physical address and length values of the
                 H8S/2168-compatible LPC controller memory region
@@ -128,6 +130,7 @@ Required properties:
 - compatible:	One of:
 		"aspeed,ast2400-lpc-ctrl";
 		"aspeed,ast2500-lpc-ctrl";
+		"aspeed,ast2600-lpc-ctrl";
 
 - reg:		contains offset/length values of the host interface controller
 		memory regions
@@ -168,6 +171,7 @@ Required properties:
 - compatible:	One of:
 		"aspeed,ast2400-lhc";
 		"aspeed,ast2500-lhc";
+		"aspeed,ast2600-lhc";
 
 - reg:		contains offset/length values of the LHC memory regions. In the
 		AST2400 and AST2500 there are two regions.
@@ -187,8 +191,11 @@ state of the LPC bus. Some systems may chose to modify this configuration.
 
 Required properties:
 
- - compatible:		"aspeed,ast2500-lpc-reset" or
-			"aspeed,ast2400-lpc-reset"
+ - compatible:		One of:
+			"aspeed,ast2400-reset";
+			"aspeed,ast2500-reset";
+			"aspeed,ast2600-reset";
+
  - reg:			offset and length of the IP in the LHC memory region
  - #reset-controller	indicates the number of reset cells expected
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
