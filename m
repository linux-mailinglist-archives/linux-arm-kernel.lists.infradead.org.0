Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0276A170271
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 16:29:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=60T3q1bkwcJ+6BMGpxsw+uQlwo7pakt0sN+z9DVoQdU=; b=tZPY3+4N8wl7kR
	vcnt7p/xTCQG+apH7bV1+ELA1nwsR170rTKY3shqlqzZbzM8evSyiXKwvAiMebIOcd800xLKCCBFp
	Hbp5mVL3TB5+GqzdFFyBsBnZLeRR2iIZNs5D196UXAN7JsSIMYRuT4LisNX/X8W9GrjtQg5rQqMIn
	JK4/utGP+Ia0uglRLZU37UHYccaNB6sfpkbDNweFbzDKfLj0NsFattatpI5x0eyv6tBPB93osf1hF
	/bff51nsyAU1U2Piix3sn3KVrVF0Zx0lAuqKcyueWrp0TFn3VjDqR3ymvgku/UIGe0f4bOXJlam86
	/axjwxegBkkaA4GAzE9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ydH-0004hn-Le; Wed, 26 Feb 2020 15:29:55 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6yd6-0004ga-Nn; Wed, 26 Feb 2020 15:29:45 +0000
Received: by mail-ot1-f66.google.com with SMTP id p8so3262484oth.10;
 Wed, 26 Feb 2020 07:29:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=L2eDFUj6+ZgHsv30b3IWHnryr2PQNv2tUG/pwmYNTCY=;
 b=nH4G0njItIfbVZWGSpWffHsOyyLSp+8vu6uuU/H5G+2C9slbyLAbwSOU7HCuCfPaUQ
 Nvy6HMRAcC0OPRp5QkfuD69QvDKB/mQ2SqS2VFsDWdavL0FevKqbOxM94cnxsWTofeuG
 0oiYcXgW3Bk+aUgwA47RZwqfX3+4ZPu0+/scueSDVXMMU0kgaqnHVvMxn5HB3dpB1K1+
 ygK3UWLtANtAivTyVBdSUYRGYMjw+wyzyqYA4KfJHvb+0og0YKefIfa5wzglz9bIOfNW
 HBUF7HjbBgfSsU56zrjcgvHV6FPMuUCU21y1FQWyXKAeNuzPF32tmD0SKdZL1K2h3H0E
 +S6Q==
X-Gm-Message-State: APjAAAX6Me0Cy5THWFKeu5l77z3nqR/F9/SnnqGVOyq7NRz4lWY5aJJX
 uM8VNtfT9iGP67EO2rLrQw==
X-Google-Smtp-Source: APXvYqwkgLOQ11KkhrIdopjRwjvsy1oDDhHlY1VCalaAfJDndkzbKF6J3ryE55DovBte5OZJt1wggA==
X-Received: by 2002:a9d:6ad6:: with SMTP id m22mr3775162otq.7.1582730984108;
 Wed, 26 Feb 2020 07:29:44 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r2sm874632otk.22.2020.02.26.07.29.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 07:29:43 -0800 (PST)
Received: (nullmailer pid 5886 invoked by uid 1000);
 Wed, 26 Feb 2020 15:29:42 -0000
Date: Wed, 26 Feb 2020 09:29:42 -0600
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 1/2] dt-bindings: clk: g12a-clkc: add SPICC SCLK Source
 clock IDs
Message-ID: <20200226152942.GA5832@bogus>
References: <20200219084928.28707-1-narmstrong@baylibre.com>
 <20200219084928.28707-2-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219084928.28707-2-narmstrong@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_072944_772870_A14D7181 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 19 Feb 2020 09:49:27 +0100, Neil Armstrong wrote:
> Add clock ids used by the SPICC Controllers of the G12A and compatible SoCs
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  include/dt-bindings/clock/g12a-clkc.h | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
