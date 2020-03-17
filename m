Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFF11882D9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 13:04:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oAH7olTsV16pK/MNRYnh6f6lZcrvhgGAzRitSgMwt8E=; b=mkySYnJ+0tCht1K8qWoFpV5mF
	yf5UyAdYD/h8SoyVMHN0VXLp+1sZGm1TYbjP4bLiKOxzucnR6VgxZzdkg7jvkNMJfiQz1Yx82uIG/
	r94IumJ8QTBqpb6EJImsImuJ7TbCJK8KeeB7OWrVnZJdVUQijCP3bPkR7f0rsIq0Sf92YXm6YxhGI
	Jp626gLYp95kfqe1C1EtiQKV5SUMV6Ufmj45bhCW6p9NUwkW55NFKTHtX/umwOpgAlHSRzH4gHTKV
	o3emZp3YoLq/Q+HGi5Smq1IZj09ahJ3Esju2ef5BKT3ZhVJvVFNVSEPaM/SN7wSN3H/km16P/isdI
	/bBoS1rAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEAxE-0006We-WB; Tue, 17 Mar 2020 12:04:17 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEAx0-0006Vh-Sr
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 12:04:04 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02HC1j8I000556;
 Tue, 17 Mar 2020 07:01:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584446505;
 bh=wjn4Q51nWQESg+W49NEoLzwZmi+vaAV5Ld0LLIhWlMU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=KNL1OXo9R7zP4eMivWB4YnLEg888FaJWaGkzMD5YYZcsng8pfehS7k6fR7PvpulCz
 ZjYhiCPs7bBFO6fdxT0GWADv1bDM5eKivS1hatnQNu3sosUujTF+qlvEc5qqKdv7wc
 9SRMgnYWYt4NvxqtEC4khpx4utYWlHORTpjYAxoA=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02HC1j8g024334
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 17 Mar 2020 07:01:45 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 17
 Mar 2020 07:01:45 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 17 Mar 2020 07:01:45 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02HC1ggs013068;
 Tue, 17 Mar 2020 07:01:43 -0500
Subject: Re: [PATCH] arm: dts: ti: k3-am654-main: Update otap-del-sel values
To: Faiz Abbas <faiz_abbas@ti.com>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
References: <20200109085152.10573-1-faiz_abbas@ti.com>
 <5dc0bca0-502d-01b8-554b-4c4bc06688a8@ti.com>
 <54c5abfd-7ac5-92ba-e89b-aeae9ee4e275@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <3b721020-7ef2-410f-325c-6e17bdffc4a6@ti.com>
Date: Tue, 17 Mar 2020 14:01:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <54c5abfd-7ac5-92ba-e89b-aeae9ee4e275@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_050403_062002_743FC569 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, nm@ti.com, robh+dt@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/03/2020 09:11, Faiz Abbas wrote:
> Tero,
> 
> On 17/01/20 1:38 pm, Tero Kristo wrote:
>> On 09/01/2020 10:51, Faiz Abbas wrote:
>>> According to the latest AM65x Data Manual[1], a different output tap
>>> delay value is optimum for a given speed mode. Update these values.
>>>
>>> [1] http://www.ti.com/lit/gpn/am6526
>>>
>>> Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
>>
>> I believe this patch is going to be updated, as the dt binding has
>> received comments. As such, going to ignore this for now.
>>
> 
> Those other series are merged now so you should be able to pick this up.

There were no changes to the DT binding?

Can you resend the DTS patch, and refer to the merged dt-binding? I 
deleted the whole series from my inbox already based on above.

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
