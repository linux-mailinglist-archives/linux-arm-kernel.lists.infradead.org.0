Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF26CEBEA0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 08:46:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=an/2T8AbfBakU0H8KCpRfmHS+0u3m4+VOGaQYgaWOUA=; b=LkwdIE/LwN1FWj2cY56jgcUJJ5
	l0AOXHd1VYfCAog15u80ZD/oId6DLtWT9a+CzNwtJMBP2OoICHHuOC/ZXbiGmHZNniYXRWv7Kq1ko
	cW3z7FB7Kcd69PHe+tpt1v92cpMPmN1m392jQH6Tc4Gwk7bwncwUKXjaTZ3+k3v/tCEZJUEOjisJ/
	cvviLxHWu3UuAM0yoIPZwKvAL9cuKbUEWG9VTm+La+KgmMfJjjUaN47MP9gHBBAv5oh7zND0OC+UX
	j71BNmX542XgvCrM86opMaUgCYv/XsHo1L5dv7pEN8B+BRFOJ0V8D3jnu/ZnUXU8ytPocqw/IlGKG
	m3jrPNjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQRdz-0000ok-4G; Fri, 01 Nov 2019 07:46:51 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQRce-00084r-VV
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 07:45:30 +0000
Received: by mail-wm1-x343.google.com with SMTP id q130so8242065wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 00:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GReEFG2GWwJjsYxj+qnWr2ZeJ1W345Xh+fZqhg0GuOc=;
 b=aPAUMhk6ayoWZyrvs0fsQnUU17xXjJv6voGdabNYsT7kPSp8UW342XBwFG/EeCKz0M
 9HsX/Ldh/pDdk8lDjcmMli0SNg0TYdag8vMTj25aA78BvXaLqt9Cip7XMGccXX3djbMt
 f5T+xevpesx2ybGhZaHvyv/4lfHjcQ8WKL17xX0pbqQCYyF5U7q2oaX4MLyl5liN0hHz
 CQpfRklQ5z2fEf9l34Dg4zNLAGIIvGG8s0970wnbzNziW5bYYqeUboSChFg21DExUJgn
 MmSriuu9eSFRucviBK0WmT8DoZUToeM4JmB7oRR+ek1UV/IoV6ueW0DXiGuiCb9GxbAb
 /5uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GReEFG2GWwJjsYxj+qnWr2ZeJ1W345Xh+fZqhg0GuOc=;
 b=K6aJKmA9C9O46FbxMI+r1E4mTNZoZ5It3jhX6j4vUECrcZcVjzfSmCkLFTkB8K0/8a
 qt63jFVyn0Rd19l6RSGTNZ30bM+pbJWyukC2CbeDJep80R9MxbRVad3Fh5jGERiIhLMH
 ePgG4bcfsFAkOubInXDhZHTWmztPQJjCGOWwznZQWDkRI5hwg17NvSw2KBBSXkMngiA8
 +8+3kKL1eyR+vZ/IxqrWowCfjOzO2ncmKs++oLD/bC6X9R0Caf8Sxhhze38+ZBGZjng+
 LKx8YdMdSEcikYZW9p8nwa4tL5c7l/+VaUmYD6ZkngT7nIyN6PlzWslDnIkNluBQd3+q
 iWBQ==
X-Gm-Message-State: APjAAAX7OlY0xXlP/jHfIxyhjlmZ5J4Z2QeMpDWTX3pLQUPD/wY53CKQ
 gGtxsHTM6ieQ+y7CTt3PPT1Uhg==
X-Google-Smtp-Source: APXvYqxqiXxfND79tU2euKm70y8ndsR62OXKUOIdUDdm+VT6d6erzdd+NNvtgc9PKa8pxvqTSzxBnQ==
X-Received: by 2002:a1c:808d:: with SMTP id b135mr8624500wmd.175.1572594327746; 
 Fri, 01 Nov 2019 00:45:27 -0700 (PDT)
Received: from localhost.localdomain ([2.31.163.64])
 by smtp.gmail.com with ESMTPSA id b1sm576215wrw.77.2019.11.01.00.45.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 00:45:27 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org,
	broonie@kernel.org
Subject: [PATCH v4 05/10] mfd: mfd-core: Protect against NULL call-back
 function pointer
Date: Fri,  1 Nov 2019 07:45:13 +0000
Message-Id: <20191101074518.26228-6-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191101074518.26228-1-lee.jones@linaro.org>
References: <20191101074518.26228-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_004529_123905_13522342 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If a child device calls mfd_cell_{en,dis}able() without an appropriate
call-back being set, we are likely to encounter a panic.  Avoid this
by adding suitable checking.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>
Reviewed-by: Mark Brown <broonie@kernel.org>
---
 drivers/mfd/mfd-core.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
index 23276a80e3b4..96d02b6f06fd 100644
--- a/drivers/mfd/mfd-core.c
+++ b/drivers/mfd/mfd-core.c
@@ -28,6 +28,11 @@ int mfd_cell_enable(struct platform_device *pdev)
 	const struct mfd_cell *cell = mfd_get_cell(pdev);
 	int err = 0;
 
+	if (!cell->enable) {
+		dev_dbg(&pdev->dev, "No .enable() call-back registered\n");
+		return 0;
+	}
+
 	/* only call enable hook if the cell wasn't previously enabled */
 	if (atomic_inc_return(cell->usage_count) == 1)
 		err = cell->enable(pdev);
@@ -45,6 +50,11 @@ int mfd_cell_disable(struct platform_device *pdev)
 	const struct mfd_cell *cell = mfd_get_cell(pdev);
 	int err = 0;
 
+	if (!cell->disable) {
+		dev_dbg(&pdev->dev, "No .disable() call-back registered\n");
+		return 0;
+	}
+
 	/* only disable if no other clients are using it */
 	if (atomic_dec_return(cell->usage_count) == 0)
 		err = cell->disable(pdev);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
