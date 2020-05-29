Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A325E1E8805
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 21:39:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sgAPc/YvU8juXWpDof6+4LyOVfM3DgxDl3ruiIMgJ5I=; b=gAu4xDhfra7eh8fvsPrgyBioQ
	sTm86YrtIdPxjinqfZXEVODoTWKkT5pfkUadu8zqdSdMq8EL0+XvoFcTFKOiC7cxUcscC3Ci/652A
	69JjU2USs3ja4iks0cehg+JoUFgq5MO/SYg1ZEQnsUCyPA3pT+TOWttIgbCTR4EjdX3Fz1QkVIupU
	IXugiRiHl1CHOXJeRL2k1hJpWy8iJ+Elk0+ZZ+jXVCJexU7GzZXtmT5I41SiPrbmysGON2zz7/n+Y
	BxwSAc6L1J5/s9sKm6YuJTqL191xGXbcvncCe7SCAYRDyZuuey2PNu2LgYhHs5X4YGFxj2GuAsI0u
	tZZp1OAZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jekr3-0001kZ-Le; Fri, 29 May 2020 19:39:45 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jekqo-0001k1-3X
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 19:39:31 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04TJdP6B037266;
 Fri, 29 May 2020 14:39:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590781165;
 bh=wQ582Jun/nwakMpVHCTGC+XK6lct9XsIpF/gTKCzB4E=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=y8IOIIbgm87LrsXCKCcUbTGdAcKHRwAu8QJEeHzVJRcjRZ/e7U8Hh8xCeF08Tsyp1
 NsIfBDRAbDXOZIXycPjJWkWr63uGpgIkutvuZU/LiPTM7gbbSePlsCZS7b3vmjcTYb
 6QMjwKrczyzOuEgiZDYA2k5QEjJKpKnLUjEdwkHA=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04TJdPXe124917
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 29 May 2020 14:39:25 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 29
 May 2020 14:39:24 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 29 May 2020 14:39:24 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04TJdMYP008147;
 Fri, 29 May 2020 14:39:22 -0500
Subject: Re: [PATCH v4 0/2] soc: ti: add k3 platforms chipid module driver
To: <santosh.shilimkar@oracle.com>, Arnd Bergmann <arnd@arndb.de>
References: <20200512123449.16517-1-grygorii.strashko@ti.com>
 <a132765e-f4e4-a1e8-fb43-239188fecf1b@ti.com>
 <CAK8P3a31DYOn1TyjxCYM7ebc9nL5EFKsNpSHkq55bG54Bns+MA@mail.gmail.com>
 <cb980673-d3ad-53b8-9351-196ff3f47c45@oracle.com>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <f06a6285-aa9f-918b-044c-c0ba1f0ad1fc@ti.com>
Date: Fri, 29 May 2020 22:39:26 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <cb980673-d3ad-53b8-9351-196ff3f47c45@oracle.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_123930_227921_8FA9B9D0 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nishanth Menon <nm@ti.com>, DTML <devicetree@vger.kernel.org>,
 Dave Gerlach <d-gerlach@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Sekhar Nori <nsekhar@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyOS8wNS8yMDIwIDIyOjE5LCBzYW50b3NoLnNoaWxpbWthckBvcmFjbGUuY29tIHdyb3Rl
Ogo+IE9uIDUvMjkvMjAgMTE6MzQgQU0sIEFybmQgQmVyZ21hbm4gd3JvdGU6Cj4+IE9uIEZyaSwg
TWF5IDI5LCAyMDIwIGF0IDg6MjIgUE0gR3J5Z29yaWkgU3RyYXNoa28KPj4gPGdyeWdvcmlpLnN0
cmFzaGtvQHRpLmNvbT4gd3JvdGU6Cj4+PiBPbiAxMi8wNS8yMDIwIDE1OjM0LCBHcnlnb3JpaSBT
dHJhc2hrbyB3cm90ZToKPj4KPj4+PiDCoMKgIC4uLi9iaW5kaW5ncy9zb2MvdGkvazMtc29jaW5m
by55YW1swqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDQwICsrKysrCj4+Pj4gwqDCoCBkcml2ZXJz
L3NvYy90aS9LY29uZmlnwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB8wqAgMTAgKysKPj4+PiDCoMKgIGRyaXZlcnMvc29jL3RpL01ha2VmaWxlwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMSArCj4+Pj4gwqDCoCBk
cml2ZXJzL3NvYy90aS9rMy1zb2NpbmZvLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgfCAxNTIgKysrKysrKysrKysrKysrKysrCj4+Pj4gwqDCoCA0IGZpbGVzIGNoYW5nZWQs
IDIwMyBpbnNlcnRpb25zKCspCj4+Pj4gwqDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy90aS9rMy1zb2NpbmZvLnlhbWwKPj4+PiDCoMKg
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3NvYy90aS9rMy1zb2NpbmZvLmMKPj4+Pgo+Pj4K
Pj4+IEFueSBjaGFuY2VzIHlvdSBjYW4gcGljayB0aGlzIHVwPwo+Pgo+PiBJIG1lcmdlZCBhIHZl
cnNpb24gb2YgdGhpcyBkcml2ZXIgZnJvbSBTYW50b3NoJ3MgcHVsbCByZXF1ZXN0IGludG8gdGhl
Cj4+IGFybS9kcnZpZXJzIHRyZWUgeWVzdGVyZGF5Lgo+Pgo+PiBJcyB0aGVyZSBzb21ldGhpbmcg
bWlzc2luZz8KPj4KPiBOb3BlLiBJIHdhcyBnb2luZyB0byByZXBseSBvbiB0aGUgdGhyZWFkIGJ1
dCBtaXNzZWQgaXQuCgpPaC4gVGhhbmtzLiBJJ3ZlIG1pc3NlZCB0aGF0IGl0IHdhcyBhbHJlYWR5
IHBpY2tlZCB1cC4KClRoYW5rcyBhZ2Fpbi4KCi0tIApCZXN0IHJlZ2FyZHMsCmdyeWdvcmlpCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
