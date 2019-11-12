Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF44F8969
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 08:12:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oON3yPaLNIBVH8wpH8Hw9PtBP18NF7njxh0WKj/4Ck8=; b=adG3cgUFaMo4DT
	jwTeRjpTFM4IStZkA8pX6RXRVRB18857m93Li/5nU6pAMxRTAomUN1DkNu89jO1NTREdjKX5G7xay
	zIxDf7F+vNFvX+ILeImvlyLWF+rmBGrUvflQTa1QHlhb1Gdq5VqChKqJAy7KlLXocF7NCD0jDtTgY
	ody8TQLHTESaKhMrb/44JmQbxCv4JJEPHIySOzMhLV6rmVZ8yEgh2HVT/Wlmcs9tog6UgcQdUbyVB
	sSlFseYqRUbqhdKewTR9enRUnE6BdKG8kUWurZj66WM4IlkCu8ITj8Kn9HwhdBSMakE2pJMX22DIa
	o5WxixGP5+BUfEXMagqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUQLu-0007RF-IP; Tue, 12 Nov 2019 07:12:38 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUQLl-0007QA-NW; Tue, 12 Nov 2019 07:12:31 +0000
X-UUID: 6855864cb12a4ed18eabed881c083db8-20191111
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Z8nkDd87nqB6TMe3KppZYI70npGkzQs4p3QaevqC/mg=; 
 b=KNuo0RNe5yA1qiUFxfuyiE79LWSXisMrO83y4l0JmYwAGsx00rVlI31C/vjPMWzqZ6WVu35Amq0I2NGl32a7dl5q+ze1QAki53Z8QKSSJMYFYin++ZeFM87gTkl8bkQi4o0e66fIp+HKL5vd3gNsLHvQ8vSRJFvADS5TPD2K1m4=;
X-UUID: 6855864cb12a4ed18eabed881c083db8-20191111
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <mark-mc.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2011575710; Mon, 11 Nov 2019 23:12:23 -0800
Received: from mtkmbs05dr.mediatek.inc (172.21.101.97) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 11 Nov 2019 23:12:21 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05dr.mediatek.inc (172.21.101.97) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 12 Nov 2019 15:12:20 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 12 Nov 2019 15:12:20 +0800
Message-ID: <1573542740.10348.12.camel@mtksdccf07>
Subject: Re: [PATCH net,v2 1/3] net: ethernet: mediatek: Integrate GDM/PSE
 setup operations
From: mtk15127 <Mark-MC.Lee@mediatek.com>
To: David Miller <davem@redhat.com>
Date: Tue, 12 Nov 2019 15:12:20 +0800
In-Reply-To: <20191111.215617.1625420574702786179.davem@redhat.com>
References: <20191111065129.30078-1-Mark-MC.Lee@mediatek.com>
 <20191111065129.30078-2-Mark-MC.Lee@mediatek.com>
 <20191111.215617.1625420574702786179.davem@redhat.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_231229_771400_B387F32C 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, andrew@lunn.ch, jakub.kicinski@netronome.com,
 devicetree@vger.kernel.org, netdev@vger.kernel.org, sean.wang@mediatek.com,
 linux-kernel@vger.kernel.org, opensource@vdorst.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 Mark-MC.Lee@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-11-11 at 21:56 -0800, David Miller wrote:
> From: MarkLee <Mark-MC.Lee@mediatek.com>
> Date: Mon, 11 Nov 2019 14:51:27 +0800
> 
> > +static void mtk_gdm_config(struct mtk_eth *eth, u32 config)
> > +{
> > +	int i;
> > +
> > +	for (i = 0; i < MTK_MAC_COUNT; i++) {
> > +		u32 val = mtk_r32(eth, MTK_GDMA_FWD_CFG(i));
> > +
> > +		/* default setup the forward port to send frame to PDMA */
> > +		val &= ~0xffff;
> > +
> > +		/* Enable RX checksum */
> > +		val |= MTK_GDMA_ICS_EN | MTK_GDMA_TCS_EN | MTK_GDMA_UCS_EN;
> > +
> > +		val |= config;
> > +
> > +		mtk_w32(eth, val, MTK_GDMA_FWD_CFG(i));
> > +	}
> > +	/*Reset and enable PSE*/
> 
> Please put spaces before and after the comment sentence, like:
> 
> 	/* Reset and enable PSE */
> 
Thanks for the reminder, will correct it in the next patch.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
