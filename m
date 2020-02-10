Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44ECC157F9E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 17:24:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RgCXL2W9VhlHsAua4MeTUrmffVcdyDAqZUfVXR+Q42E=; b=YXe36wem7BF4Mx/8ZMvl/lrXS+
	/09uIG9YcGvH7LonWdaiUrrktgthyCyGT75xz5P4VRcfcslctraYFCb/fO/S483oViRtdzREaXZvP
	UOQQE4pRuZqIdDkdav1o4IIiGG0UrNYfpMWhtau96kkvkNxz/B1w1lwDHAJvi/eDjIkblM2zEwUK5
	sOT53Dci3aJBiU/i7pZyGn26G1O0gWU0okKX84ADN1wDZD3vhLKJXjQBJDXdN6aHbGLajjqiPi3K8
	RVkZ6KZr8F/l8QEFwOMrcAN4NbgdF0sR0AmJ2R158fVLffyS3KVld8Z5v1oqMGMyv+SD0iAkbFpIJ
	WTgIA5ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Br4-0004zh-4N; Mon, 10 Feb 2020 16:24:14 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Bqt-0004y2-BP
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 16:24:05 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 4F5FD27E0658;
 Mon, 10 Feb 2020 17:23:56 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id ibnmg7bxNp1D; Mon, 10 Feb 2020 17:23:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id F170F27E079C;
 Mon, 10 Feb 2020 17:23:55 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu F170F27E079C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1581351836;
 bh=7i8uswkEMsftUzWNZaWpKTwl9chv4VQD7b+VNxGWpY0=;
 h=From:To:Date:Message-Id;
 b=qAhbOVR6uHF47yqt08wvNxUitSKT79LG9tDghJ9PGjGXVx3jVvVxOAH2ZwRgwnwbA
 7EMOxbbTOFsmJeca9Y+WZvQMqlik1PegV/cQQ/QWC3rZggzSuWNKYpE0sgf6jIqecm
 kOKedq+2K+ZoRRbJnzTPriuK0W/FKDPrBL0OAiaI=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id yPulY8mreZhE; Mon, 10 Feb 2020 17:23:55 +0100 (CET)
Received: from triton.lin.mbt.kalray.eu (unknown [192.168.37.25])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id D1B4627E0658;
 Mon, 10 Feb 2020 17:23:55 +0100 (CET)
From: Clement Leger <cleger@kalray.eu>
To: Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jonathan Corbet <corbet@lwn.net>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-remoteproc@vger.kernel.org
Subject: [PATCH v4 0/5] remoteproc: Add elf64 support
Date: Mon, 10 Feb 2020 17:22:04 +0100
Message-Id: <20200210162209.23149-1-cleger@kalray.eu>
X-Mailer: git-send-email 2.15.0.276.g89ea799
In-Reply-To: <527785289.2852303.1581062223707.JavaMail.zimbra@kalray.eu>
References: <527785289.2852303.1581062223707.JavaMail.zimbra@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_082403_798889_8C36FE72 
X-CRM114-Status: UNSURE (   7.56  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
First two patches modifies the type of len argument (in da_to_va) and
boot_addr in order to allow loading elf64 segment with a u64 size
and a u64 entry point.
Next patch introduce a set of macros to access elf64 and elf32
transparently.
Last two patches are the actual modification in the elf loader and
remoteproc coredump support to add elf64 support.

Changes from V3:
 - Adapt coredump to elf64 file format
 - Rename remoteproc_elf_loader.h to remoteproc_elf_helpers.h
 - Update copyright year in remoteproc_elf_helpers.h
 - Rename macros elf_hdr_* to elf_get_hdr_* for coherency with elf_hdr_set_*
 - Split elf64 loader patch in 3:
   - boot_addr u64 change
   - remoteproc_elf_helpers.h creation
   - elf64 loading

Clement Leger (5):
  remoteproc: Use u64 len for da_to_va
  remoteproc: Use u64 type for boot_addr
  remoteproc: Add elf helpers to access elf64 and elf32 fields
  remoteproc: Add elf64 support in elf loader
  remoteproc: Adapt coredump to generate correct elf type

 Documentation/remoteproc.txt                |   2 +-
 drivers/remoteproc/imx_rproc.c              |  11 +-
 drivers/remoteproc/keystone_remoteproc.c    |   4 +-
 drivers/remoteproc/qcom_q6v5_adsp.c         |   2 +-
 drivers/remoteproc/qcom_q6v5_mss.c          |   2 +-
 drivers/remoteproc/qcom_q6v5_pas.c          |   2 +-
 drivers/remoteproc/qcom_q6v5_wcss.c         |   2 +-
 drivers/remoteproc/qcom_wcnss.c             |   2 +-
 drivers/remoteproc/remoteproc_core.c        |  69 +++++++------
 drivers/remoteproc/remoteproc_elf_helpers.h |  95 ++++++++++++++++++
 drivers/remoteproc/remoteproc_elf_loader.c  | 150 ++++++++++++++++++----------
 drivers/remoteproc/remoteproc_internal.h    |   4 +-
 drivers/remoteproc/st_remoteproc.c          |   2 +-
 drivers/remoteproc/st_slim_rproc.c          |   4 +-
 drivers/remoteproc/wkup_m3_rproc.c          |   4 +-
 include/linux/remoteproc.h                  |   7 +-
 16 files changed, 252 insertions(+), 110 deletions(-)
 create mode 100644 drivers/remoteproc/remoteproc_elf_helpers.h

-- 
2.15.0.276.g89ea799


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
