Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4088F1E200B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 12:47:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j5NXU7tP6pMFvKIotEA19Ix82PQtuNs8ovc/rmgxYbQ=; b=jZ+ORqC1beXqWj0hayo/GMS9Hw
	OOIJELdCk7b2q1BSYrQLrvAHP5R6ff1usiThKhF9d4iNy2BCbCj8i4taeTnPK8WmY1FV5mihCz1XZ
	OUPQsBpkc0KnvMv9lJj1FMoaZuha6PO6L/RddFN5fYZ/HJkGaroNcy4WlLtrCwhspAGDYrp7GZHua
	FPQkaxozHfv2b1k4OQaWNmsp5dD+ChbirhhQsunJcEt/bM233ycBCHA5W+wf52YoxU5bakmyU1Wr0
	+KhgOmpmYde7hr9bxxOJmBvIXm23a9YNCBrHKWXXqNvk/Ird0+8fph+V4QfgIhrMYXldOawIlLY+B
	utzyDtiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdX7V-0002I5-Tv; Tue, 26 May 2020 10:47:41 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdX6j-0001q5-4Q
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 10:46:55 +0000
Received: by mail-wr1-x444.google.com with SMTP id j16so7473377wrb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 03:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+TVW4UTODkyLfpaijWt7O8XwAy1JuMHhVBNCKJcCujs=;
 b=Bbz22miS+FU+DVOh5U7ryFYf5KRB9Hk5+yLGCWChkMx+8UR+r+0A6ZjzGxVED2AP7G
 whxkV4xQtop4NJOI/6hDllARrG2P6HFOO5gm18jndJhdTVApsss+sjURSfKmjan8I2vy
 tK/A/vyGo1bdlZmvE2hjPJZqiAdUtHiGJrYAvtMRCuYt4GZjgCkAsYZPoglOBlRCuYoM
 S7CgIvW5a2wW3sGDxh+3S2UHd3GnSGyqsRv3rYD9x/ntZ5jkdWvNMWq+KmVwla0+/OaI
 /dLpNewdQCwPyN2bf2h4rAR5qS6XV31NOI+DLhpRFhdCCtcwnenEAaELBNV2WsQyUepl
 sQQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+TVW4UTODkyLfpaijWt7O8XwAy1JuMHhVBNCKJcCujs=;
 b=aeiMQt9ZXsW+W39c+aNMzu8SzUa/uoeGHXcTwwMl7hza6jqdmCF6j32i/G4yHKbnDm
 WznjoSUliUn0K8ElMweGWCMXPzv1O5tcy2RFVeIil/lGaVDmYOfaNhnjlawwzRJyjUGs
 mHKOylhsENRJ/G4lzRq49MSeo6/bygYNFroRZMDn5Qq1wtBNL3nq58dRAOPOY8IByre3
 6eQA6CbNcGR+AuKEwDjpn+7RcjqdmfewhbP1zhydLRqyyxepvC5hFE/9Cv7tOsGB6Hxf
 s7xqAH8N2EgTw2igDhy3Qp6w0eJziq0v7A+udooElEwPSJtw52tN999M/WSSXJyeLcov
 pbgw==
X-Gm-Message-State: AOAM533ArnaIrZk8N+11QdSND/7Mf8x2Q1eiPyRWlsjOSMIbZyQXISdn
 WM96dIR7yc0ezj95WUGxFZk8zinTP+w=
X-Google-Smtp-Source: ABdhPJyk8cay6MD2Zb4nQRgFTf3xlFk7IpSAh/OrBoQliPQzZwEz1PEB41XSXt8AztSttEjcX8e/gg==
X-Received: by 2002:a5d:694a:: with SMTP id r10mr10002483wrw.266.1590490011232; 
 Tue, 26 May 2020 03:46:51 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:8bee:312:6092:58f2])
 by smtp.gmail.com with ESMTPSA id u3sm393441wmg.38.2020.05.26.03.46.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 03:46:50 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 mathieu.poirier@linaro.org
