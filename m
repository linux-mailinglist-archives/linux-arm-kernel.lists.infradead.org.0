Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68824137BFA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 08:12:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6A7I3iU9cxK2mEq7xrEeqvvERZ/I1mvja76qhoNzqew=; b=t4x8lfih68EXlZ
	b0kA2rwVYTAqd5LzEph7fRH2M5TYUuJmgI12voZaG1P+fP7FEvvapLFCHhfVzHrWWru21e6IZ/Vil
	23JmvMJSOWf23GxAKRrPvRrrZSc1XGk9BFc+VCJ61Bq4duEkc4UW5os88yaf/HjVuEpAjR1DulPon
	R8W3iUXVMi7YCMfeG3YDRinozVJcSyUq1It1hwnmSSKE9GUL7GL0ZRr1oMGioV0BPf4WFCDec+myp
	mW4aE9YtYEJ9plOE0ystrG4TXDpLqE/PB5lAYC79ai3HKv/LQvhBpMiwupWStuUZnoawcktXTbVYg
	3gHeBZ6tVx+g2rHaAswQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqAwb-0003NY-BY; Sat, 11 Jan 2020 07:12:25 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqAwU-0003Lx-Qp; Sat, 11 Jan 2020 07:12:20 +0000
X-UUID: 96841ec7371f408e9175583e27b0c137-20200110
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=9mo99xIvkfScUshABg5R+2UHB6H3sxJILIKNOtsoiKk=; 
 b=A4tXQFid6+6alC3FPA7e+ahoHXHoVpynmgTpuqCgwqnxGxISFxEWFm54ES3r3D68vgfztmPCFWc1a+uVRXjhfoC2EIX5tGbXds0UXHegfbZAAe5J/4gfJ0AzCxkPf/gs+mLDXOclNqjPncFKf2NEhyz4CfbsyGtGUtxcqFfkmrg=;
X-UUID: 96841ec7371f408e9175583e27b0c137-20200110
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1047609019; Fri, 10 Jan 2020 23:12:13 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 Jan 2020 23:12:10 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 11 Jan 2020 15:11:03 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Sat, 11 Jan 2020 15:12:37 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v3 0/2] scsi: ufs: pass device information to apply_dev_quirks
Date: Sat, 11 Jan 2020 15:11:45 +0800
Message-ID: <1578726707-6596-1-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: F766C1091C1913520CE1D9691BC16BBDA3D7AF20A07BA51859A15704091991D62000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_231218_872639_9DE30819 
X-CRM114-Status: UNSURE (   7.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stanley Chu <stanley.chu@mediatek.com>, bvanassche@acm.org,
 andy.teng@mediatek.com, chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, beanhuo@micron.com,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently UFS driver has "global" device quirk scheme to allow driver applying
special handling for certain UFS devive models.

However some special device handlings are required for specific UFS hosts only
so it is better to make it happen in vendor's callbacks only to not "pollute"
common driver and common device quirks.

We already have apply_dev_quirks variant callback for vendors but lack of device
information for handling specific UFS device models. This series provides such
information to apply_dev_quirks callbacks, and applies related modifications.

In patch 1, since QCOM vendor driver will be built by default as a module, UFS
core driver and vendor driver can not be split to different patches, otherwise
separated patches will not be built singly.

v2 -> v3
    - Fix ufshcd_tune_unipro_params()'s users to have correct parameters for invoking.
    - Rebase to Martin's latest queue branch.

v1 -> v2
    - Squash patch 1 "scsi: ufs: pass device information to apply_dev_quirks" and patch 2 "scsi: ufs-qcom: modify apply_dev_quirks interface" to resolve build issue.

Stanley Chu (2):
  scsi: ufs: pass device information to apply_dev_quirks
  scsi: ufs-mediatek: add apply_dev_quirks variant operation

 drivers/scsi/ufs/ufs-mediatek.c | 11 +++++++++++
 drivers/scsi/ufs/ufs-qcom.c     |  3 ++-
 drivers/scsi/ufs/ufshcd.c       |  8 ++++----
 drivers/scsi/ufs/ufshcd.h       |  7 ++++---
 4 files changed, 21 insertions(+), 8 deletions(-)

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
