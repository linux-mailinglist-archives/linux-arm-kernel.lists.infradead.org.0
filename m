Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B661A4536
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 12:25:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zyIRNCEuoeKQB7hL6fBEMkqhJQjOoXNm5AtS6qhtyEc=; b=PEw
	8Rnx6/OWQTqlFufTb6qTvD8pksRHVY8iQc/Sz+AXcluNUcwotoAIWO/SLW2MxpEbfz2IrHEsH9Hhm
	3L/eZXYRJrOGfxayBbW1S680yKZCL7btas3497TVcph3ujS90DNzAW5vRBZThaXlrEGjr9orED6/T
	Ha+xyTreT1dAkpGIPu0KqQQje+PFfs7imw0R/X7A1W/Va4qrGPnzNw3FMsVGyPbWiFiYgdCfqSu1M
	TFhXOmQ1Btmc02nPa0P91omBE3vAnJMlZG8kV5WTGEVc/phg+h9q7PIn46rYI93ULbv/rTSY55aY4
	u6Z3JoIxwu5TuhfDlz7xgpOY+Al4x+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMqqC-0005mb-TK; Fri, 10 Apr 2020 10:24:52 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMqq4-0005la-5C
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 10:24:45 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 4B6CB27E0566;
 Fri, 10 Apr 2020 12:24:40 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id aLP0ixhF3Vdn; Fri, 10 Apr 2020 12:24:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 0A2D327E039A;
 Fri, 10 Apr 2020 12:24:40 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 0A2D327E039A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1586514280;
 bh=Fuewdad1fAPYUYavFKBJ1ELvfko88w6R3xYRHUH3S40=;
 h=From:To:Date:Message-Id;
 b=qVOz/McsGNTJMHfkamSpXlba8MDEHlmARacqIqynXv/SQVnwGK8BfM1S+GYWYQiMN
 9Ucq/1t4Db9Q0ePYcr0a/s4WGf0ch0gnsKAn5o31Sp4iI+4CNGz2+eYWR7LJYAWwwl
 B/TCxrFJzsawYaceFWtTmUODuF2G39UNtt7IeFac=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 1wIrsaQBTd8l; Fri, 10 Apr 2020 12:24:39 +0200 (CEST)
Received: from triton.lin.mbt.kalray.eu (unknown [192.168.37.25])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id D593327E0566;
 Fri, 10 Apr 2020 12:24:39 +0200 (CEST)
From: Clement Leger <cleger@kalray.eu>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Ohad Ben-Cohen <ohad@wizery.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>
Subject: [PATCH 0/2] remoteproc: add rproc_coredump_set_elf_info
Date: Fri, 10 Apr 2020 12:24:31 +0200
Message-Id: <20200410102433.2672-1-cleger@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_032444_371129_3DC79E33 
X-CRM114-Status: UNSURE (   6.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Clement Leger <cleger@kalray.eu>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds a way to set the elf informations that will be used to
generate the coredump. Second patch fixes drivers to use this function.

Clement Leger (2):
  remoteproc: add rproc_coredump_set_elf_info
  remoteproc: use rproc_coredump_set_elf_info in drivers

 drivers/remoteproc/qcom_q6v5_adsp.c        |  1 +
 drivers/remoteproc/qcom_q6v5_mss.c         |  3 ++
 drivers/remoteproc/qcom_q6v5_pas.c         |  1 +
 drivers/remoteproc/qcom_wcnss.c            |  1 +
 drivers/remoteproc/remoteproc_core.c       | 32 ++++++++++++++++++++--
 drivers/remoteproc/remoteproc_elf_loader.c |  3 --
 drivers/remoteproc/stm32_rproc.c           |  1 +
 include/linux/remoteproc.h                 |  2 ++
 8 files changed, 39 insertions(+), 5 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
