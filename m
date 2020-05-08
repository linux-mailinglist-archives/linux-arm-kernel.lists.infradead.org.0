Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2279B1CA0BA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 04:22:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uDYmQ4aNLkC40ZUBdT1o4HGrIZlEwxMlJhU48z4nAnA=; b=VBt22wZ3B/kn6g
	iPpWkr3UL56Nph/odVE1LyZ1FIz9JogWM9Hc4r+aJ0qVM9pJXZT9xEh+6EK7yJ+NjI1MnToI2WbtG
	OzHMa4m0V0hxlYOGc7k4foPuz/4EdLa/ktS5reVcm71VjAuTaIPEUb0sd1eCVFELRAStGr08vj+P9
	bPQni2pTR+JRwj9D46cKrHMijdhz8UHaGu3IvGrSsQH+augek4bOvnHFLZpO7mLNw2LrPvVWH6NlU
	oA422aYQCYl0VnlinahVS4QxJn1z3lmFQjMicbvocQLLz/rTqELORFSVjfROE0gUFRJRqQ7TclkXg
	73iaQOfTwqjT78C13lYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWseI-0003Fn-U9; Fri, 08 May 2020 02:22:02 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWse8-0003Ej-Ub; Fri, 08 May 2020 02:21:54 +0000
X-UUID: 38b182c9a2cd42adac791f567372f2ad-20200507
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=TR6ze+l1mfObKm1SdxCDQckW//z6/tKC6CTs29QI2bQ=; 
 b=pEp8gPDuKul6gWPyLDCRhgeNlq+HDWKcuQwDOuA1JyxssOYEIzAcG4EFQCQ1Wi8iZ9SUNoPjc1e8OnKAJ75BSDsOWAC6emexRgmmpUG0O7ruTKgETaGLjBWvR0Zn3Qwhu27/8uh7s6R78AzgjgXR61oDt1n+v/GES+UzgcUQgj8=;
X-UUID: 38b182c9a2cd42adac791f567372f2ad-20200507
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1359593130; Thu, 07 May 2020 18:21:48 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 7 May 2020 19:21:45 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 8 May 2020 10:21:41 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 8 May 2020 10:21:41 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v7 0/8] scsi: ufs: support LU Dedicated buffer mode for
 WriteBooster
Date: Fri, 8 May 2020 10:21:33 +0800
Message-ID: <20200508022141.10783-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_192152_993011_EEA7CFC0 
X-CRM114-Status: UNSURE (   7.79  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
This patchset adds LU dedicated buffer mode support for WriteBooster.
In the meanwhile, enable WriteBooster capability on MediaTek UFS platforms.

v6 -> v7:
  - Add device descriptor length check in ufshcd_wb_probe() back to prevent out-of-boundary access in ufshcd_wb_probe()
  - Fix the check of device descriptor length (Avri Altman)
  - Provide a new ufs_fixup_device_setup() function to pack both device fixup methods by general quirk table and vendor-specific way (Avri Altman)

v5 -> v6:
  - Remove device descriptor length check in ufshcd_wb_probe()

v4 -> v5:
  - Check LUN ID for available WriteBooster buffer only from 0 to 7 according to spec (Avri Altman)
  - Skip checking any possible errors from ufshcd_read_unit_desc_param(hba, lun, UNIT_DESC_PARAM_WB_BUF_ALLOC_UNITS) in ufshcd_wb_probe() and check returned d_lu_wb_buf_alloc (shall be zero if error happens) (Avri Altman)

v3 -> v4:
  - Introduce "fixup_dev_quirks" vops to allow vendors to fix and modify device quirks, and provide an initial vendor-specific device quirk table on MediaTek UFS platforms
  - Avoid relying on common device quirk table for pre-3.1 UFS device with non-standard WriteBooster support (Can Guo)
  - Fix comments for ufshcd_wb_probe() (Can Guo)
  - Make ufshcd_wb_get_flag_index() inline and fix ufshcd_is_wb_flags() (Avri Altman)

v2 -> v3:
  - Introduce a device quirk to support WriteBooster in pre-3.1 UFS devices (Avri Altman)
  - Fix WriteBooster related sysfs nodes. Now all WriteBooster related sysfs nodes are specifically mapped to the LUN with WriteBooster enabled in LU Dedicated buffer mode (Avri Altman)

v1 -> v2:
  - Change the definition name of WriteBooster buffer mode to correspond to specification (Bean Huo)
  - Add patch #5: "scsi: ufs: cleanup WriteBooster feature"

Stanley Chu (8):
  scsi: ufs: enable WriteBooster on some pre-3.1 UFS devices
  scsi: ufs: introduce fixup_dev_quirks vops
  scsi: ufs: export ufs_fixup_device_setup() function
  scsi: ufs-mediatek: add fixup_dev_quirks vops
  scsi: ufs: add "index" in parameter list of ufshcd_query_flag()
  scsi: ufs: add LU Dedicated buffer mode support for WriteBooster
  scsi: ufs-mediatek: enable WriteBooster capability
  scsi: ufs: cleanup WriteBooster feature

 drivers/scsi/ufs/ufs-mediatek.c |  25 ++++-
 drivers/scsi/ufs/ufs-sysfs.c    |  11 ++-
 drivers/scsi/ufs/ufs.h          |  10 ++
 drivers/scsi/ufs/ufs_quirks.h   |   7 ++
 drivers/scsi/ufs/ufshcd.c       | 163 +++++++++++++++++++++-----------
 drivers/scsi/ufs/ufshcd.h       |  19 +++-
 6 files changed, 173 insertions(+), 62 deletions(-)

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
