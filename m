Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D639F1863DA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 04:43:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=83Slv6okQqf2PTHt9p2Bm2NbeWuit8YnxTKayeDOjhs=; b=ko3lDITWzQk4L7
	wLyCwo5HQDn/B8NiKGu4dp2rN2VYbseG041TpWH7rmAsHa/C1NlQphQI5VQ9OPVYqTo7eE2WJaYM0
	AQcDq7RBSZGKjGwXy9DsxV5Jq1z95n6YYTJlUqbm/ZMOIDIWMLAj8YP0Ygz9a6AUsVbL8GLtlEalh
	1weeTWqbff324GHA+sB+MmX8rxd/Y8unG/iv0HxJKxPSHFj++RtFM2xX5qbg8d9tQatgw+1bGHOEp
	EH9aMwuUfCGifdD8BGBdvuAP23/fVmnBOxKbFddwtq7pq6w5bnbWqs6aE2wkScbI/70yaAV8nb3Fe
	9Hw3Keuen0FWPSWrA7mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDgel-0001rC-LG; Mon, 16 Mar 2020 03:43:11 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDge7-0001HQ-IU; Mon, 16 Mar 2020 03:42:32 +0000
X-UUID: f8b3b1eee68e428aa79c95602ff37f54-20200315
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=vi8sUp7wfNGzry+oc6hx+6Yugm6avGTPSPtWm++c2Ic=; 
 b=TDw1Gam3EYLq+TB+byGWj26q52Sk2NuFxGEfWbvrn6XJTkfFbMoQ6fmxhHpn3kP77Aca9sRlAUoN2J0cRBi+gT6Ue45OSB38jN1RdZE8f2rxLSOsqYYnZiKvhPbBW8+LjnywPS3bpjBM5s0G4u0zfw4OKqXyX22RU0yt7A0e7uc=;
X-UUID: f8b3b1eee68e428aa79c95602ff37f54-20200315
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1065521491; Sun, 15 Mar 2020 19:42:22 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 15 Mar 2020 20:42:20 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Mar 2020 11:39:27 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 16 Mar 2020 11:39:22 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.peter~sen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v5 0/8] scsi: ufs: some cleanups and make the delay for host
 enabling customizable
Date: Mon, 16 Mar 2020 11:42:10 +0800
Message-ID: <20200316034218.11914-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2894A1BF0F52B2EA31AD88934CEC3761E565330CEFDA4095AACD5209D52A5C982000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_204231_612975_F8375AFF 
X-CRM114-Status: UNSURE (   6.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

Hi,

This patchset applies some driver cleanups and performance improvement
in ufs host drivers by making the delay for host enabling customizable
according to vendors' requirements.

v4 -> v5
	- Collect review tags in v4
	- Fix patch #7: Fix typo "initializatoin" in title

v3 -> v4
	- Collect review tags in v2
	- In patch #8, fix incorrect condition of customized delay for host enabling

v2 -> v3
	- Remove /arch/arm64/configs/defconfig chnage because it is for local test only

v1 -> v2
	- Add patch #1 "scsi: ufs: fix uninitialized tx_lanes in ufshcd_disable_tx_lcc"
	- Remove struct ufs_init_prefetch in patch #2 "scsi: ufs: remove init_prefetch_data in struct ufs_hba"
	- Introduce common delay function in patch #4
	- Replace all delay places by common delay function in ufs-mediatek in patch #5
	- Use common delay function instead for host enabling delay in patch #6
	- Add patch #7 "scsi: ufs: make HCE polling more compact to improve initializatoin latency"
	- In patch #8, customize the delay in ufs_mtk_hce_enable_notify callback instead of ufs_mtk_init (Avri)

Stanley Chu (8):
  scsi: ufs: fix uninitialized tx_lanes in ufshcd_disable_tx_lcc()
  scsi: ufs: remove init_prefetch_data in struct ufs_hba
  scsi: ufs: use an enum for host capabilities
  scsi: ufs: introduce common delay function
  scsi: ufs-mediatek: replace all delay places by common delay function
  scsi: ufs: allow customized delay for host enabling
  scsi: ufs: make HCE polling more compact to improve initialization
    latency
  scsi: ufs-mediatek: customize the delay for host enabling

 drivers/scsi/ufs/ufs-mediatek.c | 64 ++++++++++++++++-----------
 drivers/scsi/ufs/ufs-mediatek.h |  1 +
 drivers/scsi/ufs/ufshcd.c       | 47 +++++++++++---------
 drivers/scsi/ufs/ufshcd.h       | 78 ++++++++++++++++-----------------
 4 files changed, 106 insertions(+), 84 deletions(-)

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
