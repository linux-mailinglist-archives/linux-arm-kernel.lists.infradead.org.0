Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C57905928B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 06:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TzeiSWe6VZDtV3CxSY6o0VVQJ3E9AmqDmsfDZen9Tqk=; b=bHNncMkIr6ZMLlJrKEiYTWFAr
	XgbF5ecEL30JzrvfKUuZl1FJf5nelwuBzMy0ZgwZgcQPdRfZjyEHahMjuBWDK9nH+oAaV05Xs1e/J
	bJKjnhJZm2DUAuGZxSj3wnv10mt04jwPIvkPiNKZdf1CjLmtSDPKsMX6qB8wtknELG/C57+MM9Bwm
	I3nSbLSwsbeVGr4ja4taFRBEfs+VPYsB+LiPffVIu1u6GwRnE4tQnjQ1roGL6njooKe9Di9aVVvDH
	tvJFLAJPe29+m+22RQs3nB+Zzey2sJ1Vtms76FhIrRIywfNErB+Znev0sbIpIiMq1QNQo5fGWem0B
	5fjsYpGrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgiNe-0002PE-E3; Fri, 28 Jun 2019 04:20:58 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgiNL-0002Oe-GQ
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 04:20:40 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5S4KVjm018708;
 Thu, 27 Jun 2019 23:20:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561695631;
 bh=TggwOrOTARuDtQhTBOdx51iLtk8dv+A5tcd4Av8NBIo=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=lZ4TQX3BK1DsDgiM5OthOhR5qruh8OVsmip+8T8aIMQm3wgLIP3BCSK+wj96InK1c
 oHRgqo35JXn7Xx1AaFxcqCyMf/rwIRc3V6EEnRPJPRv+RTvnK/rEcbX7W7oTn4/uPI
 2vQzkeIlCOeh5OZyjYDm4lhgd8K/0EzE3SG++zLE=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5S4KVP7023809
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 27 Jun 2019 23:20:31 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 27
 Jun 2019 23:20:31 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 27 Jun 2019 23:20:31 -0500
Received: from [172.24.191.45] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5S4KSZx120807;
 Thu, 27 Jun 2019 23:20:29 -0500
Subject: Re: [PATCH 00/10] crypto: k3: Add sa2ul driver
To: Herbert Xu <herbert@gondor.apana.org.au>
References: <20190618120843.18777-1-j-keerthy@ti.com>
 <20190628041939.7yduk77x62twath6@gondor.apana.org.au>
From: Keerthy <j-keerthy@ti.com>
Message-ID: <df7aab2c-bc4d-1390-4cbb-550873f33705@ti.com>
Date: Fri, 28 Jun 2019 09:51:05 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190628041939.7yduk77x62twath6@gondor.apana.org.au>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_212039_628329_A5633F31 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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
Cc: nm@ti.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, robh+dt@kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 28/06/19 9:49 AM, Herbert Xu wrote:
> On Tue, Jun 18, 2019 at 05:38:33PM +0530, Keerthy wrote:
>> The series adds Crypto hardware accelerator support for SA2UL.
>> SA2UL stands for security accelerator ultra lite.
> 
> Please cc linux-crypto@vger.kernel.org.

Okay. I will do that.

> 
> Thanks,
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
