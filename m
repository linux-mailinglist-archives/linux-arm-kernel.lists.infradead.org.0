Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C517165250
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 23:16:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1rLk1WrF+8dbi70Da/P6rDCKtxlwq0E19/XXJRIueeA=; b=gfzohrMswQCHxV
	CJmwATLYp/Dy04G+nxRg544U+92F/I+YRKAAtSKkMTDEG8GpMXo+iP0R4VySg4utkGMJWeuxI42ui
	HeoBUYZQD7FgV4CWtY4cC5+YFiQaD0K4JwJlrETf8gTbhNuKocUQsmP0KLSlP7tSwV5vD0fCbq13P
	8V60pWPTVb881glSeC80BLme6jLjCizeIGgkt+XDUGSwhG2KgTZx+9ON5rw2w5bJWpFO2BCNAXQKz
	TePG7Jq1FpQ0vK8UrTABO2WyrGILxcSUXPi8A29Ej2tdsPPzypvqHSDZULT/935Idl1AgRIHE4z2D
	sf2tFayaxUQiRBQg7bkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4XdM-0004gm-Ar; Wed, 19 Feb 2020 22:15:56 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Xd8-0004fM-01
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 22:15:43 +0000
Received: by mail-ot1-f68.google.com with SMTP id p8so1720803oth.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 14:15:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WzIeoOT3NhhISTBLIs8RivW4psLyHoVdfYsEuyb/QSI=;
 b=mfBdrLXRRWvPcbmisN5F/Fbk19NRQ11+dh65CIqNWtQHYOM5ikjeUt6R7GU7peFZqj
 OzS/cQAK37JpKxb6EwqiIAWTB2nu8sj82YH3ckBn9OPqw3EgQ/FOnWRo2eEX91U6JEE7
 FDjpJ47sMUZvFuxnmcz2dfs6oISWif1NV3ZIjchKW/J/1SI9lN4Z4ac61D1ThDcSbHGI
 2u9BmnmXWCQoQ0jG40Hs7dsIfgbvJt2rPWPuEkh28GWvg8Fbyb4ANEEnKW4cer2g+Pxe
 yiZSeif+/Z6t0B3wjIsZ/ZAWkiFTsB0sYzVKk3fNos7BbMEozKJJ26ft1vVTn/XMdC8T
 axEQ==
X-Gm-Message-State: APjAAAXC7HJfiX9vcuyHsO4v+C6MZUz3BabikWTnw8+po7uU8V9BRgbr
 MtawP9pmh9wsXzom4Qj/Ww==
X-Google-Smtp-Source: APXvYqxIABp99XeWrJisGt+NiZfYzH1F7NT6JQ1/wtvvqdH4nXrtC5nk7FIFIY5KOBh1PfJ1It659A==
X-Received: by 2002:a05:6830:1203:: with SMTP id
 r3mr21865059otp.230.1582150541357; 
 Wed, 19 Feb 2020 14:15:41 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y13sm373699otk.40.2020.02.19.14.15.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 14:15:40 -0800 (PST)
Received: (nullmailer pid 2118 invoked by uid 1000);
 Wed, 19 Feb 2020 22:15:40 -0000
Date: Wed, 19 Feb 2020 16:15:40 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 2/2] dt-bindings: media: csi: Fix clocks description
Message-ID: <20200219221540.GA2067@bogus>
References: <20200210100417.78583-1-maxime@cerno.tech>
 <20200210100417.78583-2-maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210100417.78583-2-maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_141542_055479_6C4EB63E 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 mchehab+huawei@kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
 sakari.ailus@linux.intel.com, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 10 Feb 2020 11:04:17 +0100, Maxime Ripard wrote:
> Commit 1de243b07666 ("media: dt-bindings: media: sun4i-csi: Add compatible
> for CSI1 on A10/A20") introduced support for the CSI1 controller on A10 and
> A20 that unlike CSI0 doesn't have an ISP and therefore only have two
> clocks, the bus and module clocks.
> 
> The clocks and clock-names properties have thus been modified to allow
> either two or tree clocks. However, the current list has the ISP clock at
> the second position, which means the bindings expects a list of either
> bus and isp, or bus, isp and mod. The initial intent of the patch was
> obviously to have bus and mod in the former case.
> 
> Let's fix the binding so that it validates properly.
> 
> Fixes: 1de243b07666 ("media: dt-bindings: media: sun4i-csi: Add compatible for CSI1 on A10/A20")
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../media/allwinner,sun4i-a10-csi.yaml        | 30 +++++++++++--------
>  1 file changed, 18 insertions(+), 12 deletions(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
