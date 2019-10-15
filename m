Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE57D8218
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 23:22:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=noJlcT7E17qvgD/qV75k1cYGlwkWaVGdKHl2m2YQLdc=; b=jxQaeRFn7fw3loVO/8oF12sIxq
	nslUqGZc+wDuBHw9uiwzw80+ubTL22MslvT3Q9Qkr84Gk/HfME6sa2y8S/m7f80FFWuK8AL2vpHbT
	8kd56VVoW1azcvwQSE037+0NHTLpXhoNIoK1YNAiyhF7nWE/8NGe1Q/WEDSu7W1Ygt/gPC9piQd7Y
	+03JUsoZwhwI3MTc1LDsebtJV5qt7PnlK2g1uXh4KHmK48UhxoO0hjSiJfTL0B83a0Gs6A6g0LqJy
	+93FGFT9oGRFGNZZ+upzvZ1XkpE1sDyjnojzP0MgKAmTYjBR6vw0jc1v9WXvmTwwpHv9Gqs05ppUv
	rjHq7AaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKUHJ-0004QK-L9; Tue, 15 Oct 2019 21:22:49 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKUFX-00033W-FN
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 21:21:01 +0000
Received: by mail-wr1-x443.google.com with SMTP id y18so16088791wrn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 14:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=alLGJNyVbZt7KtVg3svRAQohavR/n2a/uHVAjbCo+ys=;
 b=Il5KPxhsnxm+Ix6dhPSpK8HRTsKtqHrGi6vQ9B32L+KB5lI2iQM7q2rX5lNgxBZOAj
 sTxK+FQXLWS8NNlBwBSn2RemW7KmzzP1SIi23IUKkgFUD4Vz5NFVSXqfM40bHG9ywp5L
 1UdLhA1cG/g+DPMwAKB1ZdZiCkVE9ijj5PhrTvqxwIFwENPVwLWdyyyDopnzsG+7FAPC
 8ncZ4P27r9qnPSa7VKYt8jgJAt7qsd9kZ3j4cffLY4gOhhMKB0K+26uuZdq75L2mRUfZ
 0HKO3jeMkq0nV0bMOSB2oj7T3jVoZAtLIFeM4gsp6lGEuMBX4zChruTqJykbO6VtrV/Q
 zvmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=alLGJNyVbZt7KtVg3svRAQohavR/n2a/uHVAjbCo+ys=;
 b=AGxXAlYFbxQ3fq/a5zXxfoQ5xTZ0JEPCetrk2JuQeL4yN3+2YEN9eZjh44lUa46uab
 oPPy8Uvf5pAD1UeILE1YIkTX+AMkh8+293N4iLzVIRaFwK08luE0VwhRCX6VRs4S43js
 Ft1ZYwPGjICscFliedGQbXto9qj4bEwfqfO9fEm6WjxXqIxr9/VF5D7sjoweb8DoQJXv
 sydLrOG7FIXsvPQVq7jXmMqZJIYDNwqC6UqKCwGdOuDWPlFnCexubkaatXUBpuPVSVhX
 ikhe/PdsDtroV4ThokJtACPiUW5XIN1Dzb+IogVgvCTLy2hfgMkjbEK31d3FUxc0PbOu
 RXug==
X-Gm-Message-State: APjAAAXqDNUZKWcJkvhPZOWFLOLOFTF1QD/DxxgrLsXzhsRozF1JG6J8
 0M4Hh+SwFuzyIjwyCpf7WLFDPg==
X-Google-Smtp-Source: APXvYqzkHH8ZWehVkIFHGRN8tgNXwkkU2U/LLCNdx5ni4mo3xTpD80O35029jqeWSB380+7UDX4RGw==
X-Received: by 2002:a05:6000:1252:: with SMTP id
 j18mr3244847wrx.23.1571174457936; 
 Tue, 15 Oct 2019 14:20:57 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:39d2:21a2:678a:9501])
 by smtp.gmail.com with ESMTPSA id g185sm517649wme.10.2019.10.15.14.20.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 14:20:57 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org
Subject: [PATCH v3 07/11] coresight: etm4x: Add view comparator settings API
 to sysfs.
Date: Tue, 15 Oct 2019 22:20:00 +0100
Message-Id: <20191015212004.24748-8-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015212004.24748-1-mike.leach@linaro.org>
References: <20191015212004.24748-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_142059_539939_C72A6A26 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

Currently it is not possible to view the current settings of a given
address comparator without knowing what type it is set to. For example, if
a comparator is set as an addr_start comparator, attempting to read
addr_stop for the same index will result in an error.

addr_cmp_view is added to allow the user to see the current settings of
the indexed address comparator without resorting to trial and error when
the set type is not known.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Leo Yan <leo.yan@linaro.org>
Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 .../coresight/coresight-etm4x-sysfs.c         | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
index d6fcb9fee97a..ca1a54411225 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
@@ -1275,6 +1275,57 @@ static ssize_t addr_exlevel_s_ns_store(struct device *dev,
 }
 static DEVICE_ATTR_RW(addr_exlevel_s_ns);
 
+static const char * const addr_type_names[] = {
+	"unused",
+	"single",
+	"range",
+	"start",
+	"stop"
+};
+
+static ssize_t addr_cmp_view_show(struct device *dev,
+				  struct device_attribute *attr, char *buf)
+{
+	u8 idx, addr_type;
+	unsigned long addr_v, addr_v2, addr_ctrl;
+	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct etmv4_config *config = &drvdata->config;
+	int size = 0;
+	bool exclude = false;
+
+	spin_lock(&drvdata->spinlock);
+	idx = config->addr_idx;
+	addr_v = config->addr_val[idx];
+	addr_ctrl = config->addr_acc[idx];
+	addr_type = config->addr_type[idx];
+	if (addr_type == ETM_ADDR_TYPE_RANGE) {
+		if (idx & 0x1) {
+			idx -= 1;
+			addr_v2 = addr_v;
+			addr_v = config->addr_val[idx];
+		} else {
+			addr_v2 = config->addr_val[idx + 1];
+		}
+		exclude = config->viiectlr & BIT(idx / 2 + 16);
+	}
+	spin_unlock(&drvdata->spinlock);
+	if (addr_type) {
+		size = scnprintf(buf, PAGE_SIZE, "addr_cmp[%i] %s %#lx", idx,
+				 addr_type_names[addr_type], addr_v);
+		if (addr_type == ETM_ADDR_TYPE_RANGE) {
+			size += scnprintf(buf + size, PAGE_SIZE - size,
+					  " %#lx %s", addr_v2,
+					  exclude ? "exclude" : "include");
+		}
+		size += scnprintf(buf + size, PAGE_SIZE - size,
+				  " ctrl(%#lx)\n", addr_ctrl);
+	} else {
+		size = scnprintf(buf, PAGE_SIZE, "addr_cmp[%i] unused\n", idx);
+	}
+	return size;
+}
+static DEVICE_ATTR_RO(addr_cmp_view);
+
 static ssize_t vinst_pe_cmp_start_stop_show(struct device *dev,
 					    struct device_attribute *attr,
 					    char *buf)
@@ -2120,6 +2171,7 @@ static struct attribute *coresight_etmv4_attrs[] = {
 	&dev_attr_addr_ctxtype.attr,
 	&dev_attr_addr_context.attr,
 	&dev_attr_addr_exlevel_s_ns.attr,
+	&dev_attr_addr_cmp_view.attr,
 	&dev_attr_vinst_pe_cmp_start_stop.attr,
 	&dev_attr_seq_idx.attr,
 	&dev_attr_seq_state.attr,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
