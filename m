Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 918661F7528
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 10:15:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mQb5WHAmTJdsgqY9Pcei/rR2+upPZ7RFxYd8LyoNOjU=; b=F7mSlsX3a0nknd
	g0iyZKzy5v9ldulN2/HaKSKcZnR/ETR2wHXisvnPTwlEppNwEc2V7Ltg5ARcz/6DBHON2wcUsBuJ5
	+YD8eM6PdowRzTTK/RbQseeoVMgQ1KFJfjRTt9gWDCWRup8OQaFTjq/h5wQO21/TOkBeyU6TYpAvj
	ZSNu5vPxdzzp2CMu4zWDX7MkuoxHBud0RBA+FT0Og/wwSl1AdiIo5hOoCxuAXKIgOslK5qW0lw6sK
	gx2r/uMvEwS4cvkasy0FIOAWB2cmVTPdHHNK6fTAqinYSf8vdU9zobirITRtc5gB6pk/sm384s0mh
	OsprTGn7x/tFKv9CRKQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjeqZ-0004uD-6N; Fri, 12 Jun 2020 08:15:31 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjeqO-0004so-9h; Fri, 12 Jun 2020 08:15:23 +0000
X-UUID: 4db2162223dd42808ecd5adce96d9bc0-20200612
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=UMgcVfDJy2DNtueEsKv2oMpjTkk90WFRphgVGkekQiE=; 
 b=fL52jjGyd7Q36ByJ4RxJqGCLiDVVn81WhjD37xSdQanH9IBsmmG8C8+ZaFwkMo5a7AcQNr+fsJijJH2decJIMcXqYHKTuhvNoCt5mMEa6P4CzMsF8Es+qIdRHxEDpqIdOP/oeEkG47GBDqriRl644Su+XLUT6w00FyFqvTVPOQc=;
X-UUID: 4db2162223dd42808ecd5adce96d9bc0-20200612
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <eastl.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1660008849; Fri, 12 Jun 2020 00:15:11 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 12 Jun 2020 01:12:58 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 12 Jun 2020 16:12:57 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 12 Jun 2020 16:12:56 +0800
Message-ID: <1591949578.23595.8.camel@mtkswgap22>
Subject: Re: [PATCH v4 3/4] dmaengine: mediatek-cqdma: fix compatible
From: EastL <EastL.Lee@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Fri, 12 Jun 2020 16:12:58 +0800
In-Reply-To: <b96e9b4d-880d-885e-fc2e-56e5618eb014@gmail.com>
References: <1590659832-31476-1-git-send-email-EastL.Lee@mediatek.com>
 <1590659832-31476-4-git-send-email-EastL.Lee@mediatek.com>
 <b96e9b4d-880d-885e-fc2e-56e5618eb014@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_011521_847961_C7EE71DF 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 vkoul@kernel.org, robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-05-28 at 15:39 +0200, Matthias Brugger wrote:
> 
> On 28/05/2020 11:57, EastL wrote:
> > This patch fixes mediatek-cqdma compatible to common.
> > 
> > Signed-off-by: EastL <EastL.Lee@mediatek.com>
> > ---
> >  drivers/dma/mediatek/mtk-cqdma.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/dma/mediatek/mtk-cqdma.c b/drivers/dma/mediatek/mtk-cqdma.c
> > index 905bbcb..bca7118 100644
> > --- a/drivers/dma/mediatek/mtk-cqdma.c
> > +++ b/drivers/dma/mediatek/mtk-cqdma.c
> > @@ -544,7 +544,7 @@ static void mtk_cqdma_hw_deinit(struct mtk_cqdma_device *cqdma)
> >  }
> >  
> >  static const struct of_device_id mtk_cqdma_match[] = {
> > -	{ .compatible = "mediatek,mt6765-cqdma" },
> > +	{ .compatible = "mediatek,cqdma" },
> 
> We can't just delete and old compatible. If other cqdma IP blocks are the same
> as mt6795, we should instead add entries in the binding description with
> fallback compatible. For example for mt6779 the DTS would look like this:
> compatible = "mediatek,mt6779-cqdma", "mediatek,mt6765-cqdma";
> 
> This way we the kernel will take care to bind the device against the driver with
> mt7665-cqdma, but leaves us the posibillity to add any changes to the driver in
> the future if we find some bugs/features for mt6779 that are not present in mt6765.
> 
> Regards,
> Matthias
> 
> >  	{ /* sentinel */ }
> >  };
> >  MODULE_DEVICE_TABLE(of, mtk_cqdma_match);
> > 

OK, Can I add a common compatible? Like this

static const struct of_device_id mtk_cqdma_match[] = {
{ .compatible = "mediatek,mt6765-cqdma" },
{ .compatible = "mediatek,common-cqdma" },


Regards,
EastL
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
