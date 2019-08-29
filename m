Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B234EA0F15
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 03:48:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Sq8CSx4IlR9wyCvh4Ex1E4Y0CTvt3TLMYDxwFaXcSkI=; b=nUK21o19dZMzgf
	37pqwFxvpWFvk/NANKUCh+vgQfoY6VqyANsgrj9xtoON0Es5S0bPwwLUyCemIr/hqLoDUk7+dkpDG
	tIm0bV0R/SVn4U87o9oNL5/afObVF7Dt2EtJ/agDgdLiLkBbPDICzN8q28OaAL9uq4u4ishzUxYKm
	RIy1H/66pTwtFUHBII9VsTLBFNeoaoagi9JJmaWypquWoFL8vjq/CujGbSzz9D79SgprsX7E1f3YQ
	woNZTPNpUV8NaQN5e0igtVxWg/vVLae3sx65Sr57u1mc5G9vkFOvhQy7wNL7Zk5qeIGDALj2m9MI+
	O8cGQ/BQRInhyI/TbEWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i39Y9-0007pY-D6; Thu, 29 Aug 2019 01:48:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i39Xz-0007p7-4S; Thu, 29 Aug 2019 01:48:24 +0000
X-UUID: 0faae6fe92c5485d95e21c519c762392-20190828
X-UUID: 0faae6fe92c5485d95e21c519c762392-20190828
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1365716034; Wed, 28 Aug 2019 17:48:28 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 18:48:26 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 09:48:25 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 29 Aug 2019 09:48:25 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, CK HU
 <ck.hu@mediatek.com>
Subject: [PATCH v14 00/10] support gce on mt8183 platform
Date: Thu, 29 Aug 2019 09:48:06 +0800
Message-ID: <20190829014817.25482-1-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_184823_178810_CBB6A6AB 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Houlong Wei <houlong.wei@mediatek.com>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 linux-mediatek@lists.infradead.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes since v13:
 - separate poll function as poll w/ & w/o mask function
 - directly pass inst into append_command function instead
   of returns a pointer
 - fixup coding style
 - rebase onto 5.3-rc1

Changes since v12:
 - clear the value of command ptr address
 - fixup some typo and remove unused define

Changes since v11:
 - correct some data type to avoid type conversion

Changes since v10:
 - remove subsys-cell from gce device node
 - use of_parse_phandle_with_fixed_args instead of
   of_parse_phandle_with_args

Changes since v8 and v9:
 - change the error return code in cmdq_dev_get_client_reg()

Changes since v7:
 - remove the memory allocation out of cmdq_dev_get_client_reg()
 - rebase onto 5.2-rc1

Changes since v6:
 - remove cmdq_dev_get_event function and gce event property
 - separate some changes to indepentent patch
 - change the binding document related to gce-client-reg property

Changes since v5:
 - fix typo
 - remove gce-event-name form the dt-binding
 - add reasons in commit message

Changes since v4:
 - refine the architecture of the packet encoder function
 - refine the gce enevt property
 - change the patch's title

Changes since v3:
 - fix a typo in dt-binding and dtsi
 - cast the return value to right format

Changes since v2:
 - according to CK's review comment, change the property name and
   refine the parameter
 - change the patch's title
 - remove unused property from dt-binding and dts

Changes since v1:
 - add prefix "cmdq" in the commit subject
 - add dt-binding document for get event and subsys function
 - add fix up tag in fixup patch
 - fix up some coding style (alignment)

MTK will support gce function on mt8183 platform.
  dt-binding: gce: add gce header file for mt8183
  mailbox: mediatek: cmdq: support mt8183 gce function
  arm64: dts: add gce node for mt8183

Besides above patches, we refine gce driver on those patches.
  mailbox: mediatek: cmdq: move the CMDQ_IRQ_MASK into cmdq driver data
  mailbox: mediatek: cmdq: clear the event in cmdq initial flow

In order to enhance the convenience of gce usage, we add new helper functions and refine the method of instruction combining.
  dt-binding: gce: remove thread-num property
  dt-binding: gce: add binding for gce client reg property
  soc: mediatek: cmdq: define the instruction struct
  soc: mediatek: cmdq: add polling function
  soc: mediatek: cmdq: add cmdq_dev_get_client_reg function

Bibby Hsieh (10):
  dt-binding: gce: remove thread-num property
  dt-binding: gce: add gce header file for mt8183
  dt-binding: gce: add binding for gce client reg property
  mailbox: mediatek: cmdq: move the CMDQ_IRQ_MASK into cmdq driver data
  mailbox: mediatek: cmdq: support mt8183 gce function
  mailbox: mediatek: cmdq: clear the event in cmdq initial flow
  soc: mediatek: cmdq: define the instruction struct
  soc: mediatek: cmdq: add polling function
  soc: mediatek: cmdq: add cmdq_dev_get_client_reg function
  arm64: dts: add gce node for mt8183

 .../devicetree/bindings/mailbox/mtk-gce.txt   |  23 ++-
 arch/arm64/boot/dts/mediatek/mt8183.dtsi      |  10 +
 drivers/mailbox/mtk-cmdq-mailbox.c            |  18 +-
 drivers/soc/mediatek/mtk-cmdq-helper.c        | 136 +++++++++++---
 include/dt-bindings/gce/mt8183-gce.h          | 175 ++++++++++++++++++
 include/linux/mailbox/mtk-cmdq-mailbox.h      |  14 ++
 include/linux/soc/mediatek/mtk-cmdq.h         |  56 +++++-
 7 files changed, 390 insertions(+), 42 deletions(-)
 create mode 100644 include/dt-bindings/gce/mt8183-gce.h

-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
