Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B967F8BC2A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 16:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JJUSqTS5VII2mCqHNr3rS8NLsktndB3eqD6mVo9GQeY=; b=espnwGVaNjpytQ
	Jxqbi59d1yL8pIyOKAZQWU84Sbqv8YqEBNl6S+t5WOkv0mfiarR2QgDQ2z+ZJ4elHIOXzRWCtbPbi
	WqJLAdeL+/YVAXpQ+tQ1yAm7N5aGkooPq3VKyRj818g1oca+WDrKTOIczqUhd6rPYb4n9KccqatUz
	jtKSYR+A3nMNQ/VmCJkNGtKYvY85G4Ezsuf+CjUCrDdCi5Gn4JdUg4Sl7vVNNIgRmxHsOOMERUkan
	fQmROFcd0c/wxvpmQ1Cf+x+x76hfxwhFL/JjY5aXcwDxYnDjdqgrRg/E/bwh2BJABf1HxVrDcjElR
	VtLn8Iv6TUw4RZVzP6Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxYC9-0003iJ-JN; Tue, 13 Aug 2019 14:54:41 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxYBL-00035m-0a
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 14:53:52 +0000
Received: by mail-lj1-x243.google.com with SMTP id e24so5135776ljg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 07:53:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uM5KDFBP871ZVZqzWYkX79IOsRBnc0vP++SbwrF+Law=;
 b=lOTjuMKuogK2dDNGkv6MO919RAbUY00BlTXLsyO1rzOFS+Apt+WBodqxpT+0086IYG
 SSlBrHz2Tj/86KNmiTs3/KU2GFFjKZ29gE3a8XQxN3QsfDsNOJt4hJvAmu59gKgIgWLR
 TrLphF65L+tx5db9fW1QGc+8ZK1L5gdKv6+807vMgpsbWlzp09xtOMOImOUCVhVuKsoF
 vmZj2Emf2Yx0CuaHO+hYT/n1uikCAMqd1Ob2U/ovXzdU2/5P/HdKm2XWDSLwSQR8J0Zb
 x5NEZyaSBVDmGVFLXSlTj5/DJv37gx41xseNhpFQreufCTvtq/eun22Svt7xiD2LJamY
 PbAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uM5KDFBP871ZVZqzWYkX79IOsRBnc0vP++SbwrF+Law=;
 b=LQx2vCcRuuELTrbd7siGDXHVR61jSx2UlzTWYWTZoQKUybdyzJd2+4itRAa2OCW548
 119pLE9xaMXJl84AguMTX6t5TwgR/1EL94fn7ON1u6PUOcVNwoBtBWwefKtkwDnufTqu
 Lg0BphcotcT7ahGT+aPR0S+5aSpdUz05NyQJX8TfdOAoewzqovtDPJoqVlerWKKPVPBj
 6xVMSj/Bf1+z02TGiKL/ll1+NskbMTs7oivt3MLMNmSFU2daRYutukPsWuthUqO+shyU
 yX63vBzdeND4MrnckH1Tw4sr1H573f5exWFoP+w/c5aR1Oa/K7g55yOeZvgsSv/Xq1LE
 LSRA==
X-Gm-Message-State: APjAAAUwraMwTpYglFKh8cWiNjNxfP0Z/hEDbRbLsLf2icX8OBRVBJvT
 FuJGcFqGN74PTPhczP1+YSQWFA==
X-Google-Smtp-Source: APXvYqzkAR8ST/yzHWAfYqK+jlbWYzAkxaU374oYI2vKawAL3JL6BOFTUAj2CBJA1+CV7edQ5A7NVg==
X-Received: by 2002:a2e:12c8:: with SMTP id 69mr21630688ljs.189.1565708029352; 
 Tue, 13 Aug 2019 07:53:49 -0700 (PDT)
Received: from localhost.localdomain ([212.45.67.2])
 by smtp.googlemail.com with ESMTPSA id r68sm19628100lff.52.2019.08.13.07.53.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 13 Aug 2019 07:53:48 -0700 (PDT)
From: Georgi Djakov <georgi.djakov@linaro.org>
To: linux-pm@vger.kernel.org,
	evgreen@chromium.org
Subject: [PATCH v4 2/3] interconnect: Add pre_aggregate() callback
Date: Tue, 13 Aug 2019 17:53:40 +0300
Message-Id: <20190813145341.28530-3-georgi.djakov@linaro.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190813145341.28530-1-georgi.djakov@linaro.org>
References: <20190813145341.28530-1-georgi.djakov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_075351_063422_428CBCA2 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: seansw@qti.qualcomm.com, linux-kernel@vger.kernel.org,
 daidavid1@codeaurora.org, dianders@chromium.org, amit.kucheria@linaro.org,
 bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
 georgi.djakov@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce an optional callback in interconnect provider drivers. It can be
used for implementing actions, that need to be executed before the actual
aggregation of the bandwidth requests has started.

The benefit of this for now is that it will significantly simplify the code
in provider drivers.

Suggested-by: Evan Green <evgreen@chromium.org>
Reviewed-by: Evan Green <evgreen@chromium.org>
Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>
---
 drivers/interconnect/core.c           | 3 +++
 include/linux/interconnect-provider.h | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/drivers/interconnect/core.c b/drivers/interconnect/core.c
index 251354bb7fdc..7b971228df38 100644
--- a/drivers/interconnect/core.c
+++ b/drivers/interconnect/core.c
@@ -205,6 +205,9 @@ static int aggregate_requests(struct icc_node *node)
 	node->avg_bw = 0;
 	node->peak_bw = 0;
 
+	if (p->pre_aggregate)
+		p->pre_aggregate(node);
+
 	hlist_for_each_entry(r, &node->req_list, req_node)
 		p->aggregate(node, r->tag, r->avg_bw, r->peak_bw,
 			     &node->avg_bw, &node->peak_bw);
diff --git a/include/linux/interconnect-provider.h b/include/linux/interconnect-provider.h
index 4ee19fd41568..b16f9effa555 100644
--- a/include/linux/interconnect-provider.h
+++ b/include/linux/interconnect-provider.h
@@ -36,6 +36,8 @@ struct icc_node *of_icc_xlate_onecell(struct of_phandle_args *spec,
  * @nodes: internal list of the interconnect provider nodes
  * @set: pointer to device specific set operation function
  * @aggregate: pointer to device specific aggregate operation function
+ * @pre_aggregate: pointer to device specific function that is called
+ *		   before the aggregation begins (optional)
  * @xlate: provider-specific callback for mapping nodes from phandle arguments
  * @dev: the device this interconnect provider belongs to
  * @users: count of active users
@@ -47,6 +49,7 @@ struct icc_provider {
 	int (*set)(struct icc_node *src, struct icc_node *dst);
 	int (*aggregate)(struct icc_node *node, u32 tag, u32 avg_bw,
 			 u32 peak_bw, u32 *agg_avg, u32 *agg_peak);
+	void (*pre_aggregate)(struct icc_node *node);
 	struct icc_node* (*xlate)(struct of_phandle_args *spec, void *data);
 	struct device		*dev;
 	int			users;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
