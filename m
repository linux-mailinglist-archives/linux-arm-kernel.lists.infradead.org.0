Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D50E01CE2BF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 20:28:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kUxN7U2dO5iDXJsVmTgWcDemG4JuO6mT+EhTwMA7BQw=; b=b7wi39T4wPd0vc
	X/qOiroOVBPa59dmWrzTcfIjJhdbqnW+2hZOkzBBRh4fsw6F1uJ5hMa2za+8hItlYCN2EqVl6hpqL
	HJMeTsBSkbgWXWmNMUSgsWsQ3tKIcIUCOcGTw8YLfclVL576TAgrT/j9t0zetUEyhodyl3kU7gGq8
	8YWnbtHYZgEQ4T4jqisA0FdxhgJL0Gj2AUon45INq8SUSOw2wipt1JxNVn4g3K5+I7aSy2sIiJXwF
	YEDwE9kn53IbeBTeM/8tUkp8OibOareBvpjgLHEW1r3ParVj9haxEi7hbmotTGu2mNQpiOBKxu0z1
	mvUr1vsF/6JyYMb52B9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYDA0-0007eE-8j; Mon, 11 May 2020 18:28:16 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYD9E-00079o-Tg
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 18:27:31 +0000
Received: by mail-oi1-f193.google.com with SMTP id c124so15741293oib.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 11:27:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7Dq6v2RgQ1NzWRtNWHz7ueSOJkRsa7ZUQ4A+tRGmEk0=;
 b=XIYWaW5jVk9RDBaL+oy2xvJoJbarELQ6ga+XvApKSRtYekviRDzbnOym0WLviuIpo8
 8zMlXFe84QAIV6aVcp8BB2q/Spasd/HWqoCAtRUpiGraCSYX2+B53xA8UGgH8dNPwUGG
 K0NR+nUcf3aiSxW0K8rENTjkOiXevmlnXkspHCX7yWWYT+NNIvAYofxfIzTFyerXKwoL
 wJz/u6RtEabWXNJz72vPrnkAh0teuPAXUkujWhtRpuBX1IMJKdrn4zoXswOnuH553muS
 srlcwDNis8cgdUEAdWc/Hbx4xot2DDQ7TB0MquV2XUX0PRX4aGAt+d0qWFvAr+gMf6xi
 JIVA==
X-Gm-Message-State: AGi0PuZcrpvBAZx84lMMQv0V8+yXmVxu7CnG6Q1rJeYd+kpVGxias7BX
 JyFJhQeAtCm68iJIHr9O7g==
X-Google-Smtp-Source: APiQypIddoKpSsY4vXjl9FBRpjHvq4vl8fRKeIJdFi0j9WY+HcG6j9RKFSXh8teT5bLZUpju5w9kTA==
X-Received: by 2002:aca:cc0d:: with SMTP id c13mr12333340oig.125.1589221648092; 
 Mon, 11 May 2020 11:27:28 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k26sm2859224ots.3.2020.05.11.11.27.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 11:27:27 -0700 (PDT)
Received: (nullmailer pid 22174 invoked by uid 1000);
 Mon, 11 May 2020 16:11:27 -0000
Date: Mon, 11 May 2020 11:11:27 -0500
From: Rob Herring <robh@kernel.org>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH v4 4/5] dt-bindings: counter: microchip-tcb-capture counter
Message-ID: <20200511161127.GA21385@bogus>
References: <20200511140505.1649111-1-kamel.bouhara@bootlin.com>
 <20200511140505.1649111-5-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511140505.1649111-5-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_112728_974525_888FCDEA 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-iio@vger.kernel.org,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 11 May 2020 16:05:04 +0200, Kamel Bouhara wrote:
> Describe the devicetree binding for the Microchip TCB module.
> Each counter blocks exposes three independent counters.
> 
> However, when configured in quadrature decoder, both channel <0> and <1>
> are required for speed/position and rotation capture (yet only the
> position is captured).
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
>  .../soc/microchip/atmel,at91rm9200-tcb.yaml   | 29 +++++++++++++++++--
>  1 file changed, 26 insertions(+), 3 deletions(-)
> 


My bot found errors running 'make dt_binding_check' on your patch:

