Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DE4D7CFB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:09:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BG+UEyyvmAhTtqqL5uvSHOY5oxDC09AxV3Vz6NgbOm4=; b=rfcYLyyb4WVWp2
	Untg5R9o2sg7HxS84gp5IlFozg270NkyTy0eS2ysu8RQTecTrT/Ia4clX8Hc4SBMdIFUtFRaVnpxN
	nYOnar999ZPpJmmI5DdxviSzriJy3mn5/qew6PPi4X0zPZwZRjAwtq2lCV1ElfOFIxrWG0gt5Eo9l
	FTou/oEGEKQ4yiH91kEnbrliMhZUqRLDJdH19KwNIVVJZSVXeBESujhyU19qLEaMIQt9Pg92yU4M0
	PCBNA9YdHHf54QGcyAS0yFYLtWJSoHWCq2fH+dzoZp1kACwpqK5osJ50Nc2mwLh9fzmiY3bjpMJA1
	BoEVdP4fTNoAqk8fUJBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQKX-0000NY-Vj; Tue, 15 Oct 2019 17:09:53 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQKO-0000Ms-KF
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 17:09:45 +0000
Received: by mail-ot1-f65.google.com with SMTP id 21so17578723otj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 10:09:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=r4m4ztFRVJREZvvAzKgEyEDcwgtV2Rxd/pgAgtcgzCk=;
 b=byKf2GI6jBrb8Xi/7e6Rcho8MFS2aZTsW7VuQu3yTlRLN0LcaDpAuNVcFfI54r4kW+
 yH02Xc5/cLo/zeE3WnnwkI8/E8Ks6XLCpTUtIbOyE5TPAeQy1lWaYKEQrABdJeueWWKN
 YythD8Ndorx0/XC30MndeJORUf6M1mTq12GFAnfQwuoNI7mZyWL8Q3quax/WFroxk7Ki
 YiLvzih4U2vfuYruamTlSrrg9/kJt38FqaYev8GB0gcwYTIpDUvXXNwgVBpNhDPYCgc8
 Ng844o1ZyYNVRGqNfhOrfYBa+GjmCzMVK7Hrfn17VH1NvY5s/5DjwaC/xVL4bt+4lmJA
 tFpw==
X-Gm-Message-State: APjAAAUPZCVj3rml3agxjP3Isw8bHSkbPF8slOI4GtR0KPHc/nEkbgvV
 H+IGZut2DRr9XlMqCOh9RQ==
X-Google-Smtp-Source: APXvYqwhdx77gfk1a6QK5izjA81UZqxl6F9iGcwDONqsSdoALxs7FicmBNSHjrzOmaBQ30bjBdCMhg==
X-Received: by 2002:a9d:69c7:: with SMTP id v7mr4207160oto.357.1571159383555; 
 Tue, 15 Oct 2019 10:09:43 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 67sm6935799otj.21.2019.10.15.10.09.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 10:09:42 -0700 (PDT)
Date: Tue, 15 Oct 2019 12:09:41 -0500
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH] dt-bindings: serio: Convert Allwinner PS2 controller to
 a schema
Message-ID: <20191015170941.GA8898@bogus>
References: <20191002120645.102805-1-mripard@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002120645.102805-1-mripard@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_100944_658986_25256A8C 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 dmitry.torokhov@gmail.com, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-input@vger.kernel.org,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  2 Oct 2019 14:06:45 +0200, Maxime Ripard wrote:
> The older Allwinner SoCs have a PS2 controller that is supported in Linux,
> with a matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  .../serio/allwinner,sun4i-a10-ps2.yaml        | 51 +++++++++++++++++++
>  .../bindings/serio/allwinner,sun4i-ps2.txt    | 22 --------
>  2 files changed, 51 insertions(+), 22 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/serio/allwinner,sun4i-a10-ps2.yaml
>  delete mode 100644 Documentation/devicetree/bindings/serio/allwinner,sun4i-ps2.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
