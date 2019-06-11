Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5803D456
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 19:36:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nVV4IKvB1ijjgBl1Y3hQ1i/6oUApWfP4pCKX1OxVGgI=; b=R3JMersuncTXGbuQW2EMyv+oi
	mTngN0OEfE9VzdN+mW9k4dxI8bqOxRwT7T8KZcQswtAqQTuDzcnS26KtR6FB1OlnAtOZ4WPrCSiVM
	OlFJbEsfEuGRscnrKOdZMAKZDaff114CMG5Jdabar/vOxp13rggoPv/eO2Mpz3RVC3SU/XY5yu1H5
	LQ2KQSprQTOjIiMVErVk48in69D96wQZ9B43XksYq6gBqRyWz5zFezzlyQGq6XQ5xrdEWrPnn5MEq
	Ium0kfAuZq//V4uRgNR1UF+XwGddBOltf6K+sk6x1bl9OJHFkSR5rLMHUHMAZgp8eBKwL78/303b+
	afU5IyL0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hakhE-0005AS-AK; Tue, 11 Jun 2019 17:36:32 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hakh3-0005A7-2b
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 17:36:22 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5BHaGOi016378;
 Tue, 11 Jun 2019 12:36:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560274576;
 bh=+9areqRVfrK1YDO1ErJT+yPadNyrrPz0UtT91OB9eco=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=uz6bEiYTEu+wbM4h0gy9oYVe067KIitfHz1K21YKP7kcGcMa5c7VPBuloz/j0mH43
 7Uvw48L8Q+qOYREeZ2ljw3nKKvyeFAonqhSIhbuHYb1wTSkwaW0GO79+Vnswwx9b9Z
 0Y8adOBK6D+g0AlLq7S5RFjLvyXdcyvBUmfka+24=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5BHaGet064775
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 11 Jun 2019 12:36:16 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 11
 Jun 2019 12:36:16 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 11 Jun 2019 12:36:16 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5BHaDYh090017;
 Tue, 11 Jun 2019 12:36:13 -0500
Subject: Re: [PATCH v1.1] firmware: ti_sci: Add resource management APIs for
 ringacc, psi-l and udma
To: Lokesh Vutla <lokeshvutla@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>, 
 <vkoul@kernel.org>, <nm@ti.com>, <ssantosh@kernel.org>
References: <20190506123456.6777-2-peter.ujfalusi@ti.com>
 <20190610091856.25502-1-peter.ujfalusi@ti.com>
 <636f599a-cefa-ce70-d0ae-b5244edf14b2@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <2a755211-afd9-070c-954c-f6f2d931455b@ti.com>
Date: Tue, 11 Jun 2019 20:36:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <636f599a-cefa-ce70-d0ae-b5244edf14b2@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_103621_199890_68D6A6E9 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: grygorii.strashko@ti.com, tony@atomide.com, linux-kernel@vger.kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/06/2019 12:41, Lokesh Vutla wrote:
> 
> 
> On 10/06/19 2:48 PM, Peter Ujfalusi wrote:
>> Configuration of NAVSS resource, like rings, UDMAP channels, flows
>> and PSI-L thread management need to be done via TISCI.
>>
>> Add the needed structures and functions for NAVSS resource configuration of
>> the following:
>> Rings from Ring Accelerator
>> PSI-L thread management
>> UDMAP tchan, rchan and rflow configuration.
>>
>> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> 
> Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>
> 
> Thanks and regards,
> Lokesh
> 

Thanks, queuing this single patch up for 5.3.

Vinod, I am setting up an immutable branch if you need to pick this 
patch up; basically if you are planning to merge the dma support for 
5.3. Available as a tag here (I'll send a pull-req out for this in a bit):

   git://git.kernel.org/pub/scm/linux/kernel/git/kristo/linux 
tags/ti-sci-for-5.3

It is based on top of clock driver pull-request due to dependencies.

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
