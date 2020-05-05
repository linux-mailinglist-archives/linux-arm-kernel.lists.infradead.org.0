Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB101C532A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 12:27:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CIeSt7ft4phCo+HnJlpOm0s+zt/zePJW8X/FgqAMfjg=; b=CNoiY7VzDyIulgIjMFvxOY0wK
	W0bZTmEZ5ULyonWGCrM5FLRLgjVPeAE3TCjZJViHKGS7QuVFdTzOWtqETl0ypsGby9ntAAYPqNk2N
	ycAOM6OS9IVbL1TRkzNn/RX2tXF4F8zOVuCsgPzG+faVwIi5mmkijPb1YZVOfOcxr0jraU/LQ86Bk
	cNsbvi9AJM6l1wFQmIOda0H/NadROr+p+8j8kZVgTvRATAhVqkbtJ4hTrXHekxc0WEHw2lRvP208Z
	oEhMazDaiREKT4NDpultaFLRoFUUP48o9aUUJnhz97IEEQ7r+w4g7SmxfizmqmYVDOy21NrVOo/2U
	fX0r92vgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVun3-0005gy-8z; Tue, 05 May 2020 10:27:05 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVumt-0005g5-Vz
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 10:26:57 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 045AQm5c022773;
 Tue, 5 May 2020 05:26:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588674408;
 bh=DLomNfMRqwHmSyzWUGmjQc0v1EWBSRCnyaW1Xb6Iwnw=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=GK0KKi8wd3BFB5dZarUtDsz5/IdaPoZ8QEjc1FxGSqSqGNfZbKoNfsztXvvljObN8
 ua/fWSEP97ycNKo6srLnGd0jibf/ouo4mWHJxINnU1LiIESAa42qsiforudyVg9nrq
 9O8K0VkM4i5YzvOi9wDIxyciV1g1k0swCoYg/AIU=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 045AQmxR017712;
 Tue, 5 May 2020 05:26:48 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 5 May
 2020 05:26:48 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 5 May 2020 05:26:47 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 045AQiqA040195;
 Tue, 5 May 2020 05:26:45 -0500
Subject: Re: [PATCH net-next 1/7] dt-binding: ti: am65x: document common
 platform time sync cpts module
To: Rob Herring <robh@kernel.org>
References: <20200501205011.14899-1-grygorii.strashko@ti.com>
 <20200501205011.14899-2-grygorii.strashko@ti.com>
 <20200505040511.GB8509@bogus>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <845264f3-66be-fc0b-7456-60bdcc91bc11@ti.com>
Date: Tue, 5 May 2020 13:26:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200505040511.GB8509@bogus>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_032656_112559_7957CD46 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Lokesh Vutla <lokeshvutla@ti.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Murali Karicheri <m-karicheri2@ti.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/05/2020 07:05, Rob Herring wrote:
> On Fri, 1 May 2020 23:50:05 +0300, Grygorii Strashko wrote:
>> Document device tree bindings for TI AM654/J721E SoC The Common Platform
>> Time Sync (CPTS) module. The CPTS module is used to facilitate host control
>> of time sync operations. Main features of CPTS module are:
>>    - selection of multiple external clock sources
>>    - 64-bit timestamp mode in ns with ppm and nudge adjustment.
>>    - control of time sync events via interrupt or polling
>>    - hardware timestamp of ext. events (HWx_TS_PUSH)
>>    - periodic generator function outputs (TS_GENFx)
>>    - PPS in combination with timesync router
>>    - Depending on integration it enables compliance with the IEEE 1588-2008
>> standard for a precision clock synchronization protocol, Ethernet Enhanced
>> Scheduled Traffic Operations (CPTS_ESTFn) and PCIe Subsystem Precision Time
>> Measurement (PTM).
>>
>> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
>> ---
>>   .../bindings/net/ti,k3-am654-cpsw-nuss.yaml   |   7 +
>>   .../bindings/net/ti,k3-am654-cpts.yaml        | 152 ++++++++++++++++++
>>   2 files changed, 159 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml
>>
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml: $id: relative path/filename doesn't match actual path or filename
> 	expected: http://devicetree.org/schemas/net/ti,k3-am654-cpts.yaml#
> Unknown file referenced: [Errno 2] No such file or directory: '/usr/local/lib/python3.6/dist-packages/dtschema/schemas/net/ti,am654-cpts.yaml'
> Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.example.dts' failed
> make[1]: *** [Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.example.dts] Error 255
> make[1]: *** Waiting for unfinished jobs....
> Makefile:1300: recipe for target 'dt_binding_check' failed
> make: *** [dt_binding_check] Error 2
> 
> See https://patchwork.ozlabs.org/patch/1281460
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure dt-schema is up to date:
> 
> pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade
> 
> Please check and re-submit.
> 

I've sent fix for this.

-- 
Best regards,
grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
