Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C34189DC3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 15:25:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wfZR7HYLd/NGt4NsIpnM4GRMHTib6aazFJCQH41FwWI=; b=j8ecPARzUvaDu3qI82iFOOUvM
	bctrWSzF9Dsm7vpFQds3rVdCURJFxlH9zdlCkylHytZaJEASmF5cfP7ZJJkX/vq7bJv4t5U4As1yw
	aLcceEs9+AV7qvqujU48WW78Tr9KkEjaui1aDFF5Z5TeT8YEkdJWbnWWklZkeE6qNUmkenkx4Vqhs
	SoE+c1dVAFuYrVuVv2pYBlrx3Sgy8Vx/MgAymcS7cjjVIA7qPpbwzCHXFwGfAXjWaaxnVR4Ctbfn1
	ZkWaeQAQQ7we3xhirzVzxPllod9lu7do/nln7/XYNRL4Fc2Ukvbr3Cc97z9sZJFIIqmysLttevFoJ
	IZAJ+Z2eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEZdV-0001Pf-AP; Wed, 18 Mar 2020 14:25:33 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEZdM-0001Ow-Gg
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 14:25:26 +0000
Received: from lhreml701-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 8D3C057029B21CBD24D2;
 Wed, 18 Mar 2020 14:25:18 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml701-cah.china.huawei.com (10.201.108.42) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 18 Mar 2020 14:25:18 +0000
Received: from [127.0.0.1] (10.47.11.44) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Wed, 18 Mar
 2020 14:25:16 +0000
Subject: Re: [PATCH v3 2/2] irqchip/gic-v3-its: Balance initial LPI affinity
 across CPUs
To: Marc Zyngier <maz@kernel.org>
References: <20200316115433.9017-1-maz@kernel.org>
 <20200316115433.9017-3-maz@kernel.org>
 <2c367508-f81b-342e-eb05-8bbd1b056279@huawei.com>
 <9ce0b23455a06d92161c5302ac28152e@kernel.org>
 <8b141d09-ac11-34ec-0922-c21c22f94f36@huawei.com>
 <7b97c24ceced7560b5acb03edaf2cd70@kernel.org>
From: John Garry <john.garry@huawei.com>
Message-ID: <3601cd4f-7b01-5ec8-0f23-bc19484a7b74@huawei.com>
Date: Wed, 18 Mar 2020 14:25:04 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <7b97c24ceced7560b5acb03edaf2cd70@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.47.11.44]
X-ClientProxiedBy: lhreml721-chm.china.huawei.com (10.201.108.72) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_072524_702008_25039E4A 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jason Cooper <jason@lakedaemon.net>, chenxiang <chenxiang66@hisilicon.com>,
 luojiaxing@huawei.com, linux-kernel@vger.kernel.org,
 Ming Lei <ming.lei@redhat.com>, Zhou Wang <wangzhou1@hisilicon.com>, Thomas
 Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTgvMDMvMjAyMCAxNDoxNiwgTWFyYyBaeW5naWVyIHdyb3RlOgo+Pgo+PiBPbiBteSBEMDZD
UyBib2FyZCAoMTI4IGNvcmUpLCB0aGVyZSBzZWVtcyB0byBiZSBzb21ldGhpbmcgd3JvbmcsIGFz
Cj4+IHRoZSBxMCBhZmZpbml0eSBtYXNrIGxvb2tzIGluY29ycmVjdDoKPj4KPj4gUENJIG5hbWUg
aXMgODE6MDAuMDogbnZtZTBuMQo+Pgo+Pgo+PiDCoMKgwqDCoMKgwqDCoCBpcnEgMzIyLCBjcHUg
bGlzdCA2OSwgZWZmZWN0aXZlIGxpc3QgNjkKPj4KPj4KCi4uLgoKPiAKPiBTb3JyeSwgY2FuIHlv
dSBleHBsYWluIGluIG1vcmUgZGV0YWlsIHdoYXQgeW91IGZpbmQgd3JvbmcgaW4gdGhpcyBsb2c/
Cj4gSXMgaXQgdGhhdCBpbnRlcnJ1cHQgMzIyIGhhcyBhIHNpbmdsZSBDUFUgYWZmaW5pdHkgaW5z
dGVhZCBvZiBhIGxpc3Q/Cj4gCj4+IEFuZCBzb21ldGhpbmcgc3RyYW5nZXIgZm9yIG15IGNvbGxl
YWd1ZSBMdW8gSmlheGluZywgc3BlY2lmaWNhbGx5IHRoZSAKCkhpIE1hcmMsCgpTb3JyeSwgaWdu
b3JlIHRoaXMuIEkganVzdCByZWFsaXplZCBhZnRlciB0aGF0IHRoZSBOVk1lIFBDSSBkcml2ZXIg
CnJlc2VydmVkIHF1ZXVlMCB2ZWN0b3IgYXMgd2l0aG91dCBhZmZpbml0eSBzcHJlYWRpbmcsIGku
ZS4gbm9uLW1hbmFnZWQuCgpDaGVlcnMsCkpvaG4KCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
