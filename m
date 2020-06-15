Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9471F8E90
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 08:51:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mAQ0z/K5vr4Z+Cpp4BXgI8I/w8dMy+9+ZCK2bgbjjfM=; b=Lxwt7tGn4gSITR
	cG0III+XU1/2FxeR6Cmt8rIeiNMuFT19U4/Xqq+t26+0Y2HI44jjn4efPl2wlHkhHVD4usBo4JiGx
	LicstqWJlO1RojCZKEilemu91BfkhelBcBJovUTGOg3KEQjXW9bxiQVhfvy1WqR4EHipSSC/LY1ZG
	xoMhpX5WYNxfJzqt0B2A4KIcyWrjzwzXMzqH6rC2Mt5VyHDETztefOQR3IHPqLIgDevhui6FYBf/U
	o8Ve8DMNJkn7Rp7zFqNm5OguPjuuSsZAROs3maEc41KGAOEE5qsPC6yPQtj8WfMhH0sYTn2BvxE8F
	NIzukrdinAjSlbsKfrNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkixr-0006iM-Kh; Mon, 15 Jun 2020 06:51:27 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkixi-0006hn-04; Mon, 15 Jun 2020 06:51:19 +0000
X-UUID: ff8504db86e643eabd21a8865301bf6b-20200614
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=aIi/Cvo5z+NELDxxEWG3ffiIsJ6CjwE2XAnl7RAvFVQ=; 
 b=IxtW4/gOFeGN11XY2j81ASvLROsflJAMbKF4w7cAtzmUUvQiBEPxt1c1jDB/JSP8wBtjgzfxUi8Zo/ZrMDRAMiA6xP3xzsL/lZ1OdmmdAPcQ6terWlCSJWkPeTMOs1LIF/iV2Y6q0AE0itubT9o6yakTt4QzelHbv49zZbxUYvo=;
X-UUID: ff8504db86e643eabd21a8865301bf6b-20200614
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1956801284; Sun, 14 Jun 2020 22:51:14 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 14 Jun 2020 23:47:54 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 14:47:54 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 15 Jun 2020 14:47:53 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v2 2/2] scsi: ufs: Add trace event for UIC commands
Date: Mon, 15 Jun 2020 14:47:53 +0800
Message-ID: <20200615064753.20935-3-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200615064753.20935-1-stanley.chu@mediatek.com>
References: <20200615064753.20935-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_235118_043050_334B6BDF 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Usage:
	echo 1 > /sys/kernel/debug/tracing/events/ufs/enable
	cat /sys/kernel/debug/tracing/trace_pipe

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Acked-by: Avri Altman <avri.altman@wdc.com>
---
 drivers/scsi/ufs/ufshcd.c  | 26 ++++++++++++++++++++++++++
 include/trace/events/ufs.h | 31 +++++++++++++++++++++++++++++++
 2 files changed, 57 insertions(+)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index ad4fc829cbb2..1fd2fd526c68 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -340,6 +340,26 @@ static void ufshcd_add_tm_upiu_trace(struct ufs_hba *hba, unsigned int tag,
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
+	if (!strcmp(str, "send"))
+		cmd = ucmd->command;
+	else
+		cmd = ufshcd_readl(hba, REG_UIC_COMMAND);
+
+	trace_ufshcd_uic_command(dev_name(hba->dev), str, cmd,
+				 ufshcd_readl(hba, REG_UIC_COMMAND_ARG_1),
+				 ufshcd_readl(hba, REG_UIC_COMMAND_ARG_2),
+				 ufshcd_readl(hba, REG_UIC_COMMAND_ARG_3));
+}
+
 static void ufshcd_add_command_trace(struct ufs_hba *hba,
 		unsigned int tag, const char *str)
 {
@@ -2052,6 +2072,8 @@ ufshcd_dispatch_uic_cmd(struct ufs_hba *hba, struct uic_command *uic_cmd)
 	ufshcd_writel(hba, uic_cmd->argument2, REG_UIC_COMMAND_ARG_2);
 	ufshcd_writel(hba, uic_cmd->argument3, REG_UIC_COMMAND_ARG_3);
 
+	ufshcd_add_uic_command_trace(hba, uic_cmd, "send");
+
 	/* Write UIC Cmd */
 	ufshcd_writel(hba, uic_cmd->command & COMMAND_OPCODE_MASK,
 		      REG_UIC_COMMAND);
@@ -4825,11 +4847,15 @@ static irqreturn_t ufshcd_uic_cmd_compl(struct ufs_hba *hba, u32 intr_status)
 			ufshcd_get_uic_cmd_result(hba);
 		hba->active_uic_cmd->argument3 =
 			ufshcd_get_dme_attr_val(hba);
+		ufshcd_add_uic_command_trace(hba, hba->active_uic_cmd,
+					     "complete");
 		complete(&hba->active_uic_cmd->done);
 		retval = IRQ_HANDLED;
 	}
 
 	if ((intr_status & UFSHCD_UIC_PWR_MASK) && hba->uic_async_done) {
+		ufshcd_add_uic_command_trace(hba, hba->active_uic_cmd,
+					     "complete");
 		complete(hba->uic_async_done);
 		retval = IRQ_HANDLED;
 	}
diff --git a/include/trace/events/ufs.h b/include/trace/events/ufs.h
index 5f300739240d..84841b3a7ffd 100644
--- a/include/trace/events/ufs.h
+++ b/include/trace/events/ufs.h
@@ -249,6 +249,37 @@ TRACE_EVENT(ufshcd_command,
 	)
 );
 
+TRACE_EVENT(ufshcd_uic_command,
+	TP_PROTO(const char *dev_name, const char *str, u32 cmd,
+		 u32 arg1, u32 arg2, u32 arg3),
+
+	TP_ARGS(dev_name, str, cmd, arg1, arg2, arg3),
+
+	TP_STRUCT__entry(
+		__string(dev_name, dev_name)
+		__string(str, str)
+		__field(u32, cmd)
+		__field(u32, arg1)
+		__field(u32, arg2)
+		__field(u32, arg3)
+	),
+
+	TP_fast_assign(
+		__assign_str(dev_name, dev_name);
+		__assign_str(str, str);
+		__entry->cmd = cmd;
+		__entry->arg1 = arg1;
+		__entry->arg2 = arg2;
+		__entry->arg3 = arg3;
+	),
+
+	TP_printk(
+		"%s: %s: cmd: 0x%x, arg1: 0x%x, arg2: 0x%x, arg3: 0x%x",
+		__get_str(str), __get_str(dev_name), __entry->cmd,
+		__entry->arg1, __entry->arg2, __entry->arg3
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
