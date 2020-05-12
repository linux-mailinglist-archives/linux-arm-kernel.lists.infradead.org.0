Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF7F1CEED7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 10:09:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dVib1rWFFzYkcL1hHVUQceSUitgjRjtc/3QIMjLkVQw=; b=i7OyZ8n1h8FD5A
	LOR3S4kXpamAUebUqYMiHEFAmKhkaN3uSINb48M+bVyXu9XQ5jxCzhZTCKJnlpfFdH4iHICHjPmY4
	yvGaJT1e4I1QgZBLTWmEfTYjGw6KEEFAp7/76H9LpxRkzUwH1lJMC/pa89i1CxAWJx8hOGUd7Hscs
	hEw4K1CWZJc94nDV/OoACRQjv9HpABqAoNafm23Rl3ugmUJUhANF8W8AofTxZ5DUa2OKUYickb14H
	zwa4NR11NJ8ZUNGpvZXbHT3VQ+Kbr1V0db1Q7GP96xSfoDZmzZ6zVZxlCI7hODgvaQXQtCePzj1iM
	kl36M2pqv+W8Ah7qBPEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYPyc-0007Qq-Sb; Tue, 12 May 2020 08:09:22 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYPyU-0007Q3-Ey
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 08:09:16 +0000
X-Originating-IP: 78.193.40.249
Received: from kb-xps (unknown [78.193.40.249])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 79F33FF81A;
 Tue, 12 May 2020 08:09:09 +0000 (UTC)
Date: Tue, 12 May 2020 10:09:07 +0200
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v4 4/5] dt-bindings: counter: microchip-tcb-capture counter
Message-ID: <20200512080907.GA1634206@kb-xps>
References: <20200511140505.1649111-1-kamel.bouhara@bootlin.com>
 <20200511140505.1649111-5-kamel.bouhara@bootlin.com>
 <20200511161127.GA21385@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511161127.GA21385@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_010914_774761_4D45F1B3 
