Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8721F9574
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 13:42:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IXoc9OXKxiRWmksuZPneu3hukz3rypGYKlVyRLAVSmY=; b=miRey1zgbvSd6x
	x5BMsqtaHcBHTaxFahh44YQOf8pSZ+V0F5hXgxTCHPhVQfKYznuJ1/Zl5uEi69crgZTbWEXy52P2F
	w2oAIBu+aXZzR6E9jKgW3a9LSGVplVAy+hOARO58VvZ//EokJog4NcLuop8v+dJhLX7lZym7RA4GZ
	4yJulKEXU+pcFhisnCiY/I3vb7dQicIhoOqGJNawSSl/9erXpJuE4hU2WpXyANOZ0788uQiovoaZy
	/HNvy9P4MTQBwfTFEgR61uPG+tbP2CzGK7GS3xKGFQhCVmYtYHIJJBbjiCNAjZr8w8mn4MdwnZIMm
	46eeovcjCtyvcwNpynyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jknVf-0003Wj-P7; Mon, 15 Jun 2020 11:42:39 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jknVS-0003Vd-CF; Mon, 15 Jun 2020 11:42:27 +0000
X-UUID: 778cd13d7f1344caaac70a030b8fd222-20200615
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=Mb9ECmQLe0cOF3EpJy9V6PKEB18+T/abvWwavIKQcog=; 
 b=cQI9Bg1sMGyRgvhMx9OYnaqyRGdh//MMMTJWq8nxQeqRIzvk9X8VCGMA3h4iY/ZS2Bgb++A0sRUCeFtg7A+U1+eQecWp7GcK08UB2oq3yyTMHDcdaYYkeDH1mtJtHiH90ghLa+CsmT7LVUh5nJ3iTuouPfjK8Fj7poxM5xW892g=;
X-UUID: 778cd13d7f1344caaac70a030b8fd222-20200615
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <fengping.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 981966433; Mon, 15 Jun 2020 03:42:19 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 04:42:17 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 19:42:08 +0800
Received: from localhost.localdomain (10.15.43.140) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 15 Jun 2020 19:42:09 +0800
From: Fengping Yu <fengping.yu@mediatek.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>, "Yingjoe
 Chen" <yingjoe.chen@mediatek.com>, Pavel Machek <pavel@ucw.cz>, "Jacek
 Anaszewski" <jacek.anaszewski@gmail.com>
Subject: [PATCH v1] Add vibrator driver support for Mediatek SoCs 
Date: Mon, 15 Jun 2020 19:42:00 +0800
Message-ID: <20200615114203.116656-1-fengping.yu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: F5D2DB50CACE471C1E30A4653E561A353A9A15052C4081FBD7B7B57F381E53742000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_044226_427560_81B879F1 
X-CRM114-Status: UNSURE (   6.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-input@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


This serials adds regulator vibrator driver for Mediatek SoCs.

fengping.yu (3):
  dt-bindings:Add vibrator devicetree documentation
  drivers: input: misc: Add mtk vibrator driver
  defconfig: Add CONFIG_INPUT_REGULATOR_VIBRATOR=m

 .../bindings/input/regulator-vibrator.yaml    |  65 +++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/input/misc/Kconfig                    |  10 +
 drivers/input/misc/Makefile                   |   1 +
 drivers/input/misc/regulator-vibrator.c       | 422 ++++++++++++++++++
 5 files changed, 499 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/regulator-vibrator.yaml
 create mode 100644 drivers/input/misc/regulator-vibrator.c

-- 
2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
