Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A1C9206C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 11:33:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zuRA9wAtCsfZ/eHoZsPfIfTyp226bSsbO9Ehdbgqtfs=; b=DBIiWv48+stpaZy3Y3UHz3YQ6
	TqiXT2sk93JU9LBk7RrocxFOBx/lkk3sqchMiAfi1rYfXiSHM/M6GOv5iCwjvkrF7BcDCcgkkyWYY
	5tuwFOxdYCRK1mcFQ5CAmr6/uuchpFkefwJsc+fSqn2YNg+7fhDC2GR1UPORt3gnq/gHXiDPJHbjd
	xXLt78NFnsCMCMeVuWDbmL2SS0gE6XYCxWECVdFVXlvDGNyvFqpx4faBZ3Wj8R4kvG2cIwbxRBpNZ
	Jzdp9/+JmDJSJ8TaBI9GkbiSX/yMWC8jurYvc21D19Ke3ZuGYOi//ev87FMvhhheRsFrKkuMYwv3D
	9usMWQGaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hze2O-0003IT-5Z; Mon, 19 Aug 2019 09:33:16 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hze25-0003Ho-UH
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 09:32:59 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7J9WrkH091941;
 Mon, 19 Aug 2019 04:32:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566207173;
 bh=Tl3P3YfHa/NL1Glc6+gi9ROXr1hL3aCM4tFVkkDcjxQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=h3quO8rmqSPHiuw0g6LdDMjd8pN9DhQYNhtigxwBvnKbRKfifRP539uaPACtFodgI
 vTaOpQ2xuSvSFyO9fpDqKFQIxi4/pukcwTj4YjqrithJzPldLW/i/glHsOCRxq0owr
 eMfacolfvd28GLBbZ2UHLXCvIWSjZB8XLpWhipN8=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7J9WrXh084052
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 19 Aug 2019 04:32:53 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 19
 Aug 2019 04:32:52 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 19 Aug 2019 04:32:52 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7J9Wn1A025052;
 Mon, 19 Aug 2019 04:32:50 -0500
Subject: Re: [PATCH 5/8] soc: ti: omap-prm: add omap4 PRM data
To: Keerthy <j-keerthy@ti.com>, <ssantosh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>,
 <robh+dt@kernel.org>
References: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
 <1565164139-21886-6-git-send-email-t-kristo@ti.com>
 <643cd090-a4d5-dac6-8395-c01f7fba04ab@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <80e70ba0-691e-8284-ae6b-80b160b3317e@ti.com>
