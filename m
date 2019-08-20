Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D54958F7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 09:54:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x3fh8ZiKlbpXAumDwzO1SktDR0ASlhFin3JDrxArFWM=; b=R3umIN9xZLrKhg9/uvNQj1D0z
	ED5bF7od+6Mc/MvcTFhs6GcRrdQA38zKu1EcAxItUbQrud5KN01lb/Orf2aJjHSbwS1qBAOzae+Kn
	UZAflpAG750Ik6xPK4rruMn/VlKaNuktP4yLlfNxWWHmMhLglLw2eZt0p1bnLTYzm3hQG1TRD4qg7
	pkLra/0HBJ3QXaG6y4v4jQTaRCoBQ2aggpvFX7sp4I4eOr1Jxgq7PVaGcuvE09rowl2nvUWQL2EDN
	1rU1uOvkk+rXb9e3vlzeDwg2SZPBI05Kyq3wvPz7g908UnZ+LFclljBn8ncpvk75RhOy/wTHZxZHp
	4juoMZaSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzyyf-0007Bu-3q; Tue, 20 Aug 2019 07:54:49 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzyyS-0007Ba-KF
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 07:54:38 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7K7sWTY010494;
 Tue, 20 Aug 2019 02:54:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566287672;
 bh=LLKSwXu5VhPkmzRL+pt5vGy/EZsLOlV9BLQ3mc2dnBM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=jLsin4fD+U2kmE3VebIddL9F6b9L30cHVJ/XsEvHmAc0GlzviDhLNamCntD6XZh+I
 5N5pnYOvoXGSKmdLmvydLUmroFErWj8u84dch1Jk5iYZTxypfNui/qSK63sVO53+YE
 qLijh3qa3aBaM40lS5Ja42DSIV685s8pdTpwJLH8=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7K7sWta073072
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 20 Aug 2019 02:54:32 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 20
 Aug 2019 02:54:31 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 20 Aug 2019 02:54:31 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7K7sTff005351;
 Tue, 20 Aug 2019 02:54:30 -0500
Subject: Re: [PATCH 0/8] soc: ti: Add OMAP PRM driver
To: Suman Anna <s-anna@ti.com>, <ssantosh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>,
 <robh+dt@kernel.org>
References: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
 <432a70fc-2683-42ca-3ac7-9775efa3ca41@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <b991f374-9e2a-5f1d-d48d-5f50a3c41756@ti.com>
Date: Tue, 20 Aug 2019 10:54:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <432a70fc-2683-42ca-3ac7-9775efa3ca41@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_005437_017609_EE74C0E6 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tony@atomide.com, devicetree@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20.8.2019 2.20, Suman Anna wrote:
> Hi Tero,
> 
> On 8/7/19 2:48 AM, Tero Kristo wrote:
>> Hi,
>>
>> This series adds OMAP PRM driver which initially supports only reset
>> handling. Later on, power domain support can be added to this to get
>> rid of the current OMAP power domain handling code which resides
>> under the mach-omap2 platform directory. Initially, reset data is
>> added for AM3, OMAP4 and DRA7 SoCs.
> 
> Wakeup M3 remoteproc driver is fully upstream, so we should be able to
> test that driver as well if you can add the AM4 data. That will also
> unblock my PRUSS.
> 
> If you can add the data to others as well, it will help in easier
> migration of the individual drivers, otherwise the ti-sysc interconnect,
> hwmod, and hwmod reset data combinations will all have to be supported
> in code.

Ok, so you are saying you would need the PRM data for am4 in addition? I 
can generate that one also.

-Tero

> 
> regards
> Suman
> 
>>
>> I've been testing the reset handling logic with OMAP remoteproc
>> driver which has been converted to use generic reset framework. This
>> part is a work in progress, so will be posting patches from that part
>> later on.
>>
>> -Tero
>>
>> --
>>
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
