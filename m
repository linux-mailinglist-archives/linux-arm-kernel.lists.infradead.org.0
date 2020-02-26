Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0C8170AB1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 22:42:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0WsweVur+piosMdRC7VH32c1Kw9TXj18NPyaTmUkEL0=; b=Lkv1B3EkEyS4he
	f79NHtbEh+8g1NaKdLx4HzFXDLx8vacWPwZ4T8XGgqpMEz2HL7sXDmXzGtYCJBWPLsljXkWCOf8/3
	JLJt+IM28vHHG3PxVaqVkkPbeYKcsjyyH0rGnJrK7sVtLfPKsyPshcUdpq542aDtMkBzv0824zbEZ
	kNEk0QVcqKLP/6yNXMNj7XA2IDDDoQSFbKKe8hUCjmzRkGKfDTKz2d0KgxVb7l1WzrH+oQ5spRjIO
	+gbRXhBhe+GfPITO+kFdrZXzXtErY/37OyNan3YR5J3m+f+pxlMw44BTX5pvSPmjUNMVqrmBaz/Il
	KOPLAaTBPMTUUPi2iI4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j74RN-00045w-Lj; Wed, 26 Feb 2020 21:42:01 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j74RB-00045Y-F2
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 21:41:50 +0000
Received: by mail-oi1-f196.google.com with SMTP id c16so1130693oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 13:41:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=byAUrcii8a0AWXrs5vwsBsgaE4yUvZlmDVkZ5AzS35g=;
 b=OJnBAwHpnpdn142CuRvAb2ZHcV81Fo3CVtA2FUeZEzSxwjAU3AgsiUwbtSQfk5+0Qw
 SqXq92ZdXgAVOgRyYc6eBLl2N6i3A6lFpw8Z4wsZVo74cgkIJj4zzglHgMejjYXjW3un
 SYruj/ReOUV72A5AQdEZcAOA6h7qKD62l9bP+HxnKgvI+CGjdiVkbPE5cdaqq8LHlm6n
 rTKbRLhag8zvxXr4YBTdXPLaPgk0nCT3I0xXU8B10xw3ktmHMq+inKQuyFp9mazFhJ9C
 /jjUdOVS5GjP92V9l82aDwvp4pJ0f9gFNn8BO2JO0isuZq9MnJtgkcPmQkQBc4y954mY
 qRfg==
X-Gm-Message-State: APjAAAUuauCHZ4LHNcWPc6fmdWYSvOemAuEQq4VqbC/RfFSavOM2u3Lc
 A0IK7ACFwZftsnhLP4i5PvehiCtjGg==
X-Google-Smtp-Source: APXvYqxncRleU9XUmrQhPNUgmsgZz/wkWA+ajBRa/ZE/p/Nu2nfYhoCyBE4+zxhuQIdH65UenErb0A==
X-Received: by 2002:a54:408f:: with SMTP id i15mr862375oii.64.1582753308418;
 Wed, 26 Feb 2020 13:41:48 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g25sm1213381otr.8.2020.02.26.13.41.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 13:41:47 -0800 (PST)
Received: (nullmailer pid 9586 invoked by uid 1000);
 Wed, 26 Feb 2020 21:41:46 -0000
Date: Wed, 26 Feb 2020 15:41:46 -0600
From: Rob Herring <robh@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: Convert UniPhier board/SoC
 bindings to json-schema
Message-ID: <20200226214146.GA9521@bogus>
References: <20200222060435.971-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200222060435.971-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_134149_499404_D52E4A43 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 22 Feb 2020 15:04:33 +0900, Masahiro Yamada wrote:
> Convert the Socionext UniPhier board/SoC binding to DT schema format.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
> Changes in v2:
>   - Remove 'examples' because examples are fold into /example-0 node
>     and there is no way to meet
>       $nodename:
>          const: '/'
> 
>  .../bindings/arm/socionext/uniphier.txt       | 47 --------------
>  .../bindings/arm/socionext/uniphier.yaml      | 61 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 62 insertions(+), 48 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/socionext/uniphier.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
