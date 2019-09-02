Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 729DAA4F61
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 08:51:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B/WKGhBQL6NzqYiXFDzfYl6j3cOOpfY7oAXc6/OWcgQ=; b=n49ykc0jTrJHRNYoFpIFXthwJ
	2MtazWKjqKSOis7tPv0lQTH/v6jffW+fk8B78xSul8SBl3kEPg2O/4oo3iXsojqDj2Ekd3xgKniwg
	TQHF4K4a2geQrdrUmOek8VHh0pxOdeI62laXOjOGJqu+GKQk3li3P2ZzBEBf/yuotcdIXznC23kp/
	oVr5NwwStKNjRpEqzfgY+u/6vFtimdSOO1evsp/JMskfYhzjhYAmra8gT8sz256g5MKqNJHiOuAiy
	rXsK0Nb0PNDG3LU2fSeMoQ3WQwpMApIWUWCjntG+ZAU98wbd3b+XSsl9bpjpufDsTCLyrZLkNf6t3
	J4qxyOnjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4gBI-00085X-J6; Mon, 02 Sep 2019 06:51:17 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4gB6-00084o-Rn
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 06:51:06 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x826oq5V049395;
 Mon, 2 Sep 2019 01:50:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567407052;
 bh=ox3ufaLMVDgFuqEZpqLT51isg/cyX5JQ6XMTFXw8veU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=cIHMXK/iZ8iNX114dUzNvVAZWBnAaoAPYxYr9hmovMIzMOC8ea4E0VU8F2o9j6QpW
 0D8W+837wZsTy5TcrP8u7vgdsjnOQo+aLM9thxs7nSGV3B5B1AJ3ioaX7pQVmmBkvS
 UfwW9xxQ8EdN8ljnJrmWBhGnutOJM399b+bgMRkI=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x826opBQ082261
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 2 Sep 2019 01:50:51 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 2 Sep
 2019 01:50:51 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 2 Sep 2019 01:50:51 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x826onNI003681;
 Mon, 2 Sep 2019 01:50:49 -0500
Subject: Re: [PATCHv3 00/10] soc: ti: add OMAP PRM driver (for reset)
To: <santosh.shilimkar@oracle.com>, <ssantosh@kernel.org>,
 <linux-omap@vger.kernel.org>, <tony@atomide.com>, <s-anna@ti.com>,
 <p.zabel@pengutronix.de>
References: <20190830121816.30034-1-t-kristo@ti.com>
 <f7d6a2fb-175c-361b-00ff-ddde67700daa@oracle.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <178f8d3a-3658-132f-e937-64313c912dd0@ti.com>
Date: Mon, 2 Sep 2019 09:50:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <f7d6a2fb-175c-361b-00ff-ddde67700daa@oracle.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_235105_060638_12586A1E 
X-CRM114-Status: GOOD (  13.92  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/08/2019 19:50, santosh.shilimkar@oracle.com wrote:
> On 8/30/19 5:18 AM, Tero Kristo wrote:
>> Hi,
>>
>> V3 of the series, ended up re-sending the whole series as I squashed one
>> patch from v2 and because of that the ordering has changed a bit. Changes
>> in v3 contain fixes for the comments from Philipp Zabel.
>>
>> - added spinlock to protect register writes
>> - added own xlate function to prevent bad reset IDs to be registered
>> - use mask for the valid reset detection instead of parsing reset map
>> - fixed reset status bit handling
>> - used iopoll macro instead of handwritten poll loop for timeouts
>> - squashed patch #6 into #4 from v2 of the series
>> - some other minor fixes.
>>
>> This series still depends on the clk driver changes for the reset<->clk
>> syncing [1].
>>
> This has to wait for another merge window. It will also take care of 
> dependencies landing in mainline. Will push this to linux-next as
> soon as v5.4-rc1 is out. Please remind me in case you don't see it
> in next after 5.4-rc1.

Yep it is very late so did not expect it getting in, just wanted to get 
the patches rolling. I still hope to see the clock patches getting in 
this cycle due to dependency, lets keep fingers crossed.

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
