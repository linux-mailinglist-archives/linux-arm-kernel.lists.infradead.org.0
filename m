Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B5CFA794
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 04:50:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8el8u0loaBR33UeRvX0c0+FOPvfTMGecv4GS+XouOOs=; b=WhV1PvrTTRVRZL
	NeVjVUPh/2SjYWKvigKCemxF4lQxo1fGaKc8zl2X7CCnre6+9AOWSJN2xnGkjYgmLVmfSAP1Rk7L2
	YujvfCL1uSiNEK5B3GInm8WHJU9MM8CKWJlT9vw1XClX373neHnmKLAff6Ic0CtXmIsjpA+DimTHY
	jJc3uWM/ClffCnTj0fTs5tVRB8fp/M6BmVStTog4Flk2MRP3KeaM3xbLIuIJozie2tAuIalksS6GW
	uwyuslOciqyhKpd0L4NLpmA6NYZWYyC2WSNZW8s4qrEHk4I/3aPIG35CbYbrb9MM624XiZDvoMIJj
	qYShHgGlbkFUdE8va74g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUjfv-0008IK-60; Wed, 13 Nov 2019 03:50:35 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUjfk-0008Ha-Sl
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 03:50:26 +0000
Received: by mail-oi1-f194.google.com with SMTP id j7so533749oib.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 19:50:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yw4W9gr9hr+ygb7liTr5wABF4oTbz4wbrBdFNYeRM54=;
 b=OZw6MH+EDN35hxa5mom3mz3sYtvLpBARoKaqtgT5F/9dFnxiqw9QpTWRsdSIMLr1f2
 jfs2KULsIHSO0Mbpa3h4gMB5kRPUjGZLUEotkB0rdUGpiUov11iKZvZhxwwe2QatCGhQ
 uiEe/Q1QV/qy6GPgJfEnMMsvCcUzBH6Be7aIOIA/xkZxpxbRGUC1rvQJHi02Rl81ttyr
 U0peWSHgBCML7HUTk/jLyAHMTdD91sileLpXuOMVOa7TIaTqHa9zMMnm0cNEyfg3KG31
 pDoroWMGv9QAoLd83TnUWUKe0BjW3J2D2Tc7wvR1XurQ19uo8IYL40OQS6IjcClyfs7d
 UBJw==
X-Gm-Message-State: APjAAAUmn+VQIGDiUetWBKkfVdDI0jDPGA8BQkIrq3FDgqjWuLsMXBgw
 u3eACqCxac2EmkkH8pSbpw==
X-Google-Smtp-Source: APXvYqzn9WyQ34a911h+OqumViXcb4qpJexBGHw1jIWOUAOxQ+CD347g2mXcZfFRKthfTJPvAD9XgA==
X-Received: by 2002:aca:1101:: with SMTP id 1mr992738oir.103.1573617023608;
 Tue, 12 Nov 2019 19:50:23 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k18sm271911oij.32.2019.11.12.19.50.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 19:50:22 -0800 (PST)
Date: Tue, 12 Nov 2019 21:50:22 -0600
From: Rob Herring <robh@kernel.org>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: at91: Document Kizboxmini and
 Smartkiz boards binding
Message-ID: <20191113035022.GA27823@bogus>
References: <20191106083643.1995-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106083643.1995-1-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_195024_931447_59CBA558 
X-CRM114-Status: GOOD (  17.57  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 09:36:42AM +0100, Kamel Bouhara wrote:
> Document devicetree's bindings for the Overkiz's Kizbox Mini and
> Smartkiz boards, based on a SAM9G25 Atmel SoC.
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
> Changes in v2
> =============
> 	- Added Kizboxmini Base board documentation
> 	- Merged Smartkiz documentation as it is also a sam9g25 based
> 	board
> 
> Changes in v3
> =============
> 	- Made a single items list with all the sam9g25 based boards and
> 	put description into a comment.
> 	- Fixed duplicated item in enum list and checked with 'make
> 	dt_binding_check'

Are you sure?

> ---
>  Documentation/devicetree/bindings/arm/atmel-at91.yaml | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> index 6dd8be401673..e4140e94864d 100644
> --- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> +++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> @@ -35,6 +35,16 @@ properties:
>                - atmel,at91sam9x60
>            - const: atmel,at91sam9
> 
> +        items:

You are missing a '-' here, giving this:

Traceback (most recent call last):
  File "/usr/local/bin/dt-mk-schema", line 32, in <module>
    schemas = dtschema.process_schemas(args.schemas, core_schema=(not 
args.useronly))
  File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 
475, in process_schemas
    sch = process_schema(os.path.abspath(filename))
  File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 
427, in process_schema
    schema = load_schema(filename)
  File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 
103, in load_schema
    return yaml.load(f.read())
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/main.py", 
line 341, in load
    return constructor.get_single_data()
  File 
"/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", 
line 113, in get_single_data
    return self.construct_document(node)
  File 
"/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", 
line 123, in construct_document
    for _dummy in generator:
  File 
"/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", 
line 723, in construct_yaml_map
    value = self.construct_mapping(node)
  File 
"/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", 
line 440, in construct_mapping
    return BaseConstructor.construct_mapping(self, node, deep=deep)
  File 
"/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", 
line 257, in construct_mapping
    if self.check_mapping_key(node, key_node, mapping, key, value):
  File 
"/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", 
line 295, in check_mapping_key
    raise DuplicateKeyError(*args)
ruamel.yaml.constructor.DuplicateKeyError: while constructing a mapping
  in "<unicode string>", line 23, column 9
found duplicate key "items" with value "[]" (original value: "[]")
  in "<unicode string>", line 38, column 9

To suppress this check see:
    http://yaml.readthedocs.io/en/latest/api.html#duplicate-keys

Duplicate keys will become an error in future releases, and are errors
by default when using the new API.

Documentation/devicetree/bindings/Makefile:33: recipe for target 
'Documentation/devicetree/bindings/processed-schema.yaml' failed


> +          - enum:
> +                - overkiz,kizboxmini-base # Overkiz kizbox Mini Base Board
> +                - overkiz,kizboxmini-mb   # Overkiz kizbox Mini Mother Board
> +                - overkiz,kizboxmini-rd   # Overkiz kizbox Mini RailDIN
> +                - overkiz,smartkiz        # Overkiz SmartKiz Board
> +          - const: atmel,at91sam9g25
> +          - const: atmel,at91sam9x5
> +          - const: atmel,at91sam9
> +
>        - items:
>            - enum:
>                - atmel,at91sam9g15
> --
> 2.24.0.rc1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
