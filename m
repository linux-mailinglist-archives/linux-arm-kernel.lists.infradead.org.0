Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B5317D374
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 11:55:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=orDjyD3k5VRbmK17Blou22ko7dIs+aqrqWW/XmM3zG0=; b=lA7Hyv1vw2RGpT
	btqeysCZbys4KlKIYH5bHadCY+S+thauLmY+gE51ahmqwbA7ZuXFiabCcN5JmUReNpUJ+qKnZV/RM
	QqlZ/jB4kBmnbmFMn566thZapaeNuFne8Zn4Y7/6n8ee353dSJA2iLcoPzEs2KIlphx6a9Atyf1Ar
	7IkbPNWZb8XKQPMxnw8n33zlq4S+NCQMhCIJYtA6aEURfyW2MJ/SIP3BDVPzqmLCZY0o1KWYEYZE1
	KYnoqVVFgkGlfiSYLGLxDOv0Lu0A61mXdWQIWLMKibQD4WaLpK+bv4kgN1A/tvugn1GF53+XoqUrT
	6uaS5855e2g9nijje9tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAtaL-00087h-Jl; Sun, 08 Mar 2020 10:55:05 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAtYX-0006Y4-3N; Sun, 08 Mar 2020 10:53:17 +0000
X-UUID: e119f701f6cd488c872aa35969c83cbd-20200308
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=GxTjmEm049B3GShhfkpoy+9dkylx+QGAxLN83d+jIDk=; 
 b=dG5A6N4VprMwPggjgqUYJYQegrZKzv6IJp9Dl76oICqgRdCJ0jgoN7MAtPmBLbIc3rY0bQo/AK6FyNbre9dUPleeeZCNJ9cNUGtgmPpUdY4mafXgzMAscde3bOPS5LiC3/UGLhkaMm8F0PwSTyDFbwlmUM/6PZpVSrC4tqf9g60=;
X-UUID: e119f701f6cd488c872aa35969c83cbd-20200308
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1481110567; Sun, 08 Mar 2020 02:53:01 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 8 Mar 2020 03:53:00 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 8 Mar 2020 18:51:55 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Sun, 8 Mar 2020 18:52:58 +0800
From: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Jassi Brar
 <jassisinghbrar@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, "David
 Airlie" <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH v5 00/13] support gce on mt6779 platform 
Date: Sun, 8 Mar 2020 18:52:42 +0800
Message-ID: <1583664775-19382-1-git-send-email-dennis-yc.hsieh@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_035313_149334_0638E146 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 HS Liao <hs.liao@mediatek.com>, linux-mediatek@lists.infradead.org,
 Houlong Wei <houlong.wei@mediatek.com>, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 CK Hu <ck.hu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch support gce on mt6779 platform.

Change since v4:
- do not clear disp event again in drm driver
- symbolize value 1 to jump relative

Change since v3:
- refine code for local variable usage
- use cmdq error code to consistent with current design
- return error directly after send if error code return
- also modify drm driver which uses cmdq_pkt_wfe api
- add finalize in drm driver

[... snip ...]



Dennis YC Hsieh (13):
  dt-binding: gce: add gce header file for mt6779
  mailbox: cmdq: variablize address shift in platform
  mailbox: cmdq: support mt6779 gce platform definition
  mailbox: mediatek: cmdq: clear task in channel before shutdown
  soc: mediatek: cmdq: return send msg error code
  soc: mediatek: cmdq: add assign function
  soc: mediatek: cmdq: add write_s function
  soc: mediatek: cmdq: add read_s function
  soc: mediatek: cmdq: add write_s value function
  soc: mediatek: cmdq: export finalize function
  soc: mediatek: cmdq: add jump function
  soc: mediatek: cmdq: add clear option in cmdq_pkt_wfe api
  soc: mediatek: cmdq: add set event function

 .../devicetree/bindings/mailbox/mtk-gce.txt   |   8 +-
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c       |   3 +-
 drivers/mailbox/mtk-cmdq-mailbox.c            | 101 ++++++--
 drivers/soc/mediatek/mtk-cmdq-helper.c        | 144 +++++++++++-
 include/dt-bindings/gce/mt6779-gce.h          | 222 ++++++++++++++++++
 include/linux/mailbox/mtk-cmdq-mailbox.h      |  10 +-
 include/linux/soc/mediatek/mtk-cmdq.h         |  94 +++++++-
 7 files changed, 549 insertions(+), 33 deletions(-)
 create mode 100644 include/dt-bindings/gce/mt6779-gce.h

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
