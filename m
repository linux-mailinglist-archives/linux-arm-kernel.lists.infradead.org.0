Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 277EF35964
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 11:14:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bFXayI/0J+1tpsclcpljOQ5/bLx7VYgaonjQYiinMW8=; b=SRUU9GGameL96Arf2Drwu9TJsg
	asIehgVgtk07VGfU+dbe7J4Ne4FfwM62Y+nlRMlSGsfoxcN7H6/OSvyXhkFZc4dKLNh2ryWfLmiTz
	II2xOlXQ3h0oZqQSYzlSYBjr7Zio/qU0NpjVgFOwb4fCX2q5tlVNdCLZvqI3jLqWaRqm0qH6Gig2P
	Z20TWx6dlM5X5SW5kTnUcSQDf8Rjkn7ZwUMcE2g08lLVQ7A3t5L8BfmSaRa6OBUZX/Taq1w+MgCa3
	V1ltVHPmi7GqDgd7dDd8D+K8JpBIvFyiJki5aNPLbTWhxMEcBXEnSiL4OLN7cFHj1MnboV/7gyKj4
	Gap+ORnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYRzg-0003AT-H6; Wed, 05 Jun 2019 09:14:04 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRym-0002Bc-L0
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 09:13:11 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190605091305euoutp02e9d8e9368d5fe9ce04dc095f3d6498ff~lQoUZIEPv2397423974euoutp02S
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  5 Jun 2019 09:13:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190605091305euoutp02e9d8e9368d5fe9ce04dc095f3d6498ff~lQoUZIEPv2397423974euoutp02S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1559725985;
 bh=v+RMmIzTcaJyPjA8Zdr0mIih2MUkFcF/sSg/cYP3NCQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hbvo1ziuN4o3W9s4U1T6oZKupw9Be57BgjXmF73s5ymGOTVIQY7NRddI94YOFmflv
 JIjNH6wuO3GuK1ccOtUdtB6Q3A4euHPuQw7B2eDaVlfm54279JUfeLD7jg/jc6t6vg
 xA/YtO1+6vGFtiGiFKB6R9OT3OSuvWZFoQgtWyzc=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190605091304eucas1p2886c0192cd2da56c16761efb46368a9b~lQoTZg-X02278222782eucas1p2f;
 Wed,  5 Jun 2019 09:13:04 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id A7.3A.04377.F9787FC5; Wed,  5
 Jun 2019 10:13:03 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190605091303eucas1p27177d349e0f2bd37bf582dbd7266321a~lQoSpzvtZ2947229472eucas1p2r;
 Wed,  5 Jun 2019 09:13:03 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190605091303eusmtrp2c4812a8b2e229a4ed64dffdd9a439760~lQoSaCwXU2473824738eusmtrp2U;
 Wed,  5 Jun 2019 09:13:03 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-36-5cf7879feea2
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 46.30.04146.F9787FC5; Wed,  5
 Jun 2019 10:13:03 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190605091302eusmtip13d45ee484c0e87c76c638e908e998294~lQoRs_1gj3220032200eusmtip1N;
 Wed,  5 Jun 2019 09:13:02 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 3/5] drivers: devfreq: events: extend events by type of
 counted data
