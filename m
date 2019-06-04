Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7DD34C9C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 17:51:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y/ts52Rus+f+nJFoHjO6G1X78NV6Pv1sAOsBIHs9YYI=; b=TL+kbGO7+k+YR8
	1BGqL93mryw4u6bw8VPsOKxjfUME5Nsg/EKPJJ3Lkv04oQc3CZ87JFmqZ1mRhE0OgpG8qduQtSnFO
	WimfPSJfU6MYxQZDHjQgyHhpCtXeqdxm6WegstXW+nLeEWPqE2EYwHK5fcAHKYR2DtKIn+w7t4Isg
	Mi4yG9ai92Qj2rNJPiitucC2XIHQyrbGmAhREO7a9j388k38RC4K/MMCTIJftEdNiR8oI9tXoIiiz
	DRR9z1b0T9RTXX/65eAuQ0nswmnt7gdfWWvGRwB40zXCWRt8iturPNAPSLQarSGrz+kItP7J4TnoV
	cx23fc6mjcjBlgQaFnQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYBj5-0008AS-TF; Tue, 04 Jun 2019 15:51:51 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYBiy-00089p-TR
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 15:51:46 +0000
Received: by mail-wr1-x444.google.com with SMTP id e16so8129960wrn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 08:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qH4FDRgRxazUxppnfy66oz7/ZG4EwLFotnt4vrr38Jk=;
 b=ph1lWQ+lD7EEE/KoatFoMerQik8dUq2QfqaGCfo7jVtKJxMuNmqsThFLNMeeh7kkS+
 FD0nIKmo1GtzpfttCVJcwIMmJyB5JHhFexJ8+8wALREiZztVcbbLGac6k+1wZ4wWMQ9s
 S549TuGx7TdiORJMeoMfamHmIMeL9vhVWIvKklBmPOPrBXdf3KFoneu4kcfpMmIysKvr
 uSRWIkIh4h4kotHAJTFeNJ3qlTXKjXzHdRRumEHoXdy+N3gIqnghr8iBDZuMd1K+4kZq
 C/YWPpXgeDGmws4DQaMkdvTWNtLXBZFlbTRRUiwk4764DdtYBpwO87yIfQElPI88QA2e
 ldaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qH4FDRgRxazUxppnfy66oz7/ZG4EwLFotnt4vrr38Jk=;
 b=GmSTY24ugCjBsqfgpaAegZzY8n9agoxBkWNXx8ZV/VvNbdN4tRXJqjl/22ifFYoJC9
 kRsV0Ifq6HJ98zn1A3hihxocp8y+FSO7zXx5bn8ZNldh0Rw00kq6zmj+s8GXGfFXOGUJ
 7l95LiMuz+7y9tmaQBziIpCnb62xnJ/seNWKU06K1uglA7H83/JetcdQ3PCI1vVwB75t
 X1WFKFz6LeR0iPOOCQ7ue6KGDbsNJq5KZ0UcWae4p2F3T4PK1ZIPQZMgGvBcZT+G6ZAm
 iCDnOlhfUiNpbFKfJWtX9/82kujKu3LxQ+SuzWk6umzywDevY0YI5AGo0YDZZl6XiVJR
 AVcg==
X-Gm-Message-State: APjAAAVDqlKpKJ4ImiDc1yWF1j8CfHbi8N0pTwRDX0UVGA/Zbzwimark
 DrMSwgd3BuPah0JY1dxBb+Y=
X-Google-Smtp-Source: APXvYqyJDCOSSw64vLkSR9L4wCqk+kXrRkrMGCNK8o6OONOCjbvwA7NYyHqVoIQWqFYEp/Nq7LQ24g==
X-Received: by 2002:a5d:404a:: with SMTP id w10mr2976806wrp.177.1559663502864; 
 Tue, 04 Jun 2019 08:51:42 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id d18sm3511733wrn.26.2019.06.04.08.51.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 08:51:36 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v2 1/3] soc/tegra: pmc: Fail to allocate more than one wake IRQ
Date: Tue,  4 Jun 2019 17:51:33 +0200
Message-Id: <20190604155135.25390-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_085144_968995_CD6BA639 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-tegra@vger.kernel.org, Bitan Biswas <bbiswas@nvidia.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The code currently doesn't support allocating more than one wake IRQ at
a time. Detect this situation and error out. Also make sure to output a
warning when that happens to help track down callers.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/soc/tegra/pmc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/soc/tegra/pmc.c b/drivers/soc/tegra/pmc.c
index 5648e5c09ef5..653fe2c466f6 100644
--- a/drivers/soc/tegra/pmc.c
+++ b/drivers/soc/tegra/pmc.c
@@ -1863,6 +1863,9 @@ static int tegra_pmc_irq_alloc(struct irq_domain *domain, unsigned int virq,
 	unsigned int i;
 	int err = 0;
 
+	if (WARN_ON(num_irqs > 1))
+		return -EINVAL;
+
 	for (i = 0; i < soc->num_wake_events; i++) {
 		const struct tegra_wake_event *event = &soc->wake_events[i];
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
