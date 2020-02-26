Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 289EF170AF3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 22:57:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TG2NR0G6vZrChaTdXtAQo8z5HI0EmsHBfw1vHyY1B9E=; b=mm/R3V9eYGUenp
	Bhb21xpWtgGCUF6DQV4AvJp1UmlNPBQsS8J6OpioJyMuU5wZuaN5UFi1YbwJ6JhsegQvVjksWPozn
	0yGEZvDCkSRICoCs1OOmnpUfuODEk18kvdCpV3lIg9yUSV7mX6fugXhoDZmCTgsBJ97LNC54iatAH
	wje5KapJWhqbH3H40a5J30fN/Nd62DvXFcPl6caqgXmqBMI2CCuEy6PJsKCG4lMQtIlVjXQjkXs/0
	EI76uF4funQUdTefKc56p++UGIZVQ48CUCasepbgcwPxAo4B0lZO5LK9quzYBJWC/u5p+EnW4xZxq
	+inVgQc27obGYBLEl8gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j74gb-0001wm-Nc; Wed, 26 Feb 2020 21:57:45 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j74gR-0001wQ-0A
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 21:57:36 +0000
Received: by mail-ot1-f67.google.com with SMTP id g96so915420otb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 13:57:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VtcV+TLcp6fap4GZT+cz5YJ4UwaOUmy6z1le/e7vBJo=;
 b=szM67FgkyDfVeO9SbVLywXEnQJ6cRshipCGqtQhtae45bK8GK7JNtD5/NKW8VAdl2X
 36WEMbokUGy7DOhoO+veAAgcbLcLGJRUmRa5e7DtkHlyOBXoc0VAS7O8wSwDAqOs6Auw
 nfMq6D1aD/7JxOXsdSk6ui+IBGEP4cG8HY1WsfjAhRJZHLoKl/Nys/jmhxKs4vLxaZ+O
 Atwvu8n6oI7O6jDQyzrLRCyYk9zK+sqqXs/CKPjxh3DmhhJIzsMy7NxW6/C4/OibXokD
 1+jRrzhLQPOgPxbhryjofHN57CskfA+cNpA5DCnEBBUd9ekZvSvM7Df2LBRfwv0p10ey
 LOeQ==
X-Gm-Message-State: APjAAAVGHalqquJgD8tJDLdBQh9Hzu1V/HI2B8EpwXAOdqPdKcKaFr7Z
 MrjSc9M0F+j2pZdgnIIhuQ==
X-Google-Smtp-Source: APXvYqwk/c050OlotHglNYXwW95n1Qe5jSUGzkQ3Gnvc0yR11liQIvvZW7tdL2ZRSj87SItSSbYjfg==
X-Received: by 2002:a9d:7a47:: with SMTP id z7mr737694otm.179.1582754253690;
 Wed, 26 Feb 2020 13:57:33 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 17sm1234725oty.48.2020.02.26.13.57.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 13:57:33 -0800 (PST)
Received: (nullmailer pid 1255 invoked by uid 1000);
 Wed, 26 Feb 2020 21:57:32 -0000
Date: Wed, 26 Feb 2020 15:57:32 -0600
From: Rob Herring <robh@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 12/13] dt-bindings: arm: Add Calxeda system registers
 json-schema binding
Message-ID: <20200226215732.GA32486@bogus>
References: <20200226180901.89940-1-andre.przywara@arm.com>
 <20200226180901.89940-13-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226180901.89940-13-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_135735_042605_951BA923 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, Jon Loeliger <jdl@jdl.com>,
 Mark Langsdorf <mlangsdo@redhat.com>, Robert Richter <rric@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Eric Auger <eric.auger@redhat.com>, soc@kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 26 Feb 2020 18:09:00 +0000, Andre Przywara wrote:
> The Calxeda system registers are a collection of MMIO register
> controlling several more general aspects of the SoC.
> Beside for some power management tasks this node is also somewhat
> abused as the container for the clock nodes.
> 
> Add a binding in DT schema format using json-schema.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../bindings/arm/calxeda/hb-sregs.yaml        | 47 +++++++++++++++++++
>  1 file changed, 47 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/calxeda/hb-sregs.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

warning: no schema found in file: Documentation/devicetree/bindings/arm/calxeda/hb-sregs.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/calxeda/hb-sregs.yaml: ignoring, error in schema: properties: clocks
Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/calxeda/hb-sregs.yaml: properties:clocks: {'type': 'object'} is not valid under any of the given schemas (Possible causes of the failure):
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/calxeda/hb-sregs.yaml: properties:clocks: 'maxItems' is a required property

Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/arm/calxeda/hb-sregs.example.dts' failed
make[1]: *** [Documentation/devicetree/bindings/arm/calxeda/hb-sregs.example.dts] Error 1
Makefile:1263: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1245261
Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