X-CRM114-Status: GOOD (  16.63  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.199 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Mon, May 11, 2020 at 11:11:27AM -0500, Rob Herring wrote:
> On Mon, 11 May 2020 16:05:04 +0200, Kamel Bouhara wrote:
> > Describe the devicetree binding for the Microchip TCB module.
> > Each counter blocks exposes three independent counters.
> >
> > However, when configured in quadrature decoder, both channel <0> and <1>
> > are required for speed/position and rotation capture (yet only the
> > position is captured).
> >
> > Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> > ---
> >  .../soc/microchip/atmel,at91rm9200-tcb.yaml   | 29 +++++++++++++++++--
> >  1 file changed, 26 insertions(+), 3 deletions(-)
> >
>

Hello Rob,

>
> My bot found errors running 'make dt_binding_check' on your patch:
>

I upgraded to dtschema-2020.6.dev4 and still the duplicate key issue
isn't detected.

I guess having the way I described two examples using the same node
isn't right ?

Thanks,
Kamel

> Traceback (most recent call last):
>   File "/usr/local/bin/dt-doc-validate", line 64, in <module>
>     ret = check_doc(args.yamldt)
>   File "/usr/local/bin/dt-doc-validate", line 25, in check_doc
>     testtree = dtschema.load(filename, line_number=line_number, duplicate_keys=False)
>   File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 592, in load
>     return yaml.load(f.read())
>   File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/main.py", line 343, in load
>     return constructor.get_single_data()
>   File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 113, in get_single_data
>     return self.construct_document(node)
>   File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 123, in construct_document
>     for _dummy in generator:
>   File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 723, in construct_yaml_map
>     value = self.construct_mapping(node)
>   File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 440, in construct_mapping
>     return BaseConstructor.construct_mapping(self, node, deep=deep)
>   File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 257, in construct_mapping
>     if self.check_mapping_key(node, key_node, mapping, key, value):
>   File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 295, in check_mapping_key
>     raise DuplicateKeyError(*args)
> ruamel.yaml.constructor.DuplicateKeyError: while constructing a mapping
>   in "<unicode string>", line 4, column 1
> found duplicate key "examples" with value "[]" (original value: "[]")
>   in "<unicode string>", line 157, column 1
>
> To suppress this check see:
>     http://yaml.readthedocs.io/en/latest/api.html#duplicate-keys
>
> Duplicate keys will become an error in future releases, and are errors
> by default when using the new API.
>
> Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.example.dts' failed
> make[1]: *** [Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.example.dts] Error 1
> make[1]: *** Waiting for unfinished jobs....
> Traceback (most recent call last):
>   File "/usr/local/bin/dt-mk-schema", line 34, in <module>
>     schemas = dtschema.process_schemas(args.schemas, core_schema=(not args.useronly))
>   File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 554, in process_schemas
>     sch = process_schema(os.path.abspath(filename))
>   File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 507, in process_schema
>     schema = load_schema(filename)
>   File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 123, in load_schema
>     return do_load(os.path.join(schema_basedir, schema))
>   File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 108, in do_load
>     return yaml.load(tmp)
>   File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/main.py", line 343, in load
>     return constructor.get_single_data()
>   File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 113, in get_single_data
>     return self.construct_document(node)
>   File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 123, in construct_document
>     for _dummy in generator:
>   File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 723, in construct_yaml_map
>     value = self.construct_mapping(node)
>   File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 440, in construct_mapping
>     return BaseConstructor.construct_mapping(self, node, deep=deep)
>   File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 257, in construct_mapping
>     if self.check_mapping_key(node, key_node, mapping, key, value):
>   File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 295, in check_mapping_key
>     raise DuplicateKeyError(*args)
> ruamel.yaml.constructor.DuplicateKeyError: while constructing a mapping
>   in "<unicode string>", line 4, column 1
> found duplicate key "examples" with value "[]" (original value: "[]")
>   in "<unicode string>", line 157, column 1
>
> To suppress this check see:
>     http://yaml.readthedocs.io/en/latest/api.html#duplicate-keys
>
> Duplicate keys will become an error in future releases, and are errors
> by default when using the new API.
>
> Traceback (most recent call last):
>   File "/usr/local/bin/dt-mk-schema", line 34, in <module>
>     schemas = dtschema.process_schemas(args.schemas, core_schema=(not args.useronly))
>   File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 554, in process_schemas
>     sch = process_schema(os.path.abspath(filename))
>   File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 507, in process_schema
>     schema = load_schema(filename)
>   File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 123, in load_schema
>     return do_load(os.path.join(schema_basedir, schema))
>   File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 108, in do_load
>     return yaml.load(tmp)
>   File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/main.py", line 343, in load
>     return constructor.get_single_data()
>   File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 113, in get_single_data
>     return self.construct_document(node)
>   File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 123, in construct_document
>     for _dummy in generator:
>   File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 723, in construct_yaml_map
>     value = self.construct_mapping(node)
>   File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 440, in construct_mapping
>     return BaseConstructor.construct_mapping(self, node, deep=deep)
>   File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 257, in construct_mapping
>     if self.check_mapping_key(node, key_node, mapping, key, value):
>   File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 295, in check_mapping_key
>     raise DuplicateKeyError(*args)
> ruamel.yaml.constructor.DuplicateKeyError: while constructing a mapping
>   in "<unicode string>", line 4, column 1
> found duplicate key "examples" with value "[]" (original value: "[]")
>   in "<unicode string>", line 157, column 1
>
> To suppress this check see:
>     http://yaml.readthedocs.io/en/latest/api.html#duplicate-keys
>
> Duplicate keys will become an error in future releases, and are errors
> by default when using the new API.
>
> Documentation/devicetree/bindings/Makefile:41: recipe for target 'Documentation/devicetree/bindings/processed-schema-examples.yaml' failed
> make[1]: *** [Documentation/devicetree/bindings/processed-schema-examples.yaml] Error 123
> make[1]: *** Deleting file 'Documentation/devicetree/bindings/processed-schema-examples.yaml'
> Documentation/devicetree/bindings/Makefile:45: recipe for target 'Documentation/devicetree/bindings/processed-schema.yaml' failed
> make[1]: *** [Documentation/devicetree/bindings/processed-schema.yaml] Error 123
> make[1]: *** Deleting file 'Documentation/devicetree/bindings/processed-schema.yaml'
> Makefile:1300: recipe for target 'dt_binding_check' failed
> make: *** [dt_binding_check] Error 2
>
> See https://patchwork.ozlabs.org/patch/1287813
>
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure dt-schema is up to date:
>
> pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade
>
> Please check and re-submit.
>

--
Kamel Bouhara, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
