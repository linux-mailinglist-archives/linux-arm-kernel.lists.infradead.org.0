Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 245A759372
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 07:32:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FRPYnXMLHPG2iW/8CLQk4Q7wGPvX1xz0A1aEUvpz0vw=; b=cQGK6kqtd00bpVrMZh0v9dtgA
	Mjd6tWPxTSVzyoiiS9oKqEs23C/Pogu8vTr7TJo75cH40Lhma0PWj/VQLKz9axKhanIhRuMmiWMvU
	Fv9biATIqwpB0zWO1/ZE7sWWoZNWwafTSoABoj2BJmdlMwlt5vRbBmqm203QyQfo78W+3Q3PmqAuq
	u6AhqZDAm6uufbCuXBHsWv9N+hsqP84SGknl9JObFTf6ouD1+4UmqsjKmEZbiDDE1R5OraRVdlzW1
	yZikt18i350bJnL3IcffXqx29UHvNDE8MyBovPGKYdgNb3sZXPHdWBPU/8HkyD6HC57qZ3PewJL3P
	SCnFluAZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgjV1-000657-Jc; Fri, 28 Jun 2019 05:32:39 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgjUn-00064f-A9
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 05:32:27 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5S5WKQt119603;
 Fri, 28 Jun 2019 00:32:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561699940;
 bh=h92I/2p+B5C3Ff3S7snyU0440xu5YdLHz5GbmropL3s=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=fclmMIxvC8aIKPboY9hX+Q5R6I6J94FfDTTd+r5+hzYt/6/mAN08rpsocoG6hI0Ow
 f39I+A3U3ZeYPSpaERX6qUP627HjBycFZTUFeFAoz96oIlYwXFI8aT4USDCtJADilu
 054yE3b7+8pzvw3PVOo+a2jHvNZO61bs0FRhjBOg=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5S5WKx4112638
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 28 Jun 2019 00:32:20 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 28
 Jun 2019 00:32:20 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 28 Jun 2019 00:32:20 -0500
Received: from [172.24.191.45] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5S5WHUI106748;
 Fri, 28 Jun 2019 00:32:17 -0500
Subject: Re: [RESEND PATCH 07/10] crypto: sa2ul: Add hmac(sha1) HMAC algorithm
 support
To: Eric Biggers <ebiggers@kernel.org>
References: <20190628042745.28455-1-j-keerthy@ti.com>
 <20190628042745.28455-8-j-keerthy@ti.com>
 <20190628051412.GG673@sol.localdomain>
From: Keerthy <j-keerthy@ti.com>
Message-ID: <2152c811-1fad-004a-01a7-969a1ded36ad@ti.com>
Date: Fri, 28 Jun 2019 11:02:54 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190628051412.GG673@sol.localdomain>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_223225_390415_5094DE63 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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
Cc: nm@ti.com, devicetree@vger.kernel.org, herbert@gondor.apana.org.au,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 28/06/19 10:44 AM, Eric Biggers wrote:
> On Fri, Jun 28, 2019 at 09:57:42AM +0530, Keerthy wrote:
>> +static int sa_sham_update(struct ahash_request *req)
>> +{
>> +	return -ENOTSUPP;
>> +}
>> +
>> +static int sa_sham_final(struct ahash_request *req)
>> +{
>> +	return sa_sham_digest(req);
>> +}
>> +
>> +static int sa_sham_finup(struct ahash_request *req)
>> +{
>> +	return sa_sham_digest(req);
>> +}
> 
> You can't just not support update().  You need to support update().

Okay. I will add that.

> 
> - Eric
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
