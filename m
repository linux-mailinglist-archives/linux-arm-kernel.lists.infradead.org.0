Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3E8350F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 22:31:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eZUaCFkpFNOtDDpcq0Wd6lxjUn+MiS0cZBUeFRnJfMk=; b=Mg6UOLvNChU4rc
	s0aMNuPAj9ccrY6Ymm0xGgv8wO8U0zl90HKXHNMcoBVJExpHwu344Zm3nzr/DKYctkeFiImAXreos
	C696qB+IKebXM5/Iwr7ARx0Ymkxrm0ehuocUdpn5DVWSCXMeCpg9deLXv+r/ZdlnOUW3fywGPZo46
	Je58PJtO33BkNJRbBT1pdSK0EPYmSiA5DQobWIzL9TkUwl54JwK6797554MlmJVfA65oekoGVc59u
	uyD/9KgA9W85I3ji6J1JbnuacSoFjcVyZcn9nuX5kIAAHGglMn9ycl/BCmBuJgiWZJdreQipd1TCr
	k6M66eQc+xiOl5x1xCtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYG62-0004oh-5M; Tue, 04 Jun 2019 20:31:50 +0000
Received: from smtp-fw-6001.amazon.com ([52.95.48.154])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYG5l-0004gJ-GP
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 20:31:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1559680293; x=1591216293;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=Qvgi9EebcCKTkJL3XH6n75abRSmA+1KjL0uPQ7HHAeo=;
 b=RnAdWs9XFTiBvPZ5E4kMCVf7Cm1fW4F+rjVfJoNKY8tFKoXXeMNcGNGB
 6buq9dclTDfzlHT1c2e2rrUKAYydc7JFhHc4vOVkDSqtka/956Jp3ejkm
 9DT7CY4DjJtpK8UojGkbkpTI7FNb93EbZhDjPHIvwqmoFQKAwJX8ArtJY M=;
X-IronPort-AV: E=Sophos;i="5.60,550,1549929600"; d="scan'208";a="399352827"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-2a-e7be2041.us-west-2.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-6001.iad6.amazon.com with ESMTP;
 04 Jun 2019 20:31:30 +0000
Received: from EX13MTAUEB001.ant.amazon.com
 (pdx1-ws-svc-p6-lb9-vlan3.pdx.amazon.com [10.236.137.198])
 by email-inbound-relay-2a-e7be2041.us-west-2.amazon.com (Postfix) with ESMTPS
 id 4FA1CA21DD; Tue,  4 Jun 2019 20:31:29 +0000 (UTC)
Received: from EX13D08UEB001.ant.amazon.com (10.43.60.245) by
 EX13MTAUEB001.ant.amazon.com (10.43.60.96) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 4 Jun 2019 20:31:28 +0000
Received: from EX13MTAUEB001.ant.amazon.com (10.43.60.96) by
 EX13D08UEB001.ant.amazon.com (10.43.60.245) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 4 Jun 2019 20:31:28 +0000
Received: from dev-dsk-alisaidi-i31e-4ac69482.us-east-1.amazon.com
 (10.200.136.151) by mail-relay.amazon.com (10.43.60.129) with Microsoft SMTP
 Server id 15.0.1367.3 via Frontend Transport; Tue, 4 Jun 2019 20:31:28 +0000
Received: by dev-dsk-alisaidi-i31e-4ac69482.us-east-1.amazon.com (Postfix,
 from userid 5131138)
 id 9A8BA47DE4; Tue,  4 Jun 2019 20:31:28 +0000 (UTC)
From: Ali Saidi <alisaidi@amazon.com>
To: <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-crypto@vger.kernel.org>
Subject: [PATCH 0/3] Add support for Graviton TRNG
Date: Tue, 4 Jun 2019 20:30:57 +0000
Message-ID: <20190604203100.15050-1-alisaidi@amazon.com>
X-Mailer: git-send-email 2.15.3.AMZN
MIME-Version: 1.0
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_133133_683438_2680EA45 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.48.154 listed in list.dnswl.org]
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

AWS Graviton based systems provide an Arm SMC call in the vendor defined
hypervisor region to read random numbers from a HW TRNG and return them to the
guest. 

We've observed slower guest boot and especially reboot times due to lack of
entropy and providing access to a TRNG is meant to address this. 

Ali Saidi (3):
  arm/arm64: Add smccc hypervisor service identifiers
  arm64: export acpi_psci_use_hvc
  hwrng: Add support for AWS Graviton TRNG

 MAINTAINERS                           |   6 ++
 arch/arm64/kernel/acpi.c              |   1 +
 drivers/char/hw_random/Kconfig        |  13 ++++
 drivers/char/hw_random/Makefile       |   1 +
 drivers/char/hw_random/graviton-rng.c | 123 ++++++++++++++++++++++++++++++++++
 include/linux/arm-smccc.h             |   2 +
 6 files changed, 146 insertions(+)
 create mode 100644 drivers/char/hw_random/graviton-rng.c

-- 
2.15.3.AMZN


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
