Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F31D216F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 09:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cl3JeNhXsgGJhfoHHhKeHo0uv3I+TQ1q4yQr5x+P9XY=; b=uaD3ynq9o2z1iaYfOBfT4enuw
	QzrHg/VNJVHNHiO7cCl6HE2LKs4pSKmbNSasNx604Nhje/jHCdT3VWValZxi/bzLlph4Wm4cwhfDJ
	FeehpmQZSDpkTvdWDevJQtjOFppPivI5bJqG0YvtdTyC6EFaNmDU9oMyCAVIZ9/5+EwSffN/rCb4a
	+KRUWtY/NX+jzVOIL8ABVgTB1n1RcrYBjMRFj30d7JGjU9ibE2MaEKX8HLLEwha+6KsFOV1nz6QHb
	3fXBn678sN7OmUsKUGMqvt+DFQaTCIBOk8IsDabAZEd5o+QxPJ0FNCbV/vGoVIHnStUj2AzoaeIHz
	wBKYO6rEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iISeL-00023i-5J; Thu, 10 Oct 2019 07:14:13 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iISe6-000234-UR
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 07:14:00 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9A7DqTR083661;
 Thu, 10 Oct 2019 02:13:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1570691632;
 bh=Igz9/V9k1PMM6aDmmF606+31uSx46fazy4qUkrGadDA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=wehcdvPRmkEeSFaZQAOXAzuNNCNGADesihvUrY429jDGaQKSqzy6+eDrTYS8562gv
 o8AT3QBPnot9VFZvKZRvtUATgiIibBjCvlMUVPbaChFxqaI6H5qstEd9O1ebr8y2aK
 ZaNknGroLRMOYoGHQi1Wm+Uffr+kfn9agrBagBo8=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9A7DpZk001188
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 10 Oct 2019 02:13:51 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 10
 Oct 2019 02:13:50 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 10 Oct 2019 02:13:50 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9A7Dmtv113245;
 Thu, 10 Oct 2019 02:13:49 -0500
Subject: Re: [PATCHv8 1/9] dt-bindings: omap: add new binding for PRM instances
To: "santosh.shilimkar@oracle.com" <santosh.shilimkar@oracle.com>, Sebastian
 Reichel <sre@kernel.org>
References: <20191008125544.20679-1-t-kristo@ti.com>
 <20191008125544.20679-2-t-kristo@ti.com>
 <20191008154655.u34wkbqgmelv3aea@earth.universe>
 <115ab938-e025-98fa-3b9e-0b3ced39307d@ti.com>
 <dc2a9659-8593-e5d0-54b2-44d827e76759@oracle.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <95642d2d-af8e-061c-ef6a-7b615222f360@ti.com>
Date: Thu, 10 Oct 2019 10:13:47 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <dc2a9659-8593-e5d0-54b2-44d827e76759@oracle.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_001359_084675_C3915B83 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, tony@atomide.com, p.zabel@pengutronix.de,
 ssantosh@kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/10/2019 18:59, santosh.shilimkar@oracle.com wrote:
> =

> =

> On 10/8/19 11:52 PM, Tero Kristo wrote:
>> On 08/10/2019 18:46, Sebastian Reichel wrote:
>>> Hi,
>>>
>>> On Tue, Oct 08, 2019 at 03:55:36PM +0300, Tero Kristo wrote:
>>>> +Example:
>>>> +
>>>> +prm_dsp2: prm@1b00 {
>>>> +=A0=A0=A0 compatible =3D "ti,omap-prm-inst", "ti,dra7-prm-inst";
>>>
>>> Nit: compatible values are sorted the other way around (most
>>> specific first).
>>
>> Hmm right, I would not like to re-post the whole series just for this =

>> seeing all the acks are in place already.
>>
>> Santosh, do you want to fix this locally or shall we post a separate =

>> patch later on to fix this?
>>
> No need. I fixed it up. Pls check.
> =

> git://git.kernel.org/pub/scm/linux/kernel/git/ssantosh/linux-keystone.git=
 for_5.5/driver-soc =


Yeah, looks fine to me.

Thanks,
Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Bu=
siness ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
