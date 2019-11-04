Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D2BEE717
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 19:14:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JAECH/4/zvySOwaMi8nvWw2hLqeez1ja0oqkqnCC0eU=; b=PN0OrdmqQDnqAKLSyFl29mgyLU
	NcaN9Q0J1iz/wF61BYy5BdUa1hdAMUNKLwJyh/d0HDowLiAxpDnka0p0d956RBYiLabTcABXI23m2
	vNaxA2rDbq+aVqpofP8/kU538jgTqSlMW319nx5VkYXTskQR796zWjWH2exP6HCEbFEdAvf+DNbpi
	oX8Z7CPyFXgnp3Td3KRXMJHuHffS9Q4g6qhQCLtqyanw+Zxddwcey3+yyrAo6cWUSx1ziAX7c35wM
	+0EUWyfWYZ2jkybzrWPkrWr8De6JFPOAlp/71MMOth11zkSmLuMrp1h58mD3YT1WmxVmJtnbIW3Bo
	TUENoi/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRgru-0008F3-T3; Mon, 04 Nov 2019 18:14:22 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRgqa-0006zw-C7
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 18:13:02 +0000
Received: by mail-pf1-x443.google.com with SMTP id r4so12834925pfl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 10:13:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=y7fhR2xIT71DtVa1uCjsmuyALGEUbfwLZ/uWrAtc5Ds=;
 b=ncL1xXHW8P5PY1KFS4fr2rCjeF2sMk7iCiCvP5ewN58vIqpf6Rk7KIPwWJ4UL8t5YD
 YYnfOLoEGsFqg7qgmY4p8cERoL3Uj+k3kbnmUKhvlr9kQFM3wojFfN3ZM65dBok06MfV
 wSXhWlJmSdmEquXZz/Ly5hdUm4ZKvCxsJrnfuM4hTXRBPA9aMaHGfUG9CCweujtLSB5D
 Z0PyiIe36Z3vKEgKByN+KrWgLj4Fw1J2XjbHNts9//oUwu4rn8VpybUEkPpVVhRSAEsk
 5V9EOoMUphNsDxdm2mQ0yF1JDGS6ULnV94+Qv8m7pCID4hQ9DBBNFeUoG2qB/siHWBdL
 nKcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=y7fhR2xIT71DtVa1uCjsmuyALGEUbfwLZ/uWrAtc5Ds=;
 b=MY/NnV2EU5dFhzhbIhfED1buWSb8sEN63GFBOnlYz1zJkONGrzkI4EKEzIac9Dcl2y
 fuago3yZwZNgaRAXsNOrPDAH6fgSrgmPiHB7BAxSNIg6+2XOehEUypAbyi7PPasyDn+v
 XpB9PgZE7SOVZoXCR9PF5afEp8czbE/8U7Js8dH0kNp8By1q9r4lUcoLvqGUsi7oOO/Z
 p2bsh0lIByJBcKV68PtSiVV72AvRZ4+oatoD+C8GvuCnEo7q62dGlxHF6JmoxQ8SNeeO
 lBa2bgXR1SwXF+SLw41GotBEmJSJ8ZjN36dQsDjU2QL1t6nO3WG5Ih02VaeokY1H0ZzH
 PL0Q==
X-Gm-Message-State: APjAAAUh2FxL7b3hVkeLuSp/umIU3K3kpJ+wx8SBlkjtjUjddmirHZEG
 nt8MRkIIMIJorNlXJJj0mxpkyA==
X-Google-Smtp-Source: APXvYqwcjS8PQWDXoU04+7uYKJgaNIt5TMbPyiNLgdD8R3/8rHEJehtKvK3piISL7+DIS4jVvvUjwA==
X-Received: by 2002:a63:2d81:: with SMTP id
 t123mr31539251pgt.306.1572891179732; 
 Mon, 04 Nov 2019 10:12:59 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id o12sm16149520pgl.86.2019.11.04.10.12.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 10:12:59 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 06/14] coresight: etm4x: Add missing API to set EL match on
 address filters
Date: Mon,  4 Nov 2019 11:12:43 -0700
Message-Id: <20191104181251.26732-7-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104181251.26732-1-mathieu.poirier@linaro.org>
References: <20191104181251.26732-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_101300_456177_9A2762CA 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Leach <mike.leach@linaro.org>

TRCACATRn registers have match bits for secure and non-secure exception
levels which are not accessible by the sysfs API.
This adds a new sysfs parameter to enable this - addr_exlevel_s_ns.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../coresight/coresight-etm4x-sysfs.c         | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
index cc8156318018..97a33cf98797 100644
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
+	if (val & ~((GENMASK(14, 8) >> 8)))
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
