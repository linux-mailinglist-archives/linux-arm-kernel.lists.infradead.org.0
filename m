Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC49EE723
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 19:16:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OerxnQpeMyJIV77TtO2gEEVsAUjPjd/v9TLyTDgErHk=; b=Sy56/tvumsvcSRQXk8x9zBNzEb
	eZ4DY9f5Ik6q0BiZdl6mAQ1TXDLZqMmcq9vRdy/JmezH+Zoz+4tXI73EJs2IFFJrGJ3P7xzSfOJRH
	tpEyKKjpqVUV2zc9JRBs0Ofg5SZcUnswvbIbUnFgUpwpHscYFGKgoecEPj7R45xZfOkETn34nmJgd
	TFWXwtN0JlLvLqUYAOPgnSTXdQuzR0Ex3c8RuEX27pZtl6vTNOcFadTgjcKSE8c2H2fQrREihSnqE
	TiO5z1zr8UqPRoCAGqKzL1U8n0VtZEE7zFcx3mixyRZM22JRbxe+OzWeX0DaiI3DL9iSNOUna7HqV
	zewqafHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRgtX-0002UA-8d; Mon, 04 Nov 2019 18:16:03 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRgqe-00074n-NF
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 18:13:06 +0000
Received: by mail-pg1-x543.google.com with SMTP id 15so11863217pgt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 10:13:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2TYCPoaBU+FOY9wFLOA8g8gCr6xKGu2mGQ2/GrP3thc=;
 b=yK3rgZ6yZD3RNfOAUT5KKC7wvdg3eQXm0qjVkejDULzy2iZuRlmvREq3bbhUpdK1yS
 khALmRPYxY4dlRY+isX9N4agFR4UoTPsKwD/6vsAIqMDfeWxfvaKoMPf7chzzc5q+54R
 vEB2N2EuUUUbnGG5bMEjscAaxdC8YI8lQBdbHz+PCeQrjyVO+7JpmNQslY/XnMlDe1PW
 Wi2ydjh99cSMbKV58a+E6gX6sBCdrFuLjdvWRDZpVEILepT4at6fB49Yorc43Q9JXYXX
 TM+5i7xjPb7+QaGyNajUfII87qr1XfK7oIb9e5AbS9tvHPtcD8NSGbZTen6Tx9fNnMS7
 hD4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2TYCPoaBU+FOY9wFLOA8g8gCr6xKGu2mGQ2/GrP3thc=;
 b=iOBtPmKE/kLlxYIdeeI9ssfOHpR4mRULGXma8lJt6jkGajc5D1rTQqU3rGqkjZgtqn
 d0lUJ/8evzvjtQcm40yhW5FkHgNHqzsNU3nbTpYKTcqLbdR3dCYN1XXmeM4kLze8XZyy
 3q5wUttC7rDGVqL2UDrH9Asj0XIt/trjRz6dtMrYrWUEdoSBrRQcWkBRAhH0I0gsVRnJ
 Ig8tWvP7XtNxuM6VzznxkckcerzxodcWl6i2GCz0fb4O/vafrONKSngt6UDW3iar9XWl
 abfF/irM+w4PcQ81IbVZxyQIbaufnNLFHUvDssxtHPfPcPVPiYW9ANvU7syoXmtfS5JS
 c3lQ==
X-Gm-Message-State: APjAAAU8nt0w71AL+dCVbvkChOg/znoCLRGeZE/InNpEG1dLiWkpxJoL
 5b/NNNKuYVemiLoAy7wVRpyMnA==
X-Google-Smtp-Source: APXvYqzIbPpB+G4swl5eLaUlXFMGgWmyLuweZFCx95myydLdnjzl5S79EzGVY2b2dknWdoG38ICkHA==
X-Received: by 2002:a63:3203:: with SMTP id y3mr31406523pgy.437.1572891183679; 
 Mon, 04 Nov 2019 10:13:03 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id o12sm16149520pgl.86.2019.11.04.10.13.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 10:13:03 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 10/14] coresight: etm4x: Add view comparator settings API to
 sysfs.
Date: Mon,  4 Nov 2019 11:12:47 -0700
Message-Id: <20191104181251.26732-11-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104181251.26732-1-mathieu.poirier@linaro.org>
References: <20191104181251.26732-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_101304_773128_CE467ADF 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

Currently it is not possible to view the current settings of a given
address comparator without knowing what type it is set to. For example, if
a comparator is set as an addr_start comparator, attempting to read
addr_stop for the same index will result in an error.

addr_cmp_view is added to allow the user to see the current settings of
the indexed address comparator without resorting to trial and error when
the set type is not known.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Leo Yan <leo.yan@linaro.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../coresight/coresight-etm4x-sysfs.c         | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
index 1cfbddda0b4d..1768e7286a9e 100644
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
