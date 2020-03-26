Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DF4194679
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 19:28:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0zT3M7VFeG/WwXYrFhxPaDKaDOsB2JOhEcUh1J3PnPc=; b=DfleUXRzyM03F+
	8q38h6XXqT1ywHyL1hSNhoJzk84+JWRXEPeiUWLH9ntREoZp1RaXDH+MHZmh+MjAbX0I1iPJ2+bOG
	oeGNb8ou+6GS3Kcg27Kn5ZV/egr2cLMakBnAOiJ+X72WSYBV14NZhc/j+qnyTkcTOLs/XcxPLzgs/
	ePvzGNEaI2JpxJ1vplBOyVEjI2EK1aN+iYRw8Ox5omKIZd3J9VJFlHFgz/NoG2QY7r5EbTVr0HpjO
	ab4I9M/U2jWP3oiro0HkaM13Mu7bPHud8DRHGS8F8OnzhPkfW7UJ2tPCai3fkR8varSsIk0pkSjBv
	tVXXcBu3MW1goLOJILQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHXES-00071S-Lq; Thu, 26 Mar 2020 18:27:56 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHXEK-0006pJ-D6
 for linux-arm-kernel@bombadil.infradead.org; Thu, 26 Mar 2020 18:27:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=p3uCdd3lNgStEmVbRoGU3tYob5tHrXuUe3dGhywOrXc=; b=dteCQvxuV6g1TSVX/FBmY9sDsb
 TCaeMOHbqmofmYaKSzqUkw9F/Mt8owTHgOmG+E0UK1XFvEnuMt4nTjzevWHuJTOjhe3XBJQPQX/PH
 C3U6HuycDLayAKnuNx0FYc8spDQ2eSAIS4mwThYC+nRJ2CT/0Rq59tllD6WpDGGQwQHIoQdEXRpK/
 Go08SDzxUbTEHgBhbVMLfM/kJ1NSyF63SHFYatIYuB6JJ/6pRMa399yFAO+WpGghnkUGjPqFZbBo7
 AUTTdEBlUdndF+tyKBMEbLXzRz4P90xnWG8SHOExB2SV+wbRVjSjgG6xv0m2Zw3FVlUBiLbAjyd5r
 CttvFe9w==;
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHWwx-0000Fm-BF
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 18:09:52 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02QI9fkO005199;
 Thu, 26 Mar 2020 13:09:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1585246181;
 bh=p3uCdd3lNgStEmVbRoGU3tYob5tHrXuUe3dGhywOrXc=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=oxTllWopocVS+boJ3JwFLjfj7+B7KNkWnWw8YgaE1/SQv0c0QnjdnCkH705FazV7R
 TzUrv+kqFB8IHVRP6nI68IeE5MeJJd5ArtvJbBzzK862KXr7G1Wgeo25yevhkuoeQP
 UXyQy2H94/jn8WXIcWpg0S8Jz07hnbU0N1hAX+HQ=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02QI9fj9094474
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 26 Mar 2020 13:09:41 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 26
 Mar 2020 13:09:41 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 26 Mar 2020 13:09:41 -0500
Received: from [10.250.86.212] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02QI9eb5072144;
 Thu, 26 Mar 2020 13:09:41 -0500
Subject: Re: [PATCH 3/7] dt-bindings: remoteproc: Add bindings for R5F
 subsystem on TI K3 SoCs
To: Rob Herring <robh@kernel.org>
References: <20200324201819.23095-1-s-anna@ti.com>
 <20200324201819.23095-4-s-anna@ti.com> <20200326162802.GA32328@bogus>
From: Suman Anna <s-anna@ti.com>
Message-ID: <90bae05e-dd47-5b71-07a7-5c3efd929143@ti.com>
Date: Thu, 26 Mar 2020 13:09:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200326162802.GA32328@bogus>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 3/26/20 11:28 AM, Rob Herring wrote:
> On Tue, 24 Mar 2020 15:18:15 -0500, Suman Anna wrote:
>> The Texas Instruments K3 family of SoCs have one or more dual-core
>> Arm Cortex R5F processor subsystems/clusters (R5FSS). The clusters
>> can be split between multiple voltage domains as well. Add the device
>> tree bindings document for these R5F subsystem devices. These R5F
>> processors do not have an MMU, and so require fixed memory carveout
>> regions matching the firmware image addresses. The nodes require more
>> than one memory region, with the first memory region used for DMA
>> allocations at runtime. The remaining memory regions are reserved
>> and are used for the loading and running of the R5F remote processors.
>> The R5F processors can also optionally use any internal on-chip SRAM
>> memories either for executing code or using it as fast-access data.
>>
>> The added example illustrates the DT nodes for the single R5FSS device
>> present on K3 AM65x family of SoCs.
>>
>> Signed-off-by: Suman Anna <s-anna@ti.com>
>> ---
>> Hi Rob,
>>
>> The dt_bindings_check seems to throw couple of warnings around the
>> usage of ranges because the tooling is adding the #address-cells
>> and #size-cells of 1 by default, whereas our actual code uses 2.
>> No issues are found with dtbs_check.
>>
>> regards
>> Suman
>>
>>  .../bindings/remoteproc/ti,k3-r5f-rproc.yaml  | 338 ++++++++++++++++++
>>  1 file changed, 338 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
>>
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.example.dts:23.13-20: Warning (ranges_format): /example-0/reserved-memory:ranges: empty "ranges" property but its #address-cells (2) differs from /example-0 (1)
> Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.example.dts:23.13-20: Warning (ranges_format): /example-0/reserved-memory:ranges: empty "ranges" property but its #size-cells (2) differs from /example-0 (1)
> Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.example.dts:54.13-56.72: Warning (ranges_format): /example-0/interconnect@100000:ranges: "ranges" property has invalid length (72 bytes) (parent #address-cells == 1, child #address-cells == 2, #size-cells == 2)

I only saw these, because the generated example dts is using cell values
of 1. I tried adding them using 2 in my example, but then it complains
about duplicate properties. I do not know how to fix these though. Same
with the K3 DSP bindings patches as well.

> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.example.dt.yaml: interconnect@100000: $nodename:0: 'interconnect@100000' does not match '^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.example.dt.yaml: interconnect@28380000: $nodename:0: 'interconnect@28380000' does not match '^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.example.dt.yaml: mcu-ram@41c00000: 'r5f-sram@0' does not match any of the regexes: '^([a-z]*-)?sram(-section)?@[a-f0-9]+$', 'pinctrl-[0-9]+'
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.example.dt.yaml: mcu-ram@41c00000: $nodename:0: 'mcu-ram@41c00000' does not match '^sram(@.*)?'

These node names are already upstream. Do I just update the example or
the upstream dts also needs fixing?

> 
> See https://patchwork.ozlabs.org/patch/1260966
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure dt-schema is up to date:
> 
> pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Thanks, will upgrade my dt-schema.

regards
Suman

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
