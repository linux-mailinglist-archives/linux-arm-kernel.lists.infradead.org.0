Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4479F176
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 19:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XrBdY1Ic2Ec5xLjbh2czXTnGRyz9wi0B5dCWhWDTNkw=; b=Na87ZNFnQSGItf
	Gfk4anFVqgDIKGjKntkdclECjg6QQDycuv1C5gIAWoJzdn6j2/jmDK20D0NjTooiuAGlJVHLxoSrM
	mUuAGczY1rPfn3ohCGnt7wGCN7uX/bx2/6b4ib+KK3glz/DNSD9sYdi/9DVkY5Li4DCDROpX6KhjE
	KRIErpyPZ7ign1e/V9ch+tOIt9XuV8C0qTD+IMNJ1tAk9n68ydOgyFnMbmEyRQCTJjpj9siB4qkto
	eO6A2hYae/+w618ZlxadJGsX3eOD+W5TrjJ7SHWlOTdMzGJaT0YldOqH51MF0HuRtrAFVOXo8LEfC
	2BZ3YN/C8ayBrzbtChCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2fCX-0004YM-W6; Tue, 27 Aug 2019 17:24:14 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2fCO-0004Xx-H4
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 17:24:05 +0000
Received: by mail-ot1-f66.google.com with SMTP id c7so19468021otp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 10:24:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WMXI2zhD1KFlN9OAyogD6LvupdHaX6/K2aSqEPCRbkE=;
 b=uSjGbjO3AoUU03VhTuzYnMW6ynRGlKEAInAfvyKmogwhOCjpLzyojXhXQ689TPL1xP
 rPbYrLFRcwaDwlAjRR458IYY0uhYhRK3KV/DY3IYyxUZpyQyzUQhecHx0ZxzMNtfgW5M
 gHfXqjf5ZcpyHcBOyFvVDfC5Gve/YFyX/aerUBYReXIJb5oVNGnyKIF9fc3+fQi3GnxL
 JFTnz6tQh+rdEzkQKlA0B1ePkrTuR+DxoYZZJzE17hXBCW2phh1S2b5FkaHEmvZYwikp
 2A00ivc8FTM8NjCZSN8jv5LvPys533ZJz2tgDWr8eN1xfq1U8Ogd3d5IIdV+EqDPc9E6
 ng/g==
X-Gm-Message-State: APjAAAXyIQXFhVtvjNbb5KMBjBczFYambrfJSYLZZgJIY3SCKmZYdR3C
 0x0Dn/y4UBWxBQnf1Ck7mQ==
X-Google-Smtp-Source: APXvYqz86xrWWnsZ0fBoWtAC+b/fcuKNLF8AQU/1noZz1PY1N8KVc5HYvwFIPqCt/I1QPoBRZzwnhw==
X-Received: by 2002:a9d:6c18:: with SMTP id f24mr19917121otq.344.1566926643880; 
 Tue, 27 Aug 2019 10:24:03 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id f21sm5468023otq.7.2019.08.27.10.24.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 10:24:03 -0700 (PDT)
Date: Tue, 27 Aug 2019 12:24:02 -0500
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v2 2/2] dt-bindings: irq: Convert Allwinner NMI
 Controller to a schema
Message-ID: <20190827172402.GA13986@bogus>
References: <20190821082138.11049-1-mripard@kernel.org>
 <20190821082138.11049-2-mripard@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821082138.11049-2-mripard@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_102404_568742_9396F5C3 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 jason@lakedaemon.net, Maxime Ripard <maxime.ripard@bootlin.com>,
 maz@kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, tglx@linutronix.de,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 21 Aug 2019 10:21:38 +0200, Maxime Ripard wrote:
> From: Maxime Ripard <maxime.ripard@bootlin.com>
> 
> The Allwinner SoCs have an interrupt controller called NMI supported in
> Linux, with a matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> 
> ---
> 
> Changes from v1:
>   - Remove the custom select and rely on the deprecated property instead
> ---
>  .../allwinner,sun7i-a20-sc-nmi.yaml           | 70 +++++++++++++++++++
>  .../allwinner,sunxi-nmi.txt                   | 29 --------
>  2 files changed, 70 insertions(+), 29 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
>  delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sunxi-nmi.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
