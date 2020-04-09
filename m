Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA04A1A3CC9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 01:10:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=df6867SxBisMPxvIFUpuRZqcxnVp2Ga7jAXK1pO2r1M=; b=FF4wgotA+9Cp4v
	C0sbMuoJNuVFw/Z7IV7X397JS99yhbJj/7CnowsNIrLY6VUqMxu7aVYyK36ZvXWpiEb1V895dYMx9
	t+/1BCNz+nTnsQVQQfo7jfHhCDkAQd0Pk6UZctmKac6DcJmS9EvAIXqWiwLVypNaJSSokv5kn8bVp
	yonUssChl2EYzTb8mueZt/mIO2apjYoLt8swPojDr10PuFB0P80mEpbqkWN5BQHN1bFpyprtpq9YZ
	in02/zqDtiWLbVgM2HHHwcowjNWxcNQy7WRZDfmR7Pzd9Ca2ahblYOvLZxxxeV8uGxDqZ90A/ZXZS
	wMleBP6oBrzdLnjSUImA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMgJh-00045n-7G; Thu, 09 Apr 2020 23:10:37 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMgJZ-00044r-22
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 23:10:30 +0000
Received: by mail-io1-f65.google.com with SMTP id w1so120345iot.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 16:10:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Hkv9Vin9gJRSKCAf/kk8KdwDOEdNpGQ0k0uqyqoPiNU=;
 b=sin1LxWF5FlnkPCsOLH+wQveWmJH40o+OQGvfIMcRPlJAVkUEknf+lfTR0Nd2yNEjx
 uGQ/KLW9jMSwwaHIifcpk/mPKJYZ4BtlOlrqkXN1Md84KxYGsq8QYaydt8L8nFPHcf0A
 Oh3WKHGDSdw4jraa6TT+7udoVLTyywWEco1cqRgNRv0RBQoDjl4gLCHWvEIK8xf8ukBB
 8XOXF5+6EslBrzX4dxsSuxATIlzBU7EtZ/9u0sR62fKrf1t6uygp9IL4hzOhsLGnwi2Q
 LVC4KjdSvElCfoRh2+UvHr9e+17Q3+5yK8uJevJXVz/8u0pIeIr7QSA5XbJbAoNggxGV
 6t/w==
X-Gm-Message-State: AGi0PubVMAq9npv+9novh0rd54n6v7PXzZa8dctLFKlhro1K1zg4UR2E
 7Jm9JgRDIGlxq3aEaeBcLZqUfmk=
X-Google-Smtp-Source: APiQypIDVQQ7NtmX3YGOcYcp8Rl/QMyqAmd4Ruw2zFzqc36idNXftVPGGChHwiyDAJpKWKB//ysTJg==
X-Received: by 2002:a5d:905a:: with SMTP id v26mr1610480ioq.39.1586473824640; 
 Thu, 09 Apr 2020 16:10:24 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id n29sm144557ila.86.2020.04.09.16.10.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 16:10:24 -0700 (PDT)
Received: (nullmailer pid 25365 invoked by uid 1000);
 Thu, 09 Apr 2020 23:10:21 -0000
Date: Thu, 9 Apr 2020 17:10:21 -0600
From: Rob Herring <robh@kernel.org>
To: Alistair Francis <alistair@alistair23.me>
Subject: Re: [PATCH v2 1/3] dt-bindings: net: bluetooth: Add
 rtl8723bs-bluetooth
Message-ID: <20200409231021.GA19363@bogus>
References: <20200407055837.3508017-1-alistair@alistair23.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407055837.3508017-1-alistair@alistair23.me>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_161029_100231_2AD68DF6 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, johan.hedberg@gmail.com, netdev@vger.kernel.org,
 marcel@holtmann.org, Alistair Francis <alistair@alistair23.me>,
 linux-kernel@vger.kernel.org, mripard@kernel.org,
 linux-bluetooth@vger.kernel.org, wens@csie.org, alistair23@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  6 Apr 2020 22:58:35 -0700, Alistair Francis wrote:
> From: Vasily Khoruzhick <anarsoul@gmail.com>
> 
> Add binding document for bluetooth part of RTL8723BS/RTL8723CS
> 
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> Signed-off-by: Alistair Francis <alistair@alistair23.me>
> ---
> v2:
>  - Update bindings based on upstream feedback
>  - Add RTL8822CS
>  - Remove unused/unsupported fields
>  - Remove firmware-postfix field
>  - Small formatting changes
> 
>  .../bindings/net/realtek,rtl8723bs-bt.yaml    | 55 +++++++++++++++++++
>  1 file changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.yaml: properties:compatible:oneOf:0: 'realtek,rtl8723bs-bt' is not of type 'object', 'boolean'
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.yaml: properties:compatible:oneOf:1: 'realtek,rtl8723cs-bt' is not of type 'object', 'boolean'
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.yaml: properties:compatible:oneOf:2: 'realtek,rtl8822cs-bt' is not of type 'object', 'boolean'
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.yaml: properties:host-wake-gpios: Additional properties are not allowed ('desciption' was unexpected)
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.yaml: properties:host-wake-gpios: 'desciption' is not one of ['$ref', 'additionalItems', 'additionalProperties', 'allOf', 'anyOf', 'const', 'contains', 'default', 'dependencies', 'deprecated', 'description', 'else', 'enum', 'exclusiveMaximum', 'exclusiveMinimum', 'items', 'if', 'minItems', 'minimum', 'maxItems', 'maximum', 'multipleOf', 'not', 'oneOf', 'pattern', 'patternProperties', 'properties', 'required', 'then', 'type', 'typeSize', 'unevaluatedProperties', 'uniqueItems']
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.yaml: properties:host-wake-gpios: {'maxItems': 1, 'desciption': 'GPIO specifier, used to wakeup the host processor'} is not valid under any of the given schemas (Possible causes of the failure):
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.yaml: properties:host-wake-gpios: Additional properties are not allowed ('desciption' was unexpected)
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.yaml: properties:host-wake-gpios:maxItems: 1 is less than the minimum of 2

Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.example.dts' failed
make[1]: *** [Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
Makefile:1262: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1267219

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
