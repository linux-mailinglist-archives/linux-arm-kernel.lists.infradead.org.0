Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A48DB1EF596
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 12:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yCeEgzO48eV937u57+034HfmP5BeBEwvjMooeUhvI2s=; b=QXXL1wDUCxhcUM
	1RL+LM5sIUX6O3grX7o0ewo9hM7Obr6KZME4ZMWdFkx5NkOXABMnmC3LMTwlfhYVIwDKjmO4wkcqL
	jWDID/pb4GeSuaOHuXxYcbQUkNBuW2gs+x2Dree/66NT2526YQyqBJN4Ah1wm6PpDlQJJfxABr+87
	PXwNU493Hwf+JXw2GoBg6/H1Win3WngqMJ4K9FjnJlc88yUGQQzehNAUeEfz+An5c+v6Pt9TRTkEK
	mNdr8m+91oFfI44dZs54rhjWS0B6paGsA5K2MmAh7JEB85zUQoYve4Zan0MloyeWgO3sN4sHQt8yM
	W3RuVLlpa4pVwx+HQlNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh9rP-0001hv-GA; Fri, 05 Jun 2020 10:46:03 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh9rI-0001h9-Sm; Fri, 05 Jun 2020 10:45:58 +0000
X-UUID: f8e53d073ecd4f318a146d9295b6dcc9-20200605
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=nsUntpG+2ZTGK4HrWe8pIq15nHkMfEaQcUq9M+NOtWk=; 
 b=ZziRepXD1Tc2tvW8UgCB9U8mMFj8HAhFyvII54fN0S5EPTBx0ntD9TZ9Jxgc6oMQi+wii8CRsxB8x9POeeJox6t0LZCwazYx5uJYvCREmw543rnnsapfKScKefLEbGZ793KXzKseHNCQ4P3zNQbhhoO7AsDOMFNjqEJ40LFE7XM=;
X-UUID: f8e53d073ecd4f318a146d9295b6dcc9-20200605
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <jiaxin.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 668679519; Fri, 05 Jun 2020 02:45:48 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 5 Jun 2020 03:35:51 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 5 Jun 2020 18:35:46 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 5 Jun 2020 18:35:45 +0800
From: Jiaxin Yu <jiaxin.yu@mediatek.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <tiwai@suse.com>,
 <matthias.bgg@gmail.com>, <hariprasad.kelam@gmail.com>
Subject: [PATCH v2 0/2] ASoC: mediatek: mt6358: support DMIC one-wire mode
Date: Fri, 5 Jun 2020 18:33:40 +0800
Message-ID: <1591353222-18576-1-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-TM-SNTS-SMTP: 8183516B6E5D2C2436F93EBC972FC14D6494A6210300ACC0EE968670B2FED9B22000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_034556_931816_BD8E2E9F 
X-CRM114-Status: UNSURE (   4.13  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alsa-devel@alsa-project.org, howie.huang@mediatek.com,
 linux-kernel@vger.kernel.org, Jiaxin Yu <jiaxin.yu@mediatek.com>,
 tzungbi@google.com, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

v2 changes:
	1. Uses a DT property to select DMIC mode instead of a mixer control.

v1 changes:
	1. Uses a mixer control to select DMIC mode.
	2. patchwork list:
		https://patchwork.kernel.org/patch/11578309

Jiaxin Yu (2):
  ASoC: mediatek: mt6358: support DMIC one-wire mode
  ASoC: dt-bindings: mediatek: mt6358: add dmic-mode property

 Documentation/devicetree/bindings/sound/mt6358.txt |  6 ++++++
 sound/soc/codecs/mt6358.c                          | 23 +++++++++++++++++++++-
 2 files changed, 28 insertions(+), 1 deletion(-)

-- 
1.8.1.1.dirty
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
