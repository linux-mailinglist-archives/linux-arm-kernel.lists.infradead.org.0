Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2A61E924D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 17:24:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+AV3zQyM+GEb4UDImicwFYSPAFPJ2LqEw9AH6yMu0QU=; b=Y3gzGRlheeWZ6b
	BW6B2juYlGdthMbsx/i/PHhZDA2NQ+Egbch1tnMFikkdJFY2C045IWmNDr9TQn5funYXb49FDmZbB
	PZi2TvodFQky4egunMKTZfRaNuo/mQ/Vl6fOBKG6jTJiVz2gmQTVw6iE852tC50dLx3AN1lmodJWT
	+y2AYeUTeyEPkMX+XROWtXHKcjgETwvf8Ho7s8xnlA2/lIHuAuPy06T/qg7ZNpUOw66HI+LVPKhgD
	/0S3fL3fWuFVxDgJV03oUsWG9EFeAmR5SG3mcrwmyPwmlni8rDLqUgqav42kH4vsPKP3ICal662yN
	ribnuV8tyUWHNXp8wi1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf3LI-0002bG-Ry; Sat, 30 May 2020 15:24:12 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf3L9-0002Zy-Dy; Sat, 30 May 2020 15:24:04 +0000
X-UUID: 11b993649c9c4ae0a6a36f0af0255626-20200530
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=TG3MGGEKF/HqosfrebB3c9qNzlnnNnjoxDaBqGy6cyo=; 
 b=fIPOrWEh/YuDwU9XjMAbkNjgpWXGdmMxvGn8IpvEPqclehZhRvUcuoQecN2I4EEearbPAeEad1F/BIEjmTg8w5H+69PHf3/2sBzJ1XQSnmb/+WEP0ZHnvOSufjmACXz98lAnrf0armmRJoShx3vmYnLfclrIRFuBDfRVR/U1iP0=;
X-UUID: 11b993649c9c4ae0a6a36f0af0255626-20200530
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 218737930; Sat, 30 May 2020 07:23:23 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 30 May 2020 08:13:51 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 30 May 2020 23:13:36 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Sat, 30 May 2020 23:13:36 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v1 0/2] scsi: ufs: Support WriteBooster on Samsung UFS devices
Date: Sat, 30 May 2020 23:13:35 +0800
Message-ID: <20200530151337.6182-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: BEBA1EC4334FD6D47E55445D4CD1D1D6C3162BAA74DD7D92426F224804E3E0D72000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_082403_474080_8493B52A 
X-CRM114-Status: UNSURE (   5.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 andy.teng@mediatek.com, cc.chou@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, beanhuo@micron.com, chaotian.jing@mediatek.com,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
Samsung UFS devices are widely used in the market, however these devices need some special handling to support WriteBooster. Introduce a device quirk to handle this special requirement.

Currently Bean Huo is doing some nice cleanup work for device descriptor length so our series will have merge conflict. I would like to submit this series first for review and then resend with conflict fix after Bean's series gets accepted.

Stanley Chu (2):
  scsi: ufs: Support WriteBooster on Samsung UFS devices
  scsi: ufs-mediatek: Support WriteBooster on Samsung UFS devices

 drivers/scsi/ufs/ufs-mediatek.c |  3 +++
 drivers/scsi/ufs/ufs-sysfs.c    | 12 ---------
 drivers/scsi/ufs/ufs.h          |  1 +
 drivers/scsi/ufs/ufs_quirks.h   |  7 +++++
 drivers/scsi/ufs/ufshcd.c       | 45 ++++++++++++++++++++++++++++++++-
 drivers/scsi/ufs/ufshcd.h       | 20 +++++++++++++++
 6 files changed, 75 insertions(+), 13 deletions(-)

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
