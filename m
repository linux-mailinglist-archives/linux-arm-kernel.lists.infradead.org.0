Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCD71FA7DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 06:42:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KyI0jWMoV95m4kK5PaifXf10bQQyC+s7SMNqgnUdzf8=; b=gUxmAdi0Ggfa60
	UXvi5InwhXDL9gA/e/f+EpF2pU0HLahIg/bnGRKzwwBTHZnwDrDUPBovBV6meJhyUBaLwEvhUzPAn
	hMOFVmi9LoutIjFgvzLuai7PvppP9rqLe1kqtvtB7RuJehLSPneh+CDldQqf3s0244IvZ7VUvTUbj
	ufYRe8JuwyBFs1n4l3ohl3GKfnUhnP1axZU5diL3nrX7VfOtk2sixbgHLqFOF6KFf0g+le2YT4/An
	lPMio/g59I9vpPdInUvI8g5+HuJpztABGCX9eNe2Ia1txz2v4kPczVoZeJasGr3EZ+CDuEkDNHeKf
	N6Ni4ztEh1Q33ta6yXlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl3QN-0000vA-U5; Tue, 16 Jun 2020 04:42:15 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl3QE-0000uP-DG
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 04:42:07 +0000
Received: by mail-io1-f65.google.com with SMTP id m81so20505479ioa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 21:42:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+a0gGFXhmNQdUthZidZAy1jsxYqlreoERJ4tMXAeBPk=;
 b=CzoMZbbXnN6u1TT0o2c625lXyz5v+8EIkRYsBsTRGs2055yGKUztrPiOM5TntCb7X3
 YG8kDk67HJ/ywPP+VsFsm+4ARi5R0Vo4ewwmk26olgPXbhLkty5ZuqGym161ANLbuEth
 gMHeyoCPWGoPIQA2yEA2VNDktG+I3XfQNkSDeZqDRoNJyLPTroFq3eijgxnXaZ3qpDyJ
 dM55Gl2l54VsKVf827wIy7X0DNIBLL+Cxg4M4UHKfcOKm9YVCzT2Zmc0KLGCZBpnRhTB
 baWywVImjZOpUo9bN/On+yZ7NP7X24dku+fWxzp48MIKjf/RxVoGwmcHyZG86BbmPjEK
 O5UQ==
X-Gm-Message-State: AOAM531gBWD2sqswsYC/qGEz+yXDyQ7Q0H8tssDi4gW2Bs8HpglalnSq
 u5FSvrNPLjSG9jyonwm+m3A=
X-Google-Smtp-Source: ABdhPJyUMw0oE51vIBMiFJW+SJ9w5Y2lXDWdOze+gRJ9zLufs7gomgFA2C1NCTaH9KdaFDoU/cGfCw==
X-Received: by 2002:a6b:7b4a:: with SMTP id m10mr865233iop.55.1592282524888;
 Mon, 15 Jun 2020 21:42:04 -0700 (PDT)
Received: from localhost ([2601:647:5b00:1161:a4cc:eef9:fbc0:2781])
 by smtp.gmail.com with ESMTPSA id e25sm9137916ios.0.2020.06.15.21.42.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 21:42:03 -0700 (PDT)
Date: Mon, 15 Jun 2020 21:42:02 -0700
From: Moritz Fischer <mdf@kernel.org>
To: Luca Ceresoli <luca@lucaceresoli.net>
Subject: Re: [PATCH 1/5] dt-bindings: fpga: xilinx-slave-serial: valid for
 the 7 Series too
Message-ID: <20200616044202.GA46300@epycbox.lan>
References: <20200611211144.9421-1-luca@lucaceresoli.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200611211144.9421-1-luca@lucaceresoli.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_214206_451031_59B60E70 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [moritz.fischer.private[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-fpga@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Moritz Fischer <mdf@kernel.org>,
 Anatolij Gustschin <agust@denx.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 11, 2020 at 11:11:40PM +0200, Luca Ceresoli wrote:
> The Xilinx 7-series uses the same protocol, mention that.
> 
> Signed-off-by: Luca Ceresoli <luca@lucaceresoli.net>
Acked-by: Moritz Fischer <mdf@kernel.org>
> ---
>  .../devicetree/bindings/fpga/xilinx-slave-serial.txt     | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/fpga/xilinx-slave-serial.txt b/Documentation/devicetree/bindings/fpga/xilinx-slave-serial.txt
> index cfa4ed42b62f..9f103f3872e8 100644
> --- a/Documentation/devicetree/bindings/fpga/xilinx-slave-serial.txt
> +++ b/Documentation/devicetree/bindings/fpga/xilinx-slave-serial.txt
> @@ -1,11 +1,14 @@
>  Xilinx Slave Serial SPI FPGA Manager
>  
> -Xilinx Spartan-6 FPGAs support a method of loading the bitstream over
> -what is referred to as "slave serial" interface.
> +Xilinx Spartan-6 and 7 Series FPGAs support a method of loading the
> +bitstream over what is referred to as "slave serial" interface.
>  The slave serial link is not technically SPI, and might require extra
>  circuits in order to play nicely with other SPI slaves on the same bus.
>  
> -See https://www.xilinx.com/support/documentation/user_guides/ug380.pdf
> +See:
> +- https://www.xilinx.com/support/documentation/user_guides/ug380.pdf
> +- https://www.xilinx.com/support/documentation/user_guides/ug470_7Series_Config.pdf
> +- https://www.xilinx.com/support/documentation/application_notes/xapp583-fpga-configuration.pdf
>  
>  Required properties:
>  - compatible: should contain "xlnx,fpga-slave-serial"
> -- 
> 2.27.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
