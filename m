Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 755014B7FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 14:19:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YDQAmO78YHl3Gmje4EVf04RAbL+bPHv1Lzue1AQIVeo=; b=PcpnXnsyWGGvka
	WysYKK+/kElDXunEYqnkmbEEfm+1BFnEeswP6ssYzIOWNj2XKpcA2QilwDJLqVtnPhUOOgq3H08OJ
	0QfOPNJF3s/heoN9iR2kpaSt2KWbdfV67dSR3UYg14sqXSJuYVll91uNAdCALEHrKLEL13FbYN87s
	1bXKPg4DsjGooQz3fu2yZJQo11OBCpjqgyGpT4qokqZAMxqQ7t+veDUobXT9LJPssxIyeWp1jJIMs
	Xn0evnfKPqgPPf21i0IEHIJqz8h5rg8wCQ+nX0fXhDO6Mmj5XKDmgM7316OKU/ILbJaAjOpj/20Xm
	piR1wIYt/IYxSrYswHzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdZYJ-0006CB-Qh; Wed, 19 Jun 2019 12:18:59 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdZY8-0006Bh-RF
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 12:18:50 +0000
Received: by mail-wr1-x441.google.com with SMTP id m3so3179769wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 05:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7vQWMM04qjKoqvfboQwGxdL+4IwL/Af9mC5Qcpbu+To=;
 b=j8h7hwqk/6xqaFEt6OOoRh7tpGPbjyYjJQ3Qb540gSRoOdA2c+HOIWbsBug6YKGtRj
 K3G8XmS0qLhJw9wJZjBZ5m7t9CmnLs61UmAaN7apJq1WJ/WEyrqijL2z/XCJhn7OCNtY
 wNf4d/xSw2Ux1cJDB3z+DoykyNzzJnxFSdxj2xgp4kYBalm5W4m9WkXQ7YPm8sM0hBBz
 1N33eXUzFsDoHsnke7h5acQUiukL20gjlJ1vTn1wWCexatchAXJpkVIjwafa2KDB14Wc
 +9BSSENlfxbg4S0RFD+raL7crb0iQ7xWlHMTxNGb7tuoAEF0BohDd44vqorWdnLD2pXH
 VcCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7vQWMM04qjKoqvfboQwGxdL+4IwL/Af9mC5Qcpbu+To=;
 b=nXk5H6JoQksQnsKK6WVmv7i2+O7eHrb0zyPqVp3iXntVdHspunSWNv7c0sm8u+KT5v
 iUYgUgmtZzTJHDnd3/pMQsXyga7ggaHU7hgQOYnMxjt2jadtq4yITHsJfRFowl0uzhxW
 YkUE7vldayhkKuDXo/3B7aIB5rGmGTZxIc0vDi6kXNOu6vS7qKwKD8PBbVLS20hvOCjV
 7g/CQ8cqfl1fUox4ptnoAENMKnv56sEfboJooRaWl66YcQ2QA8GhH5T/J2PnF09ZsJ/r
 Q9w82V9RIY/zY2uJOOyQlxI+SdLl2Y0dj/bXjgjBQkWCs4vc3ZFB3/LWhFq0uW/CXruM
 dl7g==
X-Gm-Message-State: APjAAAWS+PuSpgLpVM2n+Q0Do7K8CYsChd1E83j+0b0oKITsRLgBCsp0
 lazwuBTowHXu4qRPBGvU5UWYOvEza/c=
X-Google-Smtp-Source: APXvYqzHJaIzt42CI09p+2CTvyYHvJupQyZzEbBqSy9ydAsF+kbAr1BlDLVE1BEhXHSXE4VMY9UarQ==
X-Received: by 2002:adf:ea92:: with SMTP id s18mr9348470wrm.257.1560946727177; 
 Wed, 19 Jun 2019 05:18:47 -0700 (PDT)
Received: from localhost.localdomain
 (aaubervilliers-681-1-6-209.w90-88.abo.wanadoo.fr. [90.88.128.209])
 by smtp.gmail.com with ESMTPSA id 5sm20419966wrc.76.2019.06.19.05.18.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 05:18:46 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH] acpi/arm64: ignore 5.1 FADTs that are reported as 5.0
Date: Wed, 19 Jun 2019 14:18:31 +0200
Message-Id: <20190619121831.7614-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_051848_946544_39A82E94 
X-CRM114-Status: GOOD (  11.65  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: lorenzo.pieralisi@arm.com, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 catalin.marinas@arm.com, will.deacon@arm.com, leif.lindholm@linaro.org,
 linux-acpi@vger.kernel.org, lee.jones@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some Qualcomm Snapdragon based laptops built to run Microsoft Windows
are clearly ACPI 5.1 based, given that that is the first ACPI revision
that supports ARM, and introduced the FADT 'arm_boot_flags' field,
which has a non-zero field on those systems.

So in these cases, infer from the ARM boot flags that the FADT must be
5.1 or later, and treat it as 5.1.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm64/kernel/acpi.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/acpi.c b/arch/arm64/kernel/acpi.c
index 803f0494dd3e..7722e85fb69c 100644
--- a/arch/arm64/kernel/acpi.c
+++ b/arch/arm64/kernel/acpi.c
@@ -155,10 +155,14 @@ static int __init acpi_fadt_sanity_check(void)
 	 */
 	if (table->revision < 5 ||
 	   (table->revision == 5 && fadt->minor_revision < 1)) {
-		pr_err("Unsupported FADT revision %d.%d, should be 5.1+\n",
+		pr_err(FW_BUG "Unsupported FADT revision %d.%d, should be 5.1+\n",
 		       table->revision, fadt->minor_revision);
-		ret = -EINVAL;
-		goto out;
+
+		if (!fadt->arm_boot_flags) {
+			ret = -EINVAL;
+			goto out;
+		}
+		pr_err("FADT has ARM boot flags set, assuming 5.1\n");
 	}
 
 	if (!(fadt->flags & ACPI_FADT_HW_REDUCED)) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
