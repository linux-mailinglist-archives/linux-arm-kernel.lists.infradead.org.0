Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5D815D208
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 07:26:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w6sPiCZK9Vi69c/DmCjgSobIRPoaLDFK/0tJ7m0lAZY=; b=o1BURMnYym9a/vrVkAg+Ig7bf
	eY9sUbPzNyTeVEaAHEkB2XJx1KRVniub8q5gdEUgiATkJ8pNIbaS3TdgRdIpvgHTq07wZeOeiNNHc
	3gfLwlKMG2ORtoyqWOJeUmEJoVQnOyr2CDHGj+0wkGT72773gpxh+RzefmRY6gOzT4o5NA3nnuzDi
	KJPzZUpKdMhEoLTIkndGCztGuEu2jvmYk6/IDRt1oOL5a8hjSq4GLZ/xfNZZvwX4Z3wRDCyKb27F9
	w2czM3kqxh7wBcqBHGJ/VLIt/yj6ROpbDW8w7LFI+r9GQEtNJojY7ZtZpT2kECxDTIxiuEEx6ZbJR
	ebQwpLsWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2UQI-0002R8-6I; Fri, 14 Feb 2020 06:25:58 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2UQB-0002Qh-0u
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 06:25:52 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01E6PbU2128154;
 Fri, 14 Feb 2020 00:25:37 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1581661537;
 bh=emb6isgivzlz8Xro3qZE3VzauclA19pQtNe3HZ5RsiM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=s0GVC/VOy1gt1pkmomlQO63U+pvhLhjJfAhegZ4sPGqG+fcQNuGRzL3Co76h/HThd
 WmVxGPXJkdbGWe3FbBYYIVMYBa455HVTI10ItlRj8WWBcXvI0NxR8c7ksNljWPkY0a
 E48x9QtW8mJrr5Tv10DK0OLIyJvPwLSDcca2I2rQ=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01E6PbXr120829;
 Fri, 14 Feb 2020 00:25:37 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 14
 Feb 2020 00:25:37 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 14 Feb 2020 00:25:37 -0600
Received: from [10.24.69.174] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01E6PXrW103970;
 Fri, 14 Feb 2020 00:25:34 -0600
Subject: Re: [PATCH 1/4] dt-bindings: thermal: k3: Add VTM bindings
 documentation
To: Rob Herring <robh@kernel.org>
References: <20200213102440.20539-1-j-keerthy@ti.com>
 <20200213102440.20539-2-j-keerthy@ti.com> <20200213204738.GA2973@bogus>
From: Keerthy <j-keerthy@ti.com>
Message-ID: <a1022021-1c4c-4a4b-8391-776df0d03a82@ti.com>
Date: Fri, 14 Feb 2020 11:55:39 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200213204738.GA2973@bogus>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_222551_164956_31D659CC 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 amit.kucheria@verdurent.com, linux-pm@vger.kernel.org,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, t-kristo@ti.com,
 robh+dt@kernel.org, rui.zhang@intel.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 14/02/20 2:17 am, Rob Herring wrote:
> On Thu, 13 Feb 2020 15:54:37 +0530, Keerthy wrote:
>> Add VTM bindings documentation. In the Voltage Thermal
>> Management Module(VTM), K3 AM654 supplies a voltage
>> reference and a temperature sensor feature that are gathered in the band
>> gap voltage and temperature sensor (VBGAPTS) module. The band
>> gap provides current and voltage reference for its internal
>> circuits and other analog IP blocks. The analog-to-digital
>> converter (ADC) produces an output value that is proportional
>> to the silicon temperature.
>>
>> Signed-off-by: Keerthy <j-keerthy@ti.com>
>> ---
>>   .../bindings/thermal/ti,am654-thermal.yaml    | 59 +++++++++++++++++++
>>   1 file changed, 59 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
>>
> 
> My bot found errors running 'make dt_binding_check' on your patch:

I will fix them and resend v2.

> 
> warning: no schema found in file: Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml: ignoring, error parsing file
> Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
> Traceback (most recent call last):
>    File "/usr/local/bin/dt-doc-validate", line 35, in check_doc
>      testtree = dtschema.load(filename, line_number=line_number, duplicate_keys=False)
>    File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 513, in load
>      return yaml.load(f.read())
>    File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/main.py", line 343, in load
>      return constructor.get_single_data()
>    File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 111, in get_single_data
>      node = self.composer.get_single_node()
>    File "_ruamel_yaml.pyx", line 718, in _ruamel_yaml.CParser.get_single_node
> ruamel.yaml.composer.ComposerError: expected a single document in the stream
>    in "<unicode string>", line 2, column 1
> but found another document
>    in "<unicode string>", line 4, column 1
> 
> During handling of the above exception, another exception occurred:
> 
> Traceback (most recent call last):
>    File "/usr/local/bin/dt-doc-validate", line 74, in <module>
>      ret = check_doc(args.yamldt)
>    File "/usr/local/bin/dt-doc-validate", line 40, in check_doc
>      print(filename + ":", exc.path[-1], exc.message)
> AttributeError: 'ComposerError' object has no attribute 'path'
> Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/thermal/ti,am654-thermal.example.dts' failed
> make[1]: *** [Documentation/devicetree/bindings/thermal/ti,am654-thermal.example.dts] Error 1
> Makefile:1263: recipe for target 'dt_binding_check' failed
> make: *** [dt_binding_check] Error 2
> 
> See https://patchwork.ozlabs.org/patch/1237405
> Please check and re-submit.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
