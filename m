Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF6416022B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 07:15:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w0PjhnfE6wm+zf1JRXajFWyUwL47LSOxW11VN2159L8=; b=bYFYAHNv2xDpXo
	r4gC7AaHQSoiVlbZI8gLrEDKNb5EQtNRS/00tsKKdRjCcQDq991KYcNSSg9QrTq49e1vPrrF8B+jh
	TJXeRGPN+yffuarI3D+QDlN/C+ImZnsy24U1wk9BPfEsmK1XfiIG+btJyck0wQHAb4udDqQO4Ofmm
	AL/0XJp5T4AKNtuiImhz7mwUt8s8ADR9M5zuJ7q5iPUx/XBq/wiMqQVAELBu4WS0XYnPmsgJYHvVT
	fI4HI5avXHWMZVmal34S3SoWqmoycYJ7HBC4ClVyOLzMn1+td7aVSBY5BSpVIHQjJOAV/BaCA8ZeT
	UCdGeDmsCSU9a13jzFXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3DDJ-0005z6-CI; Sun, 16 Feb 2020 06:15:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3DCk-0004Zh-J8; Sun, 16 Feb 2020 06:15:00 +0000
X-UUID: 558feafba4cb44a7ab6381b22c49614f-20200215
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=TbzTN9VDopWuQM9WqUfKWtNwI/MMB07r6MYptBp9CNE=; 
 b=EqisWo6JUlLLexi9fzEuHafiSWQWm2RYkmAktBidIVttKVLSonFtH9+wSEQicP3L3Gr4PshTDcFr8xdEMttdEfB6R23G8rdUMoJYZGfCaoRbNWfmdakfQi70pwWCrAgJaSg2q4a5mSAbqua+G9WXHBC/O0LMs//h7EfCu6foRu8=;
X-UUID: 558feafba4cb44a7ab6381b22c49614f-20200215
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <argus.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 195984150; Sat, 15 Feb 2020 22:14:44 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 15 Feb 2020 22:14:41 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 16 Feb 2020 14:13:52 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Sun, 16 Feb 2020 14:14:32 +0800
From: Argus Lin <argus.lin@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>
Subject: [PATCH v2 0/3] soc: mediatek: pwrap: add pwrap driver for MT6779 SoCs
Date: Sun, 16 Feb 2020 14:14:36 +0800
Message-ID: <1581833679-4319-1-git-send-email-argus.lin@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_221458_639154_6ADEB618 
X-CRM114-Status: UNSURE (   8.43  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, argus.lin@mediatek.com,
 wsd_upstream@mediatek.com, Chenglin Xu <chenglin.xu@mediatek.com>, Sean
 Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 henryc.chen@mediatek.com, flora.fu@mediatek.com,
 Christophe Jaillet <christophe.jaillet@wanadoo.fr>,
 linux-mediatek@lists.infradead.org, Chen Zhong <chen.zhong@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

changes since v1:
1. Modify pwrap_mt6779 arb_en_all, int_en_all, and wdt_src value
when initialization.
2. Remove PWRAP_WDT_UNIT, PWRAP_WDT_UNIT, PWRAP_INT_EN, and
PWRAP_CAP_INT1_EN registered value check, we will initialize them
again at kernel level.

Here's version 1 of the patch series, include 3 patches:
1. Add compatible for MT6779 pwrap
2. Add pwrap driver for MT6779 SoCs. Keep PWRAP_HIPRIO_ARB_EN,
PWRAP_WDT_UNIT, and PWRAP_WDT_SRC_EN value if it has initialized.
When we enable interrupt flag, read current value then do logical
OR opersion with wrp->master->int_en_all.
3. Add MT6359 support for MT6779 SoCs.

Argus Lin (3):
  dt-bindings: pwrap: mediatek: add pwrap support for MT6779
  soc: mediatek: pwrap: add pwrap driver for MT6779 SoCs
  soc: mediatek: pwrap: add support for MT6359 PMIC

 .../devicetree/bindings/soc/mediatek/pwrap.txt     |   1 +
 drivers/soc/mediatek/mtk-pmic-wrap.c               | 128 +++++++++++++++++++++
 2 files changed, 129 insertions(+)

--
1.8.1.1.dirty
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