Subject: [PATCH v4 2/5] coresight: Add default sink selection to CoreSight base
Date: Tue, 26 May 2020 11:46:39 +0100
Message-Id: <20200526104642.9526-3-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200526104642.9526-1-mike.leach@linaro.org>
References: <20200526104642.9526-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_034653_169948_01F4C56C 
X-CRM114-Status: GOOD (  26.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mike Leach <mike.leach@linaro.org>, acme@kernel.org, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds a method to select a suitable sink connected to a given source.

In cases where no sink is defined, the coresight_find_default_sink
routine can search from a given source, through the child connections
until a suitable sink is found.

The suitability is defined in by the sink coresight_dev_subtype on the
CoreSight device, and the distance from the source by counting
connections.

Higher value subtype is preferred - where these are equal, shorter
distance from source is used as a tie-break.

This allows for default sink to be discovered were none is specified
(e.g. perf command line)

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 drivers/hwtracing/coresight/coresight-priv.h |   2 +
 drivers/hwtracing/coresight/coresight.c      | 136 +++++++++++++++++++
 include/linux/coresight.h                    |   3 +
 3 files changed, 141 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index 36c943ae94d5..f2dc625ea585 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -150,6 +150,8 @@ int coresight_enable_path(struct list_head *path, u32 mode, void *sink_data);
 struct coresight_device *coresight_get_sink(struct list_head *path);
 struct coresight_device *coresight_get_enabled_sink(bool reset);
 struct coresight_device *coresight_get_sink_by_id(u32 id);
+struct coresight_device *
+coresight_find_default_sink(struct coresight_device *csdev);
 struct list_head *coresight_build_path(struct coresight_device *csdev,
 				       struct coresight_device *sink);
 void coresight_release_path(struct list_head *path);
diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
index f3efbb3b2b4d..7632d060e25d 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -769,6 +769,142 @@ void coresight_release_path(struct list_head *path)
 	path = NULL;
 }
 
