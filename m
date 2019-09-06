Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85520AC133
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 22:02:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FH3H/S29PAIiqrGUXaTwDoTlMLZeIyuozhNU2hsoFB8=; b=hE22709vNglHkZ6cWQ2OfRoXG
	wt3kASsUQsbJSxNB/vL8K8R6wyMec3Cjiegx3fqZSA1Gj8ZbaPu43q3Hu7rkYj6uYlpNg1u6AQa0j
	+npaNemZ8Lz/serk4OnduLumd/3bfaJcCMWvjazMREOR1NMSv5su8cMsdc/Ps3A5rZDUlTtGpDZEy
	twx8JdipKQCmMtbkfe/TSxjgC2w5OxojbjF4x3GU7u2u3AUSbTDlypH6ty18fIedB02izeB29RwmH
	lNvB+r4UUy6oFfBnVeLqx3gQPDEugBa/AKp0wzIl0cgtkQOFIz8sBF/gcv5Wn4Y+SBrKOfkxb+Mp8
	1L9FMBwPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6KRS-0001PS-UP; Fri, 06 Sep 2019 20:02:46 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6KRJ-0001P5-Sg
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 20:02:39 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x86K2Xel029433;
 Fri, 6 Sep 2019 15:02:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567800153;
 bh=10xvcQ++kK8vjq26QxAoqES7mAlIWPQnmIIF8zI5Vpk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=e08jr+zRuuFY02gyAUTOdMfhNxS4qFUivbE2kp/hbOeacg5gMDr0g/U4G8ZlClpVw
 Lbleby8yDxxoWN/YAjMQsMMk1lwuS/7OmNsI17+/WcpIaPeCJ7uEsiSNqX5ruaxUE6
 25UxtZwfy5pVDGoNo8RqUjG6Er0tUnBRJuX4kDb0=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x86K2XFd119951
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 6 Sep 2019 15:02:33 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 6 Sep
 2019 15:02:32 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 6 Sep 2019 15:02:32 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x86K2Tjo091944;
 Fri, 6 Sep 2019 15:02:30 -0500
Subject: Re: [PATCHv4 01/10] dt-bindings: omap: add new binding for PRM
 instances
To: Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>
References: <20190830121816.30034-2-t-kristo@ti.com>
 <20190906103558.17694-1-t-kristo@ti.com>
 <CAL_JsqLHTsEz6RJSi3rZ9AKyTBc00abyAxqwG8B9zAqL6cnv+w@mail.gmail.com>
 <20190906153658.GB52127@atomide.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <e2b75368-df70-b6c9-e019-61610859f146@ti.com>
Date: Fri, 6 Sep 2019 23:02:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190906153658.GB52127@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_130238_027427_E88A6616 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-omap <linux-omap@vger.kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/09/2019 18:36, Tony Lindgren wrote:
> * Rob Herring <robh+dt@kernel.org> [190906 12:57]:
>> On Fri, Sep 6, 2019 at 11:36 AM Tero Kristo <t-kristo@ti.com> wrote:
>>>
>>> Add new binding for OMAP PRM (Power and Reset Manager) instances. Each
>>> of these will act as a power domain controller and potentially as a reset
>>> provider.
>>>
>>> Signed-off-by: Tero Kristo <t-kristo@ti.com>
>>> ---
>>> v4:
>>> - renamed nodes as power-controller
>>> - added documentation about hierarchy
>>>
>>>   .../devicetree/bindings/arm/omap/prm-inst.txt | 31 +++++++++++++++++++
>>>   1 file changed, 31 insertions(+)
>>>   create mode 100644 Documentation/devicetree/bindings/arm/omap/prm-inst.txt
>>
>> Reviewed-by: Rob Herring <robh@kernel.org>
> 
> Looks good to me too:
> 
> Reviewed-by: Tony Lindgren <tony@atomide.com>
> 

I may need to re-spin slightly new version of this. Stephen has some 
comments on the clock driver side I am depending on, he does not like 
the hard link between reset + clocks, so I may need to ditch the 
"clocks" property from this one also.

I'll see next week which direction I need to go.

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
