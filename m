Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3C661E82
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 14:34:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pR/8mgBRuCX414UFWtuFlF3ytRBbeC0Ls1styGSWGwI=; b=IzO
	HV3uAlnxbvfCcYYWr5471J3Wkx8IvKqc27fK6Tui1Y9k4M4HwFGLue/p1os85Essa3yuq1vyMsQt+
	EHuWqkQ36zRX4Su3rmQCqWdNOzTrz/m27SYv5lUyzQtZcNd3Oe+mVKm/iGvA4CNA8MIXYMNCAtCrB
	+DRZPoQRqQBfrWB5hgq360LJVuUlaqh9SnyLlcQl/nRzbS8rB50BvuekSCCI1a5F3r8RYopN9WaCJ
	zicMtZ2M89pWh8KrW8Xk1NlLu84Pe16xm+rdw4xCkjamc7jvFFvC/n5G4vvljPA6VlDKIfFaffUwq
	Xh83O0nm5cOW556FwYI/ETt7/30ZvpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkSqr-0003FI-6d; Mon, 08 Jul 2019 12:34:37 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkSqH-0003E6-Dl
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 12:34:03 +0000
Received: by mail-pf1-x442.google.com with SMTP id r1so7529084pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 05:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=M47eeUNCN4SVfJom0OnKhMR7q6xYFkcCTnLQCxdI5ls=;
 b=WFxZsfomA29eOc/Rm/2BZReRzhSvw45FcB4cFwTAjWKoGF8d9mLHcKgTNipt38kg0m
 +CwdcFESFE6YiVHuAM5DM9/S1wBzDe1Z3tZ2Nvi9Gtmuni78moINmU8+2bei2cuCf5tF
 khW2yHX3NeOQe4GYXeaAZvhGS/mcuDvq4ZSG+VP8CPs5ntbOl7lOcucnupCpRuV+aQwf
 GObhIfe+jx1UhCMc1IIi10sJJKXJNBfKQMhxumt3AYah0i8sXn02ifBoetlAQwYH00op
 HRmDL3PAQzoLPy6X4+xClmEwOrz9astlnt+4PmfpvcNrtCOXngZnn+5aRVlj4HeMJloq
 T1Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=M47eeUNCN4SVfJom0OnKhMR7q6xYFkcCTnLQCxdI5ls=;
 b=Lrq7mPtmMkcruXCRP+TzzbLNSrgyUI4LCSk0bd+mAjNwLqGGWFRTMak9xhQ1mNVZ+p
 AgK4j2Z7HbePjSfUKZWNBnhhCoFpKULgTjjoQu68P2HmMZ6/Hh3i9IW8hJ+Aze60317J
 zvZA+ptZfCJIrOcVE2maKt1aOWy0nmElWfsesi8Rj7LTrkTE6toI+/5GtzS0C7SeQjAa
 HZ57j7asSgEuqx630WF3+0Z3rnyMqIKVbtlec4EMoVbsB2VA2LtMldFmJqXOv1Tiql1u
 v9+OtfmL0R2Z6N7jryVDeER0+hTjuznaU5gfavtmnjpqW+f7e6No2Ag1uKWeSvB3EEdK
 oEcA==
X-Gm-Message-State: APjAAAVcpVXUscQFii8I6+iRe8/9wqPkSUHCGD7t+j7o2gtsJ5ZvQSxO
 Lnjb58YD06xqM5ITHa9j7QJDcj059pc=
X-Google-Smtp-Source: APXvYqwT85qiQbjKYhVI6Utl22oZLWmhnzAVfEG2zxIim+b4MbMsEhdmIj6QoWsXZOx3ojsq50zs9g==
X-Received: by 2002:a17:90a:a489:: with SMTP id
 z9mr24384234pjp.24.1562589240312; 
 Mon, 08 Jul 2019 05:34:00 -0700 (PDT)
Received: from hfq-skylake.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.googlemail.com with ESMTPSA id
 i124sm38232388pfe.61.2019.07.08.05.33.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jul 2019 05:33:59 -0700 (PDT)
From: Fuqian Huang <huangfq.daxian@gmail.com>
To: 
Subject: [PATCH 11/14] PCI: Replace devm_add_action() followed by failure
 action with devm_add_action_or_reset()
Date: Mon,  8 Jul 2019 20:33:54 +0800
Message-Id: <20190708123354.12127-1-huangfq.daxian@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_053401_656065_F1EB2540 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: 2.6 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (huangfq.daxian[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fuqian Huang <huangfq.daxian@gmail.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

devm_add_action_or_reset() is introduced as a helper function which 
internally calls devm_add_action(). If devm_add_action() fails 
then it will execute the action mentioned and return the error code.
This reduce source code size (avoid writing the action twice) 
and reduce the likelyhood of bugs.

Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
---
 drivers/pci/controller/pci-host-common.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pci-host-common.c b/drivers/pci/controller/pci-host-common.c
index c742881b5061..c8cb9c5188a4 100644
--- a/drivers/pci/controller/pci-host-common.c
+++ b/drivers/pci/controller/pci-host-common.c
@@ -43,9 +43,8 @@ static struct pci_config_window *gen_pci_init(struct device *dev,
 		goto err_out;
 	}
 
-	err = devm_add_action(dev, gen_pci_unmap_cfg, cfg);
+	err = devm_add_action_or_reset(dev, gen_pci_unmap_cfg, cfg);
 	if (err) {
-		gen_pci_unmap_cfg(cfg);
 		goto err_out;
 	}
 	return cfg;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
