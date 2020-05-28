Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AFD1E53FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 04:34:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1fPZVzqh+sNJwsS2FaAWZDeDWHJaPEGkh/CGjYZ88Ak=; b=IXyUuBISxp5loo
	xIn3P3yOm+MQ59Xx78k+Lz5KJNNfMsQe646baNTZGBvozUQxmXYhA/qXIN0wYSRlZzQDm+nhgWsUD
	6tGo7tYxcqWmnqa3oZNdUeianhBZyKJloEVF6c6fhQFcqULuxC6rIekkXeUn/kWBFroZqIPXWr4LN
	84JY7MkmLdtXvpCT93UqEnk6IBeHReGI0Cgmx9Wqy9PV5Tzf8AdYKodX1S2ctHBcqg8xbxMeO17Uy
	vX9EfWro9yKBi8GMnncDju+hIgLwDtns/PKkKsH37GXRwISQrLUdmQjFnlHc5iw+qiwdoUqlvpLPt
	dkq6c2Slqtwj8eegS4ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je8Ne-0004oI-Hh; Thu, 28 May 2020 02:34:50 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je8NN-0004kk-5K
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 02:34:34 +0000
Received: by mail-io1-f68.google.com with SMTP id o5so28330574iow.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 19:34:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=n/FH6mJ3fikdqE4Zcc+b5bEIYmcTN5k726IIFViGyw8=;
 b=PsYmVIFycpQU9liBxdJO3Tb2lqa/ce3JvbJuqyrYCnPVyUgnNuVf78jKqhm2y3vDfn
 +aLatX/LFP6r4OIpgC7+72pgf5JhkAWp2ecMNBdnV01QzpbcMI6Ez1QczrnsN3c9f4hK
 V/IQ9a3hjct4hIrA/bSsTnZ7NApQYos0M+2flu6oKZAM/BxoroeVm4dHI7juKQjrFfyA
 ky+JbXBLeN/RccuEfBrTWzhKKc8szbMCnSA3z+dU1AvL1JZdCnsypEvoXF7TBYyAShbM
 ayvgYV2TLLN6FhjSq6NrIaHMmZJbTjFDVivAQ3L2Sk6ECxThUIPpENWcTlRzZSqrHl4T
 a79w==
X-Gm-Message-State: AOAM533tcq7CCTfjTTg4H4kiCW+/40T33hciJHxMr5qzcjrYu+vW0HEx
 Il/67N1rntfnfYnqgzkJjA==
X-Google-Smtp-Source: ABdhPJzlRpRHQMmZDZLj/tYbF7cnyKdNiYI4MRq2hMn5XR8oW8DZfDevLNinGnIjZkv6csK9kUeBLA==
X-Received: by 2002:a05:6602:2ac9:: with SMTP id
 m9mr710941iov.68.1590633271819; 
 Wed, 27 May 2020 19:34:31 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id l21sm2658506ili.8.2020.05.27.19.34.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 19:34:31 -0700 (PDT)
Received: (nullmailer pid 3250747 invoked by uid 1000);
 Thu, 28 May 2020 02:34:30 -0000
Date: Wed, 27 May 2020 20:34:30 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH 15/15] dt-bindings: usb: dwc2: Fix issues for stm32mp15x
 SoC
Message-ID: <20200528023430.GA3250641@bogus>
References: <20200513145935.22493-1-benjamin.gaignard@st.com>
 <20200513145935.22493-16-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513145935.22493-16-benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_193433_237929_35B28C92 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, alexandre.torgue@st.com,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 May 2020 16:59:35 +0200, Benjamin Gaignard wrote:
> Correct the compatible list for stm32mp15x SoC.
> Fix the name of the stm32mp15x dedicated supply to be aligned with
> what the driver use.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  Documentation/devicetree/bindings/usb/dwc2.yaml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
