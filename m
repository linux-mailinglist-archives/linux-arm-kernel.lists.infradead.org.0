Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CFAF1FF9E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 19:07:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z4zKltYm/I5A+dC++UHfksM8TMvIio8BWGDDTAcMHAU=; b=LTYZRn2PCq091l
	2bRSe7BqFksrbQWwsJWCajel37bTy6PURWxQc801uZJkxGDElIJUcEt8LqRMqjjlNJ5+Z3uiaoLz0
	WPLaLoH5PJzypuaOWms3QY9O46kByf++fHHGa+U8ze1nQlusjyy+lSCv+kVnfs4zJ0dGmnpM/ymFv
	P/Hm64Ovm8/2B5kcTzdNZwnoRTBgHgxQnqHTtm6erzjFxbo099hssS2SCpGixwNclNqQal2vmpUl6
	vMa3XGvD9XTmlhoXNJLwQHL3KHTZvKp6+ovZTT2NVVlLY7yAZQhgRDMN6Gq0fmFuPwNknXTtLE3rr
	PQ/3gZUN7YJg/p/aQmdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jly0M-0007HT-IA; Thu, 18 Jun 2020 17:07:10 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jly0C-0007Gl-7y
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 17:07:01 +0000
Received: by mail-il1-f195.google.com with SMTP id e11so6508702ilr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 10:06:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ifwduw78OWeOcpzj0vaqe6BciVp2voLLjsFlxgZqSlI=;
 b=OXhAbnvgACb7uOEiG2/ir95GoAua3tP5iX5HlFrO/IsG47lM+RF2UsKYN1uoLpz14N
 2/6P41gUx/eIz4mTE0luJC/COSMrV8RSUrUrJEs1VhT2E052xPpB9Tnl8AI3Kyh60Urc
 isSqj3cg63ogHJK3XE+ldATEw9KBgBAk/nImy9e2zhqq8nn4yVURoVtvD0kHCnheBxNC
 s7P0lyToS9YjLKCRtHqlxHpoqyiBWaiQ6/Bd3zdZIAFY5ADoq+Ea/HMGWo9jFwC9eElA
 zdb/1JGcmCTiBt7lElIrHRtid1rcDM2HnCQGQFgHJ9FG0P02zfOgv3+Z7m5uNgVWPZRX
 O7Lw==
X-Gm-Message-State: AOAM531OUXsVCP7KOwCPtFh2hZJg2/tzQq5dYwmXi4B418mpFgc+Uu8z
 Sy1HfMRPlskBe7VGJOA9mVwuIJwefg==
X-Google-Smtp-Source: ABdhPJw81b3DAZIj3aCC5G7vPDZFbqJcRdJgtLBQ9xQ+fmU3vdQcz/N22q4w5tMZcBkmXm4va6tTMA==
X-Received: by 2002:a92:35dd:: with SMTP id c90mr5272835ilf.103.1592500019001; 
 Thu, 18 Jun 2020 10:06:59 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id x18sm1732593ilq.46.2020.06.18.10.06.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 10:06:58 -0700 (PDT)
Received: (nullmailer pid 539747 invoked by uid 1000);
 Thu, 18 Jun 2020 17:06:56 -0000
Date: Thu, 18 Jun 2020 11:06:56 -0600
From: Rob Herring <robh@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 14/29] dt: Fix broken references to renamed docs
Message-ID: <20200618170656.GA539608@bogus>
References: <cover.1592203542.git.mchehab+huawei@kernel.org>
 <6866c0d6d10ce36bb151c2d3752a20eb5122c532.1592203542.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6866c0d6d10ce36bb151c2d3752a20eb5122c532.1592203542.git.mchehab+huawei@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_100700_282868_A43F899F 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 David Airlie <airlied@linux.ie>, linux-arm-msm@vger.kernel.org,
 Mark Brown <broonie@kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Andy Gross <agross@kernel.org>, linux-spi@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 15 Jun 2020 08:46:53 +0200, Mauro Carvalho Chehab wrote:
> Some files got renamed. Those were all fixed automatically by
> 
> 	./scripts/documentation-file-ref-check --fix
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt   | 2 +-
>  Documentation/devicetree/bindings/display/imx/fsl-imx-drm.txt | 4 ++--
>  Documentation/devicetree/bindings/display/imx/ldb.txt         | 4 ++--
>  Documentation/devicetree/bindings/spi/qcom,spi-geni-qcom.txt  | 2 +-
>  MAINTAINERS                                                   | 4 ++--
>  5 files changed, 8 insertions(+), 8 deletions(-)
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
