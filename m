Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E15401654AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 02:46:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l0SIokNWxdTdR/L+/aIfPaGkslc2GkfL+zUVKA7A3Dk=; b=iNyWGVOCyRLPkh
	VwPoMKuL9rCK8HNLLGPfReZnSJip+8M88NEycz89AAfkOyKQ62rmS6RbgGAKQE/B8YxKHjvMTV3Mv
	GxUD2ZpSfXviRASYcImuqL4v6/2EwiAUQ+DTM3+rxvzmrPMWQ3f8/SohPpa/Dto9Tx07KHX1w6CmH
	d/upxHksMcKlWwGiKtiwz54Opm1goKGNUomAO7SQI63TUlUBS/avTmu+DzeeXsS5KydwdIYoKdzet
	z9zPhUWb1G/gw9IuyvfdiXgxvzsGTLS7pw5fCTSaA356nu62NiEZYYzwbw9pZ7RjI4yRqOV+75sLx
	Ymz8lK0c7liRATez8jSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4auv-0002Wg-OV; Thu, 20 Feb 2020 01:46:17 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4aum-0002VN-Mp
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 01:46:10 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 20 Feb 2020 10:46:07 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 4F39418008C;
 Thu, 20 Feb 2020 10:46:07 +0900 (JST)
Received: from 172.31.9.53 (172.31.9.53) by m-FILTER with ESMTP;
 Thu, 20 Feb 2020 10:46:07 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by iyokan.css.socionext.com (Postfix) with ESMTP id 27FAC40376;
 Thu, 20 Feb 2020 10:46:07 +0900 (JST)
Received: from [10.213.132.48] (unknown [10.213.132.48])
 by yuzu.css.socionext.com (Postfix) with ESMTP id EC1FE12047F;
 Thu, 20 Feb 2020 10:46:06 +0900 (JST)
Date: Thu, 20 Feb 2020 10:46:07 +0900
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: dmaengine: Add UniPhier external DMA
 controller bindings
In-Reply-To: <20200219135344.GA15319@bogus>
References: <1582077141-16793-2-git-send-email-hayashi.kunihiko@socionext.com>
 <20200219135344.GA15319@bogus>
Message-Id: <20200220104606.53AA.4A936039@socionext.com>
MIME-Version: 1.0
X-Mailer: Becky! ver. 2.70 [ja]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_174608_865277_52BE2179 
X-CRM114-Status: GOOD (  19.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Vinod Koul <vkoul@kernel.org>,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,
Thanks for pointing out.

On Wed, 19 Feb 2020 07:53:44 -0600 <robh@kernel.org> wrote:

> On Wed, 19 Feb 2020 10:52:20 +0900, Kunihiko Hayashi wrote:
> > Add devicetree binding documentation for external DMA controller
> > implemented on Socionext UniPhier SOCs.
> > 
> > Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> > ---
> >  .../bindings/dma/socionext,uniphier-xdmac.yaml     | 63 ++++++++++++++++++++++
> >  1 file changed, 63 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
> > 
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml: Additional properties are not allowed ('additinalProperties' was unexpected)
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml: Additional properties are not allowed ('additinalProperties' was unexpected)
> Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.example.dts' failed
> make[1]: *** [Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.example.dts] Error 1
> Makefile:1263: recipe for target 'dt_binding_check' failed
> make: *** [dt_binding_check] Error 2
> 
> See https://patchwork.ozlabs.org/patch/1240464
> Please check and re-submit.

Something was missing the string by mistake.
I'll resubmit it.

Thank you,

---
Best Regards,
Kunihiko Hayashi


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
