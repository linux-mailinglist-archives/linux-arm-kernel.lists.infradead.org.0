Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DBBE11A101
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 03:05:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IDHaFFyP2J+5nUo9qMOQ7pW40Y4gehoWZ4JWTXaCjQc=; b=bunpFyQr0cjv4p
	84K+zwZ+kIgYoENtK3cd3kPBFA/VqX0hwJkrSTcJdMh+gm+qeGqX1DbdcAZ1+2mi5cPcSSAuEiJwB
	j/bFrs0w7HG0/MXtGfYM1jCuatAZmHvhKZMBUPUn6rQaxHyuOTlZraz54Qus9M5GZLK7aGdfj1XMP
	zCurW0I1OYTg7hG2j7FfGVO17W1WZu6mqbrAtrT0HeUX66s+UXM6AlP/cXZznfsJNGeyLjN5+UlXZ
	SkufzDAbnS9E1qUunX67FZwVZS5rqnv1irxjT7ALJbI9y8vpJCMF/B6mj7djd4Y3DpvgfUVhy6Tuz
	rMvru0YPafb0xBVU/hwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ierNN-0001JE-NQ; Wed, 11 Dec 2019 02:05:17 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ierN6-000197-Lp; Wed, 11 Dec 2019 02:05:02 +0000
X-UUID: b34ea2cb1f1047e3987e63d7b74740ca-20191210
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=wg0RWtXnuazbnyWqaYUsInjXzTF5INnndGMTSvzSNXg=; 
 b=VY3oVp/kL+4z2JOIh6bbMIsWlTardtrptRq8k9S4xbwlHMFQhmFX6w1QBYXwA4lPtmAOBafnMXubU2L5qZncv3+adK1yTBkxszBKyb7X1+KbwN9wdT+5UAnkAqyyIE7/RrSrkfKFhR1P8neRM0mH7qGyXWVTwSlhjrWfoAfzhFU=;
X-UUID: b34ea2cb1f1047e3987e63d7b74740ca-20191210
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 929821085; Tue, 10 Dec 2019 18:04:58 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Dec 2019 18:05:59 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 10:04:22 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 11 Dec 2019 10:04:43 +0800
Message-ID: <1576029887.19653.17.camel@mtksdaap41>
Subject: Re: [PATCH v2 13/14] soc: mediatek: cmdq: add wait no clear event
 function
From: CK Hu <ck.hu@mediatek.com>
To: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
Date: Wed, 11 Dec 2019 10:04:47 +0800
In-Reply-To: <1574819937-6246-15-git-send-email-dennis-yc.hsieh@mediatek.com>
References: <1574819937-6246-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1574819937-6246-15-git-send-email-dennis-yc.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_180500_720670_64C0F5CC 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Houlong Wei <houlong.wei@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Dennis:

On Wed, 2019-11-27 at 09:58 +0800, Dennis YC Hsieh wrote:
> Add wait no clear event function in cmdq helper functions to wait specific
> event without clear to 0 after receive it.
> 
> Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-cmdq-helper.c | 15 +++++++++++++++
>  include/linux/soc/mediatek/mtk-cmdq.h  | 10 ++++++++++
>  2 files changed, 25 insertions(+)
> 
> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> index 10a9b4481e58..6f270fadfb50 100644
> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> @@ -330,6 +330,21 @@ int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event)
>  }
>  EXPORT_SYMBOL(cmdq_pkt_wfe);
>  
> +int cmdq_pkt_wait_no_clear(struct cmdq_pkt *pkt, u16 event)
> +{
> +	struct cmdq_instruction inst = { {0} };
> +
> +	if (event >= CMDQ_MAX_EVENT)
> +		return -EINVAL;
> +
> +	inst.op = CMDQ_CODE_WFE;
> +	inst.value = CMDQ_WFE_WAIT | CMDQ_WFE_WAIT_VALUE;
> +	inst.event = event;
> +
> +	return cmdq_pkt_append_command(pkt, inst);
> +}
> +EXPORT_SYMBOL(cmdq_pkt_wait_no_clear);

So the wait command has two version, one is wait and then clear event,
another is wait and not clear event. The name of cmdq_pkt_wfe() is 'wait
for event', so it's trivial that we think it does not clear event. I've
three suggestion for this:

1. Let cmdq_pkt_wfe() wait and not clear event, and
cmdq_pkt_wfe_clear_event() wait and clear event.

or 
2. Let cmdq_pkt_wfe() has a parameter to indicate that clear event or
not after wait.

or
3. Let cmdq_pkt_wfe() wait and not clear event, and not provide wait and
clear event version. For DRM and MDP, I think both just need wait and
not clear event.

Regards,
CK


> +
>  int cmdq_pkt_clear_event(struct cmdq_pkt *pkt, u16 event)
>  {
>  	struct cmdq_instruction inst = { {0} };
> diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> index d15d8c941992..40bc61ad8d31 100644
> --- a/include/linux/soc/mediatek/mtk-cmdq.h
> +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> @@ -149,6 +149,16 @@ int cmdq_pkt_write_s_value(struct cmdq_pkt *pkt, dma_addr_t addr,
>   */
>  int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event);
>  
> +/**
> + * cmdq_pkt_wait_no_clear() - Append wait for event command to the CMDQ packet,
> + *			      without update event to 0 after receive it.
> + * @pkt:	the CMDQ packet
> + * @event:	the desired event type to wait
> + *
> + * Return: 0 for success; else the error code is returned
> + */
> +int cmdq_pkt_wait_no_clear(struct cmdq_pkt *pkt, u16 event);
> +
>  /**
>   * cmdq_pkt_clear_event() - append clear event command to the CMDQ packet
>   * @pkt:	the CMDQ packet

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
