Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4457C1A7F8A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 16:21:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hCKoSNobDoEuzeZiQUOjPN+gLUJT+91IFAZOKCS7eDU=; b=eDW47QZ6DYOvn8
	9KUp7f5j/h3KA+jE5Is2ZUF3JS8EIsiiHpVqPeZ1eedoUb160f9Jm3X5GBrH1TVWbNNF8pqbA4LPO
	oroZoDgUF0e7tuhcXXQlhr9lQy2CG3VPxHC7ZuLOXLHMQ+G1DOREUc0I0UUSRnWuVZqGjx+8fdOT1
	zE73IZC5/JhCP1SXNEgnoJZe6FMft4IPSJ2YcIPSpqkwzz4Qa0wJcco93GMbsBAilgtnnTsctyWKx
	TlQabTR6IkAMq/nQ/uSvu4kq4U2Crc2jN6mGjZA5Yw/0mOFlKDJ+FrBWhDIXFEllR/6wHV2qZjsJs
	J0dNvvMbYKntwP6THltw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOMRa-00018O-Da; Tue, 14 Apr 2020 14:21:42 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOMRT-000184-2e
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 14:21:36 +0000
Received: by mail-ot1-f65.google.com with SMTP id w12so12038937otm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 07:21:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7qB5XS57n67MYXQJiHnjoHHOlP+v7Plet2PJhhKm2pA=;
 b=Qpymeh05VwSR73RD8nrGts4ozi7BOZ3DvMSoI6ZYErsuEurzReR+iZFc6sjZBWOhab
 hJjsFuH01Si72Yy0K+lI0p18mFtNmiR8zU56ZW3TTYFAMAEFJmtWLMxDY7FAmhEzA7e7
 4A8M4zOrfgx9ZRQOlluDCc5pQxVQh1bSY+9HLtupuceBWZ7xb7lOO8WLr1DQKgkRT0Ne
 syb5+nrvMZR5y8a1Z3AoWJS06soPdFAW6UCLCbQ09cNrvwmnBJAbPiu6WMphd7ltj3lp
 EFTbgGIaeqrEAvAmuFlQCrHzKi6S0nB3Jv0YrBDza8YE9T5uwuRBd5lK1BCPvJRNFYbh
 3Tdw==
X-Gm-Message-State: AGi0PuZnOuK/raOA0DKs/AKw+fhxeunOKGH4Nes+9eQ5Uw5MN7QWGV3U
 ouE8ajWeRtY85LRogJKYxQ==
X-Google-Smtp-Source: APiQypLoB//SQjLQBkpXtSSlfjCiCaFzojDq5PxSqn/uIWY6+9eAJg0r+nHSgJSEib1fkfvlSTLSsA==
X-Received: by 2002:a05:6830:1190:: with SMTP id
 u16mr19562600otq.83.1586874093641; 
 Tue, 14 Apr 2020 07:21:33 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id c7sm1257994otp.3.2020.04.14.07.21.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 07:21:32 -0700 (PDT)
Received: (nullmailer pid 18159 invoked by uid 1000);
 Tue, 14 Apr 2020 14:21:31 -0000
Date: Tue, 14 Apr 2020 09:21:31 -0500
From: Rob Herring <robh@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] dt-bindings: dma: uniphier-xdmac: switch to single reg
 region
Message-ID: <20200414142131.GA18052@bogus>
References: <20200401032150.19767-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401032150.19767-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_072135_113429_381320B0 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Vinod Koul <vkoul@kernel.org>, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  1 Apr 2020 12:21:50 +0900, Masahiro Yamada wrote:
> The reg in the example "<0x5fc10000 0x1000>, <0x5fc20000 0x800>"
> is wrong. The register region of this controller is much smaller,
> and there is no other hardware register interleaved. There is no
> good reason to split it into two regions.
> 
> Just use a single, contiguous register region.
> 
> While I am here, I made the 'dma-channels' property mandatory because
> otherwise there is no way to determine the number of the channels.
> 
> Please note the original binding was merged recently. Since there
> is no user yet, this change has no actual impact.
> 
> Fixes: b9fb56b6ba8a ("dt-bindings: dmaengine: Add UniPhier external DMA controller bindings")
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
> We do not need to touch the driver either because the second
> region is not used.
> 
> 
>  .../devicetree/bindings/dma/socionext,uniphier-xdmac.yaml  | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
