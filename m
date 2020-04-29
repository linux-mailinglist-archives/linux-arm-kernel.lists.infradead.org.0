Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1451BEA0A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:36:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9TUqnwBRNovC8B7LeYCQe3WceeFY2ZwwigJ93fsev6U=; b=oe7VPDx3g1LMA4
	twHFFFstJFvAW2LeDpfEu8tVvYuT5smXkYgrGB6I/VsROkECyUBgR0d/pTd4o/VjQRFFUM/pQg6Mi
	rn/Sk2dP1M5nXaLsV5krgNYzj25E1yOm9/VPfrI4i9A0Xnod2HUz0a1Y/d72XnVfIQ1tQYC1pRgFO
	6eaV0a7a52P9B2iAQ+7nYP9FZ0kv0Oif8AlBCbYrgDMqREQ/Lzza57kL5axpSUvLOtjwR3B6TsPaB
	Ag32Moz8Hai8Wk8q0G7A0WXrImgn9OUKD9EpRPZrwLvkvQMLU6bhETpD5Tm39Mf+1o9mALj58l/OV
	XS6WENF3e+rViN8ejm6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTuNf-0006hl-Qw; Wed, 29 Apr 2020 21:36:35 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTuNW-0006hQ-CF
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 21:36:27 +0000
Received: by mail-oi1-f193.google.com with SMTP id q204so3217408oia.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 14:36:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OeAhLLVksUW5/hckjGBTuqnB90/z5Gzog71jRuY3aSM=;
 b=Tpgf/htnKau5tq6SuY5PtSxL0dNytkHpoYvv+mCEmAfiXTxWDuoROvMH5TplSycsOB
 k452/+D6pwxWni5e6VEAzWL3Rbpf5yrEdZetXIteodzbFfPGaDEI38Ti+bRaqc+gNuNE
 nXsSW7wwBD/v1g7LUKGXNQ8M/mITLASNzTdDQLvKUAnbc06+Ua+aexSJ8iB3svJpAcNC
 5LKMHQDU35C4o+lJ77QGLUwyqriAGso+yWioR0q3wNSKwmCaRyVxzbXOqJpDdobtTe/o
 jGnxA0wPcoTmctaP6jPSKdGNY0+WxNrNZPbeLFW/y2MjUzF3R+OY7RXGJw4HkS4VytbQ
 cffQ==
X-Gm-Message-State: AGi0PuaW0Lv3Dqk8gPeBruWJHp3EIF7PZ6kjJM3BuOyFzWYj1pVmST12
 8yBjCI8lruhm6miIzBr2DQ==
X-Google-Smtp-Source: APiQypIHLcP4uyi6iBBQnRex1vtx/0RRUYf5g8oaCu2AISmGpvY3rzNZu/dOpNArZjbBHTIgH3Vtmg==
X-Received: by 2002:aca:2807:: with SMTP id 7mr239980oix.15.1588196185150;
 Wed, 29 Apr 2020 14:36:25 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z13sm685565oth.10.2020.04.29.14.36.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 14:36:24 -0700 (PDT)
Received: (nullmailer pid 8147 invoked by uid 1000);
 Wed, 29 Apr 2020 21:36:23 -0000
Date: Wed, 29 Apr 2020 16:36:23 -0500
From: Rob Herring <robh@kernel.org>
To: Michael Tretter <m.tretter@pengutronix.de>
Subject: Re: [PATCH v3 2/6] ARM: dts: define indexes for output clocks
Message-ID: <20200429213623.GA8109@bogus>
References: <20200417070526.7178-1-m.tretter@pengutronix.de>
 <20200417070526.7178-3-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417070526.7178-3-m.tretter@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_143626_415348_FAE5D06B 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Dhaval Shah <dshah@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Michael Tretter <m.tretter@pengutronix.de>, kernel@pengutronix.de,
 Rohit Visavalia <rohit.visavalia@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 Apr 2020 09:05:22 +0200, Michael Tretter wrote:
> The VCU System-Level Control provides 4 clocks. Defined indexes for
> these clocks.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
> Changelog:
> 
> v2 -> v3:
> - none
> 
> v1 -> v2:
> - none
> ---
>  include/dt-bindings/clock/xlnx-vcu.h | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>  create mode 100644 include/dt-bindings/clock/xlnx-vcu.h
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
