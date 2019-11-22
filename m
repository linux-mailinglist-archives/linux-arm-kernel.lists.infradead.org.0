Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E936D1067A2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 09:16:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o3CjnV5xtkUBxoAYxPmTXe+2E2mJpKD5EqT+GZXAP4c=; b=YVLlF+U2wrJjqM
	EdtLwWpJILJPO84uZAPNeyhh7LhUYvU+5WU0yDhFCZ/NJ3a9LuduYe8Px/DZuDzBjecnhOTrG+bih
	WCXaCiXREdHChg6UKS6HqKwWg1kqCUNDju1aFEY0XtS+Sqxi69nvCbqb4JSLQYqRiZ21IPMzNFiPI
	HdJ7J9AHitecaO/joNb+aAMJBc5auSswVxM/CW62aEbj+Fy2Tc1ftTxxqL32Oyxlpu5sqMwjktBe1
	HLjEQ65QwBRv3oqDhLywbxck3s+kQ8/NwiWmmkyPKpElgBgzGxOWs96z5ZWvlO/42zP7CwpdUKNYu
	5anHfBw+1r5GKJKfXV0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY46w-0000BQ-Cp; Fri, 22 Nov 2019 08:16:14 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY46l-0000Av-Vn; Fri, 22 Nov 2019 08:16:05 +0000
X-UUID: 9b2bc4a688d046fca68a704e1b7cce0f-20191122
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=K2QceGAFr4kSuhEVcqRkxVbwPBJiY5InoLtmLU20XiU=; 
 b=lpZUXKuDJAQewYko3iuJb+KSPvHi3BagShZhozXm62IM7qCD1TC0FVAyl6PJ0pdAw41ivgQky4F0iZIMByWd7SLXwXby6vm/FzDR5iQerHG/a4+4/Y8bjT70KX3cW8wamaUvCvVt2tONm1krCvbI/41Ozv4PlvwropZTuqsAf70=;
X-UUID: 9b2bc4a688d046fca68a704e1b7cce0f-20191122
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 725854769; Fri, 22 Nov 2019 00:15:58 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 22 Nov 2019 00:06:21 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 22 Nov 2019 16:05:51 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 22 Nov 2019 16:06:21 +0800
Message-ID: <1574409958.19450.1.camel@mtksdaap41>
Subject: Re: [PATCH v17 1/6] soc: mediatek: cmdq: fixup wrong input order of
 write api
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Fri, 22 Nov 2019 16:05:58 +0800
In-Reply-To: <20191121015410.18852-2-bibby.hsieh@mediatek.com>
References: <20191121015410.18852-1-bibby.hsieh@mediatek.com>
 <20191121015410.18852-2-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_001604_030324_C8DF1BB3 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Nicolas
 Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Bibby:

On Thu, 2019-11-21 at 09:54 +0800, Bibby Hsieh wrote:
> Fixup a issue was caused by the previous fixup patch.
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Fixes: 1a92f989126e ("soc: mediatek: cmdq: reorder the parameter")
> 
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-cmdq-helper.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> index 7aa0517ff2f3..3c82de5f9417 100644
> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> @@ -155,7 +155,7 @@ int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u8 subsys,
>  		err = cmdq_pkt_append_command(pkt, CMDQ_CODE_MASK, 0, ~mask);
>  		offset_mask |= CMDQ_WRITE_ENABLE_MASK;
>  	}
> -	err |= cmdq_pkt_write(pkt, value, subsys, offset_mask);
> +	err |= cmdq_pkt_write(pkt, subsys, offset_mask, value);
>  
>  	return err;
>  }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
