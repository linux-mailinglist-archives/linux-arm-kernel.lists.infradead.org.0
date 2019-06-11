Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4880F416C4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 23:19:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AbzOpSKnLTDGJnyZRXFRajH2Vkk8pJxY2J8lJyce5XI=; b=ipogRvknQY7SKf
	g7ycwY+9TznMgIb7a/aMJifehMFdbBq3HImpXRVoYmpBWfAZt3xDx23N7Tu9Akrgosfzm7MfszVBt
	xZ3LHdoIb0UbxdTHJIipcY0i21N6K8boUKSdwMSN0yiMFeub807yQ8v0jPKH8rS0hylUzyYwsX4Wu
	MKgFzsjdRD/n3iAqszsTIe8QLlEYJQNPGACw5wFjaMGiRDg5/pNtHG48Ss47sZQPtGada8VHekBkg
	oo/++vm4QuF2F+HWRLr7lWBFcPUA2jvlm4l7+JU/f2o8f294r38THfmEeyroIS/qvYOKTjK3QHPSv
	stxLtGi3NCHpB5noKZFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haoAh-0002aV-IB; Tue, 11 Jun 2019 21:19:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haoAZ-0002aC-LY
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 21:19:04 +0000
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0402D208CB
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 21:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560287943;
 bh=Ve3KCQ7GVV2V44RSV8meBmmRd5/4p88GK3ZOJPkM/MY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=E4SZ0A35aIqTlLZwv1X0TwyIBFoxqdEMm5IEZmdPuYtMU58eXXbRJb9AZ/M2PpIaA
 ktduPud0j2tcfi5JcQWJqFmTeSMYSuSItcUYggozrXieHs2RTPMyuEwsQbWvNsoCOx
 /S8TOPNKgP4wpoEMqD4HFpJ7d8Ou63ffa6WVkCrM=
Received: by mail-qt1-f171.google.com with SMTP id j19so16333606qtr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 14:19:02 -0700 (PDT)
X-Gm-Message-State: APjAAAVbh+Mw3N4lsJDwEOQYuZh1tW1RZGqfAzF2j0N/jvur4ZuiEnsN
 i8LiycRhqT9LjmBIsKS5vDtJORJ7iDecojh0Vg==
X-Google-Smtp-Source: APXvYqzGCWdmTOkqDG2RV/ScJ5WrTfWdxnE12sJbvaMkVf+INrGsAHXMw1/6Qv9CGzm/OLpy9y76vX5nDfomSnoZ+j0=
X-Received: by 2002:aed:3fb0:: with SMTP id s45mr13236463qth.136.1560287942208; 
 Tue, 11 Jun 2019 14:19:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190525134140.6220-1-maxime.ripard@bootlin.com>
In-Reply-To: <20190525134140.6220-1-maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 11 Jun 2019 15:18:51 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK829bfc4VX1hmYRuLYWQXaixAgSwU2N7veA41vfxLXvw@mail.gmail.com>
Message-ID: <CAL_JsqK829bfc4VX1hmYRuLYWQXaixAgSwU2N7veA41vfxLXvw@mail.gmail.com>
Subject: Re: [PATCH 1/5] dt-bindings: vendor: Escape single quote
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_141903_727023_05585966 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Chen-Yu Tsai <wens@csie.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 25, 2019 at 7:41 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Single quotes need to be escaped in YAML, make sure it's the case.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 19cc3240a445..ec53162e900d 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -672,7 +672,7 @@ patternProperties:
>    "^plantower,.*":
>      description: Plantower Co., Ltd
>    "^plathome,.*":
> -    description: Plat'Home Co., Ltd.
> +    description: Plat\'Home Co., Ltd.

Actually, I think this isn't necessary. Where was this causing a
problem? Only in single quoted strings do you have to escape a single
quote and it is done with 2 single quotes rather than a backslash.
However, to maintain a json compatible subset of yaml, maybe we do
need it.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
