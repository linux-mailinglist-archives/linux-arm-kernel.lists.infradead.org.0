Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3251A395C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 19:54:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GM6mX5kJQ3YG5OcSwYGdrckWqtGrKP7q1Y/uYxqW+2A=; b=GTCOBLKfqwewrg
	inT+5FVEKNMZyd2BWAruWlLWlyOJojjN4MrLw2zurlmj9Yc4Zw4nd+WgUO17vEI6CkRHpBRI8TStw
	iY+Z5j0Z9+rFstSaDwnDJ4zGoi6WGC18RVTF65Y9kILxCaorlbQLlO2XXl+d1Mlt3DzB/M7BNVZB/
	OtesPS3xp9Id6dpZ40biPdWemvscIqPV3WFYekIaNXGUL9kO29I4SkrfVLyO7vH6ED3DFAtj0FV2B
	sJ6QCOMY2R0dNzKWnXvPjo9BrT/P8hg2KstRPCUjrZCsUbr72mJTS3AqqgrUOUJ3zIvTst3GZEL46
	kdXFcJ5o4Kfmi2WsC3vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMbNB-0006Y4-UL; Thu, 09 Apr 2020 17:53:53 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMbMC-0005pf-OQ
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 17:52:54 +0000
Received: by mail-wr1-x444.google.com with SMTP id p10so12881016wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 10:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+npoMRH1DogTx3QRDDmEwhJHjrDR5km4V6W1qEq1dIw=;
 b=icsrGpdRQJY9lszK58AQnbiy670BvHRajERyWY4p4p9uE5zH9pW+2+DWyU6grB83Q3
 oXn9h9KkLl36xZ9HU5i/vD8C5L9dRVSgBxB5pK8u/j20zUz/USaWrS01RNGUnyp/bDMJ
 tfPlemKjaYbjFXXugxm0hX6D0okBg5t6w5kskS64s7hQHXHtr6drjuDyWE9S9eKL1mNU
 YYG6TPJFD4lgcR9Lw7Z3uQcU6LcndAAWKLem9hgj9fnBIMqWVeQTAU1oW4oyXy3N45Hb
 Xs4FMgcTTISlc6WLt5O+MuC6ckB72wflNMeFgIP+pI8veVsMZ9YKhfbWw2OWkgIgbKP4
 v1MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+npoMRH1DogTx3QRDDmEwhJHjrDR5km4V6W1qEq1dIw=;
 b=WfzaS52IeF/JkhMk2cQqyBAmRlLrWIgMYOfYVxi/ZD+eyaY1LXhCnu2lfT5CRZc1Gt
 pL9vH/tqZhB7LcmJjT7klL50SVIvJAu4Kf4kWgnx8pU8leWXUVLoHB7EJ9YrvlEk17Qu
 0og44ji1lvnBhlJWbeliLerX/n5gZEW7wJC3WaKQ4xYB05o/LbkYeUZrrSC+Y5sbCD86
 4iPXA62A0tkpdrYWhtiZNQTig4WeekJPPrrEldO2GB7s2iVtmH60uUKd5P+eKhVTzR7X
 BcbG8vX69/MSduRUMmk0nj+mg01ou+LnayRh4ruUmEv2QfJQsN8eRwxh1R73vViCLXjc
 68TQ==
X-Gm-Message-State: AGi0Pubh7AoGybStpwQ2AGZXRS24GAdncSMWrcKCqd91E3+Y2enxVRF9
 ShOf3EkTqcX86l5PvxLBJn4=
X-Google-Smtp-Source: APiQypLkNEMayEReLKHpNAw3KW7p+Ln/jI3qzu1rsT25+Lx1TXXou8ePxrBQpRZ8TpLH/DlfeODV3g==
X-Received: by 2002:adf:fe4b:: with SMTP id m11mr341985wrs.20.1586454770160;
 Thu, 09 Apr 2020 10:52:50 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id k3sm4437176wmf.16.2020.04.09.10.52.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 10:52:49 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 03/14] of: reserved-memory: Support multiple regions per
 device
Date: Thu,  9 Apr 2020 19:52:27 +0200
Message-Id: <20200409175238.3586487-4-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200409175238.3586487-1-thierry.reding@gmail.com>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_105252_833495_098FCAB0 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 Dmitry Osipenko <digetx@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

While the lookup/initialization code already supports multiple memory
regions per device, the release code will only ever release the first
matching memory region.

Enhance the code to release all matching regions. Each attachment of
a region to a device is uniquely identifiable using a struct device
pointer and a pointer to the memory region's struct reserved_mem.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/of/of_reserved_mem.c | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index ed2ff6f01d32..f61e8739502a 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -385,24 +385,22 @@ EXPORT_SYMBOL_GPL(of_reserved_mem_device_init_by_name);
  */
 void of_reserved_mem_device_release(struct device *dev)
 {
-	struct rmem_assigned_device *rd;
-	struct reserved_mem *rmem = NULL;
+	struct rmem_assigned_device *rd, *tmp;
+	LIST_HEAD(release_list);
 
 	mutex_lock(&of_rmem_assigned_device_mutex);
-	list_for_each_entry(rd, &of_rmem_assigned_device_list, list) {
-		if (rd->dev == dev) {
-			rmem = rd->rmem;
-			list_del(&rd->list);
-			kfree(rd);
-			break;
-		}
+	list_for_each_entry_safe(rd, tmp, &of_rmem_assigned_device_list, list) {
+		if (rd->dev == dev)
+			list_move_tail(&rd->list, &release_list);
 	}
 	mutex_unlock(&of_rmem_assigned_device_mutex);
 
-	if (!rmem || !rmem->ops || !rmem->ops->device_release)
-		return;
+	list_for_each_entry_safe(rd, tmp, &release_list, list) {
+		if (rd->rmem && rd->rmem->ops && rd->rmem->ops->device_release)
+			rd->rmem->ops->device_release(rd->rmem, dev);
 
-	rmem->ops->device_release(rmem, dev);
+		kfree(rd);
+	}
 }
 EXPORT_SYMBOL_GPL(of_reserved_mem_device_release);
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
