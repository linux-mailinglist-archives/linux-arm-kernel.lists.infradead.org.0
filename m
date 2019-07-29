Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB35A784C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 07:57:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hoTsI/qYJ0GDEFa/1ouxCjcDBHNYev4je/OrPU9MLGg=; b=XlnvVzry5HhE2v
	W0uR4NP9+ppTfTwpmMEZ0EpE2StE3vRD6imFF3qOXGM1sT/CqSBsM4XTg5vTjo9iP/dxrKrxlXops
	SYTaPqaykod3ZXQL0oz7bXpQdlNI7YjYpYvV+8xypgLR6AakjbXtarTVwVeosusbWI57ALitTh4Kr
	jbUyB+rLdUoHZ93Z4R2CXsyKyqNQVrzjkltlh4c3PFX5xPnYi7cg8gmTBW643fJmhZaTWcWvLt1uK
	ErEAaeSaIn8YGg9eGH+tfi6olPuykbETn29rPxAHszayjj6N73aNHNo91tgaRkPEntKQcKaMgBtuc
	OHIKX9cOB0h4t04PepbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hryf6-000834-St; Mon, 29 Jul 2019 05:57:33 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrydx-0007QY-UT
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 05:56:24 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 59A6C128B;
 Mon, 29 Jul 2019 01:56:21 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 29 Jul 2019 01:56:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=HZcia/IfVzkvd
 lkvnb5LKV31CBZHUGSpuuBvYoxo1kk=; b=Dw6PonkAQzMpPGOlYMlzy6fMIWPO7
 NELN9tBaFrE/4vuMZoeuTXrYhxFVhRDnU+GFTUZrpMrCwHeaSdCoDkiiH59nmakZ
 1/1xMrSQ8kOyDdbVqiSpsIFwZiaglSu9mkKD99jPprOapaEGAaKiieSJ3BcDuj7i
 HTAi62HC7gzZC/tev582lmkc8QrwGtOWdqRO0VzNXmIkutKR4BMFiihAN7MZMi1E
 bUMn+ocPwSTG7vq/fvr9ZYQctNnaqgufhSAp58046F4W8DhvgPkC0D7YaA6CqZCv
 Iq+mQBiFJHYimvillMTtaCFTHUyLo+JpAQGtokI7vZXsiEWMxnaGTKPkA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=HZcia/IfVzkvdlkvnb5LKV31CBZHUGSpuuBvYoxo1kk=; b=Oj2LF3sh
 4eXv9FGk77JYK9ecw4TdDwMcY07FVd/1XQ/hg1KC0vg3YIYsBo1p3Ce/XaYjW9Tr
 N2TU9llPZNRfmIEj9jhGONdUrEfqkjsJVPnygHCz+7cZPB+b9gs4LDchZ+je9mmf
 hJbLBfjAlo+QZ8d1a9I3gFMnNpVfREsHwh+ubUx5fLz5nMPw++IqRTay6GZitvI8
 TcRWpQ5d2uGoyAuD6wdl4YqKOSstVK1G2rK2kW9jXn92k31OsIdyJjwpCjyxwJd7
 a9zD9h1VnuzxyZXqYlZDIT73qGUM1sysXfcWJkdPkND5LddUYvtiNoQBjBtTL8Bt
 n8q4SfkfMaxgAg==
X-ME-Sender: <xms:hYo-XbWC8Zawu7lwSu9fOZAjwO3uC1ibYGUcOGF64JfuW6bYec2L9Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrledtgddutddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppedvtddvrdekuddrudekrdeftdenucfrrghrrghmpehmrg
 hilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghrufhiiigv
 peef
X-ME-Proxy: <xmx:hYo-XRiO-dyPOXd2LHbsXvBR-E-PzMkPl5q9PEtXWXlcO0lqVYL-LQ>
 <xmx:hYo-Xe-N0QP6WER8tuq5aieHNppmoUYFWW86TpcSAGayTZl6r8Ctsw>
 <xmx:hYo-XTAUqp09CWwdx5x72Wv6NoYGMEnI_GS0rfgCRIAhzBq8KVA8Gg>
 <xmx:hYo-XWtGUQ13A45zMMTOV49YyjjWmLEuksPLZNpNZ7rsfz6K3w_5vw>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6CD7B80060;
 Mon, 29 Jul 2019 01:56:17 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH v2 5/6] pinctrl: aspeed: Add SIG_DESC_CLEAR() helper
Date: Mon, 29 Jul 2019 15:26:03 +0930
Message-Id: <20190729055604.13239-6-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190729055604.13239-1-andrew@aj.id.au>
References: <20190729055604.13239-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_225622_412195_812702A5 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 johnny_huang@aspeedtech.com, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linus.walleij@linaro.org,
 ryanchen.aspeed@gmail.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The complement of SIG_DESC_SET().

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/pinctrl/aspeed/pinmux-aspeed.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pinctrl/aspeed/pinmux-aspeed.h b/drivers/pinctrl/aspeed/pinmux-aspeed.h
index 474820df6263..c59e936a7dde 100644
--- a/drivers/pinctrl/aspeed/pinmux-aspeed.h
+++ b/drivers/pinctrl/aspeed/pinmux-aspeed.h
@@ -508,6 +508,7 @@ struct aspeed_pin_desc {
  * @idx: The bit index in the register
  */
 #define SIG_DESC_SET(reg, idx) SIG_DESC_IP_BIT(ASPEED_IP_SCU, reg, idx, 1)
+#define SIG_DESC_CLEAR(reg, idx) SIG_DESC_IP_BIT(ASPEED_IP_SCU, reg, idx, 0)
 
 #define SIG_DESC_LIST_SYM(sig, group) sig_descs_ ## sig ## _ ## group
 #define SIG_DESC_LIST_DECL(sig, group, ...) \
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
