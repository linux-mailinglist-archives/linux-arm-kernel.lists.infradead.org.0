Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56454174726
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 14:50:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7jMljN1UhWvvGYiRUt1L6mRybg0+5f81qqWjosNCpDk=; b=IqIWstsN3ZIWZp
	YanCARGQWUnehoJaOX3wQe9JHluEGgfwXYosc7SoeflVaMEoxONdTVz84RXLW3CgS6tKu2Uun3ika
	5ZL57Orgqbv5l3Se12CZVcNE/ZkgphF7zYcBW9m0uCNCyOm+WvqK80eEqFGZvpPkSWwH+R8lUXBpD
	6EhEauUWAG1rd/cqUTaXiwdehgQpFaTDMa+SPCjiGkk87fJ6XPbG2AWfE2bGWUxTQSF3A9Ea4P5lA
	jOMGUVHYilyFD/6v4KE3wsxefX23BPAn1aseclvmLujJhckmhGo1WqlDFjBCYlWSdl/zEpjKkKsro
	1zQ9Opi6fmlvZg8rcXHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j82Vr-00033u-QN; Sat, 29 Feb 2020 13:50:39 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j82Vg-00032A-Sg; Sat, 29 Feb 2020 13:50:30 +0000
X-UUID: 69a25268b4fc44db861965f91c233a25-20200229
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=00XiYHa78TlbDkBS+pf5ukriX0Bv5XzT3h8NaBRlnxw=; 
 b=UHRrEmGDqvZET0sOWozlhuWKz7X0Dtl1avHzFDJbyWkk5kRabbDglcbg0U/xoSF8enWhLPJAJcjpwrodljPMNRbMZtEptkFkckymxOOwgGDwNKNTuV7zXP4jGNVXS2YSVMmaeCOYC9/bYGH/z5yQw37O34AVBPXFW0jkyIn+EPI=;
X-UUID: 69a25268b4fc44db861965f91c233a25-20200229
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2019321539; Sat, 29 Feb 2020 05:50:26 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 29 Feb 2020 05:42:36 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 29 Feb 2020 21:40:54 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 29 Feb 2020 21:41:25 +0800
Message-ID: <1582983708.21073.6.camel@mtkswgap22>
Subject: Re: [PATCH v3 05/13] soc: mediatek: cmdq: return send msg error code
From: Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>
Date: Sat, 29 Feb 2020 21:41:48 +0800
In-Reply-To: <1582904349.14824.19.camel@mtksdaap41>
References: <1582897461-15105-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1582897461-15105-7-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1582904349.14824.19.camel@mtksdaap41>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_055028_938835_B1178DCD 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 wsd_upstream@mediatek.com, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Houlong Wei <houlong.wei@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Bibby Hsieh <bibby.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Ming-Fan Chen <ming-fan.chen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi CK,

Thanks for your comment.

On Fri, 2020-02-28 at 23:39 +0800, CK Hu wrote:
> Hi, Dennis:
> 
> On Fri, 2020-02-28 at 21:44 +0800, Dennis YC Hsieh wrote:
> > Return error code to client if send message fail,
> > so that client has chance to error handling.
> > 
> > Fixes: 576f1b4bc802 ("soc: mediatek: Add Mediatek CMDQ helper")
> > Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-cmdq-helper.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > index 2e1bc513569b..0698612de5ad 100644
> > --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> > +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > @@ -351,11 +351,11 @@ int cmdq_pkt_flush_async(struct cmdq_pkt *pkt, cmdq_async_flush_cb cb,
> >  		spin_unlock_irqrestore(&client->lock, flags);
> >  	}
> >  
> > -	mbox_send_message(client->chan, pkt);
> > +	err = mbox_send_message(client->chan, pkt);
> >  	/* We can send next packet immediately, so just call txdone. */
> >  	mbox_client_txdone(client->chan, 0);
> 
> If error happen, why tx is done? I think you should return immediately
> when error happen.

ok, I will return error code directly.


Regards,
Dennis

> 
> Regards,
> CK
> 
> >  
> > -	return 0;
> > +	return err;
> >  }
> >  EXPORT_SYMBOL(cmdq_pkt_flush_async);
> >  
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
