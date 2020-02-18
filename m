Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E873C161F58
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 04:15:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ak+OpjW46k3K9XY2gAKNs66xca1foO1djFbJHGpEuzs=; b=Dzd3gBYQYh3Wzr8l+BKKCU7FbT
	YoSDcLqYMm7XtVFTaZb206yS7/AR4cnQJkvX6bArSTu/o7G/vLHuGA4s1w6+PFYkPvQxIGjaU2KnN
	oDojPaebw2h0ZMrTCwcwcNcwTDvSpVCzvj/9XJIx43XI71kPCUy07mTEn2ndCtr/050xmtXe5gdG8
	0VEQ8nk8E+RXw4eEvK0S2jRCCNRhRpTfKKeKaUIm/9aiYHm6MiH1BPk0DtBR8vzHu0jB69+3FSnLe
	+A6cPyhf856xQFFWHSffAQwVeUyspBohHycI0P8VV++/pwWp03NEmqeElsnCvclQlzguwbu6p399B
	2oVGqIEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3tLc-0006R9-7t; Tue, 18 Feb 2020 03:14:56 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3tKI-0005EL-OE
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 03:13:36 +0000
Received: by mail-pf1-x444.google.com with SMTP id y73so9911082pfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 19:13:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZFyQEdWxvwBxjLzrFGGVsFOAAPD8i2AvVgwQpt25K/U=;
 b=X3oSrPHwn3fmMokFFba0Psbe8GMZM/aNgleo0TXOkMdoeXtWOcmIUiaN48N9xLIRgN
 +/7TJndN0fzeZchT0RC+V9+oiVP9gQxJZaj8sB1/lY9Z7P/Uj9u6q/nH+saF+TlS1j1m
 4f1j9YqXpQMqpy5y1jtLa0Z9/NkHgGFCVacAgly/rkKjCfwxQttJhYIxLF6oNRZkGJbz
 anpuUKGGk6JhsH1q+WNWDfxlSheexwjId/xd214r1gc75NKJnPRlzKtu8BgqC7PkXz4b
 hQVv48DPxDYLBG4Hed5/t7aSZmawvUEF2PmbUPHWjoHl4q3WlcozknmU4M3PE6cS8kXJ
 tVEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZFyQEdWxvwBxjLzrFGGVsFOAAPD8i2AvVgwQpt25K/U=;
 b=rz7zYS7An8cYHPgZWWUK1CDJ1z4fvIUNLKuC1ZY5SB94ivrngKbczfMtnVjBfvpC8/
 N0vecTIKHdSxErYbTyI9N2vQAVYIuoxGKfFvZx7cRVQrOKk4QyeK3gRb0G+nrGVJ0viq
 XMhnUAHBbnF2a7ldJsbhtm5xem6WiNnrWAqNv9yMWI2ygCuzoM/orZGbbkmcQkW5eFIP
 6xChPacCYs00pWLMFkgsGI7aT+A/0xnKf+dC061Mh5rNglNJrkIoSkvZ6EpROyzf3vql
 F1bZHfZCkj0sWHjqrNGt6e4B5kS1MIzepSk6X32MVLuuk9BhLthJtzd6DUkCyWtDVUFf
 AtsQ==
X-Gm-Message-State: APjAAAWHLtEAW8qU1EPS2eb/5qKlizoX3a7mlHKHnEDumlW1A0CGRmSH
 2WtYYwRmwoPPHtAe72f8wV8=
X-Google-Smtp-Source: APXvYqx5X191Us6wKiAbBYcJ+hEwCRwb0WAXLxgCTj5dGYTmWJiFy9sNG10WQKcON5Vp5efq+phbkQ==
X-Received: by 2002:a63:ae0a:: with SMTP id q10mr20715662pgf.178.1581995613715; 
 Mon, 17 Feb 2020 19:13:33 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:180::6f94])
 by smtp.gmail.com with ESMTPSA id b18sm1812595pfd.63.2020.02.17.19.13.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 19:13:33 -0800 (PST)
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
Subject: [PATCH v3 5/5] ARM: dts: aspeed-g4: add vhub port and endpoint
 properties
Date: Mon, 17 Feb 2020 19:13:15 -0800
Message-Id: <20200218031315.562-6-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200218031315.562-1-rentao.bupt@gmail.com>
References: <20200218031315.562-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_191334_798342_EBD80830 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
---
 No changes in v2/v3.
   - It's given v3 to align with the version of the patch series.

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
