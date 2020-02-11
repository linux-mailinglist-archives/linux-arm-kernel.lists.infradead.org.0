Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D3F158D1D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 11:59:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2pkO4amQM2jOKyzLj+boLh39DDh0PpARcDIBDYbjPY4=; b=BPkf8fh4GLCFvEZzl04tC4n4ZD
	HGDa4ylFEPjTFfPvnmsdlsRl/CRrSDnr14npzd/pJ72lfoIP6Y6L89MuHtQ+6CApQzTb8v7pDa5p3
	g0ITGXaJkiyYQ/ltw80TMqdHvPd8hObYroqdr6vAjfT7eAc5gJlLKpbAMDHo+TWDbQ0A2PuDkS/2t
	RnLcobUV/YtiW+1tvh13Cj1RS0BQYjyY8Xzll5gkusr5qtCgBTPV97UIBZdrJXJqcb47SVjBFkEcH
	H7Wk1WjfY7pKwuaz7kcMkFonkGFxGhxA9+D8A2hS7kH28vZhA9sdx55oTfXX72/xOSj52ARUUVJch
	coDlthWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1TGP-0002R7-Aa; Tue, 11 Feb 2020 10:59:33 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1TFH-0001Kj-A2
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 10:58:24 +0000
Received: by mail-wr1-x441.google.com with SMTP id z7so11684136wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 02:58:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vNm6E41dD+3EcT2K0DKbvrPIUP9PYyF/XxhSVh53CX0=;
 b=ZDgv/t7sP+1uEALXpOkZpnoz/ADtsfUQwiF774ux9bqMBNrEWL7M97gwvi2sQLez2u
 U+GlZ39laxiS/Tu69JKhSRjgzOyMz7bf1p4ReTCQp9RRGB3ocKimww6VufV+oV4Jj6mU
 jyWeu4+K89JcKCeCrJdcDMr3stiK838D1Mh9iNmRu/faef2dU60D/6yeIKfRxkaxkx/E
 y0IwUc2urI63kdHNPEySEgZvnDjm4xKLfm6Fv5kNvYcycTmWz13BITMgn9tIBbUWI/G5
 CIOak1SljGxKjKx5r0QTyudlwJf8mMm2fRIjH+aXljiKj4YwJt40GJl8QTW0fkNUeu9c
 +Yqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vNm6E41dD+3EcT2K0DKbvrPIUP9PYyF/XxhSVh53CX0=;
 b=sMZ4fTXAXGPOm35RSpK/P86ajxdvpHBkysO+YJlUy5GFnmuvyOfAOTO3DjxcBbpWnc
 IfZskTvLrDxOxCSSCXHguDTVvaun3R5NsjKDOPVeEnZwFzpESkTepHFqvroulsJYzjiX
 8u89d4qv9I10yoyBXspLCsbkTvzf/FUh4hlo/TxWRa1Pe5dO6kWBkZS89AlAJ5PxVWxW
 0vi2zi1FMl54xqgHUqpkL5c/vE2j8MIJWHpaUfWjpUBlEUTzuEFXZPtKdW75u2XRlG7Q
 pjvnkOZCq9Lw03Vch+ylY3sVRzix5rWsnxnxmED1GiB+jizCo1E37ET5pPgg0XHU6yJ9
 yMeg==
X-Gm-Message-State: APjAAAVjZndQLeJZ3/fSGL2kFUseeERSZnIKoKHUentcVpQDq+9me5uJ
 x2avieE7AN/LD6cDD3zqhk2POMg7n3E=
X-Google-Smtp-Source: APXvYqzFlqJJqrPjFPpJYQFGxy5nia87NDWRjTSgfCOvhptfDM8hkWrlFc5afOgryjY0L3tap5GyRw==
X-Received: by 2002:a5d:54c1:: with SMTP id x1mr7717644wrv.240.1581418701161; 
 Tue, 11 Feb 2020 02:58:21 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:a1cf:b00b:5683:ed40])
 by smtp.gmail.com with ESMTPSA id g21sm3171291wmh.17.2020.02.11.02.58.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 02:58:20 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v4 5/6] coresight: cti: Add in sysfs links to other coresight
 devices.
