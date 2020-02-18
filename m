Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90295161F56
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 04:14:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PA5TNJ/GpYFT+5q/ewuSalc9667fYI6gUaRjgXFrXaw=; b=n/CZoxsy1h3PUMQsZpKlPllc2+
	VnRA/LpCo5STu/WaqM4po6cIkXJ4/ebfkwTgjzJWrCuswl0VNPu3In7K2lEk6nOGCzf+32VX7/0TE
	oVTO9bhSKiOR2F9jiIG3yIRGlQzUMkJkkzY76exFo77TLpfJa/3O8qAASqG/mN1e+TB9VVbnXKELs
	uOKqFfYx3uQJEqTZo/Fvbga23aw7pvWffsMGAiDjeotqRe5njQvOlXMPwDvzSKLmZzACULmZFh/1U
	uCU4TgaVJfA9FF6+3VkzVo4kP4qyGN5C7c/dtTATus0SWfg5XnHHNf7SioVZ13hm0jJiWszGl5umh
	4DM29YQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3tLK-00068s-2I; Tue, 18 Feb 2020 03:14:38 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3tKH-0005CM-4I
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 03:13:34 +0000
Received: by mail-pf1-x441.google.com with SMTP id n7so9906565pfn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 19:13:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=EQI/kEWqaRT05sdkpbc+otag3aOOl2fGYGdTqjeEub0=;
 b=RfQkKQAVEtw73teRP3nMOcC+47nA0yiJ4PiE8RrwCmIBAqJpYsq7mu2qzB+46qjTwC
 1mk9sU9Ne7GvPU88/TiuEHAiMFGe32f/GVMwPwqJQ0EuS44mUrbTgpzW047Ra8mgPQb6
 IuVthqAfXBWP50mkJhsyYZXlYwREhkaEK5ooDyZxoQOInwm0SGFkP50D3F21MSF1D+42
 5jywXnyJPJVd7mVLN2cbNIe/OrhrNHr5rgDYe0bGOR4c+nvuVNiQAWpnIGGvkrf1uroE
 D8GJwoqfLr5rUNAY5Jtp6kW+9VK7CLePxq+ggqtZm5bVCTgd5ab8HyfTbWaQCRPtMuxf
 kgmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=EQI/kEWqaRT05sdkpbc+otag3aOOl2fGYGdTqjeEub0=;
 b=pdeDYYDv6Nm2TB1R4VZGu33gfDPXwBzflNsO2zn2raAG6DGXCZ6cLrWWCIWtbW3JJw
 09jcKmVwzSVSRHyO0AvrEPklmV/OOV5jIokRds+LQCr98VMWrOnRCNrSOJD76x5CdibD
 yXXyRmtpSMm60VenDEBGNagfvyJALJhRovRYRaoUku6ajAt2Wmt9FrLAPCBkeNKZCASk
 WANvC+OxDPKlc703V8zFJkNexsYPsi9EeyABLlPE2z++b21JfYbNJttIiGwviyOk89ZM
 fVBOOSxpXS6R3WxgMf9s/Jwup8EAmXwkOxNTYXR7X3JLlfoLZ+7oYwh8sYW9sOqK7Z7X
 jX0Q==
X-Gm-Message-State: APjAAAUeK+C8I3KM8StTxzCfAcFOl0bORmPsFLlU3kKqJN3ExJWWS9vp
 75UAP+egY5lY5rpuINrKSJM=
X-Google-Smtp-Source: APXvYqwnUHiPwKDCgZewpALos3LF//BC5zWLk7GsTKsck7hxFh7pTlxPH2I3QfP2zhB1wSr/zmv7pg==
X-Received: by 2002:a63:5220:: with SMTP id g32mr20411835pgb.116.1581995612091; 
 Mon, 17 Feb 2020 19:13:32 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:180::6f94])
 by smtp.gmail.com with ESMTPSA id b18sm1812595pfd.63.2020.02.17.19.13.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 19:13:31 -0800 (PST)
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
Subject: [PATCH v3 4/5] ARM: dts: aspeed-g5: add vhub port and endpoint
 properties
Date: Mon, 17 Feb 2020 19:13:14 -0800
Message-Id: <20200218031315.562-5-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200218031315.562-1-rentao.bupt@gmail.com>
References: <20200218031315.562-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_191333_181786_788F6F49 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
