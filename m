Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5D4125D9F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 10:26:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FQm8WxEpYb/ykg3ihfZXbV3Hz0tC3ijMAesERmptTiM=; b=A8MI8oErcfRRqI
	CZqEWXU6kexECOfnWbJNHL6IhpnktmQtpxca6U+vysJov92mCqIwEJyeQzHvqkVzBaCAhZFqfOfSl
	VDnrQbjob61Uc/mVjJgTLeEL+mtIO0kI0PXDKSX5OlgIwi2WpFsqEBIlYCFDnxqbquHm3/CGG1AAg
	XTN2waVe8XfIxRns/Q1KtTI5728RmU4rYtBjU3cY1OJDZMEw3Yz8X9826r5GBalcSZ+NBNLXFZY6H
	EumlJPpoKzjfhPSs8mACT4uASbWKfKRXxPEclFFKl21eXEhGqzf9RlEVvcxUN92zLNWsa39rLuQ8E
	LY6zHpV+ZpFks+gKS3iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihs4D-00043D-NS; Thu, 19 Dec 2019 09:25:57 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihs3g-0003jv-D0; Thu, 19 Dec 2019 09:25:26 +0000
X-UUID: 40428444ba544274956fde394f163baa-20191219
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=bVBH3anMpg7sIakLusrAPASLtbu9DJT61K8Oiyp5egE=; 
 b=u4sdzU0bD+BoYr3azsQ67X21n3DbJEamceKEH9mJAW5zI9fb8zgsG4kwdu6B5GrSshxg5qrgcJlVyWji+24WldenlqtFWVeyWBCXKYtU6uRgaEmc5JC3xaCa56plWd2fW45nzebN65UIb6KXIVDluKeNwDdO6+SiYS1yjmirIuI=;
X-UUID: 40428444ba544274956fde394f163baa-20191219
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1563726813; Thu, 19 Dec 2019 01:25:20 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Dec 2019 01:21:27 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Dec 2019 17:20:48 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 19 Dec 2019 17:21:08 +0800
From: Michael Kao <michael.kao@mediatek.com>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, <hsinyi@chromium.org>, <linux-pm@vger.kernel.org>,
 <srv_heupstream@mediatek.com>
Subject: [RESEND] thermal: mediatek: add suspend/resume callback
Date: Thu, 19 Dec 2019 17:21:02 +0800
Message-ID: <20191219092103.8839-1-michael.kao@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_012524_611121_9823F1A0 
X-CRM114-Status: UNSURE (   5.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Louis Yu (1):
  thermal: mediatek: add suspend/resume callback

 drivers/thermal/mtk_thermal.c | 134 +++++++++++++++++++++++++++++++---
 1 file changed, 125 insertions(+), 9 deletions(-)
43c61a8ec1dcc7f2e202 Mon Sep 17 00:00:00 2001
From: Michael Kao <michael.kao@mediatek.com>
Date: Thu, 19 Dec 2019 17:08:32 +0800
Subject: [RESEND] thermal: mediatek: add suspend/resume callback

The patch base on Kenrel 5.5-rc1.
I resent without new modification just because I missed linux-pm in my sending list.

Louis Yu (1):
  thermal: mediatek: add suspend/resume callback

 drivers/thermal/mtk_thermal.c | 134 +++++++++++++++++++++++++++++++---
 1 file changed, 125 insertions(+), 9 deletions(-)
43c61a8ec1dcc7f2e202 Mon Sep 17 00:00:00 2001
From: Michael Kao <michael.kao@mediatek.com>
Date: Thu, 19 Dec 2019 17:08:32 +0800
Subject: [RESEND] thermal: mediatek: add suspend/resume callback

The patch base on Kenrel 5.5-rc1.
I resent without new modification just because I missed linux-pm in my sending list.

Louis Yu (1):
  thermal: mediatek: add suspend/resume callback

 drivers/thermal/mtk_thermal.c | 134 +++++++++++++++++++++++++++++++---
 1 file changed, 125 insertions(+), 9 deletions(-)
43c61a8ec1dcc7f2e202 Mon Sep 17 00:00:00 2001
From: Michael Kao <michael.kao@mediatek.com>
Date: Thu, 19 Dec 2019 17:08:32 +0800
Subject: [RESEND] thermal: mediatek: add suspend/resume callback

The patch base on Kenrel 5.5-rc1.
I resent without new modification just because I missed linux-pm in my sending list.

Louis Yu (1):
  thermal: mediatek: add suspend/resume callback

 drivers/thermal/mtk_thermal.c | 134 +++++++++++++++++++++++++++++++---
 1 file changed, 125 insertions(+), 9 deletions(-)
43c61a8ec1dcc7f2e202 Mon Sep 17 00:00:00 2001
From: Michael Kao <michael.kao@mediatek.com>
Date: Thu, 19 Dec 2019 17:08:32 +0800
Subject: [RESEND] thermal: mediatek: add suspend/resume callback

The patch base on Kenrel 5.5-rc1.
I resent without new modification just because I missed linux-pm in my sending list.

Louis Yu (1):
  thermal: mediatek: add suspend/resume callback

 drivers/thermal/mtk_thermal.c | 134 +++++++++++++++++++++++++++++++---
 1 file changed, 125 insertions(+), 9 deletions(-)
43c61a8ec1dcc7f2e202 Mon Sep 17 00:00:00 2001
From: Michael Kao <michael.kao@mediatek.com>
Date: Thu, 19 Dec 2019 17:08:32 +0800
Subject: [RESEND] thermal: mediatek: add suspend/resume callback

The patch base on Kenrel 5.5-rc1.
I resent without new modification just because I missed linux-pm in my sending list.

Louis Yu (1):
  thermal: mediatek: add suspend/resume callback

 drivers/thermal/mtk_thermal.c | 134 +++++++++++++++++++++++++++++++---
 1 file changed, 125 insertions(+), 9 deletions(-)
43c61a8ec1dcc7f2e202 Mon Sep 17 00:00:00 2001
From: Michael Kao <michael.kao@mediatek.com>
Date: Thu, 19 Dec 2019 17:08:32 +0800
Subject: [RESEND] thermal: mediatek: add suspend/resume callback

The patch base on Kenrel 5.5-rc1.
I resent without new modification just because I missed linux-pm in my sending list.

Louis Yu (1):
  thermal: mediatek: add suspend/resume callback

 drivers/thermal/mtk_thermal.c | 134 +++++++++++++++++++++++++++++++---
 1 file changed, 125 insertions(+), 9 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
