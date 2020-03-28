Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E365B19692B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 21:25:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SfACr4J7n/4+RS4IOaguYNEc800DSbBFNPCpQ6FZOss=; b=NjvTcWJ+841x/Q
	TYAJuYOirdaDPiw0dPq3zR0TZhe3hpHes0AuOZEvLRE38x/yVlTr90vUvxwLijfIUpFkMhQ1DkS4V
	7PaSD+24M1l9nZpgWxLnHw6/GfePi2YiLuUIF8DiPTt5dUsgtSg8DApcq5qUR6S7NXJbM6/MSTMR+
	pX8+x5cKx3jMPy6CHL8iOoOut8gkP4CB1VjN6q7FpAT9hiktYSP7bKwdqEegAuB6Bk/ANhhJS5Tcy
	PAJIpHS2BNJqpSnfvF3xQhrBuCDfmbggAVQImcVQhjAbKnJSEJTgL3bNX0o62r5kutOdco41Uy3lj
	KsMwQ4afSL/mnC8WKH7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jII17-0000F3-QU; Sat, 28 Mar 2020 20:25:17 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jII0w-00080M-20
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 20:25:07 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id C20DA20033;
 Sat, 28 Mar 2020 21:25:03 +0100 (CET)
Date: Sat, 28 Mar 2020 21:25:02 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Pascal Roeleven <dev@pascalroeleven.nl>
Subject: Re: [PATCH v2 3/5] dt-bindings: vendor-prefixes: Add Topwise
Message-ID: <20200328202502.GC32230@ravnborg.org>
References: <20200320112205.7100-1-dev@pascalroeleven.nl>
 <20200320112205.7100-4-dev@pascalroeleven.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320112205.7100-4-dev@pascalroeleven.nl>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8
 a=rcC9jSN7RsNj9-ruICsA:9 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_132506_303100_DC2E2F70 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [109.247.116.14 listed in bl.score.senderscore.com]
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
 David Airlie <airlied@linux.ie>, Mark Brown <broonie@kernel.org>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 20, 2020 at 12:21:34PM +0100, Pascal Roeleven wrote:
> Topwise Communication Co,. Ltd. is a company based in Shenzhen. They
> manufacture all kind of products but seem to be focusing on POS nowadays.
> 
> Signed-off-by: Pascal Roeleven <dev@pascalroeleven.nl>
Acked-by: Sam Ravnborg <sam@ravnborg.org>

> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 9e67944be..3c08370b7 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -982,6 +982,8 @@ patternProperties:
>    "^toppoly,.*":
>      description: TPO (deprecated, use tpo)
>      deprecated: true
> +  "^topwise,.*":
> +    description: Topwise Communication Co., Ltd.
>    "^toradex,.*":
>      description: Toradex AG
>    "^toshiba,.*":
> -- 
> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
