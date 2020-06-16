Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 595481FBBE8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 18:40:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KjTwrfeZwxmADQurC81VyW6LYRvreYGA+fNfwp5o7a0=; b=bemZG4RW9bS0Stn97mgTcJLYko
	lj4Wg5hJzYeA4+rgaTfweq8zvcAkZDuxk5BX2OS72F7ChvuSPqn9rD4gTPMSPy/Fd0FhKL/2asYSn
	mEpvfUbLknAz57La4i0G3suoxt1/SXxUeonIUCXUuYdF/i4dJJbAYmY2Ol4KuJud1kGXqRywuBjvN
	99DqeWrm7HgxUPxKZE168/CALkmNQPeC7lARXVHWhTuHKhBO400czbGtVOe6v0AlQOmi/8P4+f3W6
	XkID6MKMmhRTmUERPK1rxS2U4OgJKeiiKcecs5nOFKXt/Yi7uAr8xzOdPqObhJebvVNnaUXSiuIBP
	FgfPo+UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlEdb-00006N-SY; Tue, 16 Jun 2020 16:40:39 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlEdA-00088H-72
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 16:40:14 +0000
Received: by mail-wr1-x442.google.com with SMTP id j10so21463377wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 09:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JvNhFPgAekuOh98eM7QIE6yiEIZ2rGlQ4CDaGTYjSLY=;
 b=iXLSMGTMAMcpGOJzbRoQjT/sKbFJ/0Tk+PrBtjhSvvSD3aFuu8JUwnpYo+qOEfGyQm
 Qp7tZnkqPi5mP+DJ5MdEqUQJL+1zk6csiRQnFT8HBUfCg7o2uPhtexcLRhM9HC0BzKgM
 Kv/ZREQagHWdbdVG3saAe9l+KekzRZ+J9SRAIzMD9l62cybThc18ulRQcvOUH2EKDe1Y
 i3p4aVSmip2ULHoRsElkW4GuL4C7OzMNcBTq8F7vHIOgX1Jex74cqKo3mtq94GN/g/Ol
 tCCgDt1WTg+jlI7M+lu6ycRfjuV3+gGq0Yj2qr6JDr0KC6EvP9cjOE/tb73GX2YGV74f
 VrYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JvNhFPgAekuOh98eM7QIE6yiEIZ2rGlQ4CDaGTYjSLY=;
 b=SVw5BilTnzFExSDWSzuqmPYy4ktOsuNIfRRTfHYlaQraVoVP0RCPZJMXl6nH3qcf+1
 BSiEPF3iMwTnbocklb1kXDiISSyI2GGncK2ld5lK49wLout66i6W5TY73tSUnszvhHmN
 jSwpYA3VhhUbFDKvMcL+Yvv5kjiAwW0uavTr8lOP1T2EtdGLAs2a8MJzar2v04uK+ZN2
 p7pT9S8zjDVScBA1PdkIsBzyDWMToNs/cMhUzTypNWQPSD+k+VEIwPQ3E47ED6E7utyI
 LOXIwwUanBJRXcPpGETI2vlLIfcYBIalUkMKOJzQvWVk6yPLW617KlX3KOIHdG6bPygo
 IANg==
X-Gm-Message-State: AOAM533fK6w3/BryQ10KdU6+IZBqz2ns2Nc33chytqEKAxPSlp9cOOKa
 LOgvnSKKE08hTYrCOSdfW+H48VDUR3Q=
X-Google-Smtp-Source: ABdhPJwddWC6tT5XMJlG5DztkmNAEg5w+rvwoDqKakRGTHObzKvjpep3f/GVlfAsPbSThzoQodvg7w==
X-Received: by 2002:adf:f6ce:: with SMTP id y14mr4138185wrp.90.1592325610126; 
 Tue, 16 Jun 2020 09:40:10 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:dc9e:c297:59e5:dbd9])
 by smtp.gmail.com with ESMTPSA id g82sm4843866wmf.1.2020.06.16.09.40.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 09:40:09 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
 coresight@lists.linaro.org, mathieu.poirier@linaro.org
Subject: [PATCH v5 1/5] coresight: Add default sink selection to CoreSight
 base.
Date: Tue, 16 Jun 2020 17:40:02 +0100
Message-Id: <20200616164006.15309-2-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200616164006.15309-1-mike.leach@linaro.org>
References: <20200616164006.15309-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_094012_269129_BF51E98B 
X-CRM114-Status: GOOD (  26.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: corbet@lwn.net, Mike Leach <mike.leach@linaro.org>, suzuki.poulose@arm.com
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
Suggested-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Reviewed-by: Leo Yan <leo.yan@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-priv.h |   2 +
 drivers/hwtracing/coresight/coresight.c      | 166 +++++++++++++++++++
 include/linux/coresight.h                    |   3 +
 3 files changed, 171 insertions(+)

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
index f3efbb3b2b4d..e9c90f2de34a 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -769,6 +769,171 @@ void coresight_release_path(struct list_head *path)
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
+static int coresight_remove_sink_ref(struct device *dev, void *data)
+{
+	struct coresight_device *sink = data;
+	struct coresight_device *source = to_coresight_device(dev);
+
+	if (source->def_sink == sink)
+		source->def_sink = NULL;
+	return 0;
+}
+
+/**
+ * coresight_clear_default_sink: Remove all default sink references to the
+ * supplied sink.
+ *
+ * If supplied device is a sink, then check all the bus devices and clear
+ * out all the references to this sink from the coresight_device def_sink
+ * parameter.
+ *
+ * @csdev: coresight sink - remove references to this from all sources.
+ */
+static void coresight_clear_default_sink(struct coresight_device *csdev)
+{
+	if ((csdev->type == CORESIGHT_DEV_TYPE_SINK) ||
+	    (csdev->type == CORESIGHT_DEV_TYPE_LINKSINK)) {
+		bus_for_each_dev(&coresight_bustype, NULL, csdev,
+				 coresight_remove_sink_ref);
+	}
+}
+
 /** coresight_validate_source - make sure a source has the right credentials
  *  @csdev:	the device structure for a source.
  *  @function:	the function this was called from.
@@ -1358,6 +1523,7 @@ void coresight_unregister(struct coresight_device *csdev)
 	etm_perf_del_symlink_sink(csdev);
 	/* Remove references of that device in the topology */
 	coresight_remove_conns(csdev);
+	coresight_clear_default_sink(csdev);
 	coresight_release_platform_data(csdev, csdev->pdata);
 	device_unregister(&csdev->dev);
 }
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
