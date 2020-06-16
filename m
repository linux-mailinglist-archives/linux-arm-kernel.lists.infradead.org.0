Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 986EA1FBBF6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 18:41:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XsO6TIbt8ZLpX/wdb60/9qkYQPj2tlgXvrwKgnuB1zY=; b=cdhvuy4AJwQKiwn8L8engVUxWy
	FTxHB0WCxAKgf5/yobxElCd14pqOCxfSRSzdw0kITDtR5WD8O7Gmz1oqAXPlaB/loxN1r4IFDTBqs
	d6Zr+XCa0Yf4pRQYFT+Wa7dqvHg2KTdNp8tcjitx76zhR+zTZuspqksLKl6n8eQpuihn8ygjRlbbL
	ZNvkNOIIcWlTkoO9VhYv3qmBUpfDjhI/fL6TrgNvUphxxt5RAkn6gM0vgVun4QKZI/WTfO15OAITZ
	FGq9KSIPXTOI95vWkN5wxNsmzMHdCbFHxrXtNP4+ZLeZY4PGsY5XZgXmlq6/C8QK73N2lB+NyOUyR
	lWpiw9Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlEeS-0000t9-Vv; Tue, 16 Jun 2020 16:41:33 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlEdD-0008PA-4W
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 16:40:16 +0000
Received: by mail-wr1-x444.google.com with SMTP id b6so2327886wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 09:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=I2TjwT9IfqG2nrgLrAevDzKvNXE/MwXIyJwS2KSXhng=;
 b=aEKX/YBz/O7iZpusiQTX/Mfj/o7PxCrCNcL7fuhDR9UcBUu1zdQoZscsG0S87lFcKI
 HkGMn847nDsLMmtKxOJCSqWh52IUV0RgT6gTk7lcVF3U9Pryu5WrPuEHk54R2Ac3lgFC
 OWxQcK/NNsYArwODM6+6YHkP7mXzIHOkaEuOt4zjX6pZhbV3JiTmNV5Z5LSOQSorWShZ
 iDujvjQaHOhRxJcQn1B8c5mMyLwExWoHRP55bqR8fU0tUue/4uSaNC5lPcWcoFRI2vrB
 NucUtM81uA9byWutCZLia7qn1/f5kYxFphkBGxj+WjTVhNEuA6BJuHoPrOHvnnew8/ut
 PGFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=I2TjwT9IfqG2nrgLrAevDzKvNXE/MwXIyJwS2KSXhng=;
 b=lgj1RB3wIfj4m09o3AWgM9qDhwUSg8zL25bbWmmfiAqD7tX5kKb70Gcf3pw5wt25ix
 ghFA1CUxldKZBFEwChFe1TqbTp4xbQ43vNZf/lQce12CzdJ5Yz06SlrPSmel9CLpqKYB
 RZvCxXZ1W+i5/93Iqkh9aaEziVIeVab5PRYc5LN2eOOgOuH8W0IBb0WFTpOtKNWAKPnK
 3V8rvNQI/gzGGRO1twXuBdp8d33TyABDX4csbYSMmokWggyVyePy/cipa+ZbUx5vPem4
 fLmufOOxmXknTJxhRc5bbfI9Q4GTsgVREbw0ki3dfxPaqztE0qUssrmI8wrA3sIx3M71
 efiQ==
X-Gm-Message-State: AOAM5311Yi1CTDBVYfMwABwwehD6g/48VlanyeMIgWG3XCZnEQhSOik7
 ht/LefK0HTPpQosIEI30asobebdVW+w=
X-Google-Smtp-Source: ABdhPJzHXgNQpyErZftibK2loj/26aph0mEVisQ1m9b+ntxshr40za6D0ixAlFRe02NcPwKuz2mMXg==
X-Received: by 2002:adf:ef47:: with SMTP id c7mr4232461wrp.57.1592325613602;
 Tue, 16 Jun 2020 09:40:13 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:dc9e:c297:59e5:dbd9])
 by smtp.gmail.com with ESMTPSA id g82sm4843866wmf.1.2020.06.16.09.40.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 09:40:12 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
 coresight@lists.linaro.org, mathieu.poirier@linaro.org
Subject: [PATCH v5 4/5] coresight: sysfs: Allow select default sink on source
 enable.
