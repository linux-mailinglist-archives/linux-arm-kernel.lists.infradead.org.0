Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16024EE73D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 19:19:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HJV1R8YxdGDBmiUPuoaYEHxsUk4kMnH6AuDMK04e1j8=; b=PMsB3YQYiyrWjb01VpqQhJfYcH
	6GTnFRBeOjbV6MkJtmOzsuT+4xyA8ZDrQxAxenwep+DZJDwT1QoghrmEJ4MoI8HbOtUc2dRjq/Bs2
	sQSFB0NVPOAt9zpHUBdbMXD6b9nMsRPLdb4gV1kDYE487JsrVLftpdg6C9lN37luk7SBzGsKNum7b
	x9fIbZ/QaHDkIreZs9ZjuqiOjGWrqfFpYvDGuZ2q9O3ezYm0MkbXoxLtUExrYXXzcb2XMxMdC0TtH
	Gt3lfMHQL6/o4MATg5qOXbF7k7hn5FeDVXgdykbBY2dfVP6QXpNlWwSC003ErYxbSkMCyXRcen+KL
	JbAQpLQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRgxG-0004su-Te; Mon, 04 Nov 2019 18:19:54 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRgwj-0004So-UU
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 18:19:23 +0000
Received: by mail-wm1-x341.google.com with SMTP id t26so13042702wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 10:19:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=crl/sUJTIYngi8fCHSniOxSSni3lgNa7iQh3Jutt6vc=;
 b=rCPl+46hCB8Mnj8qi6TYtxjg6Ezu+S1u9FI7m3WICddeN51CJeVMntsykKw9XxBwcp
 9IUdFhOkA2la4PN3vJv9GrNi7JET4iS5y265fGNnb8SHwd0GlRiqnexA6tLXX5JGwKeV
 /K1ASK6k89Obg7/lasOFryB+BWSwTgROvyS1s0aO1nPzd9LHq7NGxdLpw/ygTa/62Tpe
 9tpZ8uXwtmBQ3KKnVIDG8vANv9F6XwRO12Pw4JgIyQ/XNpy4PrPUhrQxIegc71nrMGkV
 Y3YkNNOnbDpPRDz+4OEJg0deyP0bWWL+W2iYgURBBYgFggTWefElTHO8G6qX6xdpDRzf
 +NaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=crl/sUJTIYngi8fCHSniOxSSni3lgNa7iQh3Jutt6vc=;
 b=ujxmoZlk05ymw8hfE4wgtzulZSWJjjxHLsVps0alvy+i8Whk5T4ILS876h6KhVplqj
 IUgHwXQmb5KeqqVPGeRZ73PVMQKM40D9fmlPt1ZeLUEa1ixuNYgt5xXzXEQV41oQaGa8
 pR/BKrtXJ1mS9eld/T4Kfi+OAeQQiNI0uz7RFS6KbSP3hEFuqpHttVFBxcZC0s1+HPFV
 uaCfwyBY4wXPew7C383xvzve/I+FgKCXhrDUH2m9Oacq3h7wsS4WHgeMNUZV7/8kbV7E
 bFKmV9krkY9l3O8I/sW7bS9zS61mowaqJo58RQxVVmukOBPLGcqMMhBO4WdJ5hkr/gKQ
 Z74Q==
X-Gm-Message-State: APjAAAUkQZEBIjTQz2qBVaUFsM16reDfv2INQ0a5UqhAkPyDY5FLAvr1
 I+cLg4PMXZqDD3oOG0DFRSZLi4bp
X-Google-Smtp-Source: APXvYqyi85IXeYNlKiRU9CfS3VUsHIeGRvcoN3KGVKyN/8gCemDLZxmG2aberbhL23uSfab6ZAZFnA==
X-Received: by 2002:a1c:6a14:: with SMTP id f20mr375073wmc.110.1572891559775; 
 Mon, 04 Nov 2019 10:19:19 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id w8sm23127580wrr.44.2019.11.04.10.19.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 10:19:18 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] reset: brcmstb: Remove resource checks
Date: Mon,  4 Nov 2019 10:15:02 -0800
Message-Id: <20191104181502.15679-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104181502.15679-1-f.fainelli@gmail.com>
References: <20191104181502.15679-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_101921_996710_C05F1033 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The use of IS_ALIGNED() is incorrect, the typical resource we pass looks
like this: start: 0x8404318, size: 0x30. When using IS_ALIGNED() we will
get the following 0x8404318 & (0x18 - 1) = 0x10 which is definitively
not equal to 0, same goes with the size. These two checks would make the
driver fail probing.

Remove the resource checks, since there should be no constraint on the
base addresse or size.

Fixes: 77750bc089e4 ("reset: Add Broadcom STB SW_INIT reset controller driver")
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/reset/reset-brcmstb.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/reset/reset-brcmstb.c b/drivers/reset/reset-brcmstb.c
index a608f445dad6..f213264c8567 100644
--- a/drivers/reset/reset-brcmstb.c
+++ b/drivers/reset/reset-brcmstb.c
@@ -91,12 +91,6 @@ static int brcmstb_reset_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!IS_ALIGNED(res->start, SW_INIT_BANK_SIZE) ||
-	    !IS_ALIGNED(resource_size(res), SW_INIT_BANK_SIZE)) {
-		dev_err(kdev, "incorrect register range\n");
-		return -EINVAL;
-	}
-
 	priv->base = devm_ioremap_resource(kdev, res);
 	if (IS_ERR(priv->base))
 		return PTR_ERR(priv->base);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
