Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C18CD820D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 23:22:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cZDLiBd5AcPmOa8GFfXrZNC0nEb12QSgRN2dPc/MmIw=; b=es2WUq77zx9tAedIH3iCjiSRGi
	4x15bg8Jv+Gqd31rfHtarAap/Vjeb1RRRK57DQtOD7o/d7Ua5G9y3lteVqktDWicwILKFYdHJERK2
	47ZRRfDPXesGUm2z0+aEXKHwjlfcS9fFQ9p7R5tOWKmDeY14BUYvdBHzLjg4o2loN7g0bhuwrAuHx
	iybiSOKcGMuUowCQ2I3WrgmrSXwn58fn92ciC2B0xrugJ2B3CBUFEO3UufDYCYpWwf/zj1v3ahGBh
	E6xcdXKvy5CIGXSmgPCUGVxeUJRYDMFGtRkjMfDKLeK7OjCUd2CfN286zBTIRi8SDnuhSuNyihj+x
	zqaiMUmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKUGX-0003lN-Oo; Tue, 15 Oct 2019 21:22:01 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKUFT-00030e-Vu
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 21:20:58 +0000
Received: by mail-wr1-x442.google.com with SMTP id z9so25523807wrl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 14:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=S3UAHvYOfzaEuKOyFm5bIC6hR9X0XbyeBd523nH5LjI=;
 b=xcD5Ld1HPwUSEVIVpOpCpXkrJCxGgE0dzmg8piQwSelX0dhdTPrJmP9RPfDEKFHtOZ
 DxaSlUo2Uf5MnFv3cq1KcjYEQts+YXvhsyn1sZMD8ijkfC+t2EhF7Ha/xSJ6FinS9Nfj
 NqaduGkLueoeY2dbeTcNl/M/usynHnzlPxo2fRrZOqHC+lCI2i+Kq+CAUpKeERK8r0Sh
 lRluCKn4Wm9aRv+1QpYKaG9o+sx1RB34xNh0AGMnzeDvqWyqFRRhrxuTHvzNqVPhopkD
 km5zbIiICHfL5yCQJU9MpJLj64IJVTXpywzRcZzkS0aovrAKBx/ZxLXK90KQR96SZGL+
 ZGUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=S3UAHvYOfzaEuKOyFm5bIC6hR9X0XbyeBd523nH5LjI=;
 b=mCaE0YCYdoVdA6CCdgFrQMjwXIdrdS5nfzQCOzHpm1yBHf8t9py1eRNlxORzLFvqov
 eOfYeuYwUzCBiH26tTMPjiGk+0PBXRGzksYGZGuzLuiMcLWer3rbO6l5lMyE+N7pqiTl
 Ubl/dBwNfGYu+KWSgUl7Cln3+lw92PWs3AJHHalJEHZQ9KlhHaz3br5Onzm+7dLHrfl0
 yDmJkcD4S87Zr3HKKq/t3wLfxNyrn5eNHZCuQokNJdAu9xEtPj8w+HCMB2kVLQqEjitn
 xRItAdVJA+S9RZujphfZ/LUTe4vOQRKAx+8TxHMD4denXCs+/iYc0RFZqbuXi7tLMj2r
 cPKg==
X-Gm-Message-State: APjAAAX0RE/2fEDmxse+pguWUSirve2j+VEa6qCInVXCZ3gwQrAyKyM8
 tPG9B3wSv4ly75gPz3to+dSBig==
X-Google-Smtp-Source: APXvYqyzczWIc0NWBtEJtC3oudlkwG9WnR9D8/zcSa7AAMvPP2xM3ZOa49CggmwNX4G9OF3hlwisiQ==
X-Received: by 2002:a5d:5386:: with SMTP id d6mr31586944wrv.155.1571174453471; 
 Tue, 15 Oct 2019 14:20:53 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:39d2:21a2:678a:9501])
 by smtp.gmail.com with ESMTPSA id g185sm517649wme.10.2019.10.15.14.20.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 14:20:53 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org
Subject: [PATCH v3 03/11] coresight: etm4x: Add missing API to set EL match on
 address filters
Date: Tue, 15 Oct 2019 22:19:56 +0100
Message-Id: <20191015212004.24748-4-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015212004.24748-1-mike.leach@linaro.org>
References: <20191015212004.24748-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_142056_021365_5FF5A783 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: gregkh@linuxfoundation.org, suzuki.poulose@arm.com,
 mathieu.poirier@linaro.org, corbet@lwn.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TRCACATRn registers have match bits for secure and non-secure exception
levels which are not accessible by the sysfs API.
This adds a new sysfs parameter to enable this - addr_exlevel_s_ns.

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 .../coresight/coresight-etm4x-sysfs.c         | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
index cc8156318018..45fa7743eea4 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
@@ -1233,6 +1233,47 @@ static ssize_t addr_context_store(struct device *dev,
 }
 static DEVICE_ATTR_RW(addr_context);
 
+static ssize_t addr_exlevel_s_ns_show(struct device *dev,
+				      struct device_attribute *attr,
+				      char *buf)
+{
+	u8 idx;
+	unsigned long val;
+	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct etmv4_config *config = &drvdata->config;
+
+	spin_lock(&drvdata->spinlock);
+	idx = config->addr_idx;
+	val = BMVAL(config->addr_acc[idx], 14, 8);
+	spin_unlock(&drvdata->spinlock);
+	return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
+}
+
+static ssize_t addr_exlevel_s_ns_store(struct device *dev,
+				       struct device_attribute *attr,
+				       const char *buf, size_t size)
+{
+	u8 idx;
+	unsigned long val;
+	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct etmv4_config *config = &drvdata->config;
+
+	if (kstrtoul(buf, 0, &val))
+		return -EINVAL;
+
+	if (val & ~((GENMASK(14, 8) >> 8))
+		return -EINVAL;
+
+	spin_lock(&drvdata->spinlock);
+	idx = config->addr_idx;
+	/* clear Exlevel_ns & Exlevel_s bits[14:12, 11:8], bit[15] is res0 */
+	config->addr_acc[idx] &= ~(GENMASK(14, 8));
+	config->addr_acc[idx] |= (val << 8);
+	spin_unlock(&drvdata->spinlock);
+	return size;
+}
+static DEVICE_ATTR_RW(addr_exlevel_s_ns);
+
 static ssize_t seq_idx_show(struct device *dev,
 			    struct device_attribute *attr,
 			    char *buf)
@@ -2038,6 +2079,7 @@ static struct attribute *coresight_etmv4_attrs[] = {
 	&dev_attr_addr_stop.attr,
 	&dev_attr_addr_ctxtype.attr,
 	&dev_attr_addr_context.attr,
+	&dev_attr_addr_exlevel_s_ns.attr,
 	&dev_attr_seq_idx.attr,
 	&dev_attr_seq_state.attr,
 	&dev_attr_seq_event.attr,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
