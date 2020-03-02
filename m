Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 097BB175754
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 10:39:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hodC5iuvw4n2tnG6jA87ueE705jTRQrjRDvlvBxK0ZE=; b=KV9d3qnnkrJLH2hbLETGDOVHux
	iJLWON+I3u0ewwguuiSd4eoPoJjpvEloXlc+dT3KX29G2dmc7fAWWT7QfuOH206Jat5wRECLtFf6r
	AvO+nw/AgoRAdWtjevK64oxfgxaf9t73qVb0NeJDxyVf57ogaDbbJqTSWZOLi+e6ywX3VqdpG1ZBj
	jtqoObzDxSg9fT4Q1gDMpRi1ZO/cizr+XpHqn2n9tfudXviYHIX4hdk4JXk3kOPDxdbkijVibJpIE
	T4MYp2+1NZqpda5LW6C6wWodgmgeoaDOYTopz+t//SR0cDHCMSb4erLvxu7pU+HD5DRfw4NaQnxKJ
	WQDraixw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8hXq-0002fF-4n; Mon, 02 Mar 2020 09:39:26 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8hXe-0002cX-1W
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 09:39:15 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id DFC0727E0309;
 Mon,  2 Mar 2020 10:39:08 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id OVcSk0bXJ0zi; Mon,  2 Mar 2020 10:39:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 80F0327E035B;
 Mon,  2 Mar 2020 10:39:08 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 80F0327E035B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1583141948;
 bh=n+U0zthKoV9vrRbdzy8AknPEHik5gFzG6eQnzyz5s2k=;
 h=From:To:Date:Message-Id;
 b=Sc3D3SqeW7plv4WrSfNzAWIhpvFK7hxzJF36qsG0FzoYMvQythy8CoI2RrYGSAEwI
 kPzXgmekb2/OW4tqHVkriC6nYghsufxECMDBTpHEq5leV3n4yNTHSpb68WE9xEzaK/
 DDXYX8R6UMxh+thY5o4RzfDdS5A49m5ayjcIlWLU=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id H2qCIA2D7NYT; Mon,  2 Mar 2020 10:39:08 +0100 (CET)
Received: from triton.lin.mbt.kalray.eu (unknown [192.168.37.25])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 56C0A27E0309;
 Mon,  2 Mar 2020 10:39:08 +0100 (CET)
From: Clement Leger <cleger@kalray.eu>
To: Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jonathan Corbet <corbet@lwn.net>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-remoteproc@vger.kernel.org
Subject: [PATCH v5 0/8] remoteproc: Add elf64 support
Date: Mon,  2 Mar 2020 10:38:54 +0100
Message-Id: <20200302093902.27849-1-cleger@kalray.eu>
X-Mailer: git-send-email 2.15.0.276.g89ea799
In-Reply-To: <20200210162209.23149-1-cleger@kalray.eu>
References: <20200210162209.23149-1-cleger@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_013914_412437_E61A7E55 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

This serie add support for elf64 in remoteproc (elf loader, coredump). 
First three patches modifies the type of len argument (in da_to_va),
boot_addr and rproc_mem_entry len field in order to allow loading elf64
segment with a u64 size and a u64 entry point.
Next patches introduce a set of macros to access elf64 and elf32
transparently.
Last patches are the actual modifications in the elf loader and
remoteproc coredump support to add elf64 support.

Changes v4 -> v5:
 - Add rproc_elf_sanity_check renaming to rproc_elf32_sanity_check
 - Fix checkpatch warning on > 80 column line
 - Change u64 len type for size_t in da_to_va and add checks in loader
 - Modify rproc_mem_entry size field type from int to size_t
 - Add a patch to override sanity_check function

Changes v3 -> v4:
 - Adapt coredump to elf64 file format
 - Rename remoteproc_elf_loader.h to remoteproc_elf_helpers.h
 - Update copyright year in remoteproc_elf_helpers.h
 - Rename macros elf_hdr_* to elf_get_hdr_* for coherency with elf_hdr_set_*
 - Split elf64 loader patch in 3:
   - boot_addr u64 change
   - remoteproc_elf_helpers.h creation
   - elf64 loading

Changes v2 -> v3:
 - da_to_va len type changed from int to u64
 - Add check for elf64 header size
 - Add comments for name table parsing
 - Fix typo in "accommodate
 - Add ELF64 support in documentation

Clement Leger (8):
  remoteproc: Use size_t type for len in da_to_va
  remoteproc: Use size_t instead of int for rproc_mem_entry len
  remoteproc: Use u64 type for boot_addr
  remoteproc: Add elf helpers to access elf64 and elf32 fields
  remoteproc: Rename rproc_elf_sanity_check for elf32
  remoteproc: Add elf64 support in elf loader
  remoteproc: Allow overriding only sanity_check
  remoteproc: Adapt coredump to generate correct elf type

 Documentation/remoteproc.txt                |   2 +-
 drivers/remoteproc/imx_rproc.c              |  11 +-
 drivers/remoteproc/keystone_remoteproc.c    |   4 +-
 drivers/remoteproc/qcom_q6v5_adsp.c         |   2 +-
 drivers/remoteproc/qcom_q6v5_mss.c          |   2 +-
 drivers/remoteproc/qcom_q6v5_pas.c          |   2 +-
 drivers/remoteproc/qcom_q6v5_wcss.c         |   2 +-
 drivers/remoteproc/qcom_wcnss.c             |   2 +-
 drivers/remoteproc/remoteproc_core.c        |  86 +++++++------
 drivers/remoteproc/remoteproc_debugfs.c     |   2 +-
 drivers/remoteproc/remoteproc_elf_helpers.h |  96 ++++++++++++++
 drivers/remoteproc/remoteproc_elf_loader.c  | 189 +++++++++++++++++++---------
 drivers/remoteproc/remoteproc_internal.h    |  14 ++-
 drivers/remoteproc/st_remoteproc.c          |   4 +-
 drivers/remoteproc/st_slim_rproc.c          |   6 +-
 drivers/remoteproc/stm32_rproc.c            |   2 +-
 drivers/remoteproc/wkup_m3_rproc.c          |   4 +-
 include/linux/remoteproc.h                  |  13 +-
 18 files changed, 317 insertions(+), 126 deletions(-)
 create mode 100644 drivers/remoteproc/remoteproc_elf_helpers.h

-- 
2.15.0.276.g89ea799


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
