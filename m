Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F63DEA41
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 12:59:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YwqT0bggAQu7WNbwEqhbhc1Lw3uVNBvjx7l7zBKEgjw=; b=Q54r8uE4cct9hf8Zg0esbSXeJs
	EVucJF2CO7JTxIWomxeqgJbcepFwEani/vTT85EFfYqrL5M4yhIuIWhK42Z8XIva+1QeSgZZ8geCJ
	3Kor4klVqygMzptWlgSoO3YW4YMvcwARAV4NkQqCCbfjruhzaVygVyXF8vkuDCfSOZ5rrUCnCyaIQ
	RD+T1YJGmqklROhdE2QjQt5xMl2QX1FXfVe4UGBTgIZGKqyMPq6MGc9Eqfcp+JgL6BFL7XECu5dnK
	Bkv7TaTfq88cuhjr4l0oZxIxuNlDtGZT5aYEpoGqLnwJmksEIgCw0gP21uBqsd2QAg4JDyPjeB3oL
	A6NhuOQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVPC-0000lT-0K; Mon, 21 Oct 2019 10:59:18 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVOR-0000FJ-5l
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 10:58:32 +0000
Received: by mail-wm1-x341.google.com with SMTP id 14so5640208wmu.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 03:58:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=skmII0RjDFD6SFbyT8IGszhWT77ReZDZIQ2EcDM2hGg=;
 b=O2gJBDIt/uu3D3HrGWT7bdvLhDBGsgkK+oKb1wgbr874atEZbtzgTb8tFMtu8f/0R6
 DqH9iU2QQIsK7OyqVEb3An+lKaclKzQvZwQ/cjdA3GiRoKszuxJb5p9srbdXf89RCJmo
 qpwCM28UgKws0pbdkgaxpwhS8W9n+q0Yn0uGsj+fB5S2t2AA9m8Mx8LifNoureM40/ss
 CQPAx86Vv5QabLz+CB7Y/c4SgIwxO1/6zKvo5bnGXcSYEYTp6iLO+gK4sWphMt/NfFor
 NR/+JYtiap6aqa7V0py2HEeSMWxcnmxz//1mXU17TOnqGHkOvcjvGRD5mVzQfPt6aqlY
 ufEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=skmII0RjDFD6SFbyT8IGszhWT77ReZDZIQ2EcDM2hGg=;
 b=LsXxM1YDieamhDeHJqdTK7n+9386WSBRBa67WIUhRC5PGHMPstmAdZ2osqghiKcYGY
 4AGtr+ronNvLhjiwrJch9n/5faony94hQG+mgzhx0CiX/DNqjmFW1tGPN1ic5Ml0M8xh
 CCznvrkmLtYpeKVaBr4kopIbDTxLgiDMQpP9elnWQhOSKX53cNHja3RXFYghbjFw7zpG
 D5Rqhs2IkhHgXfgLcGDEp0tOVf2CxasZ3sPAgsx0ZVwtQkmTgQY+UjpdUELsoJ0CtKg+
 0VlwM7x9dWPKXgtx5f8tV2YfswmqAeKdyhv4XdMhTKQjGb/FoswfRjALrt7bX6B2RP9B
 C8fw==
X-Gm-Message-State: APjAAAWCMCgWlwNbQtsQOi2YLL+CXbOaiZ/OVh5IVVdTOBqpSGroqTCD
 Ka4O2zvx5XRajxi9PkaKW5rkeg==
X-Google-Smtp-Source: APXvYqz3U3MGv8VHAO1I2eIglmjVZ+mPUIWrzgDEdGlAlL0T5JpQMoPplNl1K4VOBbZfJbY965PkdQ==
X-Received: by 2002:a1c:a9cb:: with SMTP id s194mr2818850wme.92.1571655509326; 
 Mon, 21 Oct 2019 03:58:29 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id q22sm12544289wmj.31.2019.10.21.03.58.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 03:58:28 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org, arnd@arndb.de, broonie@kernel.org,
 linus.walleij@linaro.org
Subject: [PATCH v2 4/9] mfd: cs5535-mfd: Register clients using their own
 dedicated MFD cell entries
Date: Mon, 21 Oct 2019 11:58:17 +0100
Message-Id: <20191021105822.20271-5-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021105822.20271-1-lee.jones@linaro.org>
References: <20191021105822.20271-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_035831_241946_F47C90E8 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 drivers/mfd/cs5535-mfd.c | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/mfd/cs5535-mfd.c b/drivers/mfd/cs5535-mfd.c
index 053e33447808..96a99ac13384 100644
--- a/drivers/mfd/cs5535-mfd.c
+++ b/drivers/mfd/cs5535-mfd.c
@@ -57,9 +57,17 @@ static struct mfd_cell cs5535_mfd_cells[] = {
 	},
 };
 
-static const char *olpc_acpi_clones[] = {
-	"olpc-xo1-pm-acpi",
-	"olpc-xo1-sci-acpi"
+static struct mfd_cell cs5535_olpc_mfd_cells[] = {
+	{
+		.name = "olpc-xo1-pm-acpi",
+		.num_resources = 1,
+		.resources = &cs5535_mfd_resources[ACPI_BAR],
+	},
+	{
+		.name = "olpc-xo1-sci-acpi",
+		.num_resources = 1,
+		.resources = &cs5535_mfd_resources[ACPI_BAR],
+	},
 };
 
 static int cs5535_mfd_probe(struct pci_dev *pdev,
@@ -105,10 +113,14 @@ static int cs5535_mfd_probe(struct pci_dev *pdev,
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
+				"Failed to add CS5532 OLPC sub-devices: %d\n",
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
