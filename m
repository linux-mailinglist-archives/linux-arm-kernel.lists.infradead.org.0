Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DF8165F28
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 14:49:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n27UzqeOA9ZzjMnhxoG2AtmWoyNcBnkV87rH2ezr0TI=; b=tz7NWF/3k6Xt6O
	lml3xNezWiN93YCZc+UEdmqa3xvrSSaCUZ0Cj9/1Vb+cDMa+xV250Ac6qCHjIN/vAoXctNymbQkWf
	8eUNBR3UEPDAECsbQgUwZfnQylw0ItsbANcKvv+eotPU8GIMFH61Bpl8g4aMKFGgYzmrkrFKZH/Cd
	uzGLrBl87UCLDUwNwlYkDE5LD2rwbzrbwKxe6Qi5uPvmKuxbh2rsSV1a5btjC69G6ytB4g5L2yHkf
	Jsya15b7uHxJRcaVSs2gdfzgzE8HWvpk73Md8ftyMBqubCj7Vshb7ZuvFyRTjgl5N1Sihr7Zf7a+p
	kcwljdzkKVxTHnC6atng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4mCm-0006ny-NU; Thu, 20 Feb 2020 13:49:28 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4mCS-0006fi-1J; Thu, 20 Feb 2020 13:49:09 +0000
X-UUID: a1fb60b189ce4cb1ae3de7c72a67d661-20200220
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=KmAGgXrlCHQ77cMErepngIlOvfaHprPW+G8GQkksoF0=; 
 b=A6pnecmcTdlSi1ZSgE1r/8Gm8+b1CfJzrHrXI21KMXpVQMUtbnR1ULeFJ5AMSoHys3Pjl7hI6Rxh8O7MCrqkIjRaulrYyqJRvk7CfJ/pcv2NsaswXNjIh4pGgufYFJR29yC54BJwHQ0axPehVdk1nLjddVq+ODX8qB2IzFd0tuE=;
X-UUID: a1fb60b189ce4cb1ae3de7c72a67d661-20200220
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 908554262; Thu, 20 Feb 2020 05:49:05 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 20 Feb 2020 05:49:03 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 20 Feb 2020 21:46:20 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 20 Feb 2020 21:46:45 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v2 0/1] scsi: ufs: fix waiting time for reference clock
Date: Thu, 20 Feb 2020 21:48:47 +0800
Message-ID: <20200220134848.8807-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: A530EFBDC78C0C129A69103C87BA3A3A8647BB6446C1DE1CFF13CD807CE25A6D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_054908_129583_53302051 
X-CRM114-Status: UNSURE (   5.34  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

This patchset adds waiting time for reference clock provided to UFS device in MediaTek UFS implementation.

v1 -> v2:
  - Drop patch #1 "scsi: ufs: add required delay after gating reference clock" since it will impact ufs-qcom flow without solid conclusion yet.

Stanley Chu (1):
  scsi: ufs: ufs-mediatek: add waiting time for reference clock

 drivers/scsi/ufs/ufs-mediatek.c | 46 +++++++++++++++++++++++++++++++--
 drivers/scsi/ufs/ufs-mediatek.h |  2 ++
 2 files changed, 46 insertions(+), 2 deletions(-)

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
