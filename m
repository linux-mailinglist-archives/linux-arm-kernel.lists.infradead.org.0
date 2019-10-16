Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 393EAD9090
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 14:14:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vywE4syUCQ+L7bvy1HYjlqi8BhTc67WBmaJO1J3H0wE=; b=bL51Sf0Rti9vYB
	/lBAxYWqpEcKKFk+041pmfLt/4q/HMMZ3ZecPDWtyLlehDMV7QdPbv8EO+yfo8bNXuHDgWK9LjUmK
	SChJLlxGV8zQRlQGlIqM9tQY2JfAmbn4pUgbE5rJgUgCWIqlRrZmWkQe42/xfXpsgQ1UoaY2kBs2Y
	3BMfwiepVy0TkfaXzt0rnTABGAnBtJxjSxFW6DSIUsawW4X10nelHCm3dzwREmw3IdgW1t79Uvldo
	+yfSd5rLrLIpDcMIRkAEj8unXzvwK9eg9aLv064GHpb0VseqJmNmxh80Mx8rVOH9uXW7Gj8S56GSp
	Sq+Vm6sc/BjIXVaKmzCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKiCL-0007a6-C1; Wed, 16 Oct 2019 12:14:37 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKiBt-0007No-Mq
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 12:14:11 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9GC6ftG026522; Wed, 16 Oct 2019 14:14:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=pnor4yyg9faPFc0SOMUAqiQzsJEo1AMmtpZ8aOYAexk=;
 b=PLXp6KeEnEEZpeubqTAjybZLixix3NcwVlAWk+1Va8wxBnW6oa26xxl4qaIZhe32SNjC
 nOOd4ItPFPNCzwKP0tPaER+GRIl2J/c4M1PqURREqWkiIZudCCysdsyKf9DtYdO/PCqb
 EJYVJ8QdCzbrBtVk7rcs0DRR1YnDn5XZhFP+iZX0zEr5b5GmTiKUCqZEfurqwfPJCWJK
 xdlHxPKXiK4IWaB5al4rlTysIeHBx//9VWjGF4ai/+KvEU61rp4WLac3NqouXCxfHOZk
 OshuPdPsBGc0gzRWxvvu1LttCPkPqEQeB8c0rnNBcEzRuNglX5hNeGN4jQTvoGfOmzRB VQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vk4kx60er-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 16 Oct 2019 14:13:59 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 680D710002A;
 Wed, 16 Oct 2019 14:13:59 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5526420A92D;
 Wed, 16 Oct 2019 14:13:59 +0200 (CEST)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 16 Oct
 2019 14:13:59 +0200
Received: from localhost (10.201.23.25) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 16 Oct 2019 14:13:58
 +0200
From: Fabien Dessenne <fabien.dessenne@st.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 <linux-kernel@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>
Subject: [PATCH 1/2] dt-bindings: mailbox: stm32-ipcc: Updates for wakeup
 management
Date: Wed, 16 Oct 2019 14:13:48 +0200
Message-ID: <1571228029-31652-2-git-send-email-fabien.dessenne@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571228029-31652-1-git-send-email-fabien.dessenne@st.com>
References: <1571228029-31652-1-git-send-email-fabien.dessenne@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.25]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-16_04:2019-10-16,2019-10-16 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_051410_035685_DFA8A89F 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Fabien Dessenne <fabien.dessenne@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The wakeup specific IRQ management is no more needed to wake up the stm32
plaform.

Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
---
 Documentation/devicetree/bindings/mailbox/stm32-ipcc.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mailbox/stm32-ipcc.txt b/Documentation/devicetree/bindings/mailbox/stm32-ipcc.txt
index 1d2b7fe..139c06a 100644
--- a/Documentation/devicetree/bindings/mailbox/stm32-ipcc.txt
+++ b/Documentation/devicetree/bindings/mailbox/stm32-ipcc.txt
@@ -14,9 +14,9 @@ Required properties:
                    property. Must contain the following entries:
                    - "rx"
                    - "tx"
-                   - "wakeup"
 - interrupts:   Interrupt specifiers for "rx channel occupied", "tx channel
-                free" and "system wakeup".
+                free". If "wakeup-source" is set the rx interrupt is the
+                one used to wake up the system.
 - #mbox-cells:  Number of cells required for the mailbox specifier. Must be 1.
                 The data contained in the mbox specifier of the "mboxes"
                 property in the client node is the mailbox channel index.
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
