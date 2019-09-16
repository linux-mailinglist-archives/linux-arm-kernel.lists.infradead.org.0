Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9675CB3E17
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 17:49:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3yF3YSa5SPIy8i4nFzO7OAVgBhYuTDpHWRCJkDVNZ3g=; b=gUZo4u4KfhxJwh0uFuvCfnyEPg
	WRPI3OkMFgAdZPppTf1zNDr4311IWyZvo6x/Ws3PfghMxZNUSOCxgGvPwOlDAo6jtSABA7CXuH92t
	rrVsEAOka21sfykXsVZv8QdqtPAIJd9qPKyl90EoM8n+ECnFBuk8e1+cQsMnwX/C3SXoTTPN3pDkq
	b8wFY9xumQqFLxOzj+2KEUnICog2ysbpEUg/jF0Hih+jcbXV04o5CZE3o1c56C5tqi3wgPjk/d61f
	Z2oOFjy1S2rk9ARdQTnXV1CgFL0eKlHscibRt7QiSFwk+8FoDgjEXEHvGGqGpU9783t+j2oHubrls
	4jA4BQNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9tFZ-00005n-R5; Mon, 16 Sep 2019 15:49:14 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9tDM-00075R-5Q
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 15:46:57 +0000
Received: by mail-pf1-x441.google.com with SMTP id q7so127489pfh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 08:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0YPh4ZPworY3ZEjE24wMYeyXg9KZRbq3tqWyWWQ8XlQ=;
 b=BfWwhPEGMjqhNnMmtn0lC4DzNN1IjQpfnqP/T++6lj+rV9L/5Bg0t/1kgQ5MOGeFAx
 xvUy28z95tNCGC9WQKuJJ5uoldqdK9xtCEx8RAzKXN6zirGepppIDIEHtIXHtmmmxffj
 ZIsLh5V4yQwFT9p5F3gIArlVndMNXi9LzjZucd23CMQ1n40vSGuqSb2eyvhzxq2bJMU+
 SdghuOWAi+Hcr2wqG0wBhIOSLvQ7Bd3zqaMcChDhPfJaJpTE5aSUcE/UjeMG5OhRs13D
 re7vcxUA/3C1ix8b6r8uh4RU3u3NCuHy6+jhrk3EW0f/3MDp1OpREjGICKmrz0IAEjHt
 4c2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0YPh4ZPworY3ZEjE24wMYeyXg9KZRbq3tqWyWWQ8XlQ=;
 b=DS36CEUUXs5IWAJmSxOY7BIr5w1uZHBeOgI9YTufMstTJkI4Jx5YQlZDmYDjfs98+c
 3TiyG8TPe/Vzk7a9pNad5usfymmcKzKtu6Glo/3HEjV02xHaZftYwTesaL4ba91LdPiM
 u0GivS6CHBeEhjzmToT5kswcHnN1Z4pzGXd171jQ228UAWHHVbvNumotUfz4JhB1Qx77
 FhneBK8RRjPDPzqc7gUaRy9scm6iaQGFv1rO2KM7WhaW219lltvYqI06N8PAtRLlCjnn
 zMRKcdoa3ihPipdtyW/f07v7h2xFyZuIE+IY2Qzn79OfYGFOtf8PDEkjnzkgIKFkLOkW
 6PNw==
X-Gm-Message-State: APjAAAUIJ7N5Lq13MEwgdCNSehZDPIa2TMrj4g0k68Or/4VempPDJUz7
 YussAkU14AB7NH5iIvh1jNhN
X-Google-Smtp-Source: APXvYqyYx2ww8kVi2qoPwBEokJosm1TyyK6KqDfDlsvQfRrorAIUQCpG72R/TxSYvntUByBP1MkqIg==
X-Received: by 2002:a62:1e82:: with SMTP id
 e124mr16568271pfe.136.1568648815572; 
 Mon, 16 Sep 2019 08:46:55 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:90b:91ce:94c2:ef93:5bd:cfe8])
 by smtp.gmail.com with ESMTPSA id
 s5sm36227670pfe.52.2019.09.16.08.46.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 08:46:55 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: [PATCH v4 7/7] arm64: configs: Enable Actions Semi platform in
 defconfig
Date: Mon, 16 Sep 2019 21:15:46 +0530
Message-Id: <20190916154546.24982-8-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
References: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_084656_347791_781E4583 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linus.walleij@linaro.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, thomas.liau@actions-semi.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the Actions Semi platform can now boot a distro, enable it in
ARM64 defconfig.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0e58ef02880c..8e27777d6687 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -29,6 +29,7 @@ CONFIG_BLK_DEV_INITRD=y
 CONFIG_KALLSYMS_ALL=y
 # CONFIG_COMPAT_BRK is not set
 CONFIG_PROFILING=y
+CONFIG_ARCH_ACTIONS=y
 CONFIG_ARCH_AGILEX=y
 CONFIG_ARCH_SUNXI=y
 CONFIG_ARCH_ALPINE=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