Date: Tue, 11 Feb 2020 10:58:07 +0000
Message-Id: <20200211105808.27884-6-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200211105808.27884-1-mike.leach@linaro.org>
References: <20200211105808.27884-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_025823_357361_32BD1F7D 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mike Leach <mike.leach@linaro.org>, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds in sysfs links for connections where the connected device is another
coresight device. This allows examination of the coresight topology.

Non-coresight connections remain just as a reference name.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 drivers/hwtracing/coresight/coresight-cti.c | 41 ++++++++++++++++++++-
 1 file changed, 40 insertions(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
index 9e18e176831c..f620e9460e7d 100644
--- a/drivers/hwtracing/coresight/coresight-cti.c
+++ b/drivers/hwtracing/coresight/coresight-cti.c
@@ -441,6 +441,37 @@ int cti_channel_setop(struct device *dev, enum cti_chan_set_op op,
 	return err;
 }
 
+static void cti_add_sysfs_link(struct cti_drvdata *drvdata,
+			       struct cti_trig_con *tc)
+{
+	struct coresight_sysfs_link link_info;
+
+	link_info.orig = drvdata->csdev;
+	link_info.orig_name = tc->con_dev_name;
+	link_info.target = tc->con_dev;
+	link_info.target_name = dev_name(&drvdata->csdev->dev);
+	coresight_add_sysfs_link(&link_info);
+}
+
+static void cti_remove_all_sysfs_links(struct cti_drvdata *drvdata)
+{
+	struct cti_trig_con *tc;
+	struct cti_device *ctidev = &drvdata->ctidev;
+	struct coresight_sysfs_link link_info;
+
+	/* origin device and target link name constant for this cti */
+	link_info.orig = drvdata->csdev;
+	link_info.target_name = dev_name(&drvdata->csdev->dev);
+
+	list_for_each_entry(tc, &ctidev->trig_cons, node) {
+		if (tc->con_dev) {
+			link_info.target = tc->con_dev;
+			link_info.orig_name = tc->con_dev_name;
+			coresight_remove_sysfs_link(&link_info);
+		}
+	}
+}
+
 /*
  * Look for a matching connection device name in the list of connections.
  * If found then swap in the csdev name, set trig con association pointer
@@ -452,6 +483,8 @@ cti_match_fixup_csdev(struct cti_device *ctidev, const char *node_name,
 {
 	struct cti_trig_con *tc;
 	const char *csdev_name;
+	struct cti_drvdata *drvdata = container_of(ctidev, struct cti_drvdata,
+						   ctidev);
 
 	list_for_each_entry(tc, &ctidev->trig_cons, node) {
 		if (tc->con_dev_name) {
@@ -462,6 +495,7 @@ cti_match_fixup_csdev(struct cti_device *ctidev, const char *node_name,
 					devm_kstrdup(&csdev->dev, csdev_name,
 						     GFP_KERNEL);
 				tc->con_dev = csdev;
+				cti_add_sysfs_link(drvdata, tc);
 				return true;
 			}
 		}
@@ -546,10 +580,12 @@ static void cti_update_conn_xrefs(struct cti_drvdata *drvdata)
 	struct cti_device *ctidev = &drvdata->ctidev;
 
 	list_for_each_entry(tc, &ctidev->trig_cons, node) {
-		if (tc->con_dev)
+		if (tc->con_dev) {
 			/* set tc->con_dev->ect_dev */
 			coresight_set_assoc_ectdev_mutex(tc->con_dev,
 							 drvdata->csdev);
+			cti_add_sysfs_link(drvdata, tc);
+		}
 	}
 }
 
@@ -602,6 +638,9 @@ static void cti_device_release(struct device *dev)
 	mutex_lock(&ect_mutex);
 	cti_remove_conn_xrefs(drvdata);
 
+	/* clear the dynamic sysfs associate with connections */
+	cti_remove_all_sysfs_links(drvdata);
+
 	/* remove from the list */
 	list_for_each_entry_safe(ect_item, ect_tmp, &ect_net, node) {
 		if (ect_item == drvdata) {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
