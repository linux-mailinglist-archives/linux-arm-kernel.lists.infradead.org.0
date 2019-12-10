Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE39117D8E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 03:09:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6RLL52VO/z+vsWGqcapVqI9G+8oJImPpWvF6U2+BOxk=; b=YIG1Fp8MbZhIad
	n4Mnk2Va1cfR5fWQkvBccchJR0iGs+aLeyEYowz/7gDQOGjs569tn0P8lAR7If4AKyDKsTpscGQFA
	Og1/xKlJABzX++uNL1D2WZoGp4s+k43RlAxgSc700yYM0WBarDyac1uuINPxe4cuOaKMB83TVh8tY
	WIUjl6CgVBnaiQ+DkegPztxp5KK0bqAvOIVrPZTChSeWmifT2R5n2uWQ7eDoZz6Yb5N9qbvvMmZCL
	dCu45m8MlW6HSNcynLJWLFHltbi5C2BFQMkDyBWIcO3Gri8D1cJxSY8CzUCt0zv2AuEDMrjiLrh5C
	XFosbVEDMsLtp4GK15Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieUxM-0007CV-OJ; Tue, 10 Dec 2019 02:08:56 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieUxB-0007C6-FI; Tue, 10 Dec 2019 02:08:49 +0000
X-UUID: 0bb2b523c845447990082a62305aad49-20191209
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=IgQuYhZqNMmjibztfb1saVE2u9WvD1IS81QOavynYoU=; 
 b=DW8tM8/Ka3LOpURBGBoTo0BCjYP9AoFYe4okNaeyvDfYnVuIRIyblE1pW80yFo5NO5pIHo3y31TkJdOrrClvLPqexadzDtDBGXDatBbI7eDVPVVxI7KRzfD4+9NHIAEvfJdeT3MDVUcd0GSuGGAlk2ToXJBfVGv1qLbEWpFoBPA=;
X-UUID: 0bb2b523c845447990082a62305aad49-20191209
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1968220720; Mon, 09 Dec 2019 18:08:42 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Dec 2019 18:05:39 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Dec 2019 10:04:06 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 10 Dec 2019 10:04:11 +0800
Message-ID: <1575943469.16676.0.camel@mtksdaap41>
Subject: Re: [PATCH v2 03/14] mailbox: cmdq: support mt6779 gce platform
 definition
From: CK Hu <ck.hu@mediatek.com>
To: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
Date: Tue, 10 Dec 2019 10:04:29 +0800
In-Reply-To: <1574819937-6246-5-git-send-email-dennis-yc.hsieh@mediatek.com>
References: <1574819937-6246-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1574819937-6246-5-git-send-email-dennis-yc.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_180848_072972_0EB01108 
X-CRM114-Status: UNSURE (   9.79  )
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
> Add gce v4 hardware support with different thread number and shift.
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> ---
>  drivers/mailbox/mtk-cmdq-mailbox.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/mailbox/mtk-cmdq-mailbox.c b/drivers/mailbox/mtk-cmdq-mailbox.c
> index d5536563fce1..fd519b6f518b 100644
> --- a/drivers/mailbox/mtk-cmdq-mailbox.c
> +++ b/drivers/mailbox/mtk-cmdq-mailbox.c
> @@ -572,10 +572,12 @@ static const struct dev_pm_ops cmdq_pm_ops = {
>  
>  static const struct gce_plat gce_plat_v2 = {.thread_nr = 16, .shift = 0};
>  static const struct gce_plat gce_plat_v3 = {.thread_nr = 24, .shift = 0};
> +static const struct gce_plat gce_plat_v4 = {.thread_nr = 24, .shift = 3};
>  
>  static const struct of_device_id cmdq_of_ids[] = {
>  	{.compatible = "mediatek,mt8173-gce", .data = (void *)&gce_plat_v2},
>  	{.compatible = "mediatek,mt8183-gce", .data = (void *)&gce_plat_v3},
> +	{.compatible = "mediatek,mt6779-gce", .data = (void *)&gce_plat_v4},
>  	{}
>  };
>  

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
