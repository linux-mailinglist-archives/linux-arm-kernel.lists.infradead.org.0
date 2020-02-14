Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF5E15D75A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 13:25:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tigashXfJKTfnnmIZM0e6HVuWMwg/DTFU3Xgx+MNCEQ=; b=BbHzM4a8EzzStT
	dGtWavOQgiRuQdhGq0M86dry1bmwFlZ4f4QoCVVbgdv/pW35B33Xonzv+VhhwOYdiek684qO/9jF6
	0mkMyu2boDOUyvEfha9uLWoZwCVWUK0pUYTbIyY5MT/cvGWtc/hRCw5k1HZYwO+wUJP2fTD3S9Ycg
	zXJwM2I3Qm4LwHnGer+v50Lj9wEWQ+uE/s52T6a0SggyrxjQVE67PBkpTLsabMdnu8zVamIcSvyLV
	cjAySKDEZ2HrBqHCHHMX+QrbqhotTBd+k3RaA71P50PWJQE2JdwUF/HXLSKVRi6SgV2/XGARzuvcV
	X6x4EUspE5Wxswz7my4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2a29-0004MC-Ii; Fri, 14 Feb 2020 12:25:25 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2a1W-0002pt-Ip
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 12:24:48 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id D95287177;
 Fri, 14 Feb 2020 07:24:45 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 14 Feb 2020 07:24:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=dnk7pJKP+HgrN
 4lk8DCUSISIcaYg2wPtGi46T6k0vVo=; b=Rj3VaeuanI9A6ew5xyhcXLuCAkzMo
 FOy5E4ddX5rzZlhz0YWun3R0J+lOC37ZCT3S/+xMT1wHhHy/LOzkImg+zj/o/gam
 7fPo3Es5jEb8MG9Bg062foRqpnyADxRuiSsXXnnyoP0aDbzUqyRoCheR9KziYZgd
 YZoNXJWBu1wElllTXhzPoqKHyIvfUSoag7Q/wKszDT6A/oUf3XyyABiWIIb7dYxI
 fIhoQQaPtfguX6oExT5Gxek0OXx9hRSXg7bsX0XYtL0heuwDN83e45JVAqaibZxh
 zGh0uzAdVnZLBXw+IgGdbs+9QhKtorFSITMP4paF3sTrkANpXzrLWbZtA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=dnk7pJKP+HgrN4lk8DCUSISIcaYg2wPtGi46T6k0vVo=; b=xct+q5D+
 b/EK9Seh9XoyEIz37AF7H+iIcE706DypIxNIdMMsHHHAfkZxngw3N9KewiXEt8jq
 z24XBahyMUPsUN6xnu/mOtrfL3EoJ+Yh6vCZfrQ2C6zAZg0c9uM3tr3gL3fC9SUh
 g023XieIOJXAzvHB92YtEOdiY3Vw2L8osfk9tdM29ZRjuIaXnfSjHCDBEQL7TsqH
 MuJkMpGRwS9W8KGAiAK5L9WqsEb1o+3CEzs1QOw9lqC89WUeJS7nHPoLxJ6CmVwF
 eBsXLC6qTo5gYgsyYN7UxNbs8dgyxjt3yxTMsiuLSE1QSMJoUp1XmsLGBro0kYOB
 GFz5O6hTLS6DGQ==
X-ME-Sender: <xms:jZFGXluHHAzYjJjeDMISw98VLqQK6ClyYSod5rhH3vBJgji5YRKSXw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjedtgdegtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:jZFGXl6xe7gyLTm32in7QXtbqwh59mPfMmTXZOIDrgsIwK_InbjNkA>
 <xmx:jZFGXmRNsEFLqLSEdDJW_GBDQx9k3ta1OOqH6thD8LcecSp4Cau0PQ>
 <xmx:jZFGXnvez563NQKQmBwfIRcgI5ADjTRjOGfeQIJOE_0f5Yu6xOqjEQ>
 <xmx:jZFGXjAB30wWtLToJkzgVrtwD_Pa2xUf1-Il_airvLycM-VjrqK82w>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 70B13328005A;
 Fri, 14 Feb 2020 07:24:45 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 dri-devel@lists.freedesktop.org
Subject: [PATCH 1/4] drm/connector: Add data polarity flags
Date: Fri, 14 Feb 2020 13:24:38 +0100
Message-Id: <b541006fa0a1c34ac5f668dc561aa1598f8fd86c.1581682983.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.b12a054012ce067fa2094894147f953ab816d8d0.1581682983.git-series.maxime@cerno.tech>
References: <cover.b12a054012ce067fa2094894147f953ab816d8d0.1581682983.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_042446_769960_70EC4528 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <maxime@cerno.tech>, Thierry Reding <thierry.reding@gmail.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some LVDS encoders can change the polarity of the data signals being
sent. Add a DRM bus flag to reflect this.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 include/drm/drm_connector.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 221910948b37..9a08fe6ab7c2 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -330,6 +330,8 @@ enum drm_panel_orientation {
  *					edge of the pixel clock
  * @DRM_BUS_FLAG_SHARP_SIGNALS:		Set if the Sharp-specific signals
  *					(SPL, CLS, PS, REV) must be used
+ * @DRM_BUS_FLAG_DATA_LOW:		The Data signals are active low
+ * @DRM_BUS_FLAG_DATA_HIGH:		The Data signals are active high
  */
 enum drm_bus_flags {
 	DRM_BUS_FLAG_DE_LOW = BIT(0),
@@ -349,6 +351,8 @@ enum drm_bus_flags {
 	DRM_BUS_FLAG_SYNC_SAMPLE_POSEDGE = DRM_BUS_FLAG_SYNC_NEGEDGE,
 	DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE = DRM_BUS_FLAG_SYNC_POSEDGE,
 	DRM_BUS_FLAG_SHARP_SIGNALS = BIT(8),
+	DRM_BUS_FLAG_DATA_LOW = BIT(9),
+	DRM_BUS_FLAG_DATA_HIGH = BIT(10),
 };
 
 /**
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
