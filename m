Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B634A83CB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 15:33:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5qa2II6AGAdPd1E8QVXNyLPRCJ+VdHV/pLrCp7pQWAA=; b=WYG/vsgiSpUiCW
	9Ki7lQD/Rq/wOfGVHwL9ABuzteQ8c0C6fnhhH3lPS67EvVhsWSbUjayaQAJjP69sFFG5pbHHLTGgu
	e9ZtfR1Qm7dyA4YVQDbLFsQ6R3z3xympm+xyKk/PFxibAr71X4B9IgT9lmYNUOS8Zo+/qGMAT0m2i
	5tHQgvQ5suvmyEBxIpdCuGFAMT4sqZ6L4xT6datdWz2yRSFVtf8XBe7xnDwL6n1mKnPYtiRwTqrdb
	aaP9EHDKPGUQxce6hZawKRWAbjFqL6DTF1WRoGZvuM8Q1D5yuO6jMOLJyOtnjhUJr7xXs760O800M
	Pv4A1Zz57G0RgZ3Hxhxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5VPv-0001ct-7Z; Wed, 04 Sep 2019 13:33:47 +0000
Received: from smtp-fw-6001.amazon.com ([52.95.48.154])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5VPY-0001Qj-7i
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 13:33:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1567604004; x=1599140004;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=n6d55kUkaBFlUJHXxH7iZa0vx52buK+arnIMuA4U1tY=;
 b=KsY16i2ukQCDsPeCvlVEA5sezb/LierF06Z+Lg/zTzoDF4N+L7Sl5Tvr
 BrbRRY9tqID7CkM78UCc5icE4SXb+GjxI7GZ97l6y0L1rS3AIvxgnKEDP
 KzY7YHXPjBxOonObnCTWMLvxUJ50H76Z5kLJIQiLFYxfFSibXLGIC04wS 8=;
X-IronPort-AV: E=Sophos;i="5.64,467,1559520000"; d="scan'208";a="413537122"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1a-16acd5e0.us-east-1.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-6001.iad6.amazon.com with ESMTP;
 04 Sep 2019 13:33:20 +0000
Received: from EX13MTAUEA001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1a-16acd5e0.us-east-1.amazon.com (Postfix) with ESMTPS
 id A2B9EA2834; Wed,  4 Sep 2019 13:33:16 +0000 (UTC)
Received: from EX13D01EUB001.ant.amazon.com (10.43.166.194) by
 EX13MTAUEA001.ant.amazon.com (10.43.61.82) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Wed, 4 Sep 2019 13:33:15 +0000
Received: from udc4a3e82dbc15a031435.hfa15.amazon.com (10.43.161.82) by
 EX13D01EUB001.ant.amazon.com (10.43.166.194) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Wed, 4 Sep 2019 13:33:07 +0000
From: Talel Shenhar <talel@amazon.com>
To: <bp@alien8.de>, <mchehab@kernel.org>, <james.morse@arm.com>,
 <talel@amazon.com>, <davem@davemloft.net>, <gregkh@linuxfoundation.org>,
 <nicolas.ferre@microchip.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <catalin.marinas@arm.com>, <will@kernel.org>, <linux-edac@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 3/3] arm64: alpine: select EDAC_AL_MC
Date: Wed, 4 Sep 2019 16:32:23 +0300
Message-ID: <1567603943-25316-4-git-send-email-talel@amazon.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567603943-25316-1-git-send-email-talel@amazon.com>
References: <1567603943-25316-1-git-send-email-talel@amazon.com>
MIME-Version: 1.0
X-Originating-IP: [10.43.161.82]
X-ClientProxiedBy: EX13D10UWA001.ant.amazon.com (10.43.160.216) To
 EX13D01EUB001.ant.amazon.com (10.43.166.194)
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_063324_417234_69D8163B 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.48.154 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: ronenk@amazon.com, barakw@amazon.com, jonnyc@amazon.com, hanochu@amazon.com,
 hhhawa@amazon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Amazon's Annapurna Labs SoCs supports memory error detection and
correction.

Signed-off-by: Talel Shenhar <talel@amazon.com>
---
 arch/arm64/Kconfig.platforms | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 4778c77..d2809b9 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -25,6 +25,7 @@ config ARCH_SUNXI
 config ARCH_ALPINE
 	bool "Annapurna Labs Alpine platform"
 	select ALPINE_MSI if PCI
+	select EDAC_AL_MC
 	help
 	  This enables support for the Annapurna Labs Alpine
 	  Soc family.
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
