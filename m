Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FD7966CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 18:51:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6QHGoapqTdbelf/QYGJ+vY18eY1gGVHkhM6OW3YCYyI=; b=XizxlW+B+j/hOp
	UNElQweY6V5i0axnjMPc9aZSgZ5s8vwRcH7jgrjhLz3YcA7hH7K/tGOBhQmp2+6AYleoAgQOiOllK
	5uqLIevsmVUhiZx+MGusnJF+BJVBog9X5J2w5ofW7XNGH8g+5ACNsCDTFW/LM9y9DSzYOoctwlNll
	wWMQVEXdGrfBFytjBREF5HHCuJHuJzek+SbKNrWOiZVOPZUUW3RA4lsBqnY5j7DOicg/kP4I3DtpT
	YAS85ypq5vycX68lHqMyN92HrbZTeK8EGc7qKrLeXYntQiWZSRI8tEPY3gMzYlE6Be3XiHS74aKqa
	QNFlbQp9zCMPx2dHiV7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i07Lw-0007aw-E5; Tue, 20 Aug 2019 16:51:24 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i07Ln-0007ac-34
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 16:51:16 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7KGpBgC060459;
 Tue, 20 Aug 2019 11:51:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566319871;
 bh=KcyOfR8Cu+0kW7PJcSG2BYRDkc98ta3TUYno7667hwI=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=CyZdzT6xgsqKqNo5OCdTb3yFz087dFuG+TdNxK7dGMsSaWt99Omk8nnxZOaAx5it+
 wT/8K3vDMhm6g2zO2JphhxYfJCj7sL9j3M+zxuQpj3byTr3PYIhw8B/DYUfRC6KjQM
 Ff6evVTQyaAae2nY3A9aakm53CKcgDS4UU/NBH3U=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7KGpB7h073104
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 20 Aug 2019 11:51:11 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 20
 Aug 2019 11:51:11 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 20 Aug 2019 11:51:11 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7KGpAjf010013;
 Tue, 20 Aug 2019 11:51:10 -0500
Subject: Re: [PATCH 0/8] soc: ti: Add OMAP PRM driver
To: Tero Kristo <t-kristo@ti.com>, <ssantosh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>,
 <robh+dt@kernel.org>
References: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
 <432a70fc-2683-42ca-3ac7-9775efa3ca41@ti.com>
 <b991f374-9e2a-5f1d-d48d-5f50a3c41756@ti.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <88446f5f-60ae-1205-33e5-a225a2764c72@ti.com>
Date: Tue, 20 Aug 2019 11:51:10 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <b991f374-9e2a-5f1d-d48d-5f50a3c41756@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_095115_276994_2B6767C6 
X-CRM114-Status: GOOD (  16.43  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: tony@atomide.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/20/19 2:54 AM, Tero Kristo wrote:
> On 20.8.2019 2.20, Suman Anna wrote:
>> Hi Tero,
>>
>> On 8/7/19 2:48 AM, Tero Kristo wrote:
>>> Hi,
>>>
>>> This series adds OMAP PRM driver which initially supports only reset
>>> handling. Later on, power domain support can be added to this to get
>>> rid of the current OMAP power domain handling code which resides
>>> under the mach-omap2 platform directory. Initially, reset data is
>>> added for AM3, OMAP4 and DRA7 SoCs.
>>
>> Wakeup M3 remoteproc driver is fully upstream, so we should be able to
>> test that driver as well if you can add the AM4 data. That will also
>> unblock my PRUSS.
>>
>> If you can add the data to others as well, it will help in easier
>> migration of the individual drivers, otherwise the ti-sysc interconnect,
>> hwmod, and hwmod reset data combinations will all have to be supported
>> in code.
> 
> Ok, so you are saying you would need the PRM data for am4 in addition? I
> can generate that one also.

Yes, if you can include the data for AM4 and OMAP5 as well, then we can
convert all the SoCs other than OMAP2/OMAP3 at the same time as per your
comment on bindings. Almost all of the active remoteprocs will be
covered by these.

OMAP3 ISP driver is also fully upstream, so we would have to manage its
legacy compatibility.

regards
Suman

> 
> -Tero
> 
>>
>> regards
>> Suman
>>
>>>
>>> I've been testing the reset handling logic with OMAP remoteproc
>>> driver which has been converted to use generic reset framework. This
>>> part is a work in progress, so will be posting patches from that part
>>> later on.
>>>
>>> -Tero
>>>
>>> -- 
>>>
>>
> 
> -- 
> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
> Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
