Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1AEA141A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 10:50:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kPJAxhruzfKlKrpB2Fr3pk1YxgltA+6m16vgIWWxbzg=; b=Js4YTfAffK+NVD
	Xo8gK8sGVY44jFeSJ4QYxsbYHKhyu9qAdRsX9SVLxgeSf/JO1mkIMIaAF6Xpxa4ilmm5P4j8YdI1r
	WZ+nRKNnw+HTYDiF953UMvbao0NKPsiqiT4tMfaek9xfHTt69lCCBNFuZToLvaT6cQmOimgixVKNZ
	XXFGiyWDOTUGM+GDunywCzvTYs5Kx8Po+o7lCWKFYyWqJlVkhhhKsCbQz1dhjoVMQv5cAWuaqBRW4
	rSSO087NnizFWwu/4Mr0f/NfKScFIx82fUx35diz0TJNXnYIJmmgykoTcDJyGeTR2lx9TTIo+fou2
	x1FW8lq3GUiYYvIEgVoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3G87-0005EY-Q3; Thu, 29 Aug 2019 08:50:08 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3G7m-0005E5-5T
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 08:49:48 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7T8ng8w111003;
 Thu, 29 Aug 2019 03:49:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567068582;
 bh=hb1qfncjpjyooL2xBRQ/iE6DhSxUJnJBzoFjZ644LWk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=w+Y+5KcFVkNAl319jUaVFUDgo5s2HL05wlhZeU+ROONxq4FOLieh3EdySpd8XiLKw
 Z/45Ke1aJncrqIUDrXAF72FsCK8Ok7Y4uQfg4NmNFR8YhdQguKdeBWojbRYomjOVK9
 r/Z3YwI8X/h7kMFVkuR6rTA2tv+znkK59PZZPAb4=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7T8ng7f009077
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 29 Aug 2019 03:49:42 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 29
 Aug 2019 03:49:42 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 29 Aug 2019 03:49:42 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7T8naMX001450;
 Thu, 29 Aug 2019 03:49:38 -0500
Subject: Re: [PATCH v5 0/2] arm64: dts: ti: k3: Update the power-domain cells
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>, Santosh
 Shilimkar <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>
References: <20190729123023.32702-1-lokeshvutla@ti.com>
 <9aa7eeaf-36ee-3d5f-9654-d8fa37577877@ti.com>
 <4dab34ae-e7cc-6c6e-4adb-3a061027ab39@ti.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <1ad82ac9-b59b-3698-feca-f92a4be992a0@ti.com>
Date: Thu, 29 Aug 2019 14:18:49 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <4dab34ae-e7cc-6c6e-4adb-3a061027ab39@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_014946_288136_1C08D1B9 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Device Tree Mailing List <devicetree@vger.kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tero,

On 29/08/19 1:01 PM, Tero Kristo wrote:
> On 20/08/2019 15:48, Lokesh Vutla wrote:
>>
>>
>> On 29/07/19 6:00 PM, Lokesh Vutla wrote:
>>> Update the power-domains cells on all K3 based devices to reflect
>>> exclusive and shared permissions in each device.
>>
>> Gentle Ping on this series.
>>
>> Thanks and regards,
>> Lokesh
>>
> 
> This can't be merged until the driver portion is in. I could probably live with
> an immutable branch though.

Santosh already sent a pull request[0] with the driver changes. IMHO, dt changes
can be merged in. I don't think we need to wait for one release for DT changes
to get in or did I mis-understood your statement?

[0] https://lkml.org/lkml/2019/8/26/1124

Thanks and regards,
Lokesh

> 
> -Tero
> -- 
> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
> Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
