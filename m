Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C72275F4A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 08:50:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jxnei0vqi6RTDc3XD632J0LzxusAr+GcN4fpZiRcXCY=; b=k1gBR04qHaRwIn
	lztc/jORKAnOx3uhk+3MJmxFNnW8AZ6dc0Td/26RvDFRRmQdr1jnqKEgaL5cdZBHlo9/IiMoxoTSF
	mBaFzq9JeRfbPquOnbOwgC01xO3Qx1hcyITh5ataSgL7LyuHkJDfgUzwr8MIsD9Kiz/gn9IJ289I9
	dOJ8XD5aiKIMNAmUKPvM1avHWztH2g+cpnJIwvH7sZYHntlf1KGNFN6KzVk8vdxL3PbBK2TnNMJ6Z
	0Z+bkm2qHSsP3Ho5/6j/FzbqKsLX8AYGBLwat5geX6KY+aCN6tcDpcujmO9T3oOdd+dBhsMDOmO7e
	jFJ0rBywtseJlmXqPUyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqu3N-0004bZ-QX; Fri, 26 Jul 2019 06:50:10 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqu2w-0004an-NJ
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 06:49:44 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 2F89342BA;
 Fri, 26 Jul 2019 02:49:40 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Fri, 26 Jul 2019 02:49:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=kokOQgzIABuKcOf13CmoUQh+Gn2cv69
 dV+LTjmU8rAk=; b=jXDTHisiOlQRsj/JEm7c0JiMRIHipx0N+6scM50gRBSdCwm
 MXdU6grcxma8/9ibQjvhXQGFQ/yKqYPP1C6km9DaNzuzVfojUiBtICogtZcK4tRK
 aPDqdXZfsrQ8Wzks7bmcskSnxEGrjFxRJpW9M89mo/p6YvkIQnnGR1Y49Q8aUJPy
 PxrxENHZfHf80gdUCZ/29i7IASp38NW6T5aBAhFVKItrPPRt5jUXMCLrgWYt2dzF
 FBJIGo9Rro1nsCdnGgrAXuQ4Il8fSeBgntVynmytaPco9iPle531hVK4wroVm8eY
 fRevtX684DvtQDS0zoerDdoNKvV0XETKPkxwKrA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=kokOQg
 zIABuKcOf13CmoUQh+Gn2cv69dV+LTjmU8rAk=; b=A/lTXR68tPAlyjt76lGNWv
 D6td6Cm4rdBWDvxB8Z3be9tUf+A+c7ltv+sjTLU5MmcUiKOKfTc9XFapQeFg13U5
 +GUWPBdq29YdoTJkoURl1/PyPHR0UYnPk7eOR4Af6xaGV9xSiupuB2mlK7+3xkvQ
 DdutVXz2D706AB4uDOsRPSP18SOkmGNiHi1KXhjFpNnwu7Qmg89sKmKj9wurDwBH
 txfrthKLxE+ETW3Ooc3S+D47Tnz+pWXh0GoMCjgooXvcigx2bdU7cZL3dJXb8jEk
 y5Bcb5MNoQlmBlFqcgY5S+P+U1bSz45PjGcohYHHtJSC8O0rw20JZxiW36P2xB8A
 ==
X-ME-Sender: <xms:gqI6Xd1eXtuKPIeCF7vKxebDRJaLOq4jc5OcyklJNCoJyMnOUbkE7Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrkeefgdduudefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:gqI6XTLtjdjlhZAP8lYDylnGOoIU5_qwErskFxXawOBDdepaVpDIgQ>
 <xmx:gqI6XUGoLVGo134sbxvXj2ZXOiq-x4iSUONdHhGZ3jMmyqh_1acQaw>
 <xmx:gqI6XXUncIRQVtAYKxT9MV7Qrg7N7wAzOZGdG5qG8JsNMYavcpi3MQ>
 <xmx:hKI6XVMTy-7dFx0q_FrEmhKBR337Tk9zQ4hVoRgyf4f6uzv34pkImA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id B948AE00A2; Fri, 26 Jul 2019 02:49:38 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-736-gdfb8e44-fmstable-20190718v2
Mime-Version: 1.0
Message-Id: <4c6c020d-5985-4c57-aaae-c2393f9cc2fc@www.fastmail.com>
In-Reply-To: <8a7bfe52-83ca-7601-7d75-e5615da7b5de@intel.com>
References: <20190712033214.24713-1-andrew@aj.id.au>
 <20190712033214.24713-3-andrew@aj.id.au>
 <d6f7fdf2-07ed-354a-ca29-f3175623679c@intel.com>
 <7cd30f3d-43fd-42da-9301-091eb2625c65@www.fastmail.com>
 <8a7bfe52-83ca-7601-7d75-e5615da7b5de@intel.com>
Date: Fri, 26 Jul 2019 16:17:31 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Adrian Hunter" <adrian.hunter@intel.com>,
 linux-mmc <linux-mmc@vger.kernel.org>
Subject: Re: [PATCH v2 2/2] mmc: Add support for the ASPEED SD controller
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_234943_054739_A64AB7CF 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-aspeed@lists.ozlabs.org,
 Ryan Chen <ryanchen.aspeed@gmail.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Fri, 26 Jul 2019, at 15:27, Adrian Hunter wrote:
> On 26/07/19 3:52 AM, Andrew Jeffery wrote:
> > On Thu, 25 Jul 2019, at 22:49, Adrian Hunter wrote:
> >> On 12/07/19 6:32 AM, Andrew Jeffery wrote:
> >>> +static int aspeed_sdhci_probe(struct platform_device *pdev)
> >>> +{
> >>> +	struct sdhci_pltfm_host *pltfm_host;
> >>> +	struct aspeed_sdhci *dev;
> >>> +	struct sdhci_host *host;
> >>> +	struct resource *res;
> >>> +	int slot;
> >>> +	int ret;
> >>> +
> >>> +	host = sdhci_pltfm_init(pdev, &aspeed_sdc_pdata, sizeof(*dev));
> >>> +	if (IS_ERR(host))
> >>> +		return PTR_ERR(host);
> >>> +
> >>> +	pltfm_host = sdhci_priv(host);
> >>> +	dev = sdhci_pltfm_priv(pltfm_host);
> >>> +	dev->parent = dev_get_drvdata(pdev->dev.parent);
> >>> +
> >>> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> >>> +	slot = aspeed_sdhci_calculate_slot(dev, res);
> >>> +	if (slot < 0)
> >>> +		return slot;
> >>> +	dev_info(&pdev->dev, "Configuring for slot %d\n", slot);
> >>> +	dev->width_mask = !slot ? ASPEED_SDC_S0MMC8 : ASPEED_SDC_S1MMC8;
> >>
> >> That implies that you only support 2 slots which begs the question why
> >> you don't validate slot.
> > 
> > I'm not sure what you mean here, but I'll dig into it.
> 
> I just meant, if you only support 2 slots:
> 
> 	if (slot > 1)
> 		return -EINVAL;
>

Oh, sure.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
