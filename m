Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 021FC21281
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 05:33:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e0gNH3ZJvMFvRGvbSRb+U7b63Q+YS6pLzsvDIr9mk8g=; b=JLGzx6Zi3XGa+s
	JsEN2dHSR/cV0C76CcJfsUni1Ms3jtuX4N/l/W+vgyTvA3ETRGl5pl7H7oOzW9/qoAxowDzhzBYQF
	ni0KZdk0/HSMbl5maYYE+mHBbZXYNYdCn3VE9lcNzA5UBjhVWkyDI5ZafUcSwQ4j9yIpyCmO4uCju
	vcXEF1n7Bnsequz/VKrGr2OVd09cAsxnWkV/1MnpelXjxXMoI6T29KlyyKYo45rR8TQbVliMDp17n
	kyshmtIN3bF/jbQoQGMIOJCRVxikps0r/mmSUbojydRKqt7SIT4dgQdRvDr64Qd0jU4OxJeoJcNVC
	kvUgKWUo1unpBu1lUYtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRTcL-0002A2-NA; Fri, 17 May 2019 03:33:09 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRTcE-00029g-KK; Fri, 17 May 2019 03:33:04 +0000
X-UUID: 1ec8cd7c67524999a4453740e75364c9-20190516
X-UUID: 1ec8cd7c67524999a4453740e75364c9-20190516
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1642880539; Thu, 16 May 2019 19:32:49 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 20:32:48 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 17 May 2019 11:32:39 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 17 May 2019 11:32:39 +0800
Message-ID: <1558063959.14401.18.camel@mtksdaap41>
Subject: Re: [PATCH v6 08/12] soc: mediatek: cmdq: define the instruction
 struct
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Fri, 17 May 2019 11:32:39 +0800
In-Reply-To: <20190516090224.59070-9-bibby.hsieh@mediatek.com>
References: <20190516090224.59070-1-bibby.hsieh@mediatek.com>
 <20190516090224.59070-9-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 9C00DE444E660D85CDFD1DC30AAFFABEDB58AFC441998971D133D2E68A8E916E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_203302_671905_6F214478 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Philipp Zabel <p.zabel@pengutronix.de>, srv_heupstream@mediatek.com,
 Daoyuan Huang <daoyuan.huang@mediatek.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Daniel Kurtz <djkurtz@chromium.org>,
 Houlong Wei <houlong.wei@mediatek.com>, YT
 Shen <yt.shen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Dennis-YC Hsieh
 <dennis-yc.hsimediatek/mtkcam/drv/fdvt/4.0/cam_fdvt_v4l2.cppeh@mediatek.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Jiaguang Zhang <jiaguang.zhang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, ginny.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Bibby:

On Thu, 2019-05-16 at 17:02 +0800, Bibby Hsieh wrote:
> Define a instruction structure for gce driver to append command.
> This structure can make the client's code more readability.
> 
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-cmdq-helper.c   | 113 +++++++++++++++--------
>  include/linux/mailbox/mtk-cmdq-mailbox.h |   2 +
>  include/linux/soc/mediatek/mtk-cmdq.h    |  14 +--
>  3 files changed, 84 insertions(+), 45 deletions(-)
> 

[snip]

>  
>  /**
>   * cmdq_pkt_write_mask() - append write command with mask to the CMDQ packet
>   * @pkt:	the CMDQ packet
> - * @value:	the specified target register value
>   * @subsys:	the CMDQ sub system code
>   * @offset:	register offset from CMDQ sub system
> + * @value:	the specified target register value
>   * @mask:	the specified target register mask
>   *
>   * Return: 0 for success; else the error code is returned
>   */
> -int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u32 value,
> -			u32 subsys, u32 offset, u32 mask);
> +int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u8 subsys, u16 offset,
> +			u32 value, u32 mask);

You have do two things for this interface: one is reordering the
parameter, another one is changing type of subsys from u32 to u8.

Define the instruction struct is not necessary to change the order and
type. I would like you to separate these two things to another patches.
So the patch sequence may be:

1. Reorder parameter of cmdq_pkt_write_mask()
2. Change subsys type to u8
3. define the instruction struct

Regards,
CK

>  
>  /**
>   * cmdq_pkt_wfe() - append wait for event command to the CMDQ packet
> @@ -88,7 +88,7 @@ int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u32 value,
>   *
>   * Return: 0 for success; else the error code is returned
>   */
> -int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u32 event);
> +int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event);
>  
>  /**
>   * cmdq_pkt_clear_event() - append clear event command to the CMDQ packet
> @@ -97,7 +97,7 @@ int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u32 event);
>   *
>   * Return: 0 for success; else the error code is returned
>   */
> -int cmdq_pkt_clear_event(struct cmdq_pkt *pkt, u32 event);
> +int cmdq_pkt_clear_event(struct cmdq_pkt *pkt, u16 event);
>  
>  /**
>   * cmdq_pkt_flush_async() - trigger CMDQ to asynchronously execute the CMDQ



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
