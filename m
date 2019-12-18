Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F5B123CF0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 03:12:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tQB9huSkIYaEim5y6a8VfMegrsBcfsMUCinxI2SpD40=; b=RiZcE4Pih6EwW3
	iHQktmmG1wPhWLvR+Fxnyb6bclVrhrNI7VSeoaIvtub2TLGu7s0YF5oEPqcoybJetRjQEDg3PfxMQ
	Onb3s2BWMLUbsRPbUO+5P8HZcGH79j9Qs5QK4bwi6WW76qlKPJyYAsiIV1X1ZoPZQ+F5mAnOpNX/k
	O8Q43f2UzyMJhmNjqNbqjpizZPisBhAcJy4v/ZfoAKe3AIa4PhiOiqw9tL/ut3Uwuai+RJnbefdXy
	HNs13hOrfjGdK10ytur2xigaidlC5giwoD9zT92ipB3TWGXFth1MeZGS4Sx9atKWz4x41aNT6ghB4
	7X7kJK3UoJmDddkXfsNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihOpI-000417-NU; Wed, 18 Dec 2019 02:12:36 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihOp5-00040Y-1Q
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 02:12:24 +0000
Received: by mail-ot1-f67.google.com with SMTP id x3so380702oto.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 18:12:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+JPIypBT296WwLk8CC4vkpVgQTqPJgSPUkCzgyjmxMA=;
 b=ihUFT3qGODptw7VWd7q+VD1XEiWj/HXBPmbzljNqQA/kUQBwYOPkKUaEpcJ3LT19mA
 n1MjhlbCo2GyGJk+vo0LecW02XWo3995oBPnk02m13szEDvshFQjkxokiuy4kOT3zZBo
 tSDNY1WAwEzSbLosNt92gowmgEKzxv7q1Dan501G4kqA6gEGspsIM2mKPNAfIDNKkEhU
 B4Av3jDH13FC4xcVxFhNDv4XxG+d1oDWDCwDEzcPBYB/qxAsBb63N+ZKtQM6ddINrMPy
 asIDK47+dOOC6SxsSo7F+dL9JWXc7M8dWpM/nlpJwUdeR4lS+btZ7jwnwl7IY4HFLUFX
 byCQ==
X-Gm-Message-State: APjAAAUyXJKWkZig72vM2R7vvSI1rKDkOnbQw6luKB9R4jmWsk4gsrtP
 aCLuALEJSldlhdqNL/Pn5g==
X-Google-Smtp-Source: APXvYqwobZaUu+mbmoCysRALCWLnnpjSYEKAG/YYdm/rVqj5OZCzd4aRgtCVgTPlE9VhgMKHVxBPqw==
X-Received: by 2002:a9d:6a98:: with SMTP id l24mr435845otq.160.1576635142409; 
 Tue, 17 Dec 2019 18:12:22 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u18sm256188otq.26.2019.12.17.18.12.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 18:12:22 -0800 (PST)
Date: Tue, 17 Dec 2019 20:12:21 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH] dt-bindings: interconnect: Convert Allwinner MBUS
 controller to a schema
Message-ID: <20191218021221.GA25268@bogus>
References: <20191213074533.27048-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213074533.27048-1-maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_181223_082962_9933A948 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
 Frank Rowand <frowand.list@gmail.com>, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 13 Dec 2019 08:45:33 +0100, Maxime Ripard wrote:
> The older Allwinner SoCs have an MBUS controller that is used by Linux,
> with a matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../arm/sunxi/allwinner,sun4i-a10-mbus.yaml   | 65 +++++++++++++++++++
>  .../bindings/arm/sunxi/sunxi-mbus.txt         | 37 -----------
>  2 files changed, 65 insertions(+), 37 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.yaml
>  delete mode 100644 Documentation/devicetree/bindings/arm/sunxi/sunxi-mbus.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
