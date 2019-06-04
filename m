Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB766350F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 22:32:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jw8bAuuaW+2SncNGfrlqhL6gHFTbbBk7tbIi2fMefkA=; b=YVmlRp+iPtW9Ng
	hXevxEut3kuxMaAfGyH7wxCcpAXZfLjCssKVPMbi2zq7gxtDDKOtJDq2kSdP1N1cumctqWIt4dgxd
	QvHIVfVk/a1Ys4tqBpvgVuiXrr+4/eHqGhlgnskYpuAnFL3/IBqlx+2GuV07Qcg+kuNb/qwHcRWDX
	EVWUD3DFBlbAFjXTJBB13Ym5b1FI6aAKzFomDaxrBbmUVDcApY+8mq2MleoeRQT2Wj3zFQxNBnUXy
	dmSicSlz/D+6RfMArQiggFualYY41/dpNrOv2nhQwAgVH30J5+e6OfxxfUykVSPGxjePzp7j3te8R
	4dZed5x+ku9l0tr+hdzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYG6C-00055F-Fr; Tue, 04 Jun 2019 20:32:00 +0000
Received: from smtp-fw-33001.amazon.com ([207.171.190.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYG5m-0004gI-IQ
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 20:31:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1559680294; x=1591216294;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=ppSMBj7M9LtRxxqAyTLnY4a7CzGJ8fmmTXh653jqMx0=;
 b=j03e4gicMk9ODEFoPw8LrK27tFu/cBw+PPBpux8fgAl11NOtNKh4hwat
 u1QLS6G/zOL2vwwXnYdDRPgV0ksXI1PBOvuROY3QZ/UxYE5BE1FOySLmk
 ilrWP3nShiAEB1BD1yqIkIUUh2NGiPxyOReL6/Z28J9fVCdYMhHUG4Aeo A=;
X-IronPort-AV: E=Sophos;i="5.60,550,1549929600"; d="scan'208";a="803552791"
Received: from sea3-co-svc-lb6-vlan2.sea.amazon.com (HELO
 email-inbound-relay-2c-579b7f5b.us-west-2.amazon.com) ([10.47.22.34])
 by smtp-border-fw-out-33001.sea14.amazon.com with ESMTP;
 04 Jun 2019 20:31:29 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (pdx1-ws-svc-p6-lb9-vlan2.pdx.amazon.com [10.236.137.194])
 by email-inbound-relay-2c-579b7f5b.us-west-2.amazon.com (Postfix) with ESMTPS
 id 8F374A20A1; Tue,  4 Jun 2019 20:31:29 +0000 (UTC)
Received: from EX13D02UWB003.ant.amazon.com (10.43.161.48) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.249) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 4 Jun 2019 20:31:29 +0000
Received: from EX13MTAUWA001.ant.amazon.com (10.43.160.58) by
 EX13D02UWB003.ant.amazon.com (10.43.161.48) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 4 Jun 2019 20:31:28 +0000
Received: from dev-dsk-alisaidi-i31e-4ac69482.us-east-1.amazon.com
 (10.200.136.151) by mail-relay.amazon.com (10.43.160.118) with Microsoft SMTP
 Server id 15.0.1367.3 via Frontend Transport; Tue, 4 Jun 2019 20:31:29 +0000
Received: by dev-dsk-alisaidi-i31e-4ac69482.us-east-1.amazon.com (Postfix,
 from userid 5131138)
 id A0CA347DE6; Tue,  4 Jun 2019 20:31:28 +0000 (UTC)
From: Ali Saidi <alisaidi@amazon.com>
To: <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-crypto@vger.kernel.org>
Subject: [PATCH 2/3] arm64: export acpi_psci_use_hvc
Date: Tue, 4 Jun 2019 20:30:59 +0000
Message-ID: <20190604203100.15050-3-alisaidi@amazon.com>
X-Mailer: git-send-email 2.15.3.AMZN
In-Reply-To: <20190604203100.15050-1-alisaidi@amazon.com>
References: <20190604203100.15050-1-alisaidi@amazon.com>
MIME-Version: 1.0
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_133134_658596_19FDE787 
X-CRM114-Status: UNSURE (   9.63  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Matt Mackall <mpm@selenic.com>,
 Will Deacon <will.deacon@arm.com>, Ron Rindjunsky <ronrindj@amazon.com>,
 David Woodhouse <dwmw@amazon.co.uk>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Ali Saidi <alisaidi@amazon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allow a module that wants to make SMC calls to detect if it should be
using smc or hvc.

Signed-off-by: Ali Saidi <alisaidi@amazon.com>
---
 arch/arm64/kernel/acpi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/kernel/acpi.c b/arch/arm64/kernel/acpi.c
index 803f0494dd3e..ea41c6541d3c 100644
--- a/arch/arm64/kernel/acpi.c
+++ b/arch/arm64/kernel/acpi.c
@@ -119,6 +119,7 @@ bool acpi_psci_use_hvc(void)
 {
 	return acpi_gbl_FADT.arm_boot_flags & ACPI_FADT_PSCI_USE_HVC;
 }
+EXPORT_SYMBOL_GPL(acpi_psci_use_hvc);
 
 /*
  * acpi_fadt_sanity_check() - Check FADT presence and carry out sanity
-- 
2.15.3.AMZN


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
