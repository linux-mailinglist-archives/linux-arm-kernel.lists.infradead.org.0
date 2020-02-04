Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB87151FC4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 18:44:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FreuHEm3bJK1syfiRU6ygycj0Bd6d/F3Suv9KEkjnIk=; b=SQgJZuTCIeWqXzYnck4OrGDkUH
	oZnPtudBS8cBVzria26q7A3IsufJPCiI9aUc5pbLY+0+OgSA/k39RkjUOtBhfklkbuhVMQkJbFJlg
	TRMYfnzxpL8e7eP6X+P+nFKoH9RaF+pX2OnmLegrbQMfoxtRLhtQ2iB5KQ5VxhC5m/6ONc01+CqNk
	LsHw08LNkFEDZcHhBk1yQbqfXb4ax3ikP87KdVzZFnG6S5wWUZBCzJY7QCdbRVk1KtOu7q9T3/75Y
	s6Nqvsg4mjQLam3rQlLd7eXFax6xi/BxqoR6a4yTLwlsPihLrIIVABM2VtE0foUFlWeDjKj42UnHu
	a7BE+7qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz2FT-0002A2-GV; Tue, 04 Feb 2020 17:44:31 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz2FL-000292-ON
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 17:44:25 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 1A23327E058F;
 Tue,  4 Feb 2020 18:44:22 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id Ys8Ffw7v27r6; Tue,  4 Feb 2020 18:44:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id C1C4227E158A;
 Tue,  4 Feb 2020 18:44:21 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu C1C4227E158A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1580838261;
 bh=bHc8ecf+O1GHjcUaIbdPBRw5CR726pP6ptPTXIyMhg0=;
 h=From:To:Date:Message-Id;
 b=JSngqOY3TgTe/kh+Rip/yR8PGrKQ9/gorw3B3e/Ho8DDu4cNz/+18TV+4crNZDs8P
 Z25QO+vKUa6R2mZvYSLNCeklUedzIWCKptn1/L3mY6zwBrEZJRV7FhXF0R9CBdoUA7
 GXJ2hgLiTOeuxntW2CbTZ8jXti+NzN7rqN+v5gVs=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id ak2UB6XEtKtu; Tue,  4 Feb 2020 18:44:21 +0100 (CET)
Received: from triton.lin.mbt.kalray.eu (unknown [192.168.37.25])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id A45BE27E058F;
 Tue,  4 Feb 2020 18:44:21 +0100 (CET)
From: Clement Leger <cleger@kalray.eu>
To: Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jonathan Corbet <corbet@lwn.net>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-remoteproc@vger.kernel.org
Subject: [PATCH v3 0/2] remoteproc: Add elf64 support to elf loader
Date: Tue,  4 Feb 2020 18:44:10 +0100
Message-Id: <20200204174412.16814-1-cleger@kalray.eu>
X-Mailer: git-send-email 2.15.0.276.g89ea799
In-Reply-To: <20200129163013.GA16538@xps15>
References: <20200129163013.GA16538@xps15>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_094424_180701_98D830F4 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Loic PALLARDY <loic.pallardy@st.com>, linux-doc@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 Patrice Chotard <patrice.chotard@st.com>, linux-kernel@vger.kernel.org,
 Clement Leger <cleger@kalray.eu>, Andy Gross <agross@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, s-anna <s-anna@ti.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This serie add support for elf64 in remoteproc elf loader. 
First patch modifies the type of len argument (in da_to_va) in order
to allow loading elf64 segment with a u64 size.
Second patch is the actual modification in the elf loader to support
elf64 type by using a set of generic macros.

Changes from V2:
 - da_to_va len type changed from int to u64
 - Add check for elf64 header size
 - Add comments for name table parsing
 - Fix typo in "accommodate"

Clement Leger (2):
  remoteproc: Use u64 len for da_to_va
  remoteproc: Add elf64 support in elf loader

 Documentation/remoteproc.txt               |   2 +-
 drivers/remoteproc/imx_rproc.c             |   9 +-
 drivers/remoteproc/keystone_remoteproc.c   |   2 +-
 drivers/remoteproc/qcom_q6v5_adsp.c        |   2 +-
 drivers/remoteproc/qcom_q6v5_mss.c         |   2 +-
 drivers/remoteproc/qcom_q6v5_pas.c         |   2 +-
 drivers/remoteproc/qcom_q6v5_wcss.c        |   2 +-
 drivers/remoteproc/qcom_wcnss.c            |   2 +-
 drivers/remoteproc/remoteproc_core.c       |   2 +-
 drivers/remoteproc/remoteproc_elf_loader.c | 147 ++++++++++++++++++-----------
 drivers/remoteproc/remoteproc_elf_loader.h |  69 ++++++++++++++
 drivers/remoteproc/remoteproc_internal.h   |   4 +-
 drivers/remoteproc/st_remoteproc.c         |   2 +-
 drivers/remoteproc/st_slim_rproc.c         |   4 +-
 drivers/remoteproc/wkup_m3_rproc.c         |   2 +-
 include/linux/remoteproc.h                 |   6 +-
 16 files changed, 184 insertions(+), 75 deletions(-)
 create mode 100644 drivers/remoteproc/remoteproc_elf_loader.h

-- 
2.15.0.276.g89ea799


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
