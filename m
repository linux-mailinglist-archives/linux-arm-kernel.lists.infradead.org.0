Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 865BC146CD8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 16:30:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=brdYcsQJo4WWTHf9K52VknFJ0bQ3Fk68nA3eSQPIvzk=; b=ArL7lSDPAdKbjV
	I7XUE4eprJHefZfPOsvfZ8Ag1IRDtRhqAY+kkLDZ0hwhfamAtnX2H6bIwCtWzwJH6/Gh4NkcZfzzt
	vJYUoFJuHJ+ItaP3QHssf/qqnIyDkzaEOcHpLApd8xohtfb6IG+b5G6WA6DBz+f+8y9VaBf1SoBTq
	u8x2iGAIhjO2EmLzL7vS8wplWB48Xsmn2Kb6FCoftOL0cotjrKi5yvurY1GsgSDZ0sCIJHfDg69rX
	RCmYLG61Sof1jinJeaXAYKJnH3qRkBIfNKkYKbOp/FVwboonL7cf67j8oVSWga3BoAPlqKloFQibs
	MMBFH/oMMtm/xEmXUt8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iueR4-0000wT-Ip; Thu, 23 Jan 2020 15:30:22 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iueQn-0000mI-HL
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 15:30:08 +0000
Received: by mail-ot1-f66.google.com with SMTP id b18so3128357otp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 07:30:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YHqBGj/ukTPkl69zvdBgkmcYaLWB1N0Qj6YD43sxU/8=;
 b=cFNWbsZa3xVEJKSAUmkAGYkZdX1TM9mCA930kw1Lx/1F9TVfjQzZmIIgEgtGy/tLZL
 TrSPRZ7QgtIWHMrj1DuC2l7hsBn49Hqrh+4B0HRWobSRakqP2FCLz0xMzSJyZM0WETZp
 3oImrfekyTwF0iqmHucCu9ZooB1P2QXo7DFp5gXK6qmTWBa+j/tuDu7ZWY2Qc8KcgWQD
 ftbvQqUlnLrXb0T1Izayd8UmIrlpCm0ilzBPT3GzQiW0/3LkDhdK81v/m6CmcRkyPh+g
 6KcETQsIM35chHEjajKFgUjLfkf16wvuAB5yEf3X455W5eDsbjC9PJUnU70KSZW08qFW
 EAAA==
X-Gm-Message-State: APjAAAV8bYx3DLBsShnRHYJ+nF9OFdVq51fbO5duGwDxvrF6psK16WlU
 FK1DRZ63irAfiFvjcF794A==
X-Google-Smtp-Source: APXvYqxkWG8AeF8EXXnGTWZ4IdGe6xCc6yw9d5YQpXCkxvBsnWb6O8ACMvnxGdINcohg5IvNyDKtDQ==
X-Received: by 2002:a05:6830:4ca:: with SMTP id
 s10mr11737763otd.268.1579793404638; 
 Thu, 23 Jan 2020 07:30:04 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p24sm891368oth.28.2020.01.23.07.30.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 07:30:04 -0800 (PST)
Received: (nullmailer pid 12956 invoked by uid 1000);
 Thu, 23 Jan 2020 15:30:02 -0000
Date: Thu, 23 Jan 2020 09:30:02 -0600
From: Rob Herring <robh@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Re: [PATCH] dt-bindings: stm32: convert dfsdm to json-schema
Message-ID: <20200123153002.GA14241@bogus>
References: <20200123083432.21997-1-olivier.moysan@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123083432.21997-1-olivier.moysan@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_073005_577908_F95ED9DD 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, lars@metafoo.de, pmeerw@pmeerw.net,
 fabrice.gasnier@st.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, tiwai@suse.com, lgirdwood@gmail.com,
 broonie@kernel.org, linux-arm-kernel@lists.infradead.org,
 mcoquelin.stm32@gmail.com, knaack.h@gmx.de, perex@perex.cz,
 linux-stm32@st-md-mailman.stormreply.com, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 23, 2020 at 09:34:31AM +0100, Olivier Moysan wrote:
> Convert the STM32 DFSDM bindings to DT schema format
> using json-schema.
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> ---
> The DT check still returns some warnings on this bindings:
> dfsdm@4400d000: filter@4: 'st,adc-channels' is a required property
> dfsdm@4400d000: filter@5: 'st,adc-channels' is a required property ...
> 
> These warnings occur because some disabled nodes do not provides the
> required properties. These nodes are included from SoC DT,
> and do not provides by default the properties which are board dependent.

We handle disabled nodes, but not when they are child nodes.

> As workaround in DFSDM yaml bindings, the properties
> (like st,adc-channels) could be defined as required,
> only for the nodes which are in enabled state.

We should handle this in the tooling, not the schemas. I entered an 
issue to track this[1].

> ---
>  .../bindings/iio/adc/st,stm32-dfsdm-adc.txt   | 135 -------
>  .../bindings/iio/adc/st,stm32-dfsdm-adc.yaml  | 332 ++++++++++++++++++
>  2 files changed, 332 insertions(+), 135 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/iio/adc/st,stm32-dfsdm-adc.txt
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/st,stm32-dfsdm-adc.yaml

Applied.

[1] https://github.com/devicetree-org/dt-schema/issues/32

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
