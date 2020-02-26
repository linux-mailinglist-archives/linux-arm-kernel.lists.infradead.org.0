Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5694E170B4E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 23:14:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GSI5EsiMTScW6e5ojG6Dm75I5JDKE21Gs3PHJHZkVtA=; b=k6+LqsmoRBkA4G
	CQ8ACWOw6F730NGSzUmpwpIAZCVHXe+w9+x95TtJwDRT35pp6AifUPSEQfDcKOAxmL3WJ3S02+8s9
	MAe7znnSzxF6eJV23Ijyholv4QWZ8XMHNxb6Cman0GYj9b5SG7E3UqoBU8HRptUqEQYN2J7DhHEES
	gFnt5E6chCxSIR3QHkCSr/CJcV+ZPLiHZ5dY+qCzH77oVFKSYyq0bqk7B+1STuK3okL91uNTWBVgF
	8RmpJB9a8q5/BHzVKz2RyHRH401f/wNTIkb0O9Ydr/s7BkNwHOlY+x805ooybZ3XhqvY6nL9k3kuC
	ZizhwgATcZmCPPT3bvdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j74xB-0008Mt-Ug; Wed, 26 Feb 2020 22:14:53 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j74x0-0008Ma-R4
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 22:14:44 +0000
Received: by mail-oi1-f195.google.com with SMTP id c16so1222456oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 14:14:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bok3LP1w1qmqsuO1k7gdAuotciHOwlDqvixeOQYTb0o=;
 b=cbjsnrurhvMi38vxLWg4LhFORYghpz3JkelIuzGvBM7QY4kQuuRhNY6WkRzO8GKwQH
 kjDEsIkpLxqpK9lknufQDkpOzOhj0C0g0jbVLPZ3jmYtYYrJt5KFszRopaozvEBM8gFK
 XoTZz7UmbOOB9QVrANoFxM4hLYewgX3y1/AH0r2RArjf8hWAdO65qZV1o25b9tM3pSn7
 SMvxKfTiRdoX7LPbaSCeP0kXW6qhMTjZiXcqaHATKVPXhYGrtsXHYfYUzGfus7ljCb4p
 UYUlIKia8pU/gHlN6Q42yV58zFbi4LU+Hwhy4CythI06EeFNTlEOln/mdpQ09DjWxVB9
 Wl7g==
X-Gm-Message-State: APjAAAWRO5HW+pkPibn02hOYa9E9vMyOqhfi7LfduNzpd94A70IdUpX5
 ux/ckmsl9E0llTjB9kCShw==
X-Google-Smtp-Source: APXvYqxM2+l7pZyEyd1X9E2oBGjRy47x/nyBH4hVjeWJ+OHmmT1cq5nXasi2tof7gwpMjMdC0Ozchw==
X-Received: by 2002:aca:55cc:: with SMTP id j195mr1017627oib.22.1582755282012; 
 Wed, 26 Feb 2020 14:14:42 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z21sm1229903oto.52.2020.02.26.14.14.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 14:14:41 -0800 (PST)
Received: (nullmailer pid 28496 invoked by uid 1000);
 Wed, 26 Feb 2020 22:14:40 -0000
Date: Wed, 26 Feb 2020 16:14:40 -0600
From: Rob Herring <robh@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH v2] dt-bindings: dma: Convert UniPhier MIO DMA controller
 to json-schema
Message-ID: <20200226221440.GA28411@bogus>
References: <20200222112042.32345-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200222112042.32345-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_141442_874576_72BE7AFF 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
 masahiroy@kernel.org, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Vinod Koul <vkoul@kernel.org>,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 22 Feb 2020 20:20:42 +0900, Masahiro Yamada wrote:
> Convert the UniPhier MIO (Media I/O) DMA controller binding to DT
> schema format.
> 
> While I was here, I added the resets property.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
> Changes in v2:
>  - add 'resets'
> 
>  .../dma/socionext,uniphier-mio-dmac.yaml      | 63 +++++++++++++++++++
>  .../bindings/dma/uniphier-mio-dmac.txt        | 25 --------
>  2 files changed, 63 insertions(+), 25 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/dma/socionext,uniphier-mio-dmac.yaml
>  delete mode 100644 Documentation/devicetree/bindings/dma/uniphier-mio-dmac.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
