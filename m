Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F49711354F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 20:01:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=haX4xxBLlf7Rw4UT6py+7WbfkR2V3V36ugFEb46/PZw=; b=WxFtmQCRCgK5BH
	XuDvI7K7tq4M/GNknusJ3JnLBeVeLwQu8M4bdz+LtfwQU+VluC8KuocUsV/3sv9diPr+tjqWwmByU
	W6KkQ/5G2U/oK9rO30+S5O1e+yeiuuDgALGxJfQ3JiZCwK4plrdP1OiDqHca6SkXpYWC256Sji1Kv
	rkOOszGDmsG+F7zk0NMLsUoJ9YUwsjOLwp5xw9sGivHiA6xGze1MvWGFNgrI41kboKlNay/rkvrUm
	Z4Cr83GuDtNShsV4KrX+wNulxf9KkHz7MccXGFhrH0xN+KnaX2YFKt+NXOsCF4d3jblX2iC0WZita
	xBnr1qewsQu926wpiTmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icZth-0004Mw-0K; Wed, 04 Dec 2019 19:01:13 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icZtX-0004Jy-QK
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 19:01:05 +0000
Received: by mail-ot1-f66.google.com with SMTP id h20so240966otn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 11:01:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GwBhK4ah0i/Ig7V+1zYwmmj4biw+P5iHg9PENmdCa7c=;
 b=iEjAE57xzvHYbu9Y/HUV6LQuYCltiPTBwEQ1Sf2ur/QE5eCAQpuK4V9A6lxuGzq66A
 qcRK2CouH/at8VSHoj+hwUCNsYNSdV4I1OZU5aoDeI6Iv9I4gVSRj5eVgcnG0u9ks+dK
 vTTu5xEQvV/uFa+uTEg/HvldEHubezbeXNQoJJQCLRz7mOzKOurGoDSvrhVb5vtq+Knw
 ZDjAazhDteJW37syH02gamsfORU3zx5UwNm4BCqEj7oOwFfwWUaVUScBJ2wwtdKaM7uC
 xB+ES1TaeHHFecoD+9MfD5yCEpf0fs3q3jk/5nzR7sWROwzJTgN2BmQ0nY2WLa3Iq5xo
 F4Lg==
X-Gm-Message-State: APjAAAWQNcwyniI+v4+ilvbrdqelFPFa1lfPnwU+2qIa+YANuUjjq6ia
 XvWqcufKcusCki5k5F+lKQ==
X-Google-Smtp-Source: APXvYqykaXzIiV7E1St6j6MMG1XrHs3Z1lg6Qp5Z5odvxnUvdStDByxIHHh+z9HCbxikKEPYNojVGw==
X-Received: by 2002:a05:6830:1e75:: with SMTP id
 m21mr3582520otr.36.1575486061635; 
 Wed, 04 Dec 2019 11:01:01 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r124sm2656329oie.9.2019.12.04.11.01.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 11:01:01 -0800 (PST)
Date: Wed, 4 Dec 2019 13:01:00 -0600
From: Rob Herring <robh@kernel.org>
To: Stephan Gerhold <stephan@gerhold.net>
Subject: Re: [PATCH v2 2/4] dt-bindings: vendor-prefixes: Deprecate "ste" and
 "st-ericsson"
Message-ID: <20191204190100.GA28640@bogus>
References: <20191120181857.97174-1-stephan@gerhold.net>
 <20191120181857.97174-2-stephan@gerhold.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120181857.97174-2-stephan@gerhold.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_110103_857207_43572826 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Stephan Gerhold <stephan@gerhold.net>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 20 Nov 2019 19:18:55 +0100, Stephan Gerhold wrote:
> Until now, device tree bindings for ST-Ericsson have been added
> inconsistently with one of 3 possible vendor prefixes.
> 
> "stericsson" is the most commonly used vendor prefix,
> so deprecate "ste" and "st-ericsson".
> 
> Suggested-by: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---
> Changes in v2: new patch
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
