Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E25170B47
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 23:13:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YWaYjEJ3HEI0+XLTKfZ3KHEzUYl6f78bGiCXfX61U4k=; b=Ga1uwOU3vzVJ28
	002P93S2Wn1KoBazNdFFttOdyQvbY1C5KEtTBhRtCFKd+ThIaq68oa6VPdI3Vo3Hu8XRqqzbLCU6N
	LGnsvlzIuEOwjoEy1bu+IUK3roesI9VpDsFZhxlxPiN9QXwK0eZOt3+FFcrrEvTkwl9r1bEbdm/XA
	ZIuPilecFMpb+EMvFPMgqdrNEg+KhCPAtPmil76pL2RIqxNAZt5R0LaRi9uffoxmtxIT6Tils5cat
	xg9840VPoP8iebIEGX5l4Jb9H5vvNtMrXHzUiHyJgf66n2cwEWLUZTznD3N8mbY1D4k932/iYIs+L
	HEg0cRbYEtg6zo3CKlPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j74w1-00081x-IA; Wed, 26 Feb 2020 22:13:41 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j74vp-00081E-II
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 22:13:30 +0000
Received: by mail-ot1-f65.google.com with SMTP id g96so955981otb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 14:13:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VADzarmrxahCNR8FX+Jii1uaWPHIPd0BL4EYC9qsa5g=;
 b=tZjo0CQHjM8unYLdDS60SUuUwjBJ2JwMeUQ7XBa/ggPwMrKaSHnHDdgNgmorBgrmaT
 NAin6am851JUuFtYMtQ8Ku/zC0morKfW/Ls1zQgON/wp7gIgJlj9bLiI40Limi3zr8bT
 UP2I48fKHNO0cqD4pkRLTGk8tx/Y4ZU9Eee0R+9vD+a5a6bN4oQDTEU4HE9MHXHtleH6
 69CPEQClI6uYH2uYlgXuEMw1ghU2vAcs2Lef703Pi86xFRsgk482x25/uQu2DoBvs5Hf
 i2iVR2aKo2BWBAgGo1VlHTEhbUU+qNjFm1QrL2xYi6cDjFVU6HkLhVr/l7om5+w3+mmN
 oDrQ==
X-Gm-Message-State: APjAAAV9V/C73XD59drEiVFUiW5wBTQek4aUzH75ujMorVCzFBaagJWf
 vMIq4l+YsNAXn+HfPhcE+w==
X-Google-Smtp-Source: APXvYqyVYmNd9TzqdRK69Cf9KTihwGV0Co1KZ2Djifo2WvE+upUX9u8H7iL2I4n/LK1KC0WI9bHjwg==
X-Received: by 2002:a9d:2264:: with SMTP id o91mr802190ota.328.1582755207398; 
 Wed, 26 Feb 2020 14:13:27 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w20sm1226848otj.21.2020.02.26.14.13.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 14:13:26 -0800 (PST)
Received: (nullmailer pid 26464 invoked by uid 1000);
 Wed, 26 Feb 2020 22:13:25 -0000
Date: Wed, 26 Feb 2020 16:13:25 -0600
From: Rob Herring <robh@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH v2] dt-bindings: interrupt-controller: Convert UniPhier
 AIDET to json-schema
Message-ID: <20200226221325.GA19817@bogus>
References: <20200222110435.18772-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200222110435.18772-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_141329_605727_6765D266 
X-CRM114-Status: GOOD (  19.88  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 masahiroy@kernel.org, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 22, 2020 at 08:04:35PM +0900, Masahiro Yamada wrote:
> Convert the UniPhier AIDET (ARM Interrupt Detector) binding to DT
> schema format.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> Some qeustions:
> 
> I was wondering when 'additionalProperties: false' should be added.
> 
> If I add it to a bus controller device (e.g. I2C),
> I see some schema warnings because various sub-nodes
> are added depending on which device you connect.
> 
> On the other hand, the interrupt controller like this
> does not have a subnode.
> So, probably this is the case where we can add
> 'additionalProperties: false'.
> 
> Is this correct?

Yes.

The problem with 'additionalProperties: false' is it doesn't include 
what any $ref includes. There's a json-schema fix for this coming with 
'unevaluatedProperties', but the json-schema python lib we use doesn't 
yet support that.

> 
> One more thing.
> 
> There are multiple ways to do a similar thing:
> 
>    compatible:
>      enum:
>         - socionext,uniphier-ld4-aidet
>         - socionext,uniphier-pro4-aidet
>         ...
> vs
> 
>    compatible:
>      oneOf:
>         - const: socionext,uniphier-ld4-aidet
>         - const: socionext,uniphier-pro4-aidet
>         ...
> 
> I adopted the former because I can save 'const'.
> If there is a preferred way, I will follow it.

I prefer the former.

> 
> END
> 
> ---
> 
> Changes in v2:
>   - fix the schema warning in the example
> 
>  .../socionext,uniphier-aidet.txt              | 32 ----------
>  .../socionext,uniphier-aidet.yaml             | 61 +++++++++++++++++++
>  2 files changed, 61 insertions(+), 32 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/socionext,uniphier-aidet.txt
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/socionext,uniphier-aidet.yaml

It all looks fine, so I'll drop the questions and apply.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
