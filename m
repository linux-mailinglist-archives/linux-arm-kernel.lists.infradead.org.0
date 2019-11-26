Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 030231097D5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 03:31:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s7Of4/c5yGVfyrtcNIcjWvHry1AwkNKilFpPjRWd9jg=; b=aNq5PRJsg33rs8
	uSj9d6ua/t5xXcP+6vnfWSF0iZdty+3V362y1C1/HMebpJQRabGwQI9W4Lr3LpinvzvdoV+64MzlU
	bJRDhqvKu0S+94eBW1GadDHUFles7dV1EfzVPKTmea6vCKL6gbFszKlZKVpyVwXNvFc45SB/cbG46
	YQiDovdxeX226xwz+cBqVAlSNuE6+sFid7fenD7ZxGmcUDidp26PseUutdVx+MSkkYv0NyG0e4FaZ
	gBnQcEKStWmxradSFtCzPeqhH9JvdTB80W7A3Lv+zMviIx33To115/CxnYtBEFqAfFVpcY0oK+w0F
	M3rT7TPVAceckT1Quq2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZQd3-0000Ln-EB; Tue, 26 Nov 2019 02:31:01 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZQct-0000LT-Al
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 02:30:52 +0000
Received: by mail-pl1-x641.google.com with SMTP id k20so2945233pll.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 18:30:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xbKjbaa4u/VuF0dita2DzSgc+Ewhehs6e1Su0L/FDtc=;
 b=gC+KpiU1/r8M8/r/NGN7p7vTKHt1QMoHl5c/3oKsVU7/ZjLFPvqCTLc8lpGIukdyq+
 2zupypCniRRMo/6R1pEA+w74J82zDhosQu9RM/iVe3c8Kv2rtDhkippUWefGz+jo68oJ
 PBRvUd4FwgCslY+74JAWBGn7DeoBllXzTuUeJqVuGEcQVk+F87nyuod4I6Vo4FbRsWOd
 97F9GQUFKqkDBfibOXESayOvwGuPYZW7UuznwEj7Wdp2UmLsC6oE8Cd87+5rmjnjeJlc
 r6fpJGHsIf0yFNhbZQdV8bJXg+Ue3/6+bUSKwG7VZ9QdWcNWB9NrKqPeCxWM1eA2CO9l
 mzxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=xbKjbaa4u/VuF0dita2DzSgc+Ewhehs6e1Su0L/FDtc=;
 b=U6OPaQLGX3Y6fQsyRRQbeYrhpmHza6/KmGdMXiBi3ujcdXYX5e8I3FcMrTrlhX8oCZ
 ojJ8xlWlrHwBk7HVqOGJqZFR7DNi5zyEHgrt/rQ0bdLFf8iWlyPGRxDHu+nHcwdArR2M
 IjfYi0Q9dDwV/TTyZA3q67BS2gjG4LMhhEqySPcNpjigz9Hr9OuzO29x74vcqJuOd9Aw
 N8cGsEemtC5WvEztYEzPSvzGZ43zDwBwK+5qDe6M5RTxkFGlpCEtwDMrC6rws6wC/Bew
 lfFtPdJ3zaCt9KAtJl7dZcOz+N4WfTqtUQdTTkhEsh8LVvH0cP7ds4cdc135MNVu9HCT
 Wotw==
X-Gm-Message-State: APjAAAWS4ANdkYjlUStFNJ6w6hQGCO+/Q2AOYFcx0iVIV8pClKhdlZn4
 1/aUXhMsf8heMGMcnHqTb8D1ot73W/A=
X-Google-Smtp-Source: APXvYqzVEbC7IHgNm9PgTKAbD8ogbBca66OHQGbpa3PaHWkRQPie0o8we6vwzQtmBRp1ClM1NFv+2g==
X-Received: by 2002:a17:902:1:: with SMTP id 1mr31237195pla.338.1574734984197; 
 Mon, 25 Nov 2019 18:23:04 -0800 (PST)
Received: from localhost.localdomain ([45.124.203.14])
 by smtp.gmail.com with ESMTPSA id q70sm666568pjq.26.2019.11.25.18.23.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 18:23:03 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH 1/2] dt-bindings: mfd: Add ast2600 to ASPEED LPC
Date: Tue, 26 Nov 2019 12:52:42 +1030
Message-Id: <20191126022243.215261-2-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191126022243.215261-1-joel@jms.id.au>
References: <20191126022243.215261-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_183051_394741_746D3E3A 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Documentation/devicetree/bindings/mfd/aspeed-lpc.txt | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/aspeed-lpc.txt b/Documentation/devicetree/bindings/mfd/aspeed-lpc.txt
index 86446074e206..bef07c3b1a3e 100644
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
+			"aspeed,ast2400-lhc";
+			"aspeed,ast2500-lhc";
+			"aspeed,ast2600-lhc";
+
  - reg:			offset and length of the IP in the LHC memory region
  - #reset-controller	indicates the number of reset cells expected
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
