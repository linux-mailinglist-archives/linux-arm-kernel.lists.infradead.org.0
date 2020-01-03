Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF20612F45A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 06:45:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5w7q2dD5e/1BkVKj+1l2P6vyV8C6ySPnoR7CyLgKg70=; b=R/UA3OxC+6cvcO
	6XalJ2wJxcZo/I0Sj7SL8aZ/PZ7ifZnCJSZWeSBEg1cTSzdSjfNNXR4CdLSy//gAOsjhItxxtbyCu
	lZXtTmmAErRFiNPOREcGwAlFSm+ogxvI+G9GnVkGguR80OSxDR12Mggq39zXhkzufaOPcGlpfn5uD
	RT5i+limWwd4r5f+X00WvZ9qJtuxudpbVqYRsdFaQNa5CMJcuiURmqkjR9XDxVM1YiBcWSgkeoucF
	/1h2ML/1S+Sj4LQgXcltdot4ebWNG4rn3N8Al4rPRTvrmKhIafsiquHsCxb2fHgciSYc/n3EgSBAl
	S0JNu3WspOVVpt3mli1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inFld-0002Ta-Tw; Fri, 03 Jan 2020 05:45:01 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inFlU-0002Sp-GA; Fri, 03 Jan 2020 05:44:54 +0000
X-UUID: 2bc112590e0a4f959119186fc07b56ae-20200102
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=iAyHZ4cFlXp1ARnIl3ujSzsZWrgcDzAuYJCkSJsgRYA=; 
 b=MG90BSh7WCx0zYL9K18yzzFllbOvsRg/Kss8w4Sl97K1SGwWcQbhJ5bSuSSriddUDFXnrFue4gwctmewK19YT+LxCEfjIsIs4Bnfa/9hVeZdf4Al2qNJNt0yRU7JNaKWy1tmUnwZVGbIgdeEnk2iDV9rz9LoImdUswwyht0utTM=;
X-UUID: 2bc112590e0a4f959119186fc07b56ae-20200102
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1743873709; Thu, 02 Jan 2020 21:44:48 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 Jan 2020 21:44:49 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 Jan 2020 13:43:27 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 3 Jan 2020 13:44:38 +0800
Message-ID: <1578030279.31107.6.camel@mtksdaap41>
Subject: Re: [RESEND PATCH v6 04/17] drm/mediatek: make sout select function
 format same with select input
From: CK Hu <ck.hu@mediatek.com>
To: Yongqiang Niu <yongqiang.niu@mediatek.com>
Date: Fri, 3 Jan 2020 13:44:39 +0800
In-Reply-To: <1578021148-32413-5-git-send-email-yongqiang.niu@mediatek.com>
References: <1578021148-32413-1-git-send-email-yongqiang.niu@mediatek.com>
 <1578021148-32413-5-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 1848600F3CEC16E3DFB594BA8C709B4E788EBFB65D29CB182A8A734332A829032000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_214452_548207_9FD12BC6 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Yongqiang:

On Fri, 2020-01-03 at 11:12 +0800, Yongqiang Niu wrote:
> there will be more sout case in the future,
> make the sout function format same mtk_ddp_sel_in
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c | 24 ++++++++++++++++--------
>  1 file changed, 16 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> index d66ce31..ae08fc4 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> @@ -386,17 +386,23 @@ static unsigned int mtk_ddp_sel_in(enum mtk_ddp_comp_id cur,
>  	return value;
>  }
>  
> -static void mtk_ddp_sout_sel(struct regmap *config_regs,
> -			     enum mtk_ddp_comp_id cur,
> -			     enum mtk_ddp_comp_id next)
> +static unsigned int mtk_ddp_sout_sel(enum mtk_ddp_comp_id cur,
> +				     enum mtk_ddp_comp_id next,
> +				     unsigned int *addr)
>  {
> +	unsigned int value;
> +
>  	if (cur == DDP_COMPONENT_BLS && next == DDP_COMPONENT_DSI0) {
> -		regmap_write(config_regs, DISP_REG_CONFIG_OUT_SEL,
> -				BLS_TO_DSI_RDMA1_TO_DPI1);
> +		*addr = DISP_REG_CONFIG_OUT_SEL;
> +		value = BLS_TO_DSI_RDMA1_TO_DPI1;
>  	} else if (cur == DDP_COMPONENT_BLS && next == DDP_COMPONENT_DPI0) {
> -		regmap_write(config_regs, DISP_REG_CONFIG_OUT_SEL,
> -				BLS_TO_DPI_RDMA1_TO_DSI);
> +		*addr = DISP_REG_CONFIG_OUT_SEL;
> +		value = BLS_TO_DPI_RDMA1_TO_DSI;
> +	} else {
> +		value = 0;
>  	}
> +
> +	return value;
>  }
>  
>  void mtk_ddp_add_comp_to_path(struct regmap *config_regs,
> @@ -409,7 +415,9 @@ void mtk_ddp_add_comp_to_path(struct regmap *config_regs,
>  	if (value)
>  		regmap_update_bits(config_regs, addr, value, value);
>  
> -	mtk_ddp_sout_sel(config_regs, cur, next);
> +	value = mtk_ddp_sout_sel(cur, next, &addr);
> +	if (value)
> +		regmap_update_bits(config_regs, addr, value, value);
>  
>  	value = mtk_ddp_sel_in(cur, next, &addr);
>  	if (value)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
