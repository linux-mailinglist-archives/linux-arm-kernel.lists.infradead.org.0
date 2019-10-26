Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA92CE5F79
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 22:27:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kmniuNAXZxQAihXshPPPdvGJhZA/T3eD0gY1NTz5RY8=; b=pZQ5nmmmAS77Dw
	7H8xm97wE37xhQRn2jkUCriY1T7MGlAt0CRdie4deOEMQDOSxwjRga0mSntaXy1sJ2X/INZcT0PPL
	ZfU1LaBO3v7Uosq8QU60DcH6JWbP0qi3DFI2RvG+TdMstPkfgCrtyyv7AJdNJMKM027fSujle3tUx
	q9dTYJoF91NceFlMPuK2tgVIkkz5CkHG9P3FM7HaNkuiyq6TwcnJYNBhezbvrYyunBBpciOzr2f+2
	NsBc33pJOiw/QjIaRFiqmQOoVoF5i0D9rmG7/qWnPK6DKoZuGxnsv/pNijODPpSN9h30F1vhK1m0J
	snAhIpl8mjkZVHmqxz3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOSeK-0002rY-Ce; Sat, 26 Oct 2019 20:27:00 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOSe9-0002rA-8f
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 20:26:50 +0000
Received: by mail-lf1-x142.google.com with SMTP id 195so4800757lfj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 26 Oct 2019 13:26:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CqibNRa8NCQJCIfLIcBtLYRS0eXP+x++0ovWjgGaG+8=;
 b=vDGYxLzsoRGqDQ0r1aCbvVS1Y1PCWQTNTChLokd4dvNzm5aurPiNgKjDVQ6mTv5H/q
 WMhhgRVScd3iK49iH+Ibj0R/XN8Z+18ZjZqK6tP27EeWCU1jWdEM3f5c6j/iwZ7kWbbq
 DmRsgjThcLGXso9z3J4NNyHuZbkIHe8KkfpRZ/1xznRwrZLTV8rP077nQ1kqvc/rqK5y
 Z6o7/SKWkGkppLm9S5501xYx7ChqnCt5FzDZIxoHJoQ36cvVpyxy+8AKVj+JJsDC69Ml
 gFUeEBg2y7VQQFmdCoE/sSHCkhUoZFSqeBSjzJeuTAu7Z0Y7Kw4Db9jN9KSeeFoxUTEf
 tPSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CqibNRa8NCQJCIfLIcBtLYRS0eXP+x++0ovWjgGaG+8=;
 b=i1j/B1y4E7bVWEBwdrTWOJS5vCBqkE3L3HP6jB79Dzf5SaTzJefHz4Ibvr/jwXHncV
 NWe4Lc6es4rDfRefxa9yLAQXEsRozH2lrRQ/Tduso5fpU98g0/bNg54CsBmHjbsFKo1S
 RQDX6VfPBSS7reo8Bi6hMt6QZB3OhneZnebMApPGwj0FmfeCpkHsCiIecwyVaTQf7BST
 +gJlpDwxe5MH5VY6prowZVVcudKHHHu/bXx9hS6qyJ2/uTCvgiCsB96f7/gODD0iySn4
 9cxqAvU49cecd7PcNOK+5PPat6HMdoAjPOnDAUiFEQ5T1Txc8xv17wDQpWSy+k+lM3f8
 CeAQ==
X-Gm-Message-State: APjAAAVG3odqpoBpR31T3E+lIcgarfSmOcck+vJto49JuTyZpQFyaozF
 Qgrbz8/+N8jh9pDApOfxQgs=
X-Google-Smtp-Source: APXvYqzicRBbGQCjfXCf+Ju4S2YgCq5lZM7QCriuqaYImw08oK6ax5oEo+g5bBNxpM47V9yWgIG4jw==
X-Received: by 2002:a19:c204:: with SMTP id l4mr5781952lfc.163.1572121606803; 
 Sat, 26 Oct 2019 13:26:46 -0700 (PDT)
Received: from localhost.localdomain (h-98-128-228-153.NA.cust.bahnhof.se.
 [98.128.228.153])
 by smtp.gmail.com with ESMTPSA id d27sm3477053lfb.3.2019.10.26.13.26.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Oct 2019 13:26:46 -0700 (PDT)
From: Rikard Falkeborn <rikard.falkeborn@gmail.com>
To: mike.leach@linaro.org
Subject: [PATCH] coresight: etm4x: Fix BMVAL misuse
Date: Sat, 26 Oct 2019 22:26:33 +0200
Message-Id: <20191026202633.835854-1-rikard.falkeborn@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190829213321.4092-4-mike.leach@linaro.org>
References: <20190829213321.4092-4-mike.leach@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_132649_331048_87987009 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rikard.falkeborn[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mathieu.poirier@linaro.org, linux-doc@vger.kernel.org,
 gregkh@linuxfoundation.org, coresight@lists.linaro.org, corbet@lwn.net,
 Rikard Falkeborn <rikard.falkeborn@gmail.com>, suzuki.poulose@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The second argument should be the lsb and the third argument should be
the msb.

Fixes: 62ab9bce3bc7 ("coresight: etm4x: Add missing API to set EL match on address filters")
Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
---
Spotted while trying to get compile time checking that the order of the
arguments to GENMASK macro is correct (BMVAL uses GENMASK).

I have only compile tested the patch.

 drivers/hwtracing/coresight/coresight-etm4x-sysfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
index 3fc12ac44270..ce41482431f9 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
@@ -1246,7 +1246,7 @@ static ssize_t addr_exlevel_s_ns_show(struct device *dev,
 
 	spin_lock(&drvdata->spinlock);
 	idx = config->addr_idx;
-	val = BMVAL(config->addr_acc[idx], 14, 8);
+	val = BMVAL(config->addr_acc[idx], 8, 14);
 	spin_unlock(&drvdata->spinlock);
 	return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
