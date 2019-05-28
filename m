Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 036432C780
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 15:11:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XFSRSPsl+McxgYnZg4fout8gf7RhUdv0yrtoIoZSa0c=; b=daqm0kunCTWRED
	3lJlUcVk9hNxuQA4ennw5X4JUUpyqDmXRgZaoZNXASDDFxfmHHa04JxBCoz7LJr5o+ZC/UBN5kJBy
	EHzTOCAJ04/FU6LixJn255fxsohPHfA3FoZW979Ujb1cYQfh5RbFTvaZ6S39Y6OFoOYzTYbJ9wFxM
	rBDu5XFs5oPfutAoyM0J+GpxUUKAMugI5DbnfY9nSyneeehH2iDnug9YJoAjfg20zlUYfX7PD/UC7
	jke5X5pXzzpwMejCPV8Vp+jcijLZFRdEa0t4ye1iqSeg6Ul/XBXnlljitg27jFghR+jChnWlYUs7V
	lMoeh9IwTpXqXnYIBLJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVbtH-0005m1-O3; Tue, 28 May 2019 13:11:43 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbsK-0004nj-LH
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 13:10:48 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4SDAhGl121750;
 Tue, 28 May 2019 08:10:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559049043;
 bh=EHdt/iqW0qny8d+lvjvC+fV3WpDLCjsRIgBdoZEvIOE=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=HAq4C8lI5W2Lvl64i8PO2cxzs/sdgl+ooO4vItgo5cxTDpwCNPOEUk3nfclB+zty1
 RmuatHvlDyKuC7VzRm/9Are6nejrA2+pgvEX0fUL4U2G6QZ6Bd8kDlox7yEjywfMb/
 lO4Cbu5M1MfHG2QDsT8vDIbsKUOgf/L1zVEEiFq0=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4SDAg8d090563
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 28 May 2019 08:10:43 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 28
 May 2019 08:10:42 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 28 May 2019 08:10:42 -0500
Received: from gomoku.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4SDAVC1079520;
 Tue, 28 May 2019 08:10:40 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-clk@vger.kernel.org>, <sboyd@kernel.org>, <mturquette@baylibre.com>,
 <ssantosh@kernel.org>, <nm@ti.com>
Subject: [PATCHv2 5/5] firmware: ti_sci: extend clock identifiers from u8 to
 u32
Date: Tue, 28 May 2019 16:10:24 +0300
Message-ID: <1559049024-30872-6-git-send-email-t-kristo@ti.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559049024-30872-1-git-send-email-t-kristo@ti.com>
References: <1559049024-30872-1-git-send-email-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_061045_182420_D0B603E0 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Future SoCs are going to have more than 255 device clocks in certain cases,
and thus the API must be extended to support this. The support is done in
backwards compatible extension, in which the new u32 clock identifier
fields are only used if the existing u8 size clock identifier is set as
255. In all the other cases, the existing u8 clock identifier is used. As
the size of the messages sent / received is not verified for existing
devices / old firmware, increasing the size of the messages from the end
is also fine. Due to this reason, depending on ABI version isn't necessary
either.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/firmware/ti_sci.c              | 115 ++++++++++++++++++++++++---------
 drivers/firmware/ti_sci.h              |  63 ++++++++++++++----
 include/linux/soc/ti/ti_sci_protocol.h |  28 ++++----
 3 files changed, 150 insertions(+), 56 deletions(-)

diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
index ef93406..b417cef 100644
--- a/drivers/firmware/ti_sci.c
+++ b/drivers/firmware/ti_sci.c
@@ -916,7 +916,7 @@ static int ti_sci_cmd_get_device_resets(const struct ti_sci_handle *handle,
  * Return: 0 if all went well, else returns appropriate error value.
  */
 static int ti_sci_set_clock_state(const struct ti_sci_handle *handle,
-				  u32 dev_id, u8 clk_id,
+				  u32 dev_id, u32 clk_id,
 				  u32 flags, u8 state)
 {
 	struct ti_sci_info *info;
@@ -944,7 +944,12 @@ static int ti_sci_set_clock_state(const struct ti_sci_handle *handle,
 	}
 	req = (struct ti_sci_msg_req_set_clock_state *)xfer->xfer_buf;
 	req->dev_id = dev_id;
-	req->clk_id = clk_id;
+	if (clk_id < 255) {
+		req->clk_id = clk_id;
+	} else {
+		req->clk_id = 255;
+		req->clk_id_32 = clk_id;
+	}
 	req->request_state = state;
 
 	ret = ti_sci_do_xfer(info, xfer);
@@ -976,7 +981,7 @@ static int ti_sci_set_clock_state(const struct ti_sci_handle *handle,
  * Return: 0 if all went well, else returns appropriate error value.
  */
 static int ti_sci_cmd_get_clock_state(const struct ti_sci_handle *handle,
-				      u32 dev_id, u8 clk_id,
+				      u32 dev_id, u32 clk_id,
 				      u8 *programmed_state, u8 *current_state)
 {
 	struct ti_sci_info *info;
@@ -1007,7 +1012,12 @@ static int ti_sci_cmd_get_clock_state(const struct ti_sci_handle *handle,
 	}
 	req = (struct ti_sci_msg_req_get_clock_state *)xfer->xfer_buf;
 	req->dev_id = dev_id;
-	req->clk_id = clk_id;
+	if (clk_id < 255) {
+		req->clk_id = clk_id;
+	} else {
+		req->clk_id = 255;
+		req->clk_id_32 = clk_id;
+	}
 
 	ret = ti_sci_do_xfer(info, xfer);
 	if (ret) {
@@ -1047,8 +1057,8 @@ static int ti_sci_cmd_get_clock_state(const struct ti_sci_handle *handle,
  * Return: 0 if all went well, else returns appropriate error value.
  */
 static int ti_sci_cmd_get_clock(const struct ti_sci_handle *handle, u32 dev_id,
-				u8 clk_id, bool needs_ssc, bool can_change_freq,
-				bool enable_input_term)
+				u32 clk_id, bool needs_ssc,
+				bool can_change_freq, bool enable_input_term)
 {
 	u32 flags = 0;
 
@@ -1073,7 +1083,7 @@ static int ti_sci_cmd_get_clock(const struct ti_sci_handle *handle, u32 dev_id,
  * Return: 0 if all went well, else returns appropriate error value.
  */
 static int ti_sci_cmd_idle_clock(const struct ti_sci_handle *handle,
-				 u32 dev_id, u8 clk_id)
+				 u32 dev_id, u32 clk_id)
 {
 	return ti_sci_set_clock_state(handle, dev_id, clk_id, 0,
 				      MSG_CLOCK_SW_STATE_UNREQ);
@@ -1092,7 +1102,7 @@ static int ti_sci_cmd_idle_clock(const struct ti_sci_handle *handle,
  * Return: 0 if all went well, else returns appropriate error value.
  */
 static int ti_sci_cmd_put_clock(const struct ti_sci_handle *handle,
-				u32 dev_id, u8 clk_id)
+				u32 dev_id, u32 clk_id)
 {
 	return ti_sci_set_clock_state(handle, dev_id, clk_id, 0,
 				      MSG_CLOCK_SW_STATE_AUTO);
@@ -1110,7 +1120,7 @@ static int ti_sci_cmd_put_clock(const struct ti_sci_handle *handle,
  * Return: 0 if all went well, else returns appropriate error value.
  */
 static int ti_sci_cmd_clk_is_auto(const struct ti_sci_handle *handle,
-				  u32 dev_id, u8 clk_id, bool *req_state)
+				  u32 dev_id, u32 clk_id, bool *req_state)
 {
 	u8 state = 0;
 	int ret;
@@ -1139,7 +1149,7 @@ static int ti_sci_cmd_clk_is_auto(const struct ti_sci_handle *handle,
  * Return: 0 if all went well, else returns appropriate error value.
  */
 static int ti_sci_cmd_clk_is_on(const struct ti_sci_handle *handle, u32 dev_id,
-				u8 clk_id, bool *req_state, bool *curr_state)
+				u32 clk_id, bool *req_state, bool *curr_state)
 {
 	u8 c_state = 0, r_state = 0;
 	int ret;
@@ -1172,7 +1182,7 @@ static int ti_sci_cmd_clk_is_on(const struct ti_sci_handle *handle, u32 dev_id,
  * Return: 0 if all went well, else returns appropriate error value.
  */
 static int ti_sci_cmd_clk_is_off(const struct ti_sci_handle *handle, u32 dev_id,
-				 u8 clk_id, bool *req_state, bool *curr_state)
+				 u32 clk_id, bool *req_state, bool *curr_state)
 {
 	u8 c_state = 0, r_state = 0;
 	int ret;
@@ -1204,7 +1214,7 @@ static int ti_sci_cmd_clk_is_off(const struct ti_sci_handle *handle, u32 dev_id,
  * Return: 0 if all went well, else returns appropriate error value.
  */
 static int ti_sci_cmd_clk_set_parent(const struct ti_sci_handle *handle,
-				     u32 dev_id, u8 clk_id, u8 parent_id)
+				     u32 dev_id, u32 clk_id, u32 parent_id)
 {
 	struct ti_sci_info *info;
 	struct ti_sci_msg_req_set_clock_parent *req;
@@ -1231,8 +1241,18 @@ static int ti_sci_cmd_clk_set_parent(const struct ti_sci_handle *handle,
 	}
 	req = (struct ti_sci_msg_req_set_clock_parent *)xfer->xfer_buf;
 	req->dev_id = dev_id;
-	req->clk_id = clk_id;
-	req->parent_id = parent_id;
+	if (clk_id < 255) {
+		req->clk_id = clk_id;
+	} else {
+		req->clk_id = 255;
+		req->clk_id_32 = clk_id;
+	}
+	if (parent_id < 255) {
+		req->parent_id = parent_id;
+	} else {
+		req->parent_id = 255;
+		req->parent_id_32 = parent_id;
+	}
 
 	ret = ti_sci_do_xfer(info, xfer);
 	if (ret) {
@@ -1262,7 +1282,7 @@ static int ti_sci_cmd_clk_set_parent(const struct ti_sci_handle *handle,
  * Return: 0 if all went well, else returns appropriate error value.
  */
 static int ti_sci_cmd_clk_get_parent(const struct ti_sci_handle *handle,
-				     u32 dev_id, u8 clk_id, u8 *parent_id)
+				     u32 dev_id, u32 clk_id, u32 *parent_id)
 {
 	struct ti_sci_info *info;
 	struct ti_sci_msg_req_get_clock_parent *req;
@@ -1289,7 +1309,12 @@ static int ti_sci_cmd_clk_get_parent(const struct ti_sci_handle *handle,
 	}
 	req = (struct ti_sci_msg_req_get_clock_parent *)xfer->xfer_buf;
 	req->dev_id = dev_id;
-	req->clk_id = clk_id;
+	if (clk_id < 255) {
+		req->clk_id = clk_id;
+	} else {
+		req->clk_id = 255;
+		req->clk_id_32 = clk_id;
+	}
 
 	ret = ti_sci_do_xfer(info, xfer);
 	if (ret) {
@@ -1299,10 +1324,14 @@ static int ti_sci_cmd_clk_get_parent(const struct ti_sci_handle *handle,
 
 	resp = (struct ti_sci_msg_resp_get_clock_parent *)xfer->xfer_buf;
 
-	if (!ti_sci_is_response_ack(resp))
+	if (!ti_sci_is_response_ack(resp)) {
 		ret = -ENODEV;
-	else
-		*parent_id = resp->parent_id;
+	} else {
+		if (resp->parent_id < 255)
+			*parent_id = resp->parent_id;
+		else
+			*parent_id = resp->parent_id_32;
+	}
 
 fail:
 	ti_sci_put_one_xfer(&info->minfo, xfer);
@@ -1322,8 +1351,8 @@ static int ti_sci_cmd_clk_get_parent(const struct ti_sci_handle *handle,
  * Return: 0 if all went well, else returns appropriate error value.
  */
 static int ti_sci_cmd_clk_get_num_parents(const struct ti_sci_handle *handle,
-					  u32 dev_id, u8 clk_id,
-					  u8 *num_parents)
+					  u32 dev_id, u32 clk_id,
+					  u32 *num_parents)
 {
 	struct ti_sci_info *info;
 	struct ti_sci_msg_req_get_clock_num_parents *req;
@@ -1350,7 +1379,12 @@ static int ti_sci_cmd_clk_get_num_parents(const struct ti_sci_handle *handle,
 	}
 	req = (struct ti_sci_msg_req_get_clock_num_parents *)xfer->xfer_buf;
 	req->dev_id = dev_id;
-	req->clk_id = clk_id;
+	if (clk_id < 255) {
+		req->clk_id = clk_id;
+	} else {
+		req->clk_id = 255;
+		req->clk_id_32 = clk_id;
+	}
 
 	ret = ti_sci_do_xfer(info, xfer);
 	if (ret) {
@@ -1360,10 +1394,14 @@ static int ti_sci_cmd_clk_get_num_parents(const struct ti_sci_handle *handle,
 
 	resp = (struct ti_sci_msg_resp_get_clock_num_parents *)xfer->xfer_buf;
 
-	if (!ti_sci_is_response_ack(resp))
+	if (!ti_sci_is_response_ack(resp)) {
 		ret = -ENODEV;
-	else
-		*num_parents = resp->num_parents;
+	} else {
+		if (resp->num_parents < 255)
+			*num_parents = resp->num_parents;
+		else
+			*num_parents = resp->num_parents_32;
+	}
 
 fail:
 	ti_sci_put_one_xfer(&info->minfo, xfer);
@@ -1391,7 +1429,7 @@ static int ti_sci_cmd_clk_get_num_parents(const struct ti_sci_handle *handle,
  * Return: 0 if all went well, else returns appropriate error value.
  */
 static int ti_sci_cmd_clk_get_match_freq(const struct ti_sci_handle *handle,
-					 u32 dev_id, u8 clk_id, u64 min_freq,
+					 u32 dev_id, u32 clk_id, u64 min_freq,
 					 u64 target_freq, u64 max_freq,
 					 u64 *match_freq)
 {
@@ -1420,7 +1458,12 @@ static int ti_sci_cmd_clk_get_match_freq(const struct ti_sci_handle *handle,
 	}
 	req = (struct ti_sci_msg_req_query_clock_freq *)xfer->xfer_buf;
 	req->dev_id = dev_id;
-	req->clk_id = clk_id;
+	if (clk_id < 255) {
+		req->clk_id = clk_id;
+	} else {
+		req->clk_id = 255;
+		req->clk_id_32 = clk_id;
+	}
 	req->min_freq_hz = min_freq;
 	req->target_freq_hz = target_freq;
 	req->max_freq_hz = max_freq;
@@ -1463,7 +1506,7 @@ static int ti_sci_cmd_clk_get_match_freq(const struct ti_sci_handle *handle,
  * Return: 0 if all went well, else returns appropriate error value.
  */
 static int ti_sci_cmd_clk_set_freq(const struct ti_sci_handle *handle,
-				   u32 dev_id, u8 clk_id, u64 min_freq,
+				   u32 dev_id, u32 clk_id, u64 min_freq,
 				   u64 target_freq, u64 max_freq)
 {
 	struct ti_sci_info *info;
@@ -1491,7 +1534,12 @@ static int ti_sci_cmd_clk_set_freq(const struct ti_sci_handle *handle,
 	}
 	req = (struct ti_sci_msg_req_set_clock_freq *)xfer->xfer_buf;
 	req->dev_id = dev_id;
-	req->clk_id = clk_id;
+	if (clk_id < 255) {
+		req->clk_id = clk_id;
+	} else {
+		req->clk_id = 255;
+		req->clk_id_32 = clk_id;
+	}
 	req->min_freq_hz = min_freq;
 	req->target_freq_hz = target_freq;
 	req->max_freq_hz = max_freq;
@@ -1524,7 +1572,7 @@ static int ti_sci_cmd_clk_set_freq(const struct ti_sci_handle *handle,
  * Return: 0 if all went well, else returns appropriate error value.
  */
 static int ti_sci_cmd_clk_get_freq(const struct ti_sci_handle *handle,
-				   u32 dev_id, u8 clk_id, u64 *freq)
+				   u32 dev_id, u32 clk_id, u64 *freq)
 {
 	struct ti_sci_info *info;
 	struct ti_sci_msg_req_get_clock_freq *req;
@@ -1551,7 +1599,12 @@ static int ti_sci_cmd_clk_get_freq(const struct ti_sci_handle *handle,
 	}
 	req = (struct ti_sci_msg_req_get_clock_freq *)xfer->xfer_buf;
 	req->dev_id = dev_id;
-	req->clk_id = clk_id;
+	if (clk_id < 255) {
+		req->clk_id = clk_id;
+	} else {
+		req->clk_id = 255;
+		req->clk_id_32 = clk_id;
+	}
 
 	ret = ti_sci_do_xfer(info, xfer);
 	if (ret) {
diff --git a/drivers/firmware/ti_sci.h b/drivers/firmware/ti_sci.h
index 4983827..ad0b479 100644
--- a/drivers/firmware/ti_sci.h
+++ b/drivers/firmware/ti_sci.h
@@ -202,7 +202,8 @@ struct ti_sci_msg_req_set_device_resets {
  * @dev_id:	Device identifier this request is for
  * @clk_id:	Clock identifier for the device for this request.
  *		Each device has it's own set of clock inputs. This indexes
- *		which clock input to modify.
+ *		which clock input to modify. Set to 255 if clock ID is
+ *		greater than or equal to 255.
  * @request_state: Request the state for the clock to be set to.
  *		MSG_CLOCK_SW_STATE_UNREQ: The IP does not require this clock,
  *		it can be disabled, regardless of the state of the device
@@ -213,6 +214,9 @@ struct ti_sci_msg_req_set_device_resets {
  *		being required by the device.(default)
  *		MSG_CLOCK_SW_STATE_REQ:  Configure the clock to be enabled,
  *		regardless of the state of the device.
+ * @clk_id_32:	Clock identifier for the device for this request.
+ *		Only to be used if the clock ID is greater than or equal to
+ *		255.
  *
  * Normally, all required clocks are managed by TISCI entity, this is used
  * only for specific control *IF* required. Auto managed state is
@@ -234,6 +238,7 @@ struct ti_sci_msg_req_set_clock_state {
 #define MSG_CLOCK_SW_STATE_AUTO		1
 #define MSG_CLOCK_SW_STATE_REQ		2
 	u8 request_state;
+	u32 clk_id_32;
 } __packed;
 
 /**
@@ -242,7 +247,11 @@ struct ti_sci_msg_req_set_clock_state {
  * @dev_id:	Device identifier this request is for
  * @clk_id:	Clock identifier for the device for this request.
  *		Each device has it's own set of clock inputs. This indexes
- *		which clock input to get state of.
+ *		which clock input to get state of. Set to 255 if the clock
+ *		ID is greater than or equal to 255.
+ * @clk_id_32:	Clock identifier for the device for the request.
+ *		Only to be used if the clock ID is greater than or equal to
+ *		255.
  *
  * Request type is TI_SCI_MSG_GET_CLOCK_STATE, response is state
  * of the clock
@@ -251,6 +260,7 @@ struct ti_sci_msg_req_get_clock_state {
 	struct ti_sci_msg_hdr hdr;
 	u32 dev_id;
 	u8 clk_id;
+	u32 clk_id_32;
 } __packed;
 
 /**
@@ -278,9 +288,13 @@ struct ti_sci_msg_resp_get_clock_state {
  * @dev_id:	Device identifier this request is for
  * @clk_id:	Clock identifier for the device for this request.
  *		Each device has it's own set of clock inputs. This indexes
- *		which clock input to modify.
+ *		which clock input to modify. Set to 255 if clock ID is
+ *		greater than or equal to 255.
  * @parent_id:	The new clock parent is selectable by an index via this
- *		parameter.
+ *		parameter. Set to 255 if clock ID is greater than or
+ *		equal to 255.
+ * @clk_id_32:	Clock identifier if @clk_id field is 255.
+ * @parent_id_32:	Parent identifier if @parent_id is 255.
  *
  * Request type is TI_SCI_MSG_SET_CLOCK_PARENT, response is generic
  * ACK / NACK message.
@@ -290,6 +304,8 @@ struct ti_sci_msg_req_set_clock_parent {
 	u32 dev_id;
 	u8 clk_id;
 	u8 parent_id;
+	u32 clk_id_32;
+	u32 parent_id_32;
 } __packed;
 
 /**
@@ -298,7 +314,10 @@ struct ti_sci_msg_req_set_clock_parent {
  * @dev_id:	Device identifier this request is for
  * @clk_id:	Clock identifier for the device for this request.
  *		Each device has it's own set of clock inputs. This indexes
- *		which clock input to get the parent for.
+ *		which clock input to get the parent for. If this field
+ *		contains 255, the actual clock identifier is stored in
+ *		@clk_id_32.
+ * @clk_id_32:	Clock identifier if the @clk_id field contains 255.
  *
  * Request type is TI_SCI_MSG_GET_CLOCK_PARENT, response is parent information
  */
@@ -306,25 +325,32 @@ struct ti_sci_msg_req_get_clock_parent {
 	struct ti_sci_msg_hdr hdr;
 	u32 dev_id;
 	u8 clk_id;
+	u32 clk_id_32;
 } __packed;
 
 /**
  * struct ti_sci_msg_resp_get_clock_parent - Response with clock parent
  * @hdr:	Generic Header
- * @parent_id:	The current clock parent
+ * @parent_id:	The current clock parent. If set to 255, the current parent
+ *		ID can be found from the @parent_id_32 field.
+ * @parent_id_32:	Current clock parent if @parent_id field is set to
+ *			255.
  *
  * Response to TI_SCI_MSG_GET_CLOCK_PARENT.
  */
 struct ti_sci_msg_resp_get_clock_parent {
 	struct ti_sci_msg_hdr hdr;
 	u8 parent_id;
+	u32 parent_id_32;
 } __packed;
 
 /**
  * struct ti_sci_msg_req_get_clock_num_parents - Request to get clock parents
  * @hdr:	Generic header
  * @dev_id:	Device identifier this request is for
- * @clk_id:	Clock identifier for the device for this request.
+ * @clk_id:	Clock identifier for the device for this request. Set to
+ *		255 if clock ID is greater than or equal to 255.
+ * @clk_id_32:	Clock identifier if the @clk_id field contains 255.
  *
  * This request provides information about how many clock parent options
  * are available for a given clock to a device. This is typically used
@@ -337,18 +363,24 @@ struct ti_sci_msg_req_get_clock_num_parents {
 	struct ti_sci_msg_hdr hdr;
 	u32 dev_id;
 	u8 clk_id;
+	u32 clk_id_32;
 } __packed;
 
 /**
  * struct ti_sci_msg_resp_get_clock_num_parents - Response for get clk parents
  * @hdr:		Generic header
- * @num_parents:	Number of clock parents
+ * @num_parents:	Number of clock parents. If set to 255, the actual
+ *			number of parents is stored into @num_parents_32
+ *			field instead.
+ * @num_parents_32:	Number of clock parents if @num_parents field is
+ *			set to 255.
  *
  * Response to TI_SCI_MSG_GET_NUM_CLOCK_PARENTS
  */
 struct ti_sci_msg_resp_get_clock_num_parents {
 	struct ti_sci_msg_hdr hdr;
 	u8 num_parents;
+	u32 num_parents_32;
 } __packed;
 
 /**
@@ -363,7 +395,9 @@ struct ti_sci_msg_resp_get_clock_num_parents {
  * @max_freq_hz: The maximum allowable frequency in Hz. This is the maximum
  *		allowable programmed frequency and does not account for clock
  *		tolerances and jitter.
- * @clk_id:	Clock identifier for the device for this request.
+ * @clk_id:	Clock identifier for the device for this request. Set to
+ *		255 if clock identifier is greater than or equal to 255.
+ * @clk_id_32:	Clock identifier if @clk_id is set to 255.
  *
  * NOTE: Normally clock frequency management is automatically done by TISCI
  * entity. In case of specific requests, TISCI evaluates capability to achieve
@@ -380,6 +414,7 @@ struct ti_sci_msg_req_query_clock_freq {
 	u64 target_freq_hz;
 	u64 max_freq_hz;
 	u8 clk_id;
+	u32 clk_id_32;
 } __packed;
 
 /**
@@ -407,7 +442,9 @@ struct ti_sci_msg_resp_query_clock_freq {
  * @max_freq_hz: The maximum allowable frequency in Hz. This is the maximum
  *		allowable programmed frequency and does not account for clock
  *		tolerances and jitter.
- * @clk_id:	Clock identifier for the device for this request.
+ * @clk_id:	Clock identifier for the device for this request. Set to
+ *		255 if clock ID is greater than or equal to 255.
+ * @clk_id_32:	Clock identifier if @clk_id field is set to 255.
  *
  * NOTE: Normally clock frequency management is automatically done by TISCI
  * entity. In case of specific requests, TISCI evaluates capability to achieve
@@ -436,13 +473,16 @@ struct ti_sci_msg_req_set_clock_freq {
 	u64 target_freq_hz;
 	u64 max_freq_hz;
 	u8 clk_id;
+	u32 clk_id_32;
 } __packed;
 
 /**
  * struct ti_sci_msg_req_get_clock_freq - Request to get the clock frequency
  * @hdr:	Generic Header
  * @dev_id:	Device identifier this request is for
- * @clk_id:	Clock identifier for the device for this request.
+ * @clk_id:	Clock identifier for the device for this request. Set to
+ *		255 if clock ID is greater than or equal to 255.
+ * @clk_id_32:	Clock identifier if @clk_id field is set to 255.
  *
  * NOTE: Normally clock frequency management is automatically done by TISCI
  * entity. In some cases, clock frequencies are configured by host.
@@ -454,6 +494,7 @@ struct ti_sci_msg_req_get_clock_freq {
 	struct ti_sci_msg_hdr hdr;
 	u32 dev_id;
 	u8 clk_id;
+	u32 clk_id_32;
 } __packed;
 
 /**
diff --git a/include/linux/soc/ti/ti_sci_protocol.h b/include/linux/soc/ti/ti_sci_protocol.h
index 568722a..406e671 100644
--- a/include/linux/soc/ti/ti_sci_protocol.h
+++ b/include/linux/soc/ti/ti_sci_protocol.h
@@ -166,29 +166,29 @@ struct ti_sci_dev_ops {
  * managed by driver for that purpose.
  */
 struct ti_sci_clk_ops {
-	int (*get_clock)(const struct ti_sci_handle *handle, u32 did, u8 cid,
+	int (*get_clock)(const struct ti_sci_handle *handle, u32 did, u32 cid,
 			 bool needs_ssc, bool can_change_freq,
 			 bool enable_input_term);
-	int (*idle_clock)(const struct ti_sci_handle *handle, u32 did, u8 cid);
-	int (*put_clock)(const struct ti_sci_handle *handle, u32 did, u8 cid);
-	int (*is_auto)(const struct ti_sci_handle *handle, u32 did, u8 cid,
+	int (*idle_clock)(const struct ti_sci_handle *handle, u32 did, u32 cid);
+	int (*put_clock)(const struct ti_sci_handle *handle, u32 did, u32 cid);
+	int (*is_auto)(const struct ti_sci_handle *handle, u32 did, u32 cid,
 		       bool *req_state);
-	int (*is_on)(const struct ti_sci_handle *handle, u32 did, u8 cid,
+	int (*is_on)(const struct ti_sci_handle *handle, u32 did, u32 cid,
 		     bool *req_state, bool *current_state);
-	int (*is_off)(const struct ti_sci_handle *handle, u32 did, u8 cid,
+	int (*is_off)(const struct ti_sci_handle *handle, u32 did, u32 cid,
 		      bool *req_state, bool *current_state);
-	int (*set_parent)(const struct ti_sci_handle *handle, u32 did, u8 cid,
-			  u8 parent_id);
-	int (*get_parent)(const struct ti_sci_handle *handle, u32 did, u8 cid,
-			  u8 *parent_id);
+	int (*set_parent)(const struct ti_sci_handle *handle, u32 did, u32 cid,
+			  u32 parent_id);
+	int (*get_parent)(const struct ti_sci_handle *handle, u32 did, u32 cid,
+			  u32 *parent_id);
 	int (*get_num_parents)(const struct ti_sci_handle *handle, u32 did,
-			       u8 cid, u8 *num_parents);
+			       u32 cid, u32 *num_parents);
 	int (*get_best_match_freq)(const struct ti_sci_handle *handle, u32 did,
-				   u8 cid, u64 min_freq, u64 target_freq,
+				   u32 cid, u64 min_freq, u64 target_freq,
 				   u64 max_freq, u64 *match_freq);
-	int (*set_freq)(const struct ti_sci_handle *handle, u32 did, u8 cid,
+	int (*set_freq)(const struct ti_sci_handle *handle, u32 did, u32 cid,
 			u64 min_freq, u64 target_freq, u64 max_freq);
-	int (*get_freq)(const struct ti_sci_handle *handle, u32 did, u8 cid,
+	int (*get_freq)(const struct ti_sci_handle *handle, u32 did, u32 cid,
 			u64 *current_freq);
 };
 
-- 
1.9.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