+/* return true if the device is a suitable type for a default sink */
+static inline bool coresight_is_def_sink_type(struct coresight_device *csdev)
+{
+	/* sink & correct subtype */
+	if (((csdev->type == CORESIGHT_DEV_TYPE_SINK) ||
+	     (csdev->type == CORESIGHT_DEV_TYPE_LINKSINK)) &&
+	    (csdev->subtype.sink_subtype >= CORESIGHT_DEV_SUBTYPE_SINK_BUFFER))
+		return true;
+	return false;
+}
+
+/**
+ * coresight_select_best_sink - return the best sink for use as default from
+ * the two provided.
+ *
+ * @sink:	current best sink.
+ * @depth:      search depth where current sink was found.
+ * @new_sink:	new sink for comparison with current sink.
+ * @new_depth:  search depth where new sink was found.
+ *
+ * Sinks prioritised according to coresight_dev_subtype_sink, with only
+ * subtypes CORESIGHT_DEV_SUBTYPE_SINK_BUFFER or higher being used.
+ *
+ * Where two sinks of equal priority are found, the sink closest to the
+ * source is used (smallest search depth).
+ *
+ * return @new_sink & update @depth if better than @sink, else return @sink.
+ */
+static struct coresight_device *
+coresight_select_best_sink(struct coresight_device *sink, int *depth,
+			   struct coresight_device *new_sink, int new_depth)
+{
+	bool update = false;
+
+	if (!sink) {
+		/* first found at this level */
+		update = true;
+	} else if (new_sink->subtype.sink_subtype >
+		   sink->subtype.sink_subtype) {
+		/* found better sink */
+		update = true;
+	} else if ((new_sink->subtype.sink_subtype ==
+		    sink->subtype.sink_subtype) &&
+		   (*depth > new_depth)) {
+		/* found same but closer sink */
+		update = true;
+	}
+
+	if (update)
+		*depth = new_depth;
+	return update ? new_sink : sink;
+}
+
+/**
+ * coresight_find_sink - recursive function to walk trace connections from
+ * source to find a suitable default sink.
+ *
+ * @csdev: source / current device to check.
+ * @depth: [in] search depth of calling dev, [out] depth of found sink.
+ *
+ * This will walk the connection path from a source (ETM) till a suitable
+ * sink is encountered and return that sink to the original caller.
+ *
+ * If current device is a plain sink return that & depth, otherwise recursively
+ * call child connections looking for a sink. Select best possible using
+ * coresight_select_best_sink.
+ *
+ * return best sink found, or NULL if not found at this node or child nodes.
+ */
+static struct coresight_device *
+coresight_find_sink(struct coresight_device *csdev, int *depth)
+{
+	int i, curr_depth = *depth + 1, found_depth = 0;
+	struct coresight_device *found_sink = NULL;
+
+	if (coresight_is_def_sink_type(csdev)) {
+		found_depth = curr_depth;
+		found_sink = csdev;
+		if (csdev->type == CORESIGHT_DEV_TYPE_SINK)
+			goto return_def_sink;
+		/* look past LINKSINK for something better */
+	}
+
+	/*
+	 * Not a sink we want - or possible child sink may be better.
+	 * recursively explore each port found on this element.
+	 */
+	for (i = 0; i < csdev->pdata->nr_outport; i++) {
+		struct coresight_device *child_dev, *sink = NULL;
+		int child_depth = curr_depth;
+
+		child_dev = csdev->pdata->conns[i].child_dev;
+		if (child_dev)
+			sink = coresight_find_sink(child_dev, &child_depth);
+
+		if (sink)
+			found_sink = coresight_select_best_sink(found_sink,
+								&found_depth,
+								sink,
+								child_depth);
+	}
+
+return_def_sink:
+	/* return found sink and depth */
+	if (found_sink)
+		*depth = found_depth;
+	return found_sink;
+}
+
+/**
+ * coresight_find_default_sink: Find a sink suitable for use as a
+ * default sink.
+ *
+ * @csdev: starting source to find a connected sink.
+ *
+ * Walks connections graph looking for a suitable sink to enable for the
+ * supplied source. Uses CoreSight device subtypes and distance from source
+ * to select the best sink.
+ *
+ * If a sink is found, then the default sink for this device is set and
+ * will be automatically used in future.
+ *
+ * Used in cases where the CoreSight user (perf / sysfs) has not selected a
+ * sink.
+ */
+struct coresight_device *
+coresight_find_default_sink(struct coresight_device *csdev)
+{
+	int depth = 0;
+
+	/* look for a default sink if we have not found for this device */
+	if (!csdev->def_sink)
+		csdev->def_sink = coresight_find_sink(csdev, &depth);
+	return csdev->def_sink;
+}
+
 /** coresight_validate_source - make sure a source has the right credentials
  *  @csdev:	the device structure for a source.
  *  @function:	the function this was called from.
diff --git a/include/linux/coresight.h b/include/linux/coresight.h
index 84dc695e87d4..58fffdecdbfd 100644
--- a/include/linux/coresight.h
+++ b/include/linux/coresight.h
@@ -48,6 +48,7 @@ enum coresight_dev_subtype_sink {
 	CORESIGHT_DEV_SUBTYPE_SINK_NONE,
 	CORESIGHT_DEV_SUBTYPE_SINK_PORT,
 	CORESIGHT_DEV_SUBTYPE_SINK_BUFFER,
+	CORESIGHT_DEV_SUBTYPE_SINK_SYSMEM,
 };
 
 enum coresight_dev_subtype_link {
@@ -182,6 +183,7 @@ struct coresight_sysfs_link {
  *		happens when a source has been selected and a path is enabled
  *		from source to that sink.
  * @ea:		Device attribute for sink representation under PMU directory.
+ * @def_sink:	cached reference to default sink found for this device.
  * @ect_dev:	Associated cross trigger device. Not part of the trace data
  *		path or connections.
  * @nr_links:   number of sysfs links created to other components from this
@@ -200,6 +202,7 @@ struct coresight_device {
 	/* sink specific fields */
 	bool activated;	/* true only if a sink is part of a path */
 	struct dev_ext_attribute *ea;
+	struct coresight_device *def_sink;
 	/* cross trigger handling */
 	struct coresight_device *ect_dev;
 	/* sysfs links between components */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
