Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5E311FEC4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 08:11:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1IcfXjGMCjeM/y3/jh8a6JFCxxePUvMwGQgbIUHxVMg=; b=GNsNvxd7SF5nat
	ceqEp5yndTmz0HyedOYp5bidLa4K5soEnHj28mFh2Q1bsxTRnu4oYwbcSObIIeoMO70Hh8LArIbUM
	Y1r+XL7/wbNeu2sU0xnibTE3V9Ke/FNhshwWA5wv2NqpU3LxQ988vDL0HHit3uXfnKhIkcvi0LCuR
	qBTwVgwiKfKJo+gr2HCW+vuEJGGOXi01TSk45ZnRqmay0t3CLffHvZFizh0eDAUgjJ1FU2tQDp9aD
	riQfBmsPBOyfxO8oiL20izFV5PBBkMWIxzztFqfeEkqWrZbg8S3Iu34wlNB4nIJ7zS0Q1eEC5vkDm
	T0x+INATTs0jG+aMaURA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igkXe-0000Qd-S8; Mon, 16 Dec 2019 07:11:42 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igkXU-0000Q3-I2; Mon, 16 Dec 2019 07:11:33 +0000
X-UUID: 65d6d70f0e43436f8e46e1e6892dbca4-20191215
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=OgROpEIhh+7JoSk/mlmx76ruWwDI5qaudXsOyA/2J1U=; 
 b=SZtUzJjodDrPtn0UcqacbcSz9+IofzxNSSq0smC+M4AfCtTehIcvxIZG4PqeSWQuh8U/oPLGM3nk6aqDP0cOYoVTNiIQQ29gmqrxIGHSqZCHAYvXHxK+7uuln6L56zDH5GqX8tjhU4MOVt4sVjfvFR5x/N8qTQKxiGsl1jceW3w=;
X-UUID: 65d6d70f0e43436f8e46e1e6892dbca4-20191215
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1827537888; Sun, 15 Dec 2019 23:11:26 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 15 Dec 2019 23:02:33 -0800
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS33N2.mediatek.inc
 (172.27.4.76) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 16 Dec 2019 15:01:40 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS32.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Mon, 16 Dec 2019 15:01:02 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Thierry Reding <thierry.reding@gmail.com>, Uwe Kleine-Koenig
 <u.kleine-koenig@pengutronix.de>, Matthias Brugger <matthias.bgg@gmail.com>,
 <linux-pwm@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>, CK Hu
 <ck.hu@mediatek.com>
Subject: [PATCH v2 0/2] pwm_mtk_disp suspend resume issue fix
Date: Mon, 16 Dec 2019 15:01:21 +0800
Message-ID: <20191216070123.114719-1-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: FD417AFFB53D0E358027859FF6FDC788B0702CA0534DA0C3FEF7EDAD6D821C6A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_231132_603775_247D46F2 
X-CRM114-Status: UNSURE (   4.17  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jitao Shi <jitao.shi@mediatek.com>, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes since to v1:
 - Edit commit msg.
 - Remove the register trigger in probe.
 - Rebase to v5.5-rc1.

Changes in patches:
 - match pwm_mtk_disp clock when suspend/resume
 - trigger pwm_mtk_disp reg working after config

Jitao Shi (2):
  pwm: fine tune pwm-mtk-disp clock control flow
  pwm/mtk_disp: move the reg enable trigger in config

 drivers/pwm/pwm-mtk-disp.c | 63 ++++++++++++--------------------------
 1 file changed, 19 insertions(+), 44 deletions(-)

-- 
2.21.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
