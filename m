Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89031ADF1D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 20:45:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aB4zKlZ+CFHlpKfPy2SKPrw+KF91DOSC/y5x/Vpeng4=; b=svEiFU+9mvy6sn
	zRNXFFHLxDSbAhdRLlX7WTUQ4aNWpq1RGJ0ViqYAvVQ4AeU67bM7d+ymoabAnwL5gdaRbmQ29Fyms
	wxrikEIh1mCRnje1x9UtiJZO8Put0y0zewsG2vnYrsUZgWcrP5s8c/LVnApvXg33OhYG793bbUwjG
	GvkPFD/mdgjARTUd/mf0so/OcgVQfJBBqsy3wLA8Ac4LQEEc+SkYvBcRMhgooeKa3hN/Ermb6hKYv
	n1ttVK1ogywwU3mf9xo2Vf/RsNElsxjR7ar7/kLdYXNsD+uvP0xyvKzguDL6pNLvziRfBVYug7tpQ
	3UpJGSjMf3r7i/Xh7+bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Of8-0008WB-E7; Mon, 09 Sep 2019 18:45:18 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Oez-0008Vl-RO
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 18:45:11 +0000
Received: by mail-wr1-f65.google.com with SMTP id q14so15205658wrm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 11:45:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YrOL30sDY0fFF3RO25P1Z4nhWQj8HX+rJUPrTFeiHjI=;
 b=NBrdXvoZAORBGkdT5j5g9bJlvSkYVVuKqTdx4G9MQsZSOBY8mJmhGLPllJZs9gPX65
 BMpyfh90qEFfyzaC5i+XhMNM6smyzqZV2PTmyhQr+w4V0JIi6m1lTr9nDIJNxd1xXe2t
 lSaiC0njFOEshBBZaebdZdDX7r3stn7liSha3Y4u5VJtNBQc4qk6Poyi+Grqs6w4IawK
 4NOamUasNe+eyj7ST61d68ChQti6q5EKwYBCMxzh6Wwr1N1ZXmQnVPk4ScNP07Ea8rVh
 2HJ6bXCtbQ/9rQefQiSKIDMPuLdJmrVQqai2quBfOdQMFMrf0gV0nEiRhsXsBQ6D1GZA
 A7nQ==
X-Gm-Message-State: APjAAAWCBiIz+LAIyO24m3BJJGQVWYax+x9RRG1dnTMC3Q/IwCgn61Ic
 TcbOVZzePvXpmwOmpK7Y9Fc=
X-Google-Smtp-Source: APXvYqypKq1gidEje2zDbtyoHFnpUOuyRNZlAkMPaKqkKBaiy31lqOmVJcIZndIVISluIOUl3RpSkw==
X-Received: by 2002:a5d:4709:: with SMTP id y9mr19868329wrq.129.1568054707627; 
 Mon, 09 Sep 2019 11:45:07 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id b16sm22275446wrh.5.2019.09.09.11.45.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Sep 2019 11:45:06 -0700 (PDT)
Date: Mon, 9 Sep 2019 20:45:04 +0200
From: "krzk@kernel.org" <krzk@kernel.org>
To: Yao Lihua <ylhuajnu@outlook.com>
Subject: Re: [PATCH 0/2] Fix init order of S3C64xx's clock providers
Message-ID: <20190909184504.GA10091@kozik-lap>
References: <BY5PR12MB3699A8D741EF6226B8DB65E4C4B50@BY5PR12MB3699.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BY5PR12MB3699A8D741EF6226B8DB65E4C4B50@BY5PR12MB3699.namprd12.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_114509_888640_D60F9D08 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "kgene@kernel.org" <kgene@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 07, 2019 at 02:47:48AM +0000, Yao Lihua wrote:
> From: Lihua Yao <ylhuajnu@outlook.com>
> 
> Ensure fin_pll is initialized before clock-controller@7e00f000 so
> we have correct clock frequency like below:
> 
> [    0.000000] S3C6410 clocks: apll = 532000000, mpll = 532000000
> [    0.000000]  epll = 24000000, arm_clk = 532000000

Hi,

Unfortunately your patches missed the samsung-soc mailing list:
https://www.spinics.net/lists/linux-samsung-soc/

Maybe you need to be subscribed?

In general, if the patches are not there, I do not see them under
Patchwork. You miss also review from Samsung folks.

Best regards,
Krzysztof


> 
> Lihua Yao (2):
>   ARM: dts: s3c64xx: factor out external fixed clocks
>   ARM: dts: s3c64xx: specify dependency of clock providers
> 
>  arch/arm/boot/dts/s3c6400.dtsi         |  1 +
>  arch/arm/boot/dts/s3c6410-mini6410.dts | 22 ----------------------
>  arch/arm/boot/dts/s3c6410-smdk6410.dts | 22 ----------------------
>  arch/arm/boot/dts/s3c6410.dtsi         |  1 +
>  arch/arm/boot/dts/s3c64xx.dtsi         | 14 ++++++++++++++
>  5 files changed, 16 insertions(+), 44 deletions(-)
> 
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