Traceback (most recent call last):
  File "/usr/local/bin/dt-doc-validate", line 64, in <module>
    ret = check_doc(args.yamldt)
  File "/usr/local/bin/dt-doc-validate", line 25, in check_doc
    testtree = dtschema.load(filename, line_number=line_number, duplicate_keys=False)
  File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 592, in load
    return yaml.load(f.read())
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/main.py", line 343, in load
    return constructor.get_single_data()
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 113, in get_single_data
    return self.construct_document(node)
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 123, in construct_document
    for _dummy in generator:
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 723, in construct_yaml_map
    value = self.construct_mapping(node)
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 440, in construct_mapping
    return BaseConstructor.construct_mapping(self, node, deep=deep)
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 257, in construct_mapping
    if self.check_mapping_key(node, key_node, mapping, key, value):
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 295, in check_mapping_key
    raise DuplicateKeyError(*args)
ruamel.yaml.constructor.DuplicateKeyError: while constructing a mapping
  in "<unicode string>", line 4, column 1
found duplicate key "examples" with value "[]" (original value: "[]")
  in "<unicode string>", line 157, column 1

To suppress this check see:
    http://yaml.readthedocs.io/en/latest/api.html#duplicate-keys

Duplicate keys will become an error in future releases, and are errors
by default when using the new API.

Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.example.dts' failed
make[1]: *** [Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
Traceback (most recent call last):
  File "/usr/local/bin/dt-mk-schema", line 34, in <module>
    schemas = dtschema.process_schemas(args.schemas, core_schema=(not args.useronly))
  File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 554, in process_schemas
    sch = process_schema(os.path.abspath(filename))
  File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 507, in process_schema
    schema = load_schema(filename)
  File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 123, in load_schema
    return do_load(os.path.join(schema_basedir, schema))
  File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 108, in do_load
    return yaml.load(tmp)
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/main.py", line 343, in load
    return constructor.get_single_data()
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 113, in get_single_data
    return self.construct_document(node)
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 123, in construct_document
    for _dummy in generator:
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 723, in construct_yaml_map
    value = self.construct_mapping(node)
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 440, in construct_mapping
    return BaseConstructor.construct_mapping(self, node, deep=deep)
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 257, in construct_mapping
    if self.check_mapping_key(node, key_node, mapping, key, value):
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 295, in check_mapping_key
    raise DuplicateKeyError(*args)
ruamel.yaml.constructor.DuplicateKeyError: while constructing a mapping
  in "<unicode string>", line 4, column 1
found duplicate key "examples" with value "[]" (original value: "[]")
  in "<unicode string>", line 157, column 1

To suppress this check see:
    http://yaml.readthedocs.io/en/latest/api.html#duplicate-keys

Duplicate keys will become an error in future releases, and are errors
by default when using the new API.

Traceback (most recent call last):
  File "/usr/local/bin/dt-mk-schema", line 34, in <module>
    schemas = dtschema.process_schemas(args.schemas, core_schema=(not args.useronly))
  File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 554, in process_schemas
    sch = process_schema(os.path.abspath(filename))
  File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 507, in process_schema
    schema = load_schema(filename)
  File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 123, in load_schema
    return do_load(os.path.join(schema_basedir, schema))
  File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 108, in do_load
    return yaml.load(tmp)
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/main.py", line 343, in load
    return constructor.get_single_data()
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 113, in get_single_data
    return self.construct_document(node)
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 123, in construct_document
    for _dummy in generator:
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 723, in construct_yaml_map
    value = self.construct_mapping(node)
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 440, in construct_mapping
    return BaseConstructor.construct_mapping(self, node, deep=deep)
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 257, in construct_mapping
    if self.check_mapping_key(node, key_node, mapping, key, value):
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 295, in check_mapping_key
    raise DuplicateKeyError(*args)
ruamel.yaml.constructor.DuplicateKeyError: while constructing a mapping
  in "<unicode string>", line 4, column 1
found duplicate key "examples" with value "[]" (original value: "[]")
  in "<unicode string>", line 157, column 1

To suppress this check see:
    http://yaml.readthedocs.io/en/latest/api.html#duplicate-keys

Duplicate keys will become an error in future releases, and are errors
by default when using the new API.

Documentation/devicetree/bindings/Makefile:41: recipe for target 'Documentation/devicetree/bindings/processed-schema-examples.yaml' failed
make[1]: *** [Documentation/devicetree/bindings/processed-schema-examples.yaml] Error 123
make[1]: *** Deleting file 'Documentation/devicetree/bindings/processed-schema-examples.yaml'
Documentation/devicetree/bindings/Makefile:45: recipe for target 'Documentation/devicetree/bindings/processed-schema.yaml' failed
make[1]: *** [Documentation/devicetree/bindings/processed-schema.yaml] Error 123
make[1]: *** Deleting file 'Documentation/devicetree/bindings/processed-schema.yaml'
Makefile:1300: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1287813

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
