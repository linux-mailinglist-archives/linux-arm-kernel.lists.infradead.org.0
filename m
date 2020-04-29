Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4201BEA0D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:37:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XgexiKsN19DHqUBFv0D2vUlCb29zLwJlAVDU0olPCKc=; b=YrnaYgHRThrnhd
	Kbyvwu0V/MOvKUty2eS0fIyqekQ6pcvMi9+D1S4+sgt94Bw9BcTZ3fJfScwR9r9qgjwkgogjGi8zX
	M/0J+R+fdF+U47rmKaeAlZPSkgOM5accvktX3Cui6x5PTyFI0hOzmB4PZYeW0u0eYzz9d5681iYZu
	vvTOPdr4jveeZtIU9BORD0plbv3/TzL8aaKQCet2/xPerK7IXAviMSm77AQEbeYwOa8nuSyegR3DZ
	4mp7DXqoldfdDXTE0Vfh2zpH+0g6h7jaMyphK7ii7S44eIkvXog2u/9RDZlatCtN/bjpDWFX/kFeu
	nknPeFz4e2al5M9iRlJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTuOF-0006xw-WE; Wed, 29 Apr 2020 21:37:12 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTuO5-0006xW-Lb
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 21:37:02 +0000
Received: by mail-ot1-f68.google.com with SMTP id e20so3049531otk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 14:37:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WBs097QRcMaB96mTIfk9aSICQXe9iSUV0NFsgPGO5Ho=;
 b=fNUbd626fJ1C5wf9cNmH/eUNblpXqcFgCYFgOY+Wuae5B+hRcyNKVIwg7TIq7++/jj
 lrC2X8Oob54Fg0bZZqrv7KB2PANDeELPFckPel/WEdSa5YpzO2gHtwWGXmpX1XGT8cvm
 KYbU6fyYLNwxxt43a/uddvH9WSGz3V8S57cBhbnL1F63ZNLEfagXgp1H6frv5J6BLaCj
 VNYvs8am9FKu3VoLifl+1lFrLOGzqdl0JKl8k2TPLy/TwEdA0yY9bc/+LNmpSwiZ5mYq
 NyJMd+X7OhRw4Muf6OVedeV7C1C8WlYVjENUBG9rWExkHMJkAjC7wNU5Itv0B6KigkIS
 pjeA==
X-Gm-Message-State: AGi0PuYNWr/2xmmU8FKxHv8McOnpj+0aCOo5RmhjBi1F+zNwAJpfDbPK
 Lq41Nel7qUR8zCkXHg20PA==
X-Google-Smtp-Source: APiQypKK9UxJhS/WzpSBBM/RSMfnkutAau5MtusHmsnbdXLdy5YbeJuMpvmW/+iyT9GLgpjbcuXT0Q==
X-Received: by 2002:a9d:7418:: with SMTP id n24mr52296otk.54.1588196220739;
 Wed, 29 Apr 2020 14:37:00 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t13sm801792ooo.1.2020.04.29.14.36.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 14:37:00 -0700 (PDT)
Received: (nullmailer pid 9089 invoked by uid 1000);
 Wed, 29 Apr 2020 21:36:59 -0000
Date: Wed, 29 Apr 2020 16:36:59 -0500
From: Rob Herring <robh@kernel.org>
To: Michael Tretter <m.tretter@pengutronix.de>
Subject: Re: [PATCH v3 4/6] dt-bindings: soc: xlnx: extract xlnx, vcu-settings
 to separate binding
Message-ID: <20200429213659.GA9051@bogus>
References: <20200417070526.7178-1-m.tretter@pengutronix.de>
 <20200417070526.7178-5-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417070526.7178-5-m.tretter@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_143701_702612_A0621F26 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Dhaval Shah <dshah@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Michael Tretter <m.tretter@pengutronix.de>, kernel@pengutronix.de,
 Rohit Visavalia <rohit.visavalia@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 Apr 2020 09:05:24 +0200, Michael Tretter wrote:
> The xlnx,vcu binding comprises two adjacent register banks:
> 
> The first register bank ("vcu_slcr") contains registers for setting the
> clocks of the vcu and controlling the performance monitors. The second
> bank ("logicoreip") contains the configuration settings of the video codec
> unit, which are set before synthesizing the bitstream.
> 
> Drivers that drive the actual video codec unit need to to read the
> registers from the logicoreip register bank for configuring the vcu
> firmware.
> 
> As logicoreip is a too generic name for this register bank, use
> "vcu-settings" as a binding name, because the register bank basically
> provides the configuration settings of the VCU.
> 
> Therefore, add the vcu-settings binding to provide a syscon interface
> for other drivers to read these registers.
> 
> The alternative would have been to merge the two register banks of the
> xlnx,vcu binding into one register bank and make xlnx,vcu provide a
> syscon interface, but that would lead to more incompatibility than
> making second register bank of xlnx,vcu optional.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
> Changelog:
> 
> v2 -> v3:
> - none
> 
> v1 -> v2:
> - drop custom select for syscon
> ---
>  .../soc/xilinx/xlnx,vcu-settings.yaml         | 34 +++++++++++++++++++
>  .../bindings/soc/xilinx/xlnx,vcu.txt          |  9 ++---
>  2 files changed, 36 insertions(+), 7 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
