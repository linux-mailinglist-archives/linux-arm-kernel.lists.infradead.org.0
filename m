Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CD21EF2B5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 10:06:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9LdXIhtqQggrweie7EcVLJ3e/1jXNiYKKjipXzZeVqU=; b=R0lLeatEncU9/I
	qOC756BplkTxS87z/DuRFpRC5C1x6ojoDS1uiaVPwnfNWwigu/AORFoNHOCnLDpZu3emaG75Hlf4n
	7JVg9t7OVMV2EviqTl+yBx4o34KsMaipd2R52GLganfHU7zgmGneam9P+y65JyPH85HAZ0HJb08S2
	9WYNinCAPegUzsNYhNBO/8lS4wUHlD6xXTZDey40gYfqkPdwoIV3GQo0i/or+4hCZi9qxjFpChuBa
	UF0v3qypn520ZHw5m3C23Ee2Pwo2u0sGhzaatZMTYqeDbtSHK8WbOMLuKjSbKQZ2c8XyBXxmEtK8N
	ksiENBmwj1qdslvzQhDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh7N4-0003q9-3j; Fri, 05 Jun 2020 08:06:34 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh7Ms-0003ow-35; Fri, 05 Jun 2020 08:06:23 +0000
X-UUID: 80938bfd12a1476e8161a0db336f0b59-20200605
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=JPwMS253KWO9wyEuaU8F+mAJwhd2XFkcAArD4gWyjuw=; 
 b=r84M9kbMkAHdhmQ99Ju87LXZPXvyM8eeiUPZyAXXuEDyW7usHpd04ANJ8O4kncROlA0GKAptwjnmCO4nHMXd+qzvcrqLRVtetOswOslkLSyk85r6WJBEmRIWICLVLJndCJcAQt7/zs/5Mfa8diQseoE5IldVP02D+KZfR1PvUsk=;
X-UUID: 80938bfd12a1476e8161a0db336f0b59-20200605
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1922363982; Fri, 05 Jun 2020 00:06:10 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 5 Jun 2020 01:06:13 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Fri, 5 Jun 2020 16:06:09 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 5 Jun 2020 16:06:09 +0800
Message-ID: <1591344245.32607.10.camel@mhfsdcap03>
Subject: Re: [PATCH v8 08/14] media: platform: Change case for improving
 code quality
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Date: Fri, 5 Jun 2020 16:04:05 +0800
In-Reply-To: <4b8cc41e-5171-0d48-f588-96e4212ab22c@xs4all.nl>
References: <20200403094033.8288-1-xia.jiang@mediatek.com>
 <20200403094033.8288-9-xia.jiang@mediatek.com>
 <4b8cc41e-5171-0d48-f588-96e4212ab22c@xs4all.nl>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: BC553A6124CC156816443CD8FFFB780032B7C78833E4223FA7C71AEB92EE0B6A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_010622_140700_7EF8D2A5 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: drinkcat@chromium.org, devicetree@vger.kernel.org, mojahsu@chromium.org,
 srv_heupstream@mediatek.com, Rick Chang <rick.chang@mediatek.com>,
 senozhatsky@chromium.org, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, maoguang.meng@mediatek.com,
 Matthias Brugger <matthias.bgg@gmail.com>, sj.huang@mediatek.com,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2020-05-11 at 10:37 +0200, Hans Verkuil wrote:
> On 03/04/2020 11:40, Xia Jiang wrote:
> > Change register offset hex numberals from upercase to lowercase.
> 
> Typos:
> 
> numberals -> numerals
> 
> upercase -> uppercase
Done.
> 
> Regards,
> 
> 	Hans
> 
> > 
> > Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> > ---
> > v8: no changes
> > ---
> >  drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h | 18 +++++++++---------
> >  1 file changed, 9 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h
> > index 94db04e9cdb6..2945da842dfa 100644
> > --- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h
> > +++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h
> > @@ -20,29 +20,29 @@
> >  #define BIT_INQST_MASK_ALLIRQ		0x37
> >  
> >  #define JPGDEC_REG_RESET		0x0090
> > -#define JPGDEC_REG_BRZ_FACTOR		0x00F8
> > -#define JPGDEC_REG_DU_NUM		0x00FC
> > +#define JPGDEC_REG_BRZ_FACTOR		0x00f8
> > +#define JPGDEC_REG_DU_NUM		0x00fc
> >  #define JPGDEC_REG_DEST_ADDR0_Y		0x0140
> >  #define JPGDEC_REG_DEST_ADDR0_U		0x0144
> >  #define JPGDEC_REG_DEST_ADDR0_V		0x0148
> > -#define JPGDEC_REG_DEST_ADDR1_Y		0x014C
> > +#define JPGDEC_REG_DEST_ADDR1_Y		0x014c
> >  #define JPGDEC_REG_DEST_ADDR1_U		0x0150
> >  #define JPGDEC_REG_DEST_ADDR1_V		0x0154
> >  #define JPGDEC_REG_STRIDE_Y		0x0158
> > -#define JPGDEC_REG_STRIDE_UV		0x015C
> > +#define JPGDEC_REG_STRIDE_UV		0x015c
> >  #define JPGDEC_REG_IMG_STRIDE_Y		0x0160
> >  #define JPGDEC_REG_IMG_STRIDE_UV	0x0164
> > -#define JPGDEC_REG_WDMA_CTRL		0x016C
> > +#define JPGDEC_REG_WDMA_CTRL		0x016c
> >  #define JPGDEC_REG_PAUSE_MCU_NUM	0x0170
> > -#define JPGDEC_REG_OPERATION_MODE	0x017C
> > +#define JPGDEC_REG_OPERATION_MODE	0x017c
> >  #define JPGDEC_REG_FILE_ADDR		0x0200
> > -#define JPGDEC_REG_COMP_ID		0x020C
> > +#define JPGDEC_REG_COMP_ID		0x020c
> >  #define JPGDEC_REG_TOTAL_MCU_NUM	0x0210
> >  #define JPGDEC_REG_COMP0_DATA_UNIT_NUM	0x0224
> > -#define JPGDEC_REG_DU_CTRL		0x023C
> > +#define JPGDEC_REG_DU_CTRL		0x023c
> >  #define JPGDEC_REG_TRIG			0x0240
> >  #define JPGDEC_REG_FILE_BRP		0x0248
> > -#define JPGDEC_REG_FILE_TOTAL_SIZE	0x024C
> > +#define JPGDEC_REG_FILE_TOTAL_SIZE	0x024c
> >  #define JPGDEC_REG_QT_ID		0x0270
> >  #define JPGDEC_REG_INTERRUPT_STATUS	0x0274
> >  #define JPGDEC_REG_STATUS		0x0278
> > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
