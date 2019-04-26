Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C421BB104
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 00:52:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0gDfsfaQC4QxgAXjoDU9YS/YjhDTa/Nx6iJGNbGCXj0=; b=sueYskwPvrrkif
	h0eFtSx1jU2T/PEyobcgRy/ATdhKbcCs2UUfd7vODajfvWAt3Z14PVdS511i8QAEb8aMOtiHo4bf6
	VyukKaPVgBXQZAy77RJV2OMrv342Jsm3V2CYW2nLQeKR5CFzKXaSQc7jGbH5ljThSs2BHAbQ5vXI5
	FIk7rPfwNHvijrS1Cy5Hzl9z8DaZZWbG3MTy4rQd7Bdi1cbbf55tk8fz79/IN+LCQOKk3WX7BDetE
	0IpSNF8RU7TWv1TZE6z1H8UlVWCu8VIlRyHEyCFp3IcWgQAAL04aAJnCCcySQ5qU5psoYgdeMizgM
	9ElwiZ261j9C3DXbCaEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hK9hT-0001gw-Mw; Fri, 26 Apr 2019 22:52:11 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hK9hM-0001gX-LM
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Apr 2019 22:52:05 +0000
Received: by mail-ot1-f67.google.com with SMTP id m10so4047424otp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Apr 2019 15:52:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=mtYtwFIbx8S3depflq3BptssYAP1IFscU7Wb7r0n4tk=;
 b=BjKQhmnti7IXc5+xUbP4KES0/uTQIxaZh5yHlyvjdED8FSGnZEf5UpsnQa+3OtHvWm
 LC73oN+US/7Ll6bYfVLhMByrVdGjBjykLBbXiD4humLYR/+ph8TCcZFQjwrOXgaGKBIH
 R1uFURDYZAxeYANwoJz00gdv71dYI7MqGi06dUfCbvyfNlYUmV0uLFcVOwKd0A5WTWpx
 nk+vVhIqli7z2JSYXey8kmamZjjBclfDvmYPuf4T89g4somECZkl6ZYgJRNMfyhJNj9R
 WAJRXsMzSmmxo9zbGjhKYzto+DUCZyTBGZq+H0kFo4H1GxkSJ5CBuP7v651/3OY8TH9k
 AGLw==
X-Gm-Message-State: APjAAAX99SuKv3ccDRl7nS7pXN9Q0aMuZa9+oRrMWe7Aw8wb7RFuUhFG
 ux1DvfrCYFVsWrWswlWqsQ==
X-Google-Smtp-Source: APXvYqxlU8W7bOcJUhv1rMYWYXbGCZnZJIdC5N5ocIAfY0pycnVzzdsv9Ds6gtmAx4J/iPDOsrnciw==
X-Received: by 2002:a9d:6014:: with SMTP id h20mr1605379otj.8.1556319123645;
 Fri, 26 Apr 2019 15:52:03 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h8sm10796866oti.64.2019.04.26.15.52.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 26 Apr 2019 15:52:02 -0700 (PDT)
Date: Fri, 26 Apr 2019 17:52:02 -0500
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 2/8] dt-bindings: gpu: mali-midgard: Add bus clock
 bindings
Message-ID: <20190426225202.GA12379@bogus>
References: <20190417173031.9920-1-peron.clem@gmail.com>
 <20190417173031.9920-3-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190417173031.9920-3-peron.clem@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190426_155204_701006_BFF840E0 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 17, 2019 at 07:30:25PM +0200, Cl=E9ment P=E9ron wrote:
> From: Icenowy Zheng <icenowy@aosc.io>
> =

> Some SoCs adds a bus clock gate to the Mali Midgard GPU.
> =

> Add the binding for the bus clock.
> =

> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt | 6 ++++++
>  1 file changed, 6 insertions(+)

The panfrost driver is merged now (to drm-misc) if you want to add =

support for the 2nd clock.

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
