Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 842B715B33A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 22:58:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=F9HLaghUd4Rm6ijUURsdUQvJjRR98VPhHfHCT64/eOI=; b=r1CWGjAVPdyKX+Ia0yBKUHQ3pM
	/HhdtBBxOdlcabwOV73aK77CITRw1/0IuNPXq+C26q8nv9F1pMRKouTidxN21l8xk47ql8OEk1gqk
	MCAdL3MqLSJr4AEGZ8vh0m/P8aKuaHywg2sWoemqoHnjHZSWQRUulbkGvCT1QCq7UuSec2PCMhsvy
	hYtI4DZc8jPUomTX0g7QylFpDB/Q2YpGA538mK7CGqSn1IaWWgqZZShwSQeaD0oKpH9z4hznGjFI7
	bXcl5oqnVyiRPWxTCaAapEszdCKvaE/4DaOZvbXlBLxRMYAwMlKQefvSb7sC0ZGscXxCTgTvxSNTX
	ovfoCT4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j201K-00089n-KI; Wed, 12 Feb 2020 21:58:10 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j200g-0007fr-4V
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 21:57:31 +0000
Received: by mail-pg1-x541.google.com with SMTP id 70so1903655pgf.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 13:57:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LujJUjQ6vuT9G1EH+1pDyua8gOLBQgmZvKNk8hNJ9k0=;
 b=MPAjur7KT+S3e/RyXoOYVbFEWxns16KwM8HtVFLFbze0TsYdYTuesbZNNY2bk02IoZ
 ZuaV49erEXTa4kSHbtQfXsdMWALFe62RXBtBPNiaN72SZT5DHSAsJJi0NlRYragOnGYP
 1fbBF0Qs16S3kfMCkMEnZmj+ANywWu9Uc7HssHh+eKhiumdJbPzywGr6BjidTDNN2Pq5
 hTOmtt761oUh9PnqlgxbiXnA3hM0mvo/j2NnYWfrIFHsu5fRcvLGwCsnAk7dORnnYGZS
 B8YYjG/UyPLdCKhuShOuy3iHL+5DbTZhnpMJbrnKDD7PBqwIRxSKb+cCdXiRrYeSWH21
 ZB0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LujJUjQ6vuT9G1EH+1pDyua8gOLBQgmZvKNk8hNJ9k0=;
 b=Fbqw6i/7YabQHTVMtELm1xrvfqP8/IkKj4Qec4/c4hPE/a5AUeXAxLF4TsSRoMUyd9
 96kUFubiFvXaiky/r53f4hr2LqlqgcCk1FiAlZFagpRwcd3GeM27AXI02Dc/oxEK2t41
 f6z3tFx7k/JOboZo2CY5XlM3Zy1SbQlgW76hDLeA/6PHnznXpJFrtx81VL65Y2naEisD
 7jfNLB6KhdL6IyeO2H/eKBOvd0/kkjnJIiXAKuAQC2VXvvXCpGTGoyXJdYHI6ZF4x89Z
 sKaLShrSYCHGOQ7NpSpZHm/svHyFGcpwaRiGPXX2bZIhFAJxFnv3fxdmRTgOGjLliPL1
 uOfw==
X-Gm-Message-State: APjAAAUSfZf5NCvj5RjdeQni/8JxsOOEHDixN1wOEDzfp/wYbaXK4k9c
 G5zJuMMjVYsc6VgN/ou0qVw=
X-Google-Smtp-Source: APXvYqwxq2f7iaRQZmppOXJZwE6uWhP+IzhUAMdPNDCYHFIN2eO34CAldrpvS6sjiyK8XBjPcrxsHQ==
X-Received: by 2002:a62:a515:: with SMTP id v21mr10731828pfm.128.1581544649121; 
 Wed, 12 Feb 2020 13:57:29 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:200::3:533f])
 by smtp.gmail.com with ESMTPSA id r6sm214431pfh.91.2020.02.12.13.57.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2020 13:57:28 -0800 (PST)
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
Subject: [PATCH v2 2/5] ARM: dts: aspeed-g4: add vhub port and endpoint
 properties
Date: Wed, 12 Feb 2020 13:57:14 -0800
Message-Id: <20200212215717.9474-3-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200212215717.9474-1-rentao.bupt@gmail.com>
References: <20200212215717.9474-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_135730_188894_AD71DE9F 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
