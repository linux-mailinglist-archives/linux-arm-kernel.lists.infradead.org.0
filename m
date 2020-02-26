Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6814116F435
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 01:24:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yROGqxELv/bfK/kCQ+at7moyOaEWNcFvQ1uphgzWPrw=; b=BgDzR/IHejBzYz
	njTpv+aMtev1LqYkQd71A6w1FiR1/HLbwmp+Iap7b9VPaVSMnk94RPynF363+/fNr9WIcJaGciy20
	aubt8FpoV0BX/sWlRauQdZ8hv5QgFIRBxXKI9DkKeTEhxtAderwvu0jerOZCl898XbSfdt1CTCT5M
	ATGoNLPsjdnnQSdNIPo+jO1nWAa+iJhkojRsH0usKW0VzNNerE/cs1NdvzSX8qm7urXI/Wj/MAQfB
	feSpCXLDkpaWWGLTtTIXYyXvt6+Aux/J+dYexlZ9xLzxVXFrQenNtJEzIeimH0jQDgBbYBUYL3OUB
	rcghRYncVBlLbrZlHbqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6kVF-0001Gb-AC; Wed, 26 Feb 2020 00:24:41 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6kUn-000177-Ps
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 00:24:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582676652;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=J+coPInJKB/ZK83E2rv0xKYdopET9tZ0sSZsSRcXGHY=;
 b=RhWeZd0kOeNmcby9DsobnTeqBlqe+NRzRKiIe6O7bWxhWVhjiKO9MSJ/56OdJF6tkTjV9K
 YJDgjOWrDRm/MgaAyanGLpUs3+iqud0CFzX9yvJ/o+pvp3FvMC8L1ujtC09jSr6L7Ql0d2
 Y7KSweYwNCZ0Hmyr911y584CCyf4jbg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-220-XGwdj70-Ooi7cDlHT7221w-1; Tue, 25 Feb 2020 19:24:10 -0500
X-MC-Unique: XGwdj70-Ooi7cDlHT7221w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 25B628017DF;
 Wed, 26 Feb 2020 00:24:09 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-83.bne.redhat.com
 [10.64.54.83])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3E9A663147;
 Wed, 26 Feb 2020 00:24:05 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 1/5] arm64: Declare ACPI parking protocol CPU operation if
 needed
Date: Wed, 26 Feb 2020 11:23:52 +1100
Message-Id: <20200226002356.86986-2-gshan@redhat.com>
In-Reply-To: <20200226002356.86986-1-gshan@redhat.com>
References: <20200226002356.86986-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_162413_911713_EF57775F 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, catalin.marinas@arm.com,
 robin.murphy@arm.com, shan.gavin@gmail.com, sudeep.holla@arm.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It's obvious we needn't declare the corresponding CPU operation when
CONFIG_ARM64_ACPI_PARKING_PROTOCOL is disabled.

Signed-off-by: Gavin Shan <gshan@redhat.com>
---
 arch/arm64/kernel/cpu_ops.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/kernel/cpu_ops.c b/arch/arm64/kernel/cpu_ops.c
index 7e07072757af..2082cfb1be86 100644
--- a/arch/arm64/kernel/cpu_ops.c
+++ b/arch/arm64/kernel/cpu_ops.c
@@ -15,7 +15,9 @@
 #include <asm/smp_plat.h>
 
 extern const struct cpu_operations smp_spin_table_ops;
+#ifdef CONFIG_ARM64_ACPI_PARKING_PROTOCOL
 extern const struct cpu_operations acpi_parking_protocol_ops;
+#endif
 extern const struct cpu_operations cpu_psci_ops;
 
 const struct cpu_operations *cpu_ops[NR_CPUS] __ro_after_init;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
