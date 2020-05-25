Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 781151E175D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 23:50:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AvF7UbX6tNOGneS2QKiL3Xr9H4V83K62m7gkw1xUbTg=; b=gkmjLrR07gkBJC
	qw9AXm/q4UHo/zJd+ywHwdBEUof3d9vm8QfG0+tfcowgEObUSzmeU7mh+AzvZ+B3WByttyX07JO4A
	dIT3LDRSdBnwU00DIdthfyNCPqpp9rIC0T/ARrJA+V58R4lfNI7WISeoqSkJE3hklJfEkkxQ20Ys5
	GQhHvdrjNv1LSqpbseKZ1EiEBeUD+KDmVjqMMOa4ueFvgUA7a1AyM7f7USbmdYwzVgoZ2CrP8d1GJ
	zKWZBoMDfhtrbaTy3YnNy2R/q6gLFdvlAOdRfqSfeclaHG/sGQeTsQzCQxrM1Umjn31Iy3OBi3/sF
	Zr/SCvekOYALMQJRUhkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdKzX-0000W8-Us; Mon, 25 May 2020 21:50:39 +0000
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdKzA-0000NG-EJ
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 21:50:17 +0000
Received: by mail-lj1-f195.google.com with SMTP id l15so21809342lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 14:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iEiJkh8NOisGzIdjA2H8Ok8XHFo6aNWnpKwvRPxnlbI=;
 b=F0Dm69MdRLl1SxBsFc77E4osmjMTyNBL9fquMX9me9JytXqkrntX0IB1ESMq2khzr5
 yLJvt9nWa+eIDZ6fzdHAf82L5UJYn06C4sRahqCU0cBjfLoCgHmNaxq0KFTJFaRCvXhc
 Ftu6ItywBCl7PQFZY6hSErjbpHd5VzG+rqhCvHoAHTZ7BarMhuHbAH4mXP8hZ4WgYUZW
 2VgnUpRQ+CXevOpYJQNKZiTj+SRdLTbMIa8E98zZl0B6You97hjFSK3purxPAfsjk5b0
 qrLy3Fs+ur2e3NrQEFbAmjpBlKFq1GiP59sap03Fh4plngauYBQh0O0lzlGnB4lwMdw3
 vavA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iEiJkh8NOisGzIdjA2H8Ok8XHFo6aNWnpKwvRPxnlbI=;
 b=oY0OCVwopUDPQSDIG2Cb03N7EkEBwsNgyi/0rh1cYh2+Mwj0yviYI31PKAcUnNu5kX
 Llm9/HCPRrfSEPajvtkWOAjQdvdvZggyrIBa/ks92zgXjcHR8L+Hxh13c0gvA8DkmcWr
 AqHINMtYgojetxoEEqcwZcowuhnUcn6kEQ2zg4iNvqPhYhESs+PuohalK5pwbNSLIImB
 A1o4wuVsvkwfOkCV3Uh4cjG0rtk0+DMUxojatLCtysOpZuojcQRA0gWxLZBU2E+jr4HV
 YtoVhxHhe1vXhOLfw5cWD0CvcNvROQcA/xffz0IczWvJZuIlAEZ4nfxEQBwcqoXtFxh4
 3L5Q==
X-Gm-Message-State: AOAM533tq2PmCCFkb4o3D2zxoPXrLEAqWvD+VbUuT5Dn+DP9CGwJKO7+
 Rh+scRS5rAc4kEBeY+78O80=
X-Google-Smtp-Source: ABdhPJyP8HJlSTai+vcBxS4V7LXTWrEOfp1rNKWJ8hrEnvT9KdNn/GE2gqtjW3JuXID/TJTQaI/afw==
X-Received: by 2002:a2e:8e28:: with SMTP id r8mr13086965ljk.460.1590443409926; 
 Mon, 25 May 2020 14:50:09 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-22.NA.cust.bahnhof.se.
 [158.174.22.22])
 by smtp.gmail.com with ESMTPSA id e21sm3893338ljj.86.2020.05.25.14.50.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 May 2020 14:50:09 -0700 (PDT)
From: Rikard Falkeborn <rikard.falkeborn@gmail.com>
To: Joerg Roedel <joro@8bytes.org>
Subject: [PATCH 2/2] iommu/sun50i: Constify sun50i_iommu_ops
Date: Mon, 25 May 2020 23:49:58 +0200
Message-Id: <20200525214958.30015-3-rikard.falkeborn@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200525214958.30015-1-rikard.falkeborn@gmail.com>
References: <20200525214958.30015-1-rikard.falkeborn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_145016_487206_09369F8D 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rikard.falkeborn[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.195 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.195 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Rikard Falkeborn <rikard.falkeborn@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The struct sun50i_iommu_ops is not modified and can be made const to
allow the compiler to put it in read-only memory.

Before:
   text    data     bss     dec     hex filename
  14358    2501      64   16923    421b drivers/iommu/sun50i-iommu.o

After:
   text    data     bss     dec     hex filename
  14726    2117      64   16907    420b drivers/iommu/sun50i-iommu.o

Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
---
 drivers/iommu/sun50i-iommu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iommu/sun50i-iommu.c b/drivers/iommu/sun50i-iommu.c
index 1fa09ddcebd4..fce605e96aa2 100644
--- a/drivers/iommu/sun50i-iommu.c
+++ b/drivers/iommu/sun50i-iommu.c
@@ -771,7 +771,7 @@ static int sun50i_iommu_of_xlate(struct device *dev,
 	return iommu_fwspec_add_ids(dev, &id, 1);
 }
 
-static struct iommu_ops sun50i_iommu_ops = {
+static const struct iommu_ops sun50i_iommu_ops = {
 	.pgsize_bitmap	= SZ_4K,
 	.attach_dev	= sun50i_iommu_attach_device,
 	.detach_dev	= sun50i_iommu_detach_device,
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
