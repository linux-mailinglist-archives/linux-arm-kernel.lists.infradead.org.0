Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5381402BA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 05:02:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TW2LRAlRrlrnp8o23s/v88m4qv3Z3rvXywpHnslCCPA=; b=syaBBWPIpT0nui
	XoshDwGXcpo+E4vaOxH+c3lG0xNLr96kO59VRSGuP0TbljQWZZVUmJg81KM6401TEwhtgg6h3Fryv
	Pl6bE24+DKd1R0n6hWP6yIRlxj6f5IGYYFzrjwq80vgz7xD46i2zwj3yXV9onpKy6+iv+aZrMzfV9
	4dCG/eN8liGbNaX2udn8jTyFQtFidDG3ycideeyDfePvnwjbwBb+Vsp/q4TXHiZ7r10D34B1b7Wuc
	MsETGlw7GUAh9n3oTu0lCtylXJzDFS/2pbNsNSd7KubOxxnYHazlHFjuE539o2S5+8YVe7wVEoWuM
	PDNHOywZOFna2lv/aoYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isIpp-0001sY-JW; Fri, 17 Jan 2020 04:02:13 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isIp0-0001Ch-1l; Fri, 17 Jan 2020 04:01:25 +0000
X-UUID: f71da81012594a5cbd0ea412cf314bb4-20200116
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=VjZO8NXrEdygh8unLaMlK+CBj4HVc+zbQuqJLK0MpHk=; 
 b=iLTSp5hcnEEBPvLkOeoDxXrjyGkAzjUoajAoqkCX0J9Sfye+1631IoZtlpcvHpXMziPlNeArWMr0VmuD5za4aHLAwtp8zRu8W+Eg5RXDxkwuvbU6sQ+QrnWYChmcYzk45+GqQMcjR1aS2+SbRC5w+8kkqgyrCaWFURCMYtqufUw=;
X-UUID: f71da81012594a5cbd0ea412cf314bb4-20200116
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1245933847; Thu, 16 Jan 2020 20:01:13 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 Jan 2020 19:52:06 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 17 Jan 2020 11:50:32 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 17 Jan 2020 11:51:08 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v1 0/3] scsi: ufs-mediatek: add MediaTek vendor implementation
 part II
Date: Fri, 17 Jan 2020 11:51:05 +0800
Message-ID: <20200117035108.19699-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_200122_130256_B3FCBAB6 
X-CRM114-Status: UNSURE (   5.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

This series adds some MediaTek vendor implementations in UFS driver:
  - Callback dbg_register_dump
  - Low-power mode for hibern8 state

Stanley Chu (3):
  scsi: ufs-mediatek: add dbg_register_dump implementation
  scsi: ufs: export some functions for vendor usage
  scsi: ufs-mediatek: enable low-power mode for hibern8 state

 drivers/scsi/ufs/ufs-mediatek.c | 70 +++++++++++++++++++++++++++++++++
 drivers/scsi/ufs/ufs-mediatek.h |  5 +++
 drivers/scsi/ufs/ufshcd.c       | 11 ++++--
 drivers/scsi/ufs/ufshcd.h       |  3 ++
 4 files changed, 85 insertions(+), 4 deletions(-)

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
