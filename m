Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC0B114B8F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 05:03:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mi7bYh0jG8NuJHNtanUGmzLh7yqQ6jqJxxnzKD5/dMc=; b=aMAkjRZkFttGY8
	p6X9uU4kKAODBMheyu/YXOi7yLzSFPM0jIard54nTqAj89KvdsADOJaCk2xsxvZjwRvZ1GC2OclMM
	U8jN17WDwNk8h29FbNnrTFkgGfMY80g1h+vp+P+JH4Qid7M3EtZYhVzecAJFCSnIxUMO3dpUASjGQ
	HK2qtgyhs5bKlBpR92MwP377xo7Jy7XBztN+XaiTFc2CbbauFjsuluZkDszM/18rufEU6brOSZhoS
	8LT3HtwQGi8Go4iY4aWSetAWDeUVyIU5wrZdoZm/GSjTFIhhkttdfA1pfGj546opHfEcRYqqp/1EZ
	l3gm2gbgswmtRvLINlQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id4pb-0003DE-Jk; Fri, 06 Dec 2019 04:03:03 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id4pU-0003CJ-DI; Fri, 06 Dec 2019 04:02:57 +0000
X-UUID: 226768999fd942c885a98923d63a7edc-20191205
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=xM1L7Jfwq/gv/BGLE5pId5BVEEmzAIvJRnTMFQtcXVo=; 
 b=je2GzQ3w3wIwOGnb46+d1zPcyyvWnRWZMqZfYDE8fPemc+HUV6fCuras15LohSMUMJncbRVFqO7f28eTDB2OLKvZabOlwoT2Rh0mvtOEqPn/fwwIOfBSpRsgkaG8nk88xB4jr2DyGptKNOxZuHFYexnGYp757QUS91gCIlYQFzI=;
X-UUID: 226768999fd942c885a98923d63a7edc-20191205
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 786847033; Thu, 05 Dec 2019 20:02:49 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Dec 2019 20:03:41 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 6 Dec 2019 12:02:33 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 6 Dec 2019 12:02:32 +0800
Message-ID: <1575604966.6151.1.camel@mtksdaap41>
Subject: Re: [PATCH v2 06/14] soc: mediatek: cmdq: return send msg error code
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
Date: Fri, 6 Dec 2019 12:02:46 +0800
In-Reply-To: <1574819937-6246-8-git-send-email-dennis-yc.hsieh@mediatek.com>
References: <1574819937-6246-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1574819937-6246-8-git-send-email-dennis-yc.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_200256_456633_8AF68024 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Houlong Wei <houlong.wei@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-11-27 at 09:58 +0800, Dennis YC Hsieh wrote:
> Return error code to client if send message fail,
> so that client has chance to error handling.
> 
This patches seems like a fix patch.
Please add fixes, thanks.

Bibby
> Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-cmdq-helper.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> index 274f6f311d05..8421b4090304 100644
> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> @@ -353,11 +353,11 @@ int cmdq_pkt_flush_async(struct cmdq_pkt *pkt, cmdq_async_flush_cb cb,
>  		spin_unlock_irqrestore(&client->lock, flags);
>  	}
>  
> -	mbox_send_message(client->chan, pkt);
> +	err = mbox_send_message(client->chan, pkt);
>  	/* We can send next packet immediately, so just call txdone. */
>  	mbox_client_txdone(client->chan, 0);
>  
> -	return 0;
> +	return err;
>  }
>  EXPORT_SYMBOL(cmdq_pkt_flush_async);
>  

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
