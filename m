Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDF81A3CCD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 01:11:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mSUqz0TPwkjozrpIl3ZXn6FWRH5eRg65llfEJVmU5zc=; b=d+8IvY1Eb1JWAB
	lzSmPeVaxfb2GZRWw9DKC1noxtI1oBbtAp8izgw2EqKELi9lBBMtsUZAiM4hcg+EuA+qY5VWILdxG
	aGirnvuOFhOnRD0rpgK8p1vbymX65zyrRomjjA99WMV4Hb76kWCdqJGEBcQkAgP8YVCCdBXbqp8T4
	tr/E3E++ilhMwKnzKJ46ZQfEudNFVY11UYwzZkT8FUkmm25MBtHriNsTPkFRsTyC5AFlWgT6Dx+QX
	tQLPSTEkfRdCcG4V/abSUpPDXpNhSOosJcWgIgsoDlKfuV3h66R81sqzvRvkRmJATYGxjwqPcuPdr
	4D41hcNdvede7Q6p7bnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMgKN-0004LN-DU; Thu, 09 Apr 2020 23:11:19 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMgKG-0004Km-28
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 23:11:13 +0000
Received: by mail-il1-f196.google.com with SMTP id i14so331628ilr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 16:11:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XHTHGCsgfXX19VGzpIF+rrRJOUUg2k/5itbti4Sluiw=;
 b=hHoELPLGaqvIfCoSrcuLTiAX468JZb1jO4aW27PapeHtWmptp0BOytiF2nVHS+4I7t
 S19cwe0w8NMYRXDqG6Bw3JUk2P5dqSw8sZH89AmLtEt7VBLxiZewZEr7miLCMKY6W5qE
 UJ9vjiZI2Bka1/qtBumSlbQxuLpGQv/Em/urjqs/RB0VmjKc8BODrQU5fmEKwWMjnrrc
 jxZGZpR/qZSChikNmFf2JW8JfhRXiBnZ9wPiTgtYheJYv8loaf206nuv46hFRoNNZD/V
 PSfpFsgMzwg7Y1NiwID4ouuemBTONXxo0+W0x25DQAb72fuYq6+sOqr66HYiVlLlfWVH
 0vng==
X-Gm-Message-State: AGi0Pua4nrxl98nY8e5NKFDM+t2XLZRXbe9b5IqCPdaav6po3D+qnRzm
 eVryzWQaJYfzf9eMikZKVkX4WMY=
X-Google-Smtp-Source: APiQypLqo2zaWnSheojFEJB8E++9Zq1uWFEbh1m5g1x8qcvNxZ1Pn4QvM+fA/kuyDlypQvUKQCdWKQ==
X-Received: by 2002:a92:912:: with SMTP id y18mr2357154ilg.299.1586473871414; 
 Thu, 09 Apr 2020 16:11:11 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id h29sm157861ili.19.2020.04.09.16.11.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 16:11:10 -0700 (PDT)
Received: (nullmailer pid 26485 invoked by uid 1000);
 Thu, 09 Apr 2020 23:11:08 -0000
Date: Thu, 9 Apr 2020 17:11:08 -0600
From: Rob Herring <robh@kernel.org>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: counter: atmel-tcb-capture counter
Message-ID: <20200409231108.GA25954@bogus>
References: <20200409141401.321222-1-kamel.bouhara@bootlin.com>
 <20200409141401.321222-3-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409141401.321222-3-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_161112_107306_189B32F0 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>, linux-iio@vger.kernel.org,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  9 Apr 2020 16:14:00 +0200, Kamel Bouhara wrote:
> Describe the devicetree binding for the ATMEL TCB counter. Each counter
> blocks exposes three independent counters.
> 
> However, when configured in quadrature decoder, both channel <0> and <1>
> are required for speed/position and rotation capture (yet only the
> position is captured).
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
>  .../bindings/counter/atmel-tcb-capture.yaml   | 35 +++++++++++++++++++
>  1 file changed, 35 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/counter/atmel-tcb-capture.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/counter/atmel-tcb-capture.example.dts:20.17-32: Warning (reg_format): /example-0/timer@f800c000/timer@0:reg: property has invalid length (8 bytes) (#address-cells == 2, #size-cells == 1)
Documentation/devicetree/bindings/counter/atmel-tcb-capture.example.dt.yaml: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/counter/atmel-tcb-capture.example.dt.yaml: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/counter/atmel-tcb-capture.example.dt.yaml: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/counter/atmel-tcb-capture.example.dts:18.27-21.15: Warning (avoid_default_addr_size): /example-0/timer@f800c000/timer@0: Relying on default #address-cells value
Documentation/devicetree/bindings/counter/atmel-tcb-capture.example.dts:18.27-21.15: Warning (avoid_default_addr_size): /example-0/timer@f800c000/timer@0: Relying on default #size-cells value

See https://patchwork.ozlabs.org/patch/1268623

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
