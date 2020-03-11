Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 919D61818B3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 13:48:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QtOs/niMka8wc2xSQInpRlzm1I7WvFp/iZg/rIlWYkY=; b=SEdGVyXEWcU3xR
	N59UTH/8ziL+HMwueKOlmcK+sPkZ7s3yUDMW7tGuiveIw5bWtOARV1tb6PBKLcUxol4vQ3UD+X4VW
	q2e4QgsPcfXGTjcMG1cZO39oAcCBPqPOYgJ1ITXBLNKsGMHFtn5y++SjsmSycNDwMFY3BHZKHqIyC
	Yt+z0/48G/z3zBjDIq1nBmFIKmgerLoNkQYJCzrRq+8g3PZVyp347QmnwFpRGAG7soWqZOn6pT+Zp
	Vpg2lssm1AXfLU0xRuDY2f8NYG2ShyGgXerwL8ZjivaSOxZvKFZsR0aGfRU4oYxwDzkCFtswPuE1C
	tgH3Ayi2EhdsqekfyPdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0mR-0000Vx-MQ; Wed, 11 Mar 2020 12:48:11 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0lH-00083g-IY
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 12:47:01 +0000
Received: by mail-wm1-x344.google.com with SMTP id m3so1978131wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 05:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d7fzzw/5lEfLgru+68iO/J8krazqjJjWjKm9fH3TH5I=;
 b=d0OldcPYPTwC6lUxav+jf6KB+UcGBjwxPVFVLOS8P+DRcf4Nq9+Cgk3ER62YCupyKO
 n63Plm+lXXP1tDCSs66zuHCHs/M9n6CcfUD83j6S1A3sgTchEZWf/GNdy1+Sg6PJsXx7
 v6vVCuz7+yMQ9U+jeSTzabfnBGdgbxAl7+8p5eiV0vMWAbcwpvxqhcw3kVlpD7RcuEis
 e5lM+BenuFHNorZQvoPD0B0I5/lix/gZ+JhB+tlQQjDMmJ4sZt8Pupm67tdBc4wFY0mf
 EgB/VSPg8NrV9V5qGawXDH19VqniDfIEy7gvlpILkFxSAN86lG2R7fZNu+SKWuDilrZc
 hdmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d7fzzw/5lEfLgru+68iO/J8krazqjJjWjKm9fH3TH5I=;
 b=V9q8lQOsGGEeFKbOgGPLvZXQtpdMMNieGObE/pilXD0XfgXnf9XNYbhg+Yda0aeQuR
 CeyPLv4ESKkiy2ERCXP1mdpLHCkrV3Q6/GiWGJ/H1uPL710fBvo9F5cgZc9YbshYzxY1
 ehDpBYxB72YO/5SsRqPvCPBNQ5XdejCEn67/wJdDSNznqBW6581bjRlDzdm+E8ACWvfu
 A1fcvLPrppL2ur3U7nmsQsHYpqVsjr/6TgumOb50sdPq9bXCPUWWPhxZ3o7dtFRT/i50
 H6dZsrLU5I9ieDc/+KoeesOBzlZ12eBfEF69UYO8/2JfPxfmWRDOuX5bVpdblfzzrBoR
 D0cw==
X-Gm-Message-State: ANhLgQ32hOrawwYgncSQXkrx4WP2eRHs8LHaNn3jMFnrZdPIWlUp/vXD
 1ZhFk5xqLJEU9Ej+bMN18LzSDg==
X-Google-Smtp-Source: ADFU+vtrrbz3xW1uwROP0nlDBlOyziir6FkZYgi3Shk3F4IjgLnSc2vkzPiEnYQH9VQXQDGBOwBJWg==
X-Received: by 2002:a1c:7e08:: with SMTP id z8mr3550520wmc.166.1583930818310; 
 Wed, 11 Mar 2020 05:46:58 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id c2sm8380020wma.39.2020.03.11.05.46.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 05:46:57 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: bhelgaas@google.com, will@kernel.org, robh+dt@kernel.org, joro@8bytes.org,
 baolu.lu@linux.intel.com, sudeep.holla@arm.com, linux-doc@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v2 03/11] PCI: OF: Check whether the host bridge supports ATS
Date: Wed, 11 Mar 2020 13:44:58 +0100
Message-Id: <20200311124506.208376-4-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311124506.208376-1-jean-philippe@linaro.org>
References: <20200311124506.208376-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_054659_649090_8524E212 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, Jean-Philippe Brucker <jean-philippe@linaro.org>,
 lorenzo.pieralisi@arm.com, frowand.list@gmail.com, corbet@lwn.net,
 liviu.dudau@arm.com, rjw@rjwysocki.net, guohanjun@huawei.com,
 amurray@thegoodpenguin.co.uk, robin.murphy@arm.com, dwmw2@infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When setting up a generic host on a device-tree based system, copy the
ats-supported flag into the pci_host_bridge structure.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
v1->v2: keep the helper in pci-host-common.c
---
 drivers/pci/controller/pci-host-common.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/pci/controller/pci-host-common.c b/drivers/pci/controller/pci-host-common.c
index 250a3fc80ec6..2e800bc6ae7a 100644
--- a/drivers/pci/controller/pci-host-common.c
+++ b/drivers/pci/controller/pci-host-common.c
@@ -54,6 +54,16 @@ static struct pci_config_window *gen_pci_init(struct device *dev,
 	return ERR_PTR(err);
 }
 
+static void of_pci_host_check_ats(struct pci_host_bridge *bridge)
+{
+	struct device_node *np = bridge->bus->dev.of_node;
+
+	if (!np)
+		return;
+
+	bridge->ats_supported = of_property_read_bool(np, "ats-supported");
+}
+
 int pci_host_common_probe(struct platform_device *pdev,
 			  struct pci_ecam_ops *ops)
 {
@@ -92,6 +102,7 @@ int pci_host_common_probe(struct platform_device *pdev,
 		return ret;
 	}
 
+	of_pci_host_check_ats(bridge);
 	platform_set_drvdata(pdev, bridge->bus);
 	return 0;
 }
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
