Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B55E150A3C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 16:49:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qLwYELYf3ZF8IgGOiVr2Y8FEWXWIPkPEBZgIZ3hSRaM=; b=GiCtdj/NGdMquR
	YzlIw6c6UoFPSgTP3bcbz/AtLVx38TB0rdtUPqr1Oa19BW/zt/J3047DXZRuRkHmjTrDfzgtveR6U
	DUyZ5V8HLNSWQAE9XXV4rBJlgKc/OwhxHPh/P5xF2pvWCG7ei4hLJXvsRewT5I7R1aZNWptbhEKPD
	urChMrl4QIJZXrHwiSF/W8c8LGa7dEKuSyvWeZPY13q7isOfPhtxIbpIJ55ZCD4bTdcLd4/gns5NF
	y4a6pQYkfFvqYdpi7NvtrhPRcnLuPvk1I4putkwRmJHatLAibbkL/8X248kEsUPC25ug6ijXSDOb+
	/raDnz8+hZv2Vmu6oPTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iydyV-0002bi-5M; Mon, 03 Feb 2020 15:49:23 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iydyO-0002bL-LG
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 15:49:17 +0000
Received: by mail-wm1-f67.google.com with SMTP id a5so16463258wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 07:49:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xDmbbJ5yTsThtIu3aslzxfoKzECwfla5yUHJc1NYGcE=;
 b=rgJ4EW92MeadxatWoGG/e2KS0BoAdqB5Uo8qxhmk24suaxUKJea84eMffsNN1Crq9b
 rpVGeiD0gTf2vODAS+tB0ekgEONGk5kCNV+Rh4dxXOFg5ST5I11Zv+uUSoQjAQyyop+h
 REZi8klIRpLB8sBtEsUo/A6aHd8/7FnsSdvuMdy2GGxVgVQLrMoS92Ujdwt5zrKp1y2L
 jEKlVbkFk8Vyf6NpwdVhdE/NMM6tH/BPx6AHPHsMHycjOCaghSftEAlj9a6c+8QSfjYn
 4t04ahkAyq43ocGJd0PI431Oc7czd3oxktu+oPrlY4VSrF01LhERYz7nX3b816iSBG3b
 Ubrw==
X-Gm-Message-State: APjAAAXPBvNVKV0Eki6iVry4hfj13YpTLRGnTwQO8UohfzidaMxDI08N
 Cx0k/l30OzPqtn0i/068dA==
X-Google-Smtp-Source: APXvYqxiBN2aBKndQt7A20lKHnBEuu3PnQ2ceap8QDoTokh8/GBYU7fW/d8zvuf5BGABtbfmyWNxWw==
X-Received: by 2002:a05:600c:2207:: with SMTP id
 z7mr30204715wml.138.1580744954980; 
 Mon, 03 Feb 2020 07:49:14 -0800 (PST)
Received: from rob-hp-laptop ([212.187.182.163])
 by smtp.gmail.com with ESMTPSA id f189sm25570525wmf.16.2020.02.03.07.49.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 07:49:14 -0800 (PST)
Received: (nullmailer pid 23082 invoked by uid 1000);
 Mon, 03 Feb 2020 15:49:13 -0000
Date: Mon, 3 Feb 2020 15:49:13 +0000
From: Rob Herring <robh@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 1/5] dt-bindings: interconnect: sunxi: Add A64 MBUS
 compatible
Message-ID: <20200203154913.GA23022@bogus>
References: <20200125110353.591658-1-jernej.skrabec@siol.net>
 <20200125110353.591658-2-jernej.skrabec@siol.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200125110353.591658-2-jernej.skrabec@siol.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_074916_691380_A23C91E1 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, robh+dt@kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 25 Jan 2020 12:03:49 +0100, Jernej Skrabec wrote:
> 
> A64 contains MBUS controller. Add a compatible for it.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  .../devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.yaml  | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
