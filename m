Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FBD3E3852
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:40:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EN9ZGoE/c8eHJqIvmJAsDcPBVRkEvHoYYyVpbu3SzVA=; b=N24ZGanKkn7GC1VYlCdYHLG8GT
	oj6Hhggd8uADlR5hrXAuTvpUgPqU9frtoyH3mIwUIfyVllc6tQWP9M8Ij1iSWfMWve0JmThaitn0B
	54owK7nyELWc/7HFk67Vt7Ny31YRQKJ6OhhTjrkAGvYy9xywcrknL80IdDnpaLS6e6dQLdsPMSPN5
	ZgW99uICS/HkZLQbifp8XwHzi7I/stP9L85YADfCA+fL6kLq5Zt65Lj/wVqnUGVBhow8VZRd7W6Ti
	RUAw7NwhgfcaIfJiBYmr8r+DT2SLncAJOzbBbWfl5yN6EbfkJJWwWIO0smrXhpwWGiWZ8vITLJ3us
	zy+SLE7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNgAJ-00089l-7w; Thu, 24 Oct 2019 16:40:47 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNg8I-0005MN-Of
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:38:44 +0000
Received: by mail-wr1-x442.google.com with SMTP id q13so21864964wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 09:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=hp9auP1eDPhHh11Inl/NtM2csOEQVC7OB8vmkOBN3Yo=;
 b=dEYKAgP8b62ELK3aQy8Sm5kXfcxSfxaAtjT6k+tEy2Fr1SkdaT8Z6Pmgbfx5CXzc14
 jTsX9Jkng/DOgrAv0GelNisE3nHQ7yTupEmSIAw/5n4kSTtlYrgx/YLnF8DGyvAslB8P
 p0BbLyzg/LECSvrUWBrp0j7oW4JkIqArUMeHE28aaAMfMMnvRLn1MfFJ+8lVl8XlSmxk
 n/TCMCnjjEQPP1XiIBwM5a61rQX3N5AwYfykWqp0MbROF9g2ZoZQBdCr5CjtYKC5eVzL
 +Es6ogdDihTa1NzCLCbLUQ9BywpWX9XItmuPED0qWoroBUJsMwNdyk6pt70Y5qJYO4hx
 31OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=hp9auP1eDPhHh11Inl/NtM2csOEQVC7OB8vmkOBN3Yo=;
 b=P8mes/DuEuEEJrXHYSRtj2vWgRyxz7GkksZIo5C9riGNJdyj+cCsEML3lR/kCdaULW
 IR1jgeqOe8gXBJB2uPDndJokBwuSgS9zQKJE9GPdSObvwHCdR13SF7y/F+KeOr4dcu7T
 9HLHtXfSwsK3sVq6JtlESeiC33zW5rJ801gyzeYBwQICdmrmxGL1gJfyh03XO36WHBWB
 OuLZ+Rxhz/INcHxfcXTcQ+6in0oYZyRroORsY7lLnvXRg3ftxYrODtxhKuk5gMeQY4Ty
 IjdQ8w5GVAzg2DkKmVl2QyTQP0Gg/j9Y4ujsZlaRFPFDBFv74/hPpv6S+HHJqQRFYdZJ
 SJDg==
X-Gm-Message-State: APjAAAVAbt+XQEISjarhUOTY5sn/PPhZvnS61dkLJnzqBa1YsZM65q0v
 XaalBSsf1VA3HgUITjcy+64Hbg==
X-Google-Smtp-Source: APXvYqwGElQJItgpvXG2KweIz1nT4zNaMi0EfD6C7LIDSjrHnlkygJRqfB/W9QG2S4JqeD5Mmp8A+Q==
X-Received: by 2002:adf:f686:: with SMTP id v6mr5010878wrp.141.1571935120637; 
 Thu, 24 Oct 2019 09:38:40 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id 6sm3446175wmd.36.2019.10.24.09.38.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 09:38:40 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org, arnd@arndb.de, broonie@kernel.org,
 linus.walleij@linaro.org
Subject: [PATCH v3 04/10] mfd: cs5535-mfd: Register clients using their own
 dedicated MFD cell entries
Date: Thu, 24 Oct 2019 17:38:26 +0100
Message-Id: <20191024163832.31326-5-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024163832.31326-1-lee.jones@linaro.org>
References: <20191024163832.31326-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_093842_796216_BE63821E 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lee Jones <lee.jones@linaro.org>, baohua@kernel.org, stephan@gerhold.net,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CS5535 is the only user of mfd_clone_cell().  It makes more sense to
register child devices in the traditional way and remove the quite
bespoke mfd_clone_cell() call from the MFD API.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/mfd/cs5535-mfd.c | 25 ++++++++++++++++---------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/mfd/cs5535-mfd.c b/drivers/mfd/cs5535-mfd.c
index 27fa8fa1ec9b..4c034c9f2303 100644
--- a/drivers/mfd/cs5535-mfd.c
+++ b/drivers/mfd/cs5535-mfd.c
@@ -50,16 +50,19 @@ static struct mfd_cell cs5535_mfd_cells[] = {
 		.num_resources = 1,
 		.resources = &cs5535_mfd_resources[PMS_BAR],
 	},
+};
+
+static struct mfd_cell cs5535_olpc_mfd_cells[] = {
 	{
-		.name = "cs5535-acpi",
+		.name = "olpc-xo1-pm-acpi",
+		.num_resources = 1,
+		.resources = &cs5535_mfd_resources[ACPI_BAR],
+	},
+	{
+		.name = "olpc-xo1-sci-acpi",
 		.num_resources = 1,
 		.resources = &cs5535_mfd_resources[ACPI_BAR],
 	},
-};
-
-static const char *olpc_acpi_clones[] = {
-	"olpc-xo1-pm-acpi",
-	"olpc-xo1-sci-acpi"
 };
 
 static int cs5535_mfd_probe(struct pci_dev *pdev,
@@ -101,10 +104,14 @@ static int cs5535_mfd_probe(struct pci_dev *pdev,
 			goto err_remove_devices;
 		}
 
-		err = mfd_clone_cell("cs5535-acpi", olpc_acpi_clones,
-				     ARRAY_SIZE(olpc_acpi_clones));
+		err = mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
+				      cs5535_olpc_mfd_cells,
+				      ARRAY_SIZE(cs5535_olpc_mfd_cells),
+				      NULL, 0, NULL);
 		if (err) {
-			dev_err(&pdev->dev, "Failed to clone MFD cell\n");
+			dev_err(&pdev->dev,
+				"Failed to add CS5535 OLPC sub-devices: %d\n",
+				err);
 			goto err_release_acpi;
 		}
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