Date: Wed,  5 Jun 2019 11:12:34 +0200
Message-Id: <20190605091236.24263-4-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190605091236.24263-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSeUhTcRzvt7e397aaPGfHDxsKK0WNppXFj4wOiFoQUQRFNbCVj3W4VXse
 ZdfKaiXpxFCneUWWY86jqWU2w+bSonIdsExdydZBbh3kWBRl+XiL/vv8Pid8+ZGYpBWPJvdq
 s2idVpUpE4j4N/t+uObXGb4rU0Jr0A1TC45eBj/gqNY5gCOjz48hl6uVQE9OBwg0pJcim8+N
 oxddVQI0XugEyOS6y0NNTg+Brr18xkPDp8wCdLbbSaDegAFHoQdesDJSYa2xAsXtSg+hsFku
 CBRt9ScV9z7beYqidgtQjNtiNhLbRcsy6My9ObQueflO0Z5XfaW8g7/nHG62enE9aJMWACEJ
 qVT4+HmToACISAllBvCP9yHBChIqCKCjZgknjANoN3QQ/xLuwSGCExoAPGcu5nOPyUT3qGey
 iyQFlBx2Wg6xgenUVQBDvdtZD0Zd58G7+d94rBBFbYMVZ77iLOZTcTDf+1PAYjG1AnZXFIfX
 YmFjaw/GdgqplbDNtIKjBwg41hnH0pBaDc0jRzk6Co71t4eTUvjndi2PwwzUF14BHD4Gfcbq
 sCcN9vY/w9kajEqELV3JHL0K1hm9fK49Ag5+imRpbBKW3CzHOFoMz5+TcO4E2H7xaXhoJmyw
 loXLFfB9dSvG3eYSgJc/joJiEFv5f6wOAAuYRWczGjXNLNTSuXJGpWGytWr57gMaG5j8R48m
 +oOdoOvXLgegSCCbJjalh5QSXJXDHNE4ACQx2XSxajiolIgzVEfyaN2BdF12Js04wGySL5sl
 PjpldIeEUquy6P00fZDW/VN5pDBaDyyrakBlni3PcSE3oUN537VhhJ8a8G91MUXuNyXx8q8F
 ygjPUjonib8pbt5ad35oIjf61qDkxPrr8o51X2YII5N7mucGHkVV3Ykvf532NsNeFfBHlL6o
 NhxPrPd93jKU0pi22CjVxFRM3ffKr66/tWjeO+EPe49vc9C1oHairGGhjM/sUS1IwnSM6i/0
 VbMdQwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGIsWRmVeSWpSXmKPExsVy+t/xu7rz27/HGJzdzmuxccZ6VovrX56z
 Wsw/co7Vov/xa2aL8+c3sFucbXrDbnGrQcZi0+NrrBaXd81hs/jce4TRYsb5fUwWa4/cZbdY
 ev0ik8XtxhVsFq17j7BbHH7Tzmrx7cQjRgdBjzXz1jB67Jx1l91j06pONo/NS+o9Dr7bw+TR
 t2UVo8fnTXIB7FF6NkX5pSWpChn5xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2NimpOZll
 qUX6dgl6GTePTWUq+KtcsW7NI9YGxs0yXYycHBICJhLXbtxi72Lk4hASWMooMev9claIhJjE
 pH3b2SFsYYk/17rYQGwhgU+MEhdnOnYxcnCwCehJ7FhVCNIrIrCcUeLYqrfMIA6zwDYmiT1X
 djOCNAgLhEvMbJzEAmKzCKhKND/6BTaIV8BeYu/MCVAL5CVWbzjADDKUU8BBYvMMe4hd9hLH
 z25lnsDIt4CRYRWjSGppcW56brGhXnFibnFpXrpecn7uJkZgnGw79nPzDsZLG4MPMQpwMCrx
 8M6I/xYjxJpYVlyZe4hRgoNZSYQ38faXGCHelMTKqtSi/Pii0pzU4kOMpkA3TWSWEk3OB8Zw
 Xkm8oamhuYWlobmxubGZhZI4b4fAwRghgfTEktTs1NSC1CKYPiYOTqkGxqZF+z/4Tpa+eN+m
 3mdqYLR+D2u/xbTFf+aqipZuTmb79G9pn+LdibJPnKQ3xgcHB7yacmzvZW9Oy8vfntyZNO/4
 k6ZtZYfnFNd1OJzp/fJMYZWx2cwpa29qer5tSV/Ut/3Lpo/cVqtEWvc8X7Al6/H2Ldt3PVw5
 0eN3WfHFf95/XJ7s2+MU8PC1EktxRqKhFnNRcSIAB4QDJakCAAA=
X-CMS-MailID: 20190605091303eucas1p27177d349e0f2bd37bf582dbd7266321a
X-Msg-Generator: CA
X-RootMTR: 20190605091303eucas1p27177d349e0f2bd37bf582dbd7266321a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190605091303eucas1p27177d349e0f2bd37bf582dbd7266321a
References: <20190605091236.24263-1-l.luba@partner.samsung.com>
 <CGME20190605091303eucas1p27177d349e0f2bd37bf582dbd7266321a@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_021308_820054_524AE7F1 
X-CRM114-Status: GOOD (  19.44  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, willy.mh.wolff.ml@gmail.com, kgene@kernel.org,
 b.zolnierkie@samsung.com, krzk@kernel.org, l.luba@partner.samsung.com,
 cw00.choi@samsung.com, kyungmin.park@samsung.com, robh+dt@kernel.org,
 myungjoo.ham@samsung.com, s.nawrocki@samsung.com, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds posibility to choose what type of data should be counted
by the PPMU counter. Now the type comes from DT where the event has been
defined. When there is no 'event-data-type' the default value is used,
which is 'read+write data in bytes'.
It is needed when you want to know not only read+write data bytes but
i.e. only write data in byte, or number of read requests, etc.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 drivers/devfreq/event/exynos-ppmu.c | 60 ++++++++++++++++++++---------
 include/linux/devfreq-event.h       |  6 +++
 2 files changed, 47 insertions(+), 19 deletions(-)

diff --git a/drivers/devfreq/event/exynos-ppmu.c b/drivers/devfreq/event/exynos-ppmu.c
index 17f3c86a6f00..12f637320e9e 100644
--- a/drivers/devfreq/event/exynos-ppmu.c
+++ b/drivers/devfreq/event/exynos-ppmu.c
@@ -161,9 +161,9 @@ static int exynos_ppmu_set_event(struct devfreq_event_dev *edev)
 	if (ret < 0)
 		return ret;
 
-	/* Set the event of Read/Write data count  */
+	/* Set the event of proper data type monitoring */
 	ret = regmap_write(info->regmap, PPMU_BEVTxSEL(id),
-				PPMU_RO_DATA_CNT | PPMU_WO_DATA_CNT);
+			   edev->desc->data_type);
 	if (ret < 0)
 		return ret;
 
