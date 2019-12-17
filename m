Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D511222E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 05:12:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZvMY/CjgPYnUKN9K77gdZgLIKSjJ/iwEwuaidCwxDJw=; b=mX3lyqL6SvL/ET
	xS5R8bWlgcZUmdrugRwmQ4+l5Rj6Rvi0f4qsVmbfjXUEFTWG973JodOhOQF6XmXyFpmltzDHhdCJE
	o7Hj3qpHygCAs9lzoGZA7byjKUQtCFVyUDspXXw+2iFcoK5DB9tjPXT0vocteQgz2T1gwvXOJ/3nx
	UrduJ1Cb9QwA59vMnjR+wqNiptJs1FMa6R6/8NM8Ga/pOURhnT186+qp5mNYl0u8L+fXfQALjUCZy
	Tx88IundosA1r/dXLKim5EzRqYPMZO8wgxsGQQ0dXOp7D8jNAhEi9F5JkOemMtMoQETBUbLCJ5Yuf
	LT8ZD/X/VlODme9e97JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih4E6-0002D8-Qu; Tue, 17 Dec 2019 04:12:50 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih4Dy-0002C5-7W; Tue, 17 Dec 2019 04:12:43 +0000
X-UUID: d084173e867a4c5ba4e8a9d01c68b8c1-20191216
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=LcLrXW4EHYAgtWmQrzXHi1JpCH+lQx2E8V9kumhc1ek=; 
 b=ZIs74pl5lssvFLZCzD4ajsXIu7IcqrRovCUTYrRZuSmWkbhdneIG4hEoZyjqTr8txuA/BUgPzn4lOzFAcXLMwyP8WHMzeNBFjH/HoqFm2OW+UQmGzc2RyfkBLgu79oq7SnHNn4vb1HcrhgxXh6mQUvIF7kN6U0oDpyZCamHiqE0=;
X-UUID: d084173e867a4c5ba4e8a9d01c68b8c1-20191216
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1183301276; Mon, 16 Dec 2019 20:12:37 -0800
Received: from MTKMBS33N1.mediatek.inc (172.27.4.75) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Dec 2019 20:02:53 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33N1.mediatek.inc
 (172.27.4.75) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 17 Dec 2019 12:01:37 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Tue, 17 Dec 2019 12:02:10 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Thierry Reding <thierry.reding@gmail.com>, Uwe Kleine-Koenig
 <u.kleine-koenig@pengutronix.de>, Matthias Brugger <matthias.bgg@gmail.com>,
 <linux-pwm@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, CK Hu <ck.hu@mediatek.com>
Subject: [PATCH v4 0/2] clocks aren't disable when pwm_mtk_disp suspend 
Date: Tue, 17 Dec 2019 12:02:35 +0800
Message-ID: <20191217040237.28238-1-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: C18B4FA8F365099FC353D7DEAA8518A47E29E60775599306885E0B2F2365AEAE2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_201242_288965_46C897EB 
X-CRM114-Status: UNSURE (   5.30  )
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
Cc: Jitao Shi <jitao.shi@mediatek.com>, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes since to v3:
 - Add prefix "pwm: mtk_disp" in commit msg title.

Changes since to v2:
 - Edit commit msg.

Changes since to v1:
 - Edit commit msg.
 - Remove the register trigger in probe.
 - Rebase to v5.5-rc1.

Changes in patches:
 - match pwm_mtk_disp clock when suspend/resume
 - trigger pwm_mtk_disp reg working after config

Jitao Shi (2):
  pwm: mtk_disp: fix pwm clocks not poweroff when disable pwm
  pwm: mtk_disp: keep the trigger register after pwm setting.

 drivers/pwm/pwm-mtk-disp.c | 63 ++++++++++++--------------------------
 1 file changed, 19 insertions(+), 44 deletions(-)

-- 
2.21.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
