Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D99AE9D0E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 15:04:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RM5HJUEF5H09Ghvd8XYJggdBtHr8WqVCouq2Yw9RrgY=; b=tc1l2QTuY/rX0X
	oFYxajulZAWadLF366uUDCQieYT97NmTIOfsK76K047BAGZX5uE6UMCgKTcd+SW/7ifpYQDFKHlRx
	UacffTefvaOosZU7tF2BGvJKK3BLW8y5jWk/px6Hhc0WQnmUob3AJV2IBwyMIMvqu5LD99sb6RAq3
	GUxPKAKUL3UwDxdE0gvpfZrgAZnfYwJVSHxGvv/sqh8SUeOM49r1eFv+NHDU35DoXTZYXLfVtjGwy
	mPrGFPwQHIbsUuQfCebDng1BBLgNXWdzym8z1v/XjMNV7CgiVxvLRarADp98fJFKgNDZlkHSd37gL
	240DG76PozewYZso67fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPoaF-00032c-UD; Wed, 30 Oct 2019 14:04:23 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPoa6-00032G-GM
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 14:04:15 +0000
Received: by mail-oi1-f195.google.com with SMTP id v186so2048650oie.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 07:04:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LZENjOjFmyezYiGxEO/wBimrkyphD0pCUUhpP3wSbYA=;
 b=LlhhyicXVO14Uoxd0E7xrRHmOwo4U43osHp1hGUYwz4nJVXoI1dHQmoRMT6FChhC4k
 0ayv7S10reiw99IAt6LheqCW3n7yDUYXtUQzdLPsMB2C32DoYg1WxFtMfOB97jaj91rJ
 sInAUU/wTCAyAShO/dqrUZ0H4fjv+ffl4f8GRBkRNPX43jP7HAeDTqZfI21rNlbIC87w
 zIAyx/hVrwc0HQqseYc0D9gbiEzHwtF2YUjcx3WnUftdwbNxK52nHrdhRtACL91bnWso
 JnaehgYvmesFRz8kQzMLdmX5aldZXGVrJI7aPgvK0L5iHQHgAlrV0sQZWplMbaWYVlZI
 rkDA==
X-Gm-Message-State: APjAAAWM2EE4+luNSKB/WxLr/kC5G81uclDa3zDTYw2eMOo5owTuI1PL
 smc22cNsbhDHYXrO6nHxkQ==
X-Google-Smtp-Source: APXvYqy9QfgVpVNGitqDKbBjh8KZJ0eJt7caUcK4cnWlU27Z+TsCw/YG99rFknF3PL95JPfG2/G3Aw==
X-Received: by 2002:aca:4c8c:: with SMTP id z134mr8550002oia.15.1572444253766; 
 Wed, 30 Oct 2019 07:04:13 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j129sm20974oib.22.2019.10.30.07.04.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 07:04:12 -0700 (PDT)
Date: Wed, 30 Oct 2019 09:04:11 -0500
From: Rob Herring <robh@kernel.org>
To: Marcel Ziswiler <marcel@ziswiler.com>
Subject: Re: [PATCH v2 3/5] dt-bindings: input: tochscreen: ad7879: generic
 node  names in example
Message-ID: <20191030140411.GA4262@bogus>
References: <20191026090403.3057-1-marcel@ziswiler.com>
 <20191026090403.3057-3-marcel@ziswiler.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191026090403.3057-3-marcel@ziswiler.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_070414_537804_FE15A0B8 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>, linux-imx@nxp.com,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 26 Oct 2019 11:04:01 +0200, Marcel Ziswiler wrote:
> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> Update example in ad7879 devicetree documentation to use generic touch
> controller node names.
> 
> Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> ---
> 
> Changes in v2: New patch.
> 
>  .../devicetree/bindings/input/touchscreen/ad7879.txt          | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
