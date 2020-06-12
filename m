Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAAFF1F7A6F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 17:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8eJcbxD8NfCDPEVbNhc26OGAdsB01tFurBV8I5bYRKQ=; b=Me2s/lD+pw6AQT
	aHTssiCOuGNAMbA910zAtP6Izw5DHjJ2d6D5v9b18+21RZGJ5DRlNExCdwBJcaMfow1KyduzlWlXf
	ueul4FtFQcMITb+WQ0QdPMrIdZd25S5+58YTvl+xUoRh3vnuO0anY7YXKN101GbHJYJlmTCLX9RvH
	/6WsBR2tNSwKsTIV49h+8oEHhfd1Ujn+AEXlbkWxoqMZj01J6lYiaTUqzAGaej2/Lq+NE1jNV95nH
	i6JbGl3g3NlswpGfdiQqfdFjLA0nfYd8w0T+y1crIIFYam2by2E6enZPP72vuBcVidjuc6zbQM2Zg
	UmZTiTCqmekCM5z5k8fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjlKq-00036q-9U; Fri, 12 Jun 2020 15:11:12 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjlJy-0001ZH-Oz; Fri, 12 Jun 2020 15:10:21 +0000
X-UUID: 8f356d6555984c1488f17e2b486b0d39-20200612
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=+0KA0dOhmw5UB0xe1wGnzSeL3/LIui1ay1wP2Ey5MGg=; 
 b=eaID3cTvZCfa59n34eaUV9pwbbuVl/oZfmdU8lesH8Q0YYxMvpcppJJSc/FeyrVNCZXNyBVJKYgC2vxLXgG3y5P+17R08PXpdQ7u5OZM5bwCIp95xqptRHSXskb1WSy8cSaRsnqSRebpZieZIzZDvl7FX3nWHW/8tkEGa0MvruA=;
X-UUID: 8f356d6555984c1488f17e2b486b0d39-20200612
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1102410366; Fri, 12 Jun 2020 07:09:51 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 12 Jun 2020 08:10:10 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 12 Jun 2020 23:10:02 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 12 Jun 2020 23:10:01 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v1 2/2] scsi: ufs: Add trace event for UIC commands
Date: Fri, 12 Jun 2020 23:10:00 +0800
Message-ID: <20200612151000.27639-3-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200612151000.27639-1-stanley.chu@mediatek.com>
References: <20200612151000.27639-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 59D9D01AB4EC54D1F10C739C554AC979AC81CEAF602D64FA508FA0139328F5D72000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_081018_810842_31B8064B 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, cc.chou@mediatek.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 chaotian.jing@mediatek.com, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the ftrace infrastructure to conditionally trace UFS UIC command
events.

New trace event "ufshcd_uic_command" is created, which samples the
following UFS UIC command data:
- Device name
- Optional identification string
- UIC command opcode
- UIC command argument1
- UIC command argument2
- UIC command argement3
- UIC command execution result

Usage:
	echo 1 > /sys/kernel/debug/tracing/events/ufs/enable
	cat /sys/kernel/debug/tracing/trace_pipe

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufshcd.c  | 29 +++++++++++++++++++++++++++++
 include/trace/events/ufs.h | 33 +++++++++++++++++++++++++++++++++
 2 files changed, 62 insertions(+)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index c197a3315d21..181617966658 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -339,6 +339,27 @@ static void ufshcd_add_tm_upiu_trace(struct ufs_hba *hba, unsigned int tag,
 			&descp->input_param1);
 }
 
+static void ufshcd_add_uic_command_trace(struct ufs_hba *hba,
+					 struct uic_command *ucmd,
+					 const char *str)
+{
+	u32 cmd;
+
+	if (!trace_ufshcd_uic_command_enabled())
+		return;
+
+	if (!strcmp(str, "uic_send"))
+		cmd = ucmd->command;
+	else
+		cmd = ufshcd_readl(hba, REG_UIC_COMMAND);
+
+	trace_ufshcd_uic_command(dev_name(hba->dev), str, cmd,
+				 ucmd->result,
+				 ufshcd_readl(hba, REG_UIC_COMMAND_ARG_1),
+				 ufshcd_readl(hba, REG_UIC_COMMAND_ARG_2),
+				 ufshcd_readl(hba, REG_UIC_COMMAND_ARG_3));
+}
+
 static void ufshcd_add_command_trace(struct ufs_hba *hba,
 		unsigned int tag, const char *str)
 {
@@ -2054,6 +2075,8 @@ ufshcd_dispatch_uic_cmd(struct ufs_hba *hba, struct uic_command *uic_cmd)
 	/* Write UIC Cmd */
 	ufshcd_writel(hba, uic_cmd->command & COMMAND_OPCODE_MASK,
 		      REG_UIC_COMMAND);
+
+	ufshcd_add_uic_command_trace(hba, uic_cmd, "uic_send");
 }
 
 /**
@@ -2080,6 +2103,9 @@ ufshcd_wait_for_uic_cmd(struct ufs_hba *hba, struct uic_command *uic_cmd)
 	hba->active_uic_cmd = NULL;
 	spin_unlock_irqrestore(hba->host->host_lock, flags);
 
+	uic_cmd->result = ret;
+	ufshcd_add_uic_command_trace(hba, uic_cmd, "uic_complete");
+
 	return ret;
 }
 
@@ -3760,6 +3786,9 @@ static int ufshcd_uic_pwr_ctrl(struct ufs_hba *hba, struct uic_command *cmd)
 		ret = (status != PWR_OK) ? status : -1;
 	}
 out:
+	cmd->result = ret;
+	ufshcd_add_uic_command_trace(hba, cmd, "uic_complete");
+
 	if (ret) {
 		ufshcd_print_host_state(hba);
 		ufshcd_print_pwr_info(hba);
diff --git a/include/trace/events/ufs.h b/include/trace/events/ufs.h
index 5f300739240d..cf8d568d5a13 100644
--- a/include/trace/events/ufs.h
+++ b/include/trace/events/ufs.h
@@ -249,6 +249,39 @@ TRACE_EVENT(ufshcd_command,
 	)
 );
 
+TRACE_EVENT(ufshcd_uic_command,
+	TP_PROTO(const char *dev_name, const char *str, u32 cmd, int result,
+		 u32 arg1, u32 arg2, u32 arg3),
+
+	TP_ARGS(dev_name, str, cmd, result, arg1, arg2, arg3),
+
+	TP_STRUCT__entry(
+		__string(dev_name, dev_name)
+		__string(str, str)
+		__field(u32, cmd)
+		__field(int, result)
+		__field(u32, arg1)
+		__field(u32, arg2)
+		__field(u32, arg3)
+	),
+
+	TP_fast_assign(
+		__assign_str(dev_name, dev_name);
+		__assign_str(str, str);
+		__entry->cmd = cmd;
+		__entry->result = result;
+		__entry->arg1 = arg1;
+		__entry->arg2 = arg2;
+		__entry->arg3 = arg3;
+	),
+
+	TP_printk(
+		"%s: %s: cmd: 0x%x, arg1: 0x%x, arg2: 0x%x, arg3: 0x%x, result: %d",
+		__get_str(str), __get_str(dev_name), __entry->cmd,
+		__entry->arg1, __entry->arg2, __entry->arg3, __entry->result
+	)
+);
+
 TRACE_EVENT(ufshcd_upiu,
 	TP_PROTO(const char *dev_name, const char *str, void *hdr, void *tsf),
 
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
