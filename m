Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 604E642435
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:39:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b/1/U+k03hTiXVNhnmCdIHSbk2PaFhRmcm50Jo4OLt4=; b=KAQs4zuOqaB0CSor9FYA/k+Zz
	5RfWuiFtfJakSJEf9ng9wY+uoqVQA3mZrOuZgYJAhyUyRdeBMR+nurgfoCSgB2kPxhzDkYNMTuxRE
	YcBsAR2L2PPo4VU40fq0BgOj8Jtgy0/PM6isc0ggquQPfYfvTP5nzYX2MMPwUtHAkZbZolS/uoD7A
	iaBr2zUUMc9b09LlhpawhInqlYAGhqPPn8PKbtBYeLo29CZNJw9MumRDEXVsY/Tz49K+i0+HeHFby
	4ezRRrVWijrAmreHOL8E6HXAD2D+MNZmhdBe0eoKndAJYTWnXSG+v1q/yAvLngy+kiXgUE6ktwv2T
	NGYmbWOYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1b9-0004cM-QI; Wed, 12 Jun 2019 11:39:23 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1b3-0004a2-7G
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:39:18 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5CBdDsi014294;
 Wed, 12 Jun 2019 06:39:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560339553;
 bh=X10NukEWMKF1IUNWlJ1asn+Ocu9LNLNOyRiHvZCKXAc=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=S3tM+oxFU0oDGgYwtcNNeglYPAkIvuOHyzw+xbEbZWAYunghju6ULGmMiBi00byEc
 u7bgOSzyAys0SZP2cYkhf581t7sfc2/Ax36UF0jOh2+/gfIkl0pudzDZcU3gauvO46
 tpV7U4Xb6xqHejWMgKB8zPuBeWdKsxRRR04QZKGw=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5CBdDU1031180
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 12 Jun 2019 06:39:13 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 12
 Jun 2019 06:39:13 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 12 Jun 2019 06:39:13 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5CBdABF123188;
 Wed, 12 Jun 2019 06:39:11 -0500
Subject: Re: [GIT PULL] firmware: ti-sci: changes for v5.3
To: "santosh.shilimkar@oracle.com" <santosh.shilimkar@oracle.com>
References: <5cfc0d85-a3f7-b96a-7bc6-c7b0250ed54c@ti.com>
 <5612704b-d3f4-b51c-b9be-6df75bbe3772@oracle.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <86deb07a-a48e-c8b6-00bc-039583e2129d@ti.com>
Date: Wed, 12 Jun 2019 14:39:10 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <5612704b-d3f4-b51c-b9be-6df75bbe3772@oracle.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_043917_395301_9A2783CA 
X-CRM114-Status: GOOD (  15.76  )
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
Cc: Nishanth Menon <nm@ti.com>, "Andrew F. Davis" <afd@ti.com>, "Ujfalusi,
 Peter" <peter.ujfalusi@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/06/2019 07:57, santosh.shilimkar@oracle.com wrote:
> On 6/11/19 10:42 AM, Tero Kristo wrote:
>> Hi Santosh,
>>
>> Here's the collection of the TI SCI firmware changes for 5.3.
>>
>> This is based on the keystone clock driver pull request [1], which you 
>> may want to wait until Stephen has picked it up.
>>
> This is really going to be problem since both subsystem can go differently.
> Does the compilation breaks with clock patches ? As long as arm-soc tree
> doesn't break I don't want to have this clock tree dep.
>
> Can you please clarify ? if there is dependency like that then I will need
> an immutable branch from clock tree which I can pull in and then apply
> soc patches.

With clock patches, it is fine. If you only apply drivers/firmware side 
changes, the sci-clock driver fails to compile due to the API changes 
involved.

The clock pull-req itself can be considered immutable?

> If above is not possible, but am afraid, these patches have to wait till
> the clock patches are available in Linus's tree.

Looking at the dependencies between the patches, I can actually split 
the pull-requests slightly differently... If I apply the sci-clk 
dependant firmware patch via the clock pull-req, rest of the patches 
don't have dependency and can be pulled independently... It seems there 
are no merge conflicts either if it is done this way.

I think that is probably best, so please ignore this pull-request, I 
will send an updated one shortly.

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
