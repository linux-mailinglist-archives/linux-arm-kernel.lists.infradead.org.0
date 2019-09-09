Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A69BAD579
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 11:14:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pCqbhaOJNoMbXWuN2YZrIzaSMww/rwbvWb2DrUMjbNE=; b=rTaez6TfQLcofU
	PQRWXs8HjpFvU/GaoNh4TQleBEWjlbwt+61IdstOpdI8OpWPN1zaettM3nchmgyHcItsriIcEX4DZ
	IOG9LvCQPgkjdtpvboev5A9Bnd6u1dfsk0cMkw7kKBQbjK+fiXKSLPjQ1KKqL6QVkNxdI0UAqR2dD
	xz6eBDxnCYmdVPoCCsuhsLNu0l42JhXgcUBUyHk3bzAb7+CnrYUgY76i0C9Y+1LOUvmLkioFSjVJJ
	t3D18secXmU5Q4RtvRDPelhfSKFkrV1rs2UXNWlY2bibKrry5T5zCAaEGmDwNZgiwnJYZ//a7LDj+
	vtKd769hJMK9Q/C5Ep1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Fkz-0003Fw-Sp; Mon, 09 Sep 2019 09:14:46 +0000
Received: from smtp-fw-33001.amazon.com ([207.171.190.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7FkY-00037h-Gp
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 09:14:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1568020458; x=1599556458;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=qrlI7m65m72RGINBsWezbT/FD0zwclbAbcVQzgJUkqY=;
 b=m7lIyqWGhHvnTA5CcaQxYDVNzu16ZtW6D3oTUhuLFvoTrUbHfD8967Ta
 umI4FcZ7YRrli9jZSFgCArIs6wUyTa7mDuGB+xxfLuHPq1DLZfky3ol9d
 rA9wlYxhxBicqtSZmvij0bhuROCOeSMwK1R1fWLbPMXOl3uT0kVMODruF c=;
X-IronPort-AV: E=Sophos;i="5.64,484,1559520000"; d="scan'208";a="829173412"
Received: from sea3-co-svc-lb6-vlan2.sea.amazon.com (HELO
 email-inbound-relay-2c-2225282c.us-west-2.amazon.com) ([10.47.22.34])
 by smtp-border-fw-out-33001.sea14.amazon.com with ESMTP;
 09 Sep 2019 09:11:24 +0000
Received: from EX13MTAUEA001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
 by email-inbound-relay-2c-2225282c.us-west-2.amazon.com (Postfix) with ESMTPS
 id 9920DA1D8D; Mon,  9 Sep 2019 09:11:23 +0000 (UTC)
Received: from EX13D01EUB001.ant.amazon.com (10.43.166.194) by
 EX13MTAUEA001.ant.amazon.com (10.43.61.82) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 9 Sep 2019 09:11:23 +0000
Received: from udc4a3e82dbc15a031435.hfa15.amazon.com (10.43.161.176) by
 EX13D01EUB001.ant.amazon.com (10.43.166.194) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 9 Sep 2019 09:11:11 +0000
From: Talel Shenhar <talel@amazon.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <mchehab+samsung@kernel.org>, <davem@davemloft.net>,
 <gregkh@linuxfoundation.org>, <nicolas.ferre@microchip.com>,
 <tglx@linutronix.de>, <arnd@arndb.de>, <venture@google.com>,
 <linus.walleij@linaro.org>, <olof@lixom.net>, <mripard@kernel.org>,
 <ssantosh@kernel.org>, <paul.kocialkowski@bootlin.com>,
 <mjourdan@baylibre.com>, <catalin.marinas@arm.com>, <will@kernel.org>,
 <talel@amazon.com>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 3/3] arm64: alpine: select AL_POS
Date: Mon, 9 Sep 2019 12:10:20 +0300
Message-ID: <1568020220-7758-4-git-send-email-talel@amazon.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568020220-7758-1-git-send-email-talel@amazon.com>
References: <1568020220-7758-1-git-send-email-talel@amazon.com>
MIME-Version: 1.0
X-Originating-IP: [10.43.161.176]
X-ClientProxiedBy: EX13D23UWA001.ant.amazon.com (10.43.160.68) To
 EX13D01EUB001.ant.amazon.com (10.43.166.194)
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_021418_821681_5DBCD61F 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.171.190.10 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: barakw@amazon.com, hhhawa@amazon.com, benh@kernel.crashing.org,
 jonnyc@amazon.com, ronenk@amazon.com, hanochu@amazon.com, dwmw@amazon.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Amazon's Annapurna Labs SoCs uses al-pos driver, enable it.

Signed-off-by: Talel Shenhar <talel@amazon.com>
---
 arch/arm64/Kconfig.platforms | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 4778c77..bd86b15 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -25,6 +25,7 @@ config ARCH_SUNXI
 config ARCH_ALPINE
 	bool "Annapurna Labs Alpine platform"
 	select ALPINE_MSI if PCI
+	select AL_POS
 	help
 	  This enables support for the Annapurna Labs Alpine
 	  Soc family.
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
