Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0184CED80
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 22:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kx8547yPMJGlc5RCaodt7rV5A4yLMXxrpxXoT3mKUcw=; b=tq67b9GhZKqfm0
	RVNftmYqnUNEiN9QQ3ByQLfo6wzbKD2swq+ysytSbVxNB31QCrMWYjwqf4tm9CWLbGLveN9JllxL6
	QIST6tbhv66We+OsgHXsofjzwJXFUyQ2GSTUZu4DkLzqF7B6iI7C6Iw2LXDoiCuUxloBJd+zCljJr
	CWoQMc3ub4Y55c1kmYuQsqN34ZgeEk4ykdfwQ24I++3KTW3o85CrS0hbtB5H9vl+7PT/TmvEeHIiP
	dc80zufLhwB0t0wtEeUZqrPE4QyfDcrtd73smEXHG44i2rIEj2dJ7WwHdfBGXvOjSPtFYZ+DJPYjw
	T5CbCSNmH4VyVKtkRtLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHZg8-0005s3-QP; Mon, 07 Oct 2019 20:32:24 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHZft-0005pP-TP
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 20:32:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1570480327; bh=y/VyM0hZNMJuHkjWlJoe2Ll8Mns+SaZDNjGgFDEV18I=;
 h=From:To:Cc:Subject:Date:References:From;
 b=U7mWq69C5aY5UbL5IUH5mlWMNXL0uskF1Tstjk+xrzodsueFjYSuV5veHA2a3rISH
 xhxnrdtLhDqetLQLJrG7g6uHG7nQmidwsuRUl9/BLEt233uhubXarE03aKX1REfddb
 nl67Dl0TEbmuBlCMDrgE/0gQ8+yeCNpseyVi4jzw=
From: megous@megous.com
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [RESEND PATCH 1/2] arm64: dts: allwinner: h6: Add pin configs for
 uart1
Date: Mon,  7 Oct 2019 22:31:51 +0200
Message-Id: <20191007203152.3889947-2-megous@megous.com>
In-Reply-To: <20191007203152.3889947-1-megous@megous.com>
References: <20191007203152.3889947-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_133210_276170_94D737F3 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ondrej Jirman <megous@megous.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

Orange Pi 3 uses UART1 for bluetooth. Add pinconfigs so that we can use
them.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 67f920e0fc33..7657e816096b 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -298,6 +298,16 @@
 				pins = "PH0", "PH1";
 				function = "uart0";
 			};
+
+			uart1_pins: uart1-pins {
+				pins = "PG6", "PG7";
+				function = "uart1";
+			};
+
+			uart1_rts_cts_pins: uart1-rts-cts-pins {
+				pins = "PG8", "PG9";
+				function = "uart1";
+			};
 		};
 
 		gic: interrupt-controller@3021000 {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
