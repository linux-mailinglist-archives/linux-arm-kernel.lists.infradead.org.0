Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF98B1A2F0D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 08:10:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=reOOrgr4bd1bYh8Sotafx8cRrzVJwLCP7WPclneaFKA=; b=UKoKx1hrsSX0c5
	zydz5/Tqj9PShWjJWeloqR+8jhC0xqwPGaIK4N67oV6QIxgI2A3U+k+UeZMUPlOa2EmTtZrTWOu43
	0meFHn9aRyPXeEvPJI0ArjsUxGNvGvATXvuuMv1esvBDwZohi8CsGo9mzKBzWlECUiQGOpOtNTlTZ
	ZjPgPbOhHgAaEzuXJfFbpJOwKs/Yb0gC8Z8YvUFNsC34ogOvz0BUCQBg5QLGYUHing4Wn3bjw06OK
	YYnwes88ZEeGE7ab/M+uWfsOVmodt7pGmxRdU1Vr32N13yYQ9pnQqcQu64CQcsi3085xLTwVPORNH
	AZWfNq+vqFIh+Xgwq4hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMQOp-0002Z2-Ks; Thu, 09 Apr 2020 06:10:51 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMQOj-0002YE-1N
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 06:10:46 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id D3BBF80542;
 Thu,  9 Apr 2020 08:10:35 +0200 (CEST)
Date: Thu, 9 Apr 2020 08:10:34 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Pawel Dembicki <paweldembicki@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: vendor-prefixes: Add Check Point
Message-ID: <20200409061034.GA11500@ravnborg.org>
References: <20200409043851.31217-1-paweldembicki@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409043851.31217-1-paweldembicki@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=XpTUx2N9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=pGLkceISAAAA:8
 a=s5IatAnNIdwd9GAHFg8A:9 a=CjuIK1q_8ugA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_231045_252386_830ACA1D 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Stephan Gerhold <stephan@gerhold.net>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Gregory Clement <gregory.clement@bootlin.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Brown <broonie@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pawel.

On Thu, Apr 09, 2020 at 06:38:46AM +0200, Pawel Dembicki wrote:
> Check Point Software Technologies Ltd. is a company based in Israel and
> USA. They manufacture network devices and provide software
> products for IT security.
> 
> Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index d3891386d671..4033d8b38170 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -182,6 +182,8 @@ patternProperties:
>    "^ceva,.*":
>      description: Ceva, Inc.
>    "^chipidea,.*":
> +    description: Check Point Software Technologies Ltd.
> +  "^checkpoint,.*":
>      description: Chipidea, Inc
>    "^chipone,.*":
>      description: ChipOne

Please fix so the vendor-prefix entries are sorted alphabetically.
And fix so the descriptions comes right *after* the vendor-prefix.
Right now it is inserted wrong.

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
