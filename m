Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B74172E9C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 03:10:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=unTRM9H+lXK1146sqQy1BKc193F/H0eYaO7OR2tvu3Y=; b=Ynr4uJtaCovOViHnba/ZN3mdsU
	wntRUmt6XOs2k8h372xMEa0Y9d3VM9jD3PR/s0n2n9PpgpvYNxEX6tlg66ZaxAZaIBFlITJuj64k6
	jRNZAVnRh9uv3H34FTz/JZcrOHJnHsmvka9bdLHJoNcEMtoQ1Ls6Xd3RgqcMiecg6XhosukPZRFg6
	5e4OKbtNotIInpjRNZQ7CkDcgO+9ymwCklekHN9MpJm2ocHxy0KoxrIueQfRMe5jVTLNfrw3rDgJc
	IytswRIJEJKb48flX1rMLsA0Sq35mp17JqR3uuZV61T5d3s3sESJmCAzs4EUhR5N0FxBzOmHrxDAS
	5B9uA4jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7V6W-00058t-Ed; Fri, 28 Feb 2020 02:10:16 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7V4b-0003fb-Jy
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 02:08:19 +0000
Received: by mail-pf1-x443.google.com with SMTP id p14so859375pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 18:08:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KBdWDv5pYXspLR13NXBmBo0uH7q/9EYA/+sUUf6ZaRY=;
 b=SsXX5/OHRxtFZBMPk+LSluP8pZ7Y9dSJwSdFjdsQ80SwwOz3PxCnoxWVzleXsMoGxF
 gSI7TSegZgM1u3WdoU7qoJeuZfa3E2knlnq3WrQe9htu5pDCLsE1ehOgr49Y3HjHam/l
 WyOuABtyMjV7r3eKfkmamImeNnouIYocfrHMLmHbVcArYjEb7sXXfUPPH5TiKmYt/A3l
 tbSYDZ35yVJHYn2ywo2Ijzwe9w8I0uA7idDbvMiaZGhcK5ZRL/Mu5LCXxd0ubjKiMFqW
 mPu6b9SHKUnGOw2zymloTzshoKxgIqB9whnDUBoII0T59anuNb6UZmQ9W52UkGDBtJz0
 7foQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KBdWDv5pYXspLR13NXBmBo0uH7q/9EYA/+sUUf6ZaRY=;
 b=avZ1MyD++Jo1jxhtfXlCfxFxVotj+FOPmZ8xNv222lVzXmr2ynZm7BW7bkCgKXYF5d
 a9k6MOoG7r3gCTIKHV8tvKVX+uJrin0oZgDV3W6Xj6I71OBodJ4Pr7DDRXlFCPiPYD+Y
 cyB0lqKWg85vJOg+Ya/KC2G34NSSdET9HZo1GFh9QWvXPjcihaYvNYxIp/+sB+lgoCKU
 UVKldqQgOzb1thwyP/A2imL4NvjX545PMUABId1Ro+KyiPvkxIDNU5Zt/o8aiwUqTk1L
 Tt2skMbO8dlu5kll8LvwKmN51K7PLbJOGnq4ULuCodSi0M2EG0H09+bBvuCkS0cmiCyQ
 uJyw==
X-Gm-Message-State: APjAAAUPeIHZ3rHLLxnDNrRtzxmZeAXdPOCtG32Y98rYRjrFRQxl1ko+
 /3YuSdOKlg2/Pw5jkkvyrUg=
X-Google-Smtp-Source: APXvYqwNeplEU5l3T+Bd+pYaCQcv8MrZ31vZLAMzGT+6bg15sdUb7fvXhnVpEI58PdviDIh3DOVyoA==
X-Received: by 2002:a63:505b:: with SMTP id q27mr2214730pgl.39.1582855696830; 
 Thu, 27 Feb 2020 18:08:16 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:500::4:d8f5])
 by smtp.gmail.com with ESMTPSA id k24sm4931972pgm.61.2020.02.27.18.08.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 18:08:16 -0800 (PST)
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
Subject: [PATCH v6 6/7] ARM: dts: aspeed-g4: add vhub port and endpoint
 properties
Date: Thu, 27 Feb 2020 18:07:56 -0800
Message-Id: <20200228020757.10513-7-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200228020757.10513-1-rentao.bupt@gmail.com>
References: <20200228020757.10513-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_180817_703505_FFE68142 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 No change in v2/v3/v4/v5/v6.
   - It's given v6 to align with the version of the patch series.

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
