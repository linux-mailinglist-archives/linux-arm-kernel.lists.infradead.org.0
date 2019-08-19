Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C45A94F7F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 23:00:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Niv0X4BbujsHXsz2KUw8aeirciJ1KKZgkx/dhhU/uLM=; b=iGY3EcERQxKJXzIsq3Vq+bcZu8
	C9KqxhbxJxJeeIjAtwtULzzFonuGGWZqgDUpFUgeixlI5xvxog8TaHBTYSiJpVv/wQl3eFudL+0Pv
	wmSL2lDvU4cfNaGNFIlk/iyU9jwo2BV85uTlKLmu3JugAjI52M0G5dD8WwB+bfKsQq3yBrwx3zowt
	h9++SdrKbI6BR4znkygi/F+QgoCpz4NFEiSHXTNjooPu7wx8ljUHQ0QfmugUJ2eY3aWi5ouK+8Kqq
	wvB2BdOaHrkWzjmGS8KBDEoG1IgMGfMPbIsTw4bldhqKLrIL/t//vHUkxSCpv+RwYVZw1DD0XHoTr
	BpdXB3Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzolG-0007ni-ON; Mon, 19 Aug 2019 21:00:18 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzoim-0005LO-5d
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 20:57:47 +0000
Received: by mail-wr1-x442.google.com with SMTP id t16so10105166wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 13:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rIXOAcwB6RSkbnYr7iwW59gzGUF7TP7dSVI8BelwrWw=;
 b=KV8XQCe0teSz7Dn2RonP2FuQNeu2pH3jL6PBRNeAYTYZ4mkITy7xQqWm2FPZ63El8h
 vjTpWoJ2B8rQ+WiVsCLIEkuLmXOiFuUqON12BbUSq4bca9KpNJFdQNa31Y0QAXft1yrR
 MdWOg0TxyHl9HUVBY3qoRswpxqkuQy7jslUOEERxFMO0Ys54LnzD9aG2oKoLomZhv5rV
 dK5QbhFAwRTnmM18heaWsnLPJlDn7O0VG6126EWw3cwt+/OasRD99a2P1OfmzQQ8dD0y
 LDvzNzkZujVI4eVZpmJOpmpaC86icUx9Rf9VujSb7J+jDMB8bo3Uy5MJyk2iGodky+34
 tZ1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rIXOAcwB6RSkbnYr7iwW59gzGUF7TP7dSVI8BelwrWw=;
 b=Vav05zAOA5Uv2XtgpYqxp6J5pG35esw2kBSy9EyuaMDuEA1IIiWhGgJhcDahgFuNoo
 dFx9JYyS8aSHVwN46YYB+vRXM8Y96atCN1/lzimUcGK18bZIje2qz4kK2IZplz01F6SR
 4ZbuOP6Ut2V/NRbIB8LNanVn7wXdp2c9nfi9vvl/ELxfK7sB0PTqAMZP3V/1GGcqtHeI
 k+jeQxzbk6CUOOSflNwlFomPCXUlU12ouFDZLCExzluCEW0eQd9naWwXQr6dIJmsau7N
 e0RwDeBZw/N88j3WYe3s5QzhLIyaKekDPP9Zvfq9W1AJ2veA/sHMrQf7EJecCUdp3JI7
 UnMg==
X-Gm-Message-State: APjAAAVkhZr9OR8tBttGqHBG+t04AQqA3c+R2aYOVn3X2twc9QPSz2A4
 pFBMCulNlReOEbyMA4SzWRUWqw==
X-Google-Smtp-Source: APXvYqwWmh8fIIZjaGPPncl0bGO01SK1MHioXHtVQ3EfU1aS8tOCmHFfC6ThUTybxGBZVdcw77zc3A==
X-Received: by 2002:a5d:6606:: with SMTP id n6mr31276850wru.346.1566248262982; 
 Mon, 19 Aug 2019 13:57:42 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:247e:6e55:2413:b21c])
 by smtp.gmail.com with ESMTPSA id n9sm6698423wrx.76.2019.08.19.13.57.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 13:57:42 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mathieu.poirier@linaro.org, linux-arm-kernel@lists.infradead.org,
 coresight@lists.linaro.org
Subject: [PATCH 6/8] coresight: etm4x: Add view comparator settings API to
 sysfs.
Date: Mon, 19 Aug 2019 21:57:18 +0100
Message-Id: <20190819205720.24457-7-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190819205720.24457-1-mike.leach@linaro.org>
References: <20190819205720.24457-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_135744_310309_A005E07F 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: suzuki.poulose@arm.com, mike.leach@linaro.org
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
the indexed address comparator without resorting to trail and error when
the set type is not known.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 .../coresight/coresight-etm4x-sysfs.c         | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
index baac5b48b7ac..483976074779 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
@@ -1272,6 +1272,56 @@ static ssize_t addr_exlevel_s_ns_store(struct device *dev,
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
+		if (idx%2) {
+			idx -= 1;
+			addr_v2 = addr_v;
+			addr_v = config->addr_val[idx];
+		} else
+			addr_v2 = config->addr_val[idx+1];
+		exclude = config->viiectlr & BIT(idx / 2 + 16);
+	}
+	spin_unlock(&drvdata->spinlock);
+	if (addr_type) {
+		size = scnprintf(buf, PAGE_SIZE, "addr_cmp[%i] %s %#lx", idx,
+				 addr_type_names[addr_type], addr_v);
+		if (addr_type == ETM_ADDR_TYPE_RANGE) {
+			size += scnprintf(buf+size, PAGE_SIZE-size,
+					  " %#lx %s", addr_v2,
+					  exclude ? "exclude" : "include");
+		}
+		size += scnprintf(buf+size, PAGE_SIZE-size,
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
@@ -2117,6 +2167,7 @@ static struct attribute *coresight_etmv4_attrs[] = {
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
