Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D791899BB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 11:41:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=334T5SJ4A79d8g8tJZpt2TDrRzIrcjSv22+gvjwk390=; b=lgs1Y37pYRNWRX
	15/RAd/+JmA8lf6BFFzY0Y6MNJpBJnCHV7F4fOyF7GfYxLLlCskJZjuuYldP55LwW52InoWCU593b
	Gwk8TIZcIZrvZCznJepgoVb2ARL3YGmmuykr0KRDqP5qSmN87OGLNKpYvkK2fZ0nM13+ptKMux4eW
	wtl1p8Y2A4n8gtwmHUxKg/Xsc8qWo++O3oF/m7TWGcDlA+lPLRMMapGUu8o1dnhPAkBdBO+PCyHs+
	gQojijThwtFvrvxsqc6RkFzJkS72griHrRl3SPkD/OhHffLw9NDiSprCu4FBt/KJ/118e+nZz2Kvy
	Dnym8WOWRXscKQGM8pyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEW8v-0000hP-7j; Wed, 18 Mar 2020 10:41:45 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEW7i-0008Ig-GT; Wed, 18 Mar 2020 10:40:33 +0000
X-UUID: 47f6da4424ce4635931514ed31eaff76-20200318
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=O++pLXuj0DX/kTHP26oFWY1EQqKvdFA9wne654JlhgA=; 
 b=AxibO5Yfa8I9VFxjXdWY6CyufjZdlPs9mMWGjQ4NGa04SE1IJghvUTitkt7P6mDo91zlQ+Xed68iqBi1tiI1GpY+Lru7RvzX38IXd07jXDGCl1pmyfv4ri9HVsxqEO2Uioac1bkxJQ8XshD9ttSEBRR7PbZ/9qJ8RzUTi1JPkq0=;
X-UUID: 47f6da4424ce4635931514ed31eaff76-20200318
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1624295181; Wed, 18 Mar 2020 02:40:29 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Mar 2020 03:41:00 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Mar 2020 18:37:25 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 18 Mar 2020 18:40:30 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.peter~sen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <bvanassche@acm.org>
Subject: [PATCH v7 0/7] scsi: ufs: some cleanups and make the delay for host
 enabling customizable
Date: Wed, 18 Mar 2020 18:40:09 +0800
Message-ID: <20200318104016.28049-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: C898DCF254560EA0341542683F3E0BFC4414FA2D8198C3B73AF12E8E0B47139F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_034030_611278_CB3C737F 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stanley Chu <stanley.chu@mediatek.com>, andy.teng@mediatek.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, beanhuo@micron.com,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

v6 -> v7
	- Fix patch #3 "scsi: ufs: introduce common delay function" (Bart Van Assche)
		- Remove "can_sleep" related changes.
		- Limit the usage of common delay function, for example, if delay time
		is fixed and larger than 10 us, using introduced common delay function is not required.
	- Other related changes according to patch #3 changes

v5 -> v6
	- Drop patch #2 "scsi: ufs: remove init_prefetch_data in struct ufs_hba" in v5
	because Can Guo has similar cleanup earlier in patch "scsi: ufs: Do not rely on prefetched data"

v4 -> v5
	- Fix patch #7: Fix typo "initializatoin" in title

v3 -> v4
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
	- In patch #8, customize the delay in ufs_mtk_hce_enable_notify callback instead of ufs_mtk_init (Avri Altman)

Stanley Chu (7):
  scsi: ufs: fix uninitialized tx_lanes in ufshcd_disable_tx_lcc()
  scsi: ufs: use an enum for host capabilities
  scsi: ufs: introduce common and flexible delay function
  scsi: ufs-mediatek: use common delay function for required places
  scsi: ufs: allow customized delay for host enabling
  scsi: ufs: make HCE polling more compact to improve initialization
    latency
  scsi: ufs-mediatek: customize the delay for host enabling

 drivers/scsi/ufs/ufs-mediatek.c | 58 +++++++++++++++++-----------
 drivers/scsi/ufs/ufs-mediatek.h |  1 +
 drivers/scsi/ufs/ufshcd.c       | 21 +++++++++--
 drivers/scsi/ufs/ufshcd.h       | 67 +++++++++++++++++++--------------
 4 files changed, 93 insertions(+), 54 deletions(-)

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
