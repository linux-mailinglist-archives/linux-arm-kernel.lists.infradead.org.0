Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF7522BC7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 08:03:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MvS634f0pZKjDKONm1W4YnAJo83MI6FjQmj5JbTvv+E=; b=bi/+Rrsy2s3aw1
	CzMnZa3Qk110/Bx11NGyUD9SJvYb6wjKai5u3hTEQ/l36lJO54yjVjybjmnW5Y0uTP35BiHJfFPyq
	ATcVM4I+1YC+jkvbRSWhbOdap0BBEuGxouJoXMNbbZpQvWYOtUBoAXEQj08q8+Q3isxVj51YplLqq
	GH5LH8RgBIlooplSF01vGqeg8cqhLuIusxytqLTi86xkhyyjDcqIf6s6RJrn7G7hQ53s7aJ9l1gH+
	To+QLh9YoApWV1CwABTyftFm4nNTNdScGtU4LvPBEuspDhkhUthdYSJnjAz1H1+nknCIkfJIloAp4
	E9ZK6L6hHBoFipBSuFUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSbOk-0003Xw-0W; Mon, 20 May 2019 06:03:46 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSbOc-0003XS-Sd; Mon, 20 May 2019 06:03:40 +0000
X-UUID: 357d6eef7b404846864f74a3baaeb5db-20190519
X-UUID: 357d6eef7b404846864f74a3baaeb5db-20190519
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <chun-hung.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1490184342; Sun, 19 May 2019 22:03:28 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 19 May 2019 23:03:26 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 14:03:25 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 20 May 2019 14:03:25 +0800
Message-ID: <1558332205.11080.6.camel@mtkswgap22>
Subject: Re: [PATCH 3/4] iio: adc: mediatek: SET_LATE_SYSTEM_SLEEP_PM_OPS
 support
From: Chun-Hung Wu <chun-hung.wu@mediatek.com>
To: Jonathan Cameron <jic23@kernel.org>
Date: Mon, 20 May 2019 14:03:25 +0800
In-Reply-To: <20190518113527.5210b0bf@archlinux>
References: <1557994247-16739-1-git-send-email-chun-hung.wu@mediatek.com>
 <1557994247-16739-4-git-send-email-chun-hung.wu@mediatek.com>
 <20190518113527.5210b0bf@archlinux>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_230338_930703_A9FB3502 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lars-Peter Clausen <lars@metafoo.de>, wsd_upstream@mediatek.com,
 linux-iio@vger.kernel.org, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, jg_poxu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jonathan:

  Thanks for the prompt reply,

On Sat, 2019-05-18 at 11:35 +0100, Jonathan Cameron wrote:
> On Thu, 16 May 2019 16:10:46 +0800
> Chun-Hung Wu <chun-hung.wu@mediatek.com> wrote:
> 
> >   Move suspend/resume to late_suspend and
> > early_resume to gurantee users can use auxadc
> guarantee
> 
will fix it in next version.
> > driver at suspend/resume stage.
> No problem with the patch content, but we need a reason why they may
> want to do so?
Our thermal drivers uses auxadc at suspend/resume stage.
In order to avoid auxadc suspended prior to thermal driver,
we move auxadc to late_suspend and early_resume.

Thanks,
Chun-Hung
> 
> Thanks,
> 
> Jonathan
> > 
> > Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
> > ---
> >  drivers/iio/adc/mt6577_auxadc.c | 7 ++++---
> >  1 file changed, 4 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/iio/adc/mt6577_auxadc.c b/drivers/iio/adc/mt6577_auxadc.c
> > index e1bdcc0..58d7cb2 100644
> > --- a/drivers/iio/adc/mt6577_auxadc.c
> > +++ b/drivers/iio/adc/mt6577_auxadc.c
> > @@ -326,9 +326,10 @@ static int mt6577_auxadc_remove(struct platform_device *pdev)
> >  	return 0;
> >  }
> >  
> > -static SIMPLE_DEV_PM_OPS(mt6577_auxadc_pm_ops,
> > -			 mt6577_auxadc_suspend,
> > -			 mt6577_auxadc_resume);
> > +static const struct dev_pm_ops mt6577_auxadc_pm_ops = {
> > +	SET_LATE_SYSTEM_SLEEP_PM_OPS(mt6577_auxadc_suspend,
> > +				     mt6577_auxadc_resume)
> > +};
> >  
> >  static const struct of_device_id mt6577_auxadc_of_match[] = {
> >  	{ .compatible = "mediatek,mt2701-auxadc", .data = &mt8173_compat},
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
