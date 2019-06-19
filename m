Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EC64C1F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 22:00:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=I+3U2VXt2rPWTADHakjQk1gBLJXS7I4+qt2u7Xw1jm4=; b=ippv3Lmo2P6GousrYIHNvp0CJM
	KZ1tElEX1+dXAxEBE7lH3gcDjBPBXsc34BbbfHU1MfIHhn0qL4I/AhjzxCWLlhmXwD6szbLjg6X/H
	2ERJD1HxN+5LD0IjVIBG7hhw+54NEiomj+BVJsFfOUxc8Bkn6+Xq1+hl+KGAweQHwROf3NJlAE8jn
	GmnlJXIhI3s26oIM/ypvwbQQTh7fz31otPkE7ZiqM0006YTcF9KG4nNF2Ok0SxkS8Si3HnznlP8QX
	zq6Gb4aRPfgdSngCi9a3LZsG8A7tHOiPBg4RhoQzqEpgj7Yzmk1kZvtGdxZ2StckzTyg7jdjWHRK2
	FBZoXS4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdglH-0006Ey-2J; Wed, 19 Jun 2019 20:00:51 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdgeL-0006ce-SH
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:53:44 +0000
Received: by mail-pf1-x444.google.com with SMTP id j2so207674pfe.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TV+NMprqoFfwSyp0QoUYpBDwrINgLFtHUcekXEvVDhU=;
 b=oAjogQElbtpiXBPkp0yfn2AojM1AtUpM+3pCVVj4zJgQGV7D/Tk40idYWoewYpz9rl
 JEsZ2FcTE/1ffdwluhQJH0JFGE5T3/cEaOMj1bLnvZ14ACPNtTgnhIk9sz6W0D4Aqtdt
 bz0CRc6CHkW+kL4WMrNVnvkE8wslV1OFSQ1iLz4DpFVEO/cp/IPA2k05woN/DyeEa9UH
 PdELMZnl9V3y4eSwuBKHcKbzoWsK3/i3lKUF1py8hzeHpWUpAzzIr7fWaxsBccBzrZYp
 huGseqIsviljBouwlHVgSQ/YpeKIrWiHsgKvHqh9KSGsIqUMi20w+3eVgrXHUdWbm9Ez
 8ToQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TV+NMprqoFfwSyp0QoUYpBDwrINgLFtHUcekXEvVDhU=;
 b=HrBEmyvNZeGYatS5grs4lhRRX+m+ovqQCiGFfLKsDPoBrY2tlZ3aKWW2qOEWUmfPXx
 S3JNe7eJwsPMMvhp7+equtHQOq2oQYjZQy6aikZ0GFVn6VnsbqkXTDkOKB1UxrGZloIN
 4FMIaThT2lTvIRZ96j9e9ZtPyYgYsu60Hq0FB9Muy6yrsC6IedD6hcNZMmgMEU1chsMH
 wZG4gQ9iw+ALFNBw5sywtblPzMVSDJUnbbaCma/uzSSZxwYTKuqMnRkb6KzB9WGGEbEb
 Md9f8AmcpO75W6pPa8wRcMOLYeVWN9IJbib8OLR+kQjYS4QV8BkEUTZJpb5b9C1xutnj
 Yw7w==
X-Gm-Message-State: APjAAAWt5c/d8cXxeu2vW7MKrp2n325uAcKEx0roNezSQkA2VEmamhOo
 eglPJhwQiDm2Mrhx0MGnSv9eRe4ELv7awQ==
X-Google-Smtp-Source: APXvYqxCuKOGb++7lFH5PjEe+Iq08jzfwZT8FMh6rzB1FBhyWtUyw28itx/9D7uwmq41Kq+xs932/w==
X-Received: by 2002:a17:90a:ac11:: with SMTP id
 o17mr13183360pjq.134.1560974019576; 
 Wed, 19 Jun 2019 12:53:39 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j14sm21615993pfn.120.2019.06.19.12.53.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:53:39 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 19/28] coresight: Add dummy definition for
 of_coresight_get_cpu()
Date: Wed, 19 Jun 2019 13:53:09 -0600
Message-Id: <20190619195318.19254-20-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619195318.19254-1-mathieu.poirier@linaro.org>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_125342_242842_9563FDC3 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

For !CONFIG_OF case, add a dummy definition for the of_coresight_get_cpu().

Reported-by: Mike Leach <mike.leach@linaro.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-platform.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index 6fef8732eea5..3c5ceda8db24 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -307,6 +307,11 @@ of_get_coresight_platform_data(struct device *dev,
 {
 	return -ENOENT;
 }
+
+static inline int of_coresight_get_cpu(struct device *dev)
+{
+	return 0;
+}
 #endif
 
 #ifdef CONFIG_ACPI
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
