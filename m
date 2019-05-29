Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6F42DAA0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:28:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y/ts52Rus+f+nJFoHjO6G1X78NV6Pv1sAOsBIHs9YYI=; b=tEZuf91auAoLG9
	o8OkuhrSGZNbJ3UZ7tIF/kdMQ6aBxAeWsUQ1SM78oZGd3kE1WR5sIHmzL6p9EWslIYX3gwZLbBHRV
	p2t2PEcJq28GUYxNa0isv582csVG5YR55ozenWRPIQjVhCGdDKg6+v6B745cGFpgjdilj6+80ybsG
	UKt9NbnsjlC3Lr3HjUcI6hIgUOCA0M66aIWvaWa88SGnjgSN71vT9v+GNr9NWenQB9Xu9fo+ulP+D
	aZASS6xmev5B6Z8j2S2NBmZ1WCyjmRnuiu6keXCd2Ubm7P4uupeWTdZk5+HmuO84Jf54gfyb0/G1G
	BZyPZCEOYsWxux+08rGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvoS-0001UG-Mq; Wed, 29 May 2019 10:28:04 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvnP-0000PV-4Y
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 10:27:03 +0000
Received: by mail-wr1-x441.google.com with SMTP id l2so1336319wrb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 03:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qH4FDRgRxazUxppnfy66oz7/ZG4EwLFotnt4vrr38Jk=;
 b=RgPCHnOIk/VcuuhD4LkWOrkoHFmhwsd+XnEJ0uKI0Y9pFcLjlriu5i/gfZaqJkJujN
 uX0w3ErsriLvqQyvfuHw/+6hzD/3YSqYPn0Ok9CmE+geqXFAhUFw2w9Rpmi9fxUdaSoT
 f8PsppOSw4hmU0VwylunyMWmFY3WF4dXd1VNRV/N2fphARv3Ag67OCa7fqP1RXTHdWEN
 fvFHW1W62sR7GQpBSpZXJtdi/18X+yaqtKkKcyEMVDWq9579Kt2NmIoQ5s/aCDIDEVqx
 +Y9+u1uii1HMVENAm79jR3qM7CuW6h9yq7Vs1947aMQK2Hx5LDPu8larIK/Vv2e3aVX+
 e6DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qH4FDRgRxazUxppnfy66oz7/ZG4EwLFotnt4vrr38Jk=;
 b=TpBOAjoh7lf0cJxe5Suam6sFxFoYDDCrxkKy4H6LbphvfpB/cEIFQmTLRBVDnNh5Mk
 LaPnU+Fo7p8P553Y4IAEATMRODLYjq73yKArSn7M3Aewm7fVOCiu2DnyhsFMwaewC7EA
 UnepOZRcqcCKW3MpXyB8JahRSyDQzza8OciV2rtvpn6Octm/0BPNGH6/AzhjNj1U07QL
 A3JCJw3X3dX0Cv+07q5ozlhkUsLsrjmA7NNKphZzsTmyfc7epuo52d0N9RkUiPWHMgJ6
 mcO0DacCxCO02yWh+hv3Vgtds2kugjWnZdLlDIoNh3UBQxpy9pmdEDF/rBa1YoYjyq5X
 GJwQ==
X-Gm-Message-State: APjAAAUlbn/rlAuuwxSU53ZDwmUkuZE3i92gPd2aOfc/TGRUkP+jHhTf
 +AG8NoBEzV5LpqskDnkqS6Q=
X-Google-Smtp-Source: APXvYqxpCtSZC0Q2fp8eoEj2RPZV2FI55G/Xb0w+oZGygASEKhSjAxQ5kZ6u9HACyVknmUMaPS9vhA==
X-Received: by 2002:adf:8062:: with SMTP id 89mr11498516wrk.97.1559125617201; 
 Wed, 29 May 2019 03:26:57 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id f21sm841586wmb.2.2019.05.29.03.26.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 29 May 2019 03:26:56 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 1/2] soc/tegra: pmc: Fail to allocate more than one wake IRQ
Date: Wed, 29 May 2019 12:26:53 +0200
Message-Id: <20190529102654.14665-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_032659_547414_7B1897C5 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
