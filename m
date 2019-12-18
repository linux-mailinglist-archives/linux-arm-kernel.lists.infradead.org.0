Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC08612411F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 09:10:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tr5Vj/fyxa3otgI9V2XIWqFkZ+1duiXq++lpTcINLP0=; b=K3Z6E8Y3Vs967D
	SUGlzsjj1VblvbIFGVJOSMtq3Trr25g470upbSXqDkS1IEPlijrYh0aL72GKjw0wgkP56G3sW6C8A
	7kYtSWpMWdoAPDlS5wn3hPAkidtoYXlA//gxkmGIMRV033Zv6UNW6fJ2L2kFSAgDx0RGZkzXdhAqo
	4VWSi7PvWjxL8MG/hFiKpxRK80//P1mbcTZ1a63wAiCErLSIzrOsq6kiZsCQoO6xYl0iAKMwcS9+M
	gEGNMr8vLVUxqFykjSrfb+0z0qIIzgDEf8KGWy1GXr5tvuU9rBy4UqmbDqKBVfiteiDGQqCUFPgDZ
	ElDgpLnYoedscQ3j92qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihUPd-0001JA-22; Wed, 18 Dec 2019 08:10:29 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihUPT-0001II-Ee; Wed, 18 Dec 2019 08:10:20 +0000
X-UUID: d7a6b468d6324b64b9e24c654c26d2a3-20191218
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=aNiLrGJZwK0lvEyneiSTQQEeAe5Qvk/0jbjSDQ3VN2c=; 
 b=RPUI1b+aKYkqYxlxBVt65fXuDdhXfdF/maf7zJ6L0bciqcu7iis8vuM2Ih7e+vA7WboexmR9qy0/ysYZMLx63ZoYn3PISoparTcxqqGjXgGAqBOPW/j4rpYPRayXKuLjBK8w59SdXXg3UmnK3seFdvqYH13lvU+XNPvF31FgJ80=;
X-UUID: d7a6b468d6324b64b9e24c654c26d2a3-20191218
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1496358697; Wed, 18 Dec 2019 00:10:09 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Dec 2019 00:00:20 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Dec 2019 15:59:48 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 18 Dec 2019 15:59:38 +0800
Message-ID: <1576656006.5933.3.camel@mtkswgap22>
Subject: Re: [PATCH v2 06/14] soc: mediatek: cmdq: return send msg error code
From: Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Wed, 18 Dec 2019 16:00:06 +0800
In-Reply-To: <1575604966.6151.1.camel@mtksdaap41>
References: <1574819937-6246-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1574819937-6246-8-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1575604966.6151.1.camel@mtksdaap41>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_001019_504398_FC012049 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Houlong Wei <houlong.wei@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bibby,

On Fri, 2019-12-06 at 12:02 +0800, Bibby Hsieh wrote:
> On Wed, 2019-11-27 at 09:58 +0800, Dennis YC Hsieh wrote:
> > Return error code to client if send message fail,
> > so that client has chance to error handling.
> > 
> This patches seems like a fix patch.
> Please add fixes, thanks.
> 
> Bibby

Do you mean add *fixes* in title?
How about *fixes flush async function return error when send fail* ?


Regards,
Dennis

> > Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-cmdq-helper.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > index 274f6f311d05..8421b4090304 100644
> > --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> > +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > @@ -353,11 +353,11 @@ int cmdq_pkt_flush_async(struct cmdq_pkt *pkt, cmdq_async_flush_cb cb,
> >  		spin_unlock_irqrestore(&client->lock, flags);
> >  	}
> >  
> > -	mbox_send_message(client->chan, pkt);
> > +	err = mbox_send_message(client->chan, pkt);
> >  	/* We can send next packet immediately, so just call txdone. */
> >  	mbox_client_txdone(client->chan, 0);
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