@@ -375,23 +375,11 @@ static int exynos_ppmu_v2_set_event(struct devfreq_event_dev *edev)
 	if (ret < 0)
 		return ret;
 
-	/* Set the event of Read/Write data count  */
-	switch (id) {
-	case PPMU_PMNCNT0:
-	case PPMU_PMNCNT1:
-	case PPMU_PMNCNT2:
-		ret = regmap_write(info->regmap, PPMU_V2_CH_EVx_TYPE(id),
-				PPMU_V2_RO_DATA_CNT | PPMU_V2_WO_DATA_CNT);
-		if (ret < 0)
-			return ret;
-		break;
-	case PPMU_PMNCNT3:
-		ret = regmap_write(info->regmap, PPMU_V2_CH_EVx_TYPE(id),
-				PPMU_V2_EVT3_RW_DATA_CNT);
-		if (ret < 0)
-			return ret;
-		break;
-	}
+	/* Set the event of proper data type monitoring */
+	ret = regmap_write(info->regmap, PPMU_V2_CH_EVx_TYPE(id),
+			   edev->desc->data_type);
+	if (ret < 0)
+		return ret;
 
 	/* Reset cycle counter/performance counter and enable PPMU */
 	ret = regmap_read(info->regmap, PPMU_V2_PMNC, &pmnc);
@@ -507,6 +495,7 @@ static int of_get_devfreq_events(struct device_node *np,
 	struct device_node *events_np, *node;
 	int i, j, count;
 	const struct of_device_id *of_id;
+	int ret;
 
 	events_np = of_get_child_by_name(np, "events");
 	if (!events_np) {
@@ -556,6 +545,39 @@ static int of_get_devfreq_events(struct device_node *np,
 		desc[j].driver_data = info;
 
 		of_property_read_string(node, "event-name", &desc[j].name);
+		ret = of_property_read_u32(node, "event-data-type",
+					   &desc[j].data_type);
+		if (ret) {
+			/* Set the event of proper data type counting.
+			 * Check if the data type has been defined in DT,
+			 * use default if not.
+			 */
+			if (info->ppmu_type == EXYNOS_TYPE_PPMU_V2) {
+				struct devfreq_event_dev edev;
+				int id;
+				/* Not all registers take the same value for
+				 * read+write data count.
+				 */
+				edev.desc = &desc[j];
+				id = exynos_ppmu_find_ppmu_id(&edev);
+
+				switch (id) {
+				case PPMU_PMNCNT0:
+				case PPMU_PMNCNT1:
+				case PPMU_PMNCNT2:
+					desc[j].data_type = PPMU_V2_RO_DATA_CNT
+						| PPMU_V2_WO_DATA_CNT;
+					break;
+				case PPMU_PMNCNT3:
+					desc[j].data_type =
+						PPMU_V2_EVT3_RW_DATA_CNT;
+					break;
+				}
+			} else {
+				desc[j].data_type = PPMU_RO_DATA_CNT |
+					PPMU_WO_DATA_CNT;
+			}
+		}
 
 		j++;
 	}
diff --git a/include/linux/devfreq-event.h b/include/linux/devfreq-event.h
index 4db00b02ca3f..cc160b1274c0 100644
--- a/include/linux/devfreq-event.h
+++ b/include/linux/devfreq-event.h
@@ -81,14 +81,20 @@ struct devfreq_event_ops {
  * struct devfreq_event_desc - the descriptor of devfreq-event device
  *
  * @name	: the name of devfreq-event device.
+ * @data_type	: the data type which is going to be counted in the register.
  * @driver_data	: the private data for devfreq-event driver.
  * @ops		: the operation to control devfreq-event device.
  *
  * Each devfreq-event device is described with a this structure.
  * This structure contains the various data for devfreq-event device.
+ * The data_type describes what is going to be counted in the register.
+ * It might choose to count e.g. read requests, write data in bytes, etc.
+ * The full supported list of types is present in specyfic header in:
+ * include/dt-bindings/pmu/.
  */
 struct devfreq_event_desc {
 	const char *name;
+	u32 data_type;
 	void *driver_data;
 
 	const struct devfreq_event_ops *ops;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
