Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E71FB1A888D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 20:06:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGY1MDeVBvdAXbNe8eRGGJE1Uavtpybe7adN2uecCO8=; b=WFKvzEP0FFOnnp
	NN+yVIbGoJFKzKqPtnRuBu6QMVeUavVkv4q9D0XdGMdHDu0LvefBdFvHGRu12JS8Lnh+Pkj0v+BsR
	K2yLOHDyYT9CjHwuV0ncwe8IApgnc2c0UJtW7ppolyvuqDe07BtSAcIC4JZJb+umrSS6AxcTZ61+K
	w7ECv77ZK+LiG9JWp2qEkI4oRX0E92GD89oO47QR/nBRUQOFBfLUG/De0I9Z4Y+7zd0zvJJCasR7M
	SIc8CPLqDNIBCpEHfSFOEvipJvqh9UOqqBTNl72vhsF8RuCTJfmjoS6J4JEdrasmOlzl+cLXgFqhX
	Oj46kp25daglUpn1YetQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPwV-0008T0-Ea; Tue, 14 Apr 2020 18:05:51 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPvF-000580-GX
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 18:04:34 +0000
Received: by mail-ot1-f67.google.com with SMTP id j4so544153otr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 11:04:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=X8HnP8qvwXULBtvNF32k/xLU2uHML1H+p2xHE6J9vac=;
 b=uZjAbmTwJppTJs1SVyHlTAFnZdZDizjpELhu8/r5S97QsLWn+wnJoOP89a7FZSjuzB
 vNKAqcDh0GXkMJFX9NWYAiH2ipp6jAeMpgUsEdbrB7V8ZR2OyAhJyLfIUWVrOJ7UuCQK
 gW2zT5JH/1oAE9lNSrkfk7FNzwKNFKUYTdPIUL0KSuBZF+tbJdmsmAxyCLev99D4Dx2Z
 Lj0j5Z1MSJFj500F2tPJ48zQm3mvi+2d6XlUFB7bJAdM/NXhsEQ8F9peSSyo2TMPXhNS
 ERxfbnxwXORjDUnuRcj4ONZNp45qbVC6L75Czv3ugPEo5X1fOM9M0RwMxptREFjTO63b
 wj6g==
X-Gm-Message-State: AGi0PuaIufzEZVaVRLPh8UAoVJFI73MkUgwLeUEHfW4EtPom1fyqvQDn
 fXMAe960OlKqBduHFewckQ==
X-Google-Smtp-Source: APiQypKU3vXmgT04leTbcZl+K+74cxsiUS9r32WTmebpcpqG/ivXWoMLBr8jyRZWS5laaRPbzqwoKA==
X-Received: by 2002:a4a:3ec1:: with SMTP id t184mr19168387oot.3.1586887472468; 
 Tue, 14 Apr 2020 11:04:32 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g30sm6238585oof.39.2020.04.14.11.04.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 11:04:31 -0700 (PDT)
Received: (nullmailer pid 19544 invoked by uid 1000);
 Tue, 14 Apr 2020 18:04:30 -0000
Date: Tue, 14 Apr 2020 13:04:30 -0500
From: Rob Herring <robh@kernel.org>
To: Christophe Roullier <christophe.roullier@st.com>
Subject: Re: [PATCH V2 1/2] dt-bindings: net: dwmac: increase 'maxItems' for
 'clocks', 'clock-names' properties
Message-ID: <20200414180430.GA19162@bogus>
References: <20200403140415.29641-1-christophe.roullier@st.com>
 <20200403140415.29641-2-christophe.roullier@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403140415.29641-2-christophe.roullier@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_110433_552144_36321C84 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 narmstrong@baylibre.com, martin.blumenstingl@googlemail.com,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-kernel@vger.kernel.org, mripard@kernel.org, christophe.roullier@st.com,
 robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandru.ardelean@analog.com,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 3 Apr 2020 16:04:14 +0200, Christophe Roullier wrote:
> This change is needed for some soc based on snps,dwmac, which have
> more than 3 clocks.
> 
> Signed-off-by: Christophe Roullier <christophe.roullier@st.com>
> ---
>  Documentation/devicetree/bindings/net/snps,dwmac.yaml | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