Date: Mon, 19 Aug 2019 12:32:49 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <643cd090-a4d5-dac6-8395-c01f7fba04ab@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_023258_059278_53AC0C13 
X-CRM114-Status: GOOD (  13.69  )
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
Cc: tony@atomide.com, devicetree@vger.kernel.org, s-anna@ti.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDgvMDgvMjAxOSAwODozMCwgS2VlcnRoeSB3cm90ZToKPiAKPiAKPiBPbiAwNy8wOC8xOSAx
OjE4IFBNLCBUZXJvIEtyaXN0byB3cm90ZToKPj4gQWRkIFBSTSBkYXRhIGZvciBvbWFwNCBmYW1p
bHkgb2YgU29Dcy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogVGVybyBLcmlzdG8gPHQta3Jpc3RvQHRp
LmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvc29jL3RpL29tYXBfcHJtLmMgfCAyMCArKysrKysr
KysrKysrKysrKysrKwo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zb2MvdGkvb21hcF9wcm0uYyBiL2RyaXZlcnMvc29jL3Rp
L29tYXBfcHJtLmMKPj4gaW5kZXggODcwNTE1ZTMuLjliOGQ1OTQ1IDEwMDY0NAo+PiAtLS0gYS9k
cml2ZXJzL3NvYy90aS9vbWFwX3BybS5jCj4+ICsrKyBiL2RyaXZlcnMvc29jL3RpL29tYXBfcHJt
LmMKPj4gQEAgLTU0LDcgKzU0LDI3IEBAIHN0cnVjdCBvbWFwX3Jlc2V0X2RhdGEgewo+PiDCoCAj
ZGVmaW5lIE9NQVBfUFJNX05PX1JTVFNUwqDCoMKgIEJJVCgwKQo+PiArc3RydWN0IG9tYXBfcHJt
X2RhdGEgb21hcDRfcHJtX2RhdGFbXSA9IHsKPj4gK8KgwqDCoCB7IC5uYW1lID0gIm1wdSIsIC5i
YXNlID0gMHg0YTMwNjMwMCwgLnB3c3RzdCA9IDB4NCB9LAo+PiArwqDCoMKgIHsgLm5hbWUgPSAi
dGVzbGEiLCAuYmFzZSA9IDB4NGEzMDY0MDAsIC5wd3N0c3QgPSAweDQsIC5yc3RjdGwgPSAKPj4g
MHgxMCwgLnJzdHN0ID0gMHgxNCB9LAo+PiArwqDCoMKgIHsgLm5hbWUgPSAiYWJlIiwgLmJhc2Ug
PSAweDRhMzA2NTAwLCAucHdzdHN0ID0gMHg0IH0sCj4+ICvCoMKgwqAgeyAubmFtZSA9ICJhbHdh
eXNfb25fY29yZSIsIC5iYXNlID0gMHg0YTMwNjYwMCwgLnB3c3RzdCA9IDB4NCB9LAo+PiArwqDC
oMKgIHsgLm5hbWUgPSAiY29yZSIsIC5iYXNlID0gMHg0YTMwNjcwMCwgLnB3c3RzdCA9IDB4NCwg
LnJzdGN0bCA9IAo+PiAweDIxMCwgLnJzdHN0ID0gMHgyMTQgfSwKPj4gK8KgwqDCoCB7IC5uYW1l
ID0gIml2YWhkIiwgLmJhc2UgPSAweDRhMzA2ZjAwLCAucHdzdHN0ID0gMHg0LCAucnN0Y3RsID0g
Cj4+IDB4MTAsIC5yc3RzdCA9IDB4MTQgfSwKPj4gK8KgwqDCoCB7IC5uYW1lID0gImNhbSIsIC5i
YXNlID0gMHg0YTMwNzAwMCwgLnB3c3RzdCA9IDB4NCB9LAo+PiArwqDCoMKgIHsgLm5hbWUgPSAi
ZHNzIiwgLmJhc2UgPSAweDRhMzA3MTAwLCAucHdzdHN0ID0gMHg0IH0sCj4+ICvCoMKgwqAgeyAu
bmFtZSA9ICJnZngiLCAuYmFzZSA9IDB4NGEzMDcyMDAsIC5wd3N0c3QgPSAweDQgfSwKPj4gK8Kg
wqDCoCB7IC5uYW1lID0gImwzaW5pdCIsIC5iYXNlID0gMHg0YTMwNzMwMCwgLnB3c3RzdCA9IDB4
NCB9LAo+PiArwqDCoMKgIHsgLm5hbWUgPSAibDRwZXIiLCAuYmFzZSA9IDB4NGEzMDc0MDAsIC5w
d3N0c3QgPSAweDQgfSwKPj4gK8KgwqDCoCB7IC5uYW1lID0gImNlZnVzZSIsIC5iYXNlID0gMHg0
YTMwNzYwMCwgLnB3c3RzdCA9IDB4NCB9LAo+PiArwqDCoMKgIHsgLm5hbWUgPSAid2t1cCIsIC5i
YXNlID0gMHg0YTMwNzcwMCwgLnB3c3RzdCA9IDB4NCB9LAo+PiArwqDCoMKgIHsgLm5hbWUgPSAi
ZW11IiwgLmJhc2UgPSAweDRhMzA3OTAwLCAucHdzdHN0ID0gMHg0IH0sCj4+ICvCoMKgwqAgeyAu
bmFtZSA9ICJkZXZpY2UiLCAuYmFzZSA9IDB4NGEzMDdiMDAsIC5yc3RjdGwgPSAweDAsIC5yc3Rz
dCA9IAo+PiAweDQgfSwKPj4gK8KgwqDCoCB7IH0sCj4+ICt9Owo+IAo+IFNvIGF0IHNvbWUgcG9p
bnQgYXJjaC9hcm0vbWFjaC1vbWFwMi9wb3dlcmRvbWFpbnM0NHh4X2RhdGEuYwo+IGR1cGxpY2F0
ZWQgZGF0YSB3aWxsIGJlIHJlbW92ZWQ/CgpZZXMsIHRoYXQgd291bGQgYmUgdGhlIHBhdGggZm9y
d2FyZCBldmVudHVhbGx5LgoKLVRlcm8KCj4gCj4+ICsKPj4gwqAgc3RhdGljIGNvbnN0IHN0cnVj
dCBvZl9kZXZpY2VfaWQgb21hcF9wcm1faWRfdGFibGVbXSA9IHsKPj4gK8KgwqDCoCB7IC5jb21w
YXRpYmxlID0gInRpLG9tYXA0LXBybS1pbnN0IiwgLmRhdGEgPSBvbWFwNF9wcm1fZGF0YSB9LAo+
PiDCoMKgwqDCoMKgIHsgfSwKPj4gwqAgfTsKPj4KCi0tClRleGFzIEluc3RydW1lbnRzIEZpbmxh
bmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLiBZLXR1bm51cy9CdXNpbmVz
cyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