Date: Tue, 16 Jun 2020 17:40:05 +0100
Message-Id: <20200616164006.15309-5-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200616164006.15309-1-mike.leach@linaro.org>
References: <20200616164006.15309-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_094015_196966_43FB1DBD 
X-CRM114-Status: GOOD (  20.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

When enabling a trace source using sysfs, allow the CoreSight system to
auto-select a default sink if none has been enabled by the user.

Uses the sink select algorithm that uses the default select priorities
set when sinks are registered with the system. At present this will
prefer ETR over ETB / ETF.

Adds a new attribute 'last_sink' to source CoreSight devices. This is set
when a source is enabled using sysfs, to the sink that the device will
trace into. This applies for both user enabled and default enabled sinks.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 drivers/hwtracing/coresight/coresight.c | 39 +++++++++++++++++++++++--
 include/linux/coresight.h               |  3 ++
 2 files changed, 40 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
index e9c90f2de34a..db39e0b56994 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -934,6 +934,16 @@ static void coresight_clear_default_sink(struct coresight_device *csdev)
 	}
 }
 
+static void coresight_set_last_sink_name(struct coresight_device *source,
+					 struct coresight_device *sink)
+{
+	/* remove current value and set new one if *sink not NULL */
+	kfree(source->last_sink);
+	source->last_sink = NULL;
+	if (sink)
+		source->last_sink = kstrdup(dev_name(&sink->dev), GFP_KERNEL);
+}
+
 /** coresight_validate_source - make sure a source has the right credentials
  *  @csdev:	the device structure for a source.
  *  @function:	the function this was called from.
@@ -994,8 +1004,15 @@ int coresight_enable(struct coresight_device *csdev)
 	 */
 	sink = coresight_get_enabled_sink(false);
 	if (!sink) {
-		ret = -EINVAL;
-		goto out;
+		/* look for a default sink if nothing enabled */
+		sink = coresight_find_default_sink(csdev);
+		if (!sink) {
+			ret = -EINVAL;
+			goto out;
+		}
+		/* mark the default as enabled */
+		sink->activated = true;
+		dev_info(&sink->dev, "Enabled default sink.");
 	}
 
 	path = coresight_build_path(csdev, sink);
@@ -1033,6 +1050,9 @@ int coresight_enable(struct coresight_device *csdev)
 		break;
 	}
 
+	/* record name of sink used for this session */
+	coresight_set_last_sink_name(csdev, sink);
+
 out:
 	mutex_unlock(&coresight_mutex);
 	return ret;
@@ -1145,6 +1165,19 @@ static ssize_t enable_source_store(struct device *dev,
 }
 static DEVICE_ATTR_RW(enable_source);
 
+static ssize_t last_sink_show(struct device *dev,
+			      struct device_attribute *attr, char *buf)
+{
+	struct coresight_device *csdev = to_coresight_device(dev);
+	ssize_t size = 0;
+
+	if (csdev->last_sink)
+		size = scnprintf(buf, PAGE_SIZE, "%s\n", csdev->last_sink);
+	return size;
+}
+static DEVICE_ATTR_RO(last_sink);
+
+
 static struct attribute *coresight_sink_attrs[] = {
 	&dev_attr_enable_sink.attr,
 	NULL,
@@ -1153,6 +1186,7 @@ ATTRIBUTE_GROUPS(coresight_sink);
 
 static struct attribute *coresight_source_attrs[] = {
 	&dev_attr_enable_source.attr,
+	&dev_attr_last_sink.attr,
 	NULL,
 };
 ATTRIBUTE_GROUPS(coresight_source);
@@ -1524,6 +1558,7 @@ void coresight_unregister(struct coresight_device *csdev)
 	/* Remove references of that device in the topology */
 	coresight_remove_conns(csdev);
 	coresight_clear_default_sink(csdev);
+	coresight_set_last_sink_name(csdev, NULL);
 	coresight_release_platform_data(csdev, csdev->pdata);
 	device_unregister(&csdev->dev);
 }
diff --git a/include/linux/coresight.h b/include/linux/coresight.h
index 58fffdecdbfd..fc320dd2cedc 100644
--- a/include/linux/coresight.h
+++ b/include/linux/coresight.h
@@ -184,6 +184,8 @@ struct coresight_sysfs_link {
  *		from source to that sink.
  * @ea:		Device attribute for sink representation under PMU directory.
  * @def_sink:	cached reference to default sink found for this device.
+ * @last_sink:	Name of last sink used for this source to trace into. Set when
+ *		enabling a source using sysfs - only set on a source device.
  * @ect_dev:	Associated cross trigger device. Not part of the trace data
  *		path or connections.
  * @nr_links:   number of sysfs links created to other components from this
@@ -203,6 +205,7 @@ struct coresight_device {
 	bool activated;	/* true only if a sink is part of a path */
 	struct dev_ext_attribute *ea;
 	struct coresight_device *def_sink;
+	const char *last_sink;
 	/* cross trigger handling */
 	struct coresight_device *ect_dev;
 	/* sysfs links between components */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
