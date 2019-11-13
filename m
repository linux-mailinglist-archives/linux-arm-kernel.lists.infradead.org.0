Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7665FAE29
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 11:11:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ft0+uuZGL02l4EAkKTTHxAkOFn/+2Kgj5Sj9/1P28yA=; b=ANGV4b1C+9p9t1
	XEpRUTmE+pkH0qVaOGBtI2ioS4zr+X5eUlvavqwf5v1ueskkfmxpU+l9Pc0bfi+PTCPh73CHuShAE
	VcQ21XkLLTQu4lTuwU+OOjAztFlHFfVSY/j6aic2aJG0gy9u1Xe5cihq7foGn6UhWNrNx/gL3peLv
	c7vyGmX13r+YOLrs0F7bVFTA4rylS61If1JvG9cLIAdSNU3LMNntmseTgsiwqa5nJnmwejZYgFq4K
	r312hjlKbeVssT5H/at9UZsJFi2qOPKA3mYDJ8uM67KdyXWD3JLmfEYj8y1wP93CDcacV3A/J9AUd
	4wOm9xFMoGf2oeepXRXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUpcL-0006mf-Sa; Wed, 13 Nov 2019 10:11:17 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUpc7-0006lW-H0
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 10:11:05 +0000
X-Originating-IP: 92.137.17.54
Received: from kb-xps (alyon-657-1-975-54.w92-137.abo.wanadoo.fr
 [92.137.17.54]) (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 385BC1BF20A;
 Wed, 13 Nov 2019 10:10:49 +0000 (UTC)
Date: Wed, 13 Nov 2019 11:10:47 +0100
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: at91: Document Kizboxmini and
 Smartkiz boards binding
Message-ID: <20191113101047.GB25624@kb-xps>
References: <20191106083643.1995-1-kamel.bouhara@bootlin.com>
 <20191113035022.GA27823@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113035022.GA27823@bogus>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_021103_841780_FE3B3A08 
X-CRM114-Status: GOOD (  20.18  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 09:50:22PM -0600, Rob Herring wrote:
> On Wed, Nov 06, 2019 at 09:36:42AM +0100, Kamel Bouhara wrote:
> > Document devicetree's bindings for the Overkiz's Kizbox Mini and
> > Smartkiz boards, based on a SAM9G25 Atmel SoC.
> >
> > Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> > ---
> > Changes in v2
> > =============
> > 	- Added Kizboxmini Base board documentation
> > 	- Merged Smartkiz documentation as it is also a sam9g25 based
> > 	board
> >
> > Changes in v3
> > =============
> > 	- Made a single items list with all the sam9g25 based boards and
> > 	put description into a comment.
> > 	- Fixed duplicated item in enum list and checked with 'make
> > 	dt_binding_check'
>
> Are you sure?
>
Yes, here is the command output I've got :

$ make ARCH=arm dt_binding_check \
DT_SCHEMA_FILES="Documentation/devicetree/bindings/arm/atmel-at91.yaml" \
DT_SCHEMA_FLAGS="-u"
 SCHEMA  Documentation/devicetree/bindings/processed-schema.yaml
 DTC     Documentation/devicetree/bindings/arm/atmel-at91.example.dt.yaml
 CHECK   Documentation/devicetree/bindings/arm/atmel-at91.example.dt.yaml

> > ---
> >  Documentation/devicetree/bindings/arm/atmel-at91.yaml | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> > index 6dd8be401673..e4140e94864d 100644
> > --- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> > +++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> > @@ -35,6 +35,16 @@ properties:
> >                - atmel,at91sam9x60
> >            - const: atmel,at91sam9
> >
> > +        items:
>
> You are missing a '-' here, giving this:
>
Yes but the log you're putting seems  more related to a python issue (2.6 vs 3)
?
> Traceback (most recent call last):
>   File "/usr/local/bin/dt-mk-schema", line 32, in <module>
>     schemas = dtschema.process_schemas(args.schemas, core_schema=(not
> args.useronly))
>   File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line
> 475, in process_schemas
>     sch = process_schema(os.path.abspath(filename))
>   File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line
> 427, in process_schema
>     schema = load_schema(filename)
>   File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line
> 103, in load_schema
>     return yaml.load(f.read())
>   File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/main.py",
> line 341, in load
>     return constructor.get_single_data()
>   File
> "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py",
> line 113, in get_single_data
>     return self.construct_document(node)
>   File
> "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py",
> line 123, in construct_document
>     for _dummy in generator:
>   File
> "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py",
> line 723, in construct_yaml_map
>     value = self.construct_mapping(node)
>   File
> "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py",
> line 440, in construct_mapping
>     return BaseConstructor.construct_mapping(self, node, deep=deep)
>   File
> "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py",
> line 257, in construct_mapping
>     if self.check_mapping_key(node, key_node, mapping, key, value):
>   File
> "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py",
> line 295, in check_mapping_key
>     raise DuplicateKeyError(*args)
> ruamel.yaml.constructor.DuplicateKeyError: while constructing a mapping
>   in "<unicode string>", line 23, column 9
> found duplicate key "items" with value "[]" (original value: "[]")
>   in "<unicode string>", line 38, column 9
>
> To suppress this check see:
>     http://yaml.readthedocs.io/en/latest/api.html#duplicate-keys
>
> Duplicate keys will become an error in future releases, and are errors
> by default when using the new API.
>
> Documentation/devicetree/bindings/Makefile:33: recipe for target
> 'Documentation/devicetree/bindings/processed-schema.yaml' failed
>
>
> > +          - enum:
> > +                - overkiz,kizboxmini-base # Overkiz kizbox Mini Base Board
> > +                - overkiz,kizboxmini-mb   # Overkiz kizbox Mini Mother Board
> > +                - overkiz,kizboxmini-rd   # Overkiz kizbox Mini RailDIN
> > +                - overkiz,smartkiz        # Overkiz SmartKiz Board
> > +          - const: atmel,at91sam9g25
> > +          - const: atmel,at91sam9x5
> > +          - const: atmel,at91sam9
> > +
> >        - items:
> >            - enum:
> >                - atmel,at91sam9g15
> > --
> > 2.24.0.rc1
> >

--
Kamel Bouhara, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
