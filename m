Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C33C397255
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 08:38:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8PL6DeSPquEA5ei3TdPOPthNoYHk+gYB2cUu65oKDD8=; b=tDaOGT5Rg2gDH05j8iTrOUU8w
	kqYISOrT7cpgxFpUHs2h/Td1XJ92XghQdlX3IeKqtNYYwQjN+ZMh17UkiuimjTrPTnDQPDPr5+WkT
	WLSmLm1o8YwiocVaaugHQIy99JRAXaC/pqTizI0BBXJBtvplCqHAwdaoZ9uoYmbQIBbA4xMZw9RQf
	AcYrUZ4VC29PmqBJqyVtm86XED3Sp1s+iwgI+6ZLZgXDqJgL3DU7pg59hBn4RpHYHUVE6/TZ3lJFI
	av5OR7ZF4sbvONj2wUQbSr4Lhd+vnw9CBiijkZKJAF/UeJryzx6/QSalDIN1OC6mjvd3hV7MM1Ox6
	06ZjnOqHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0KGP-0004nA-0e; Wed, 21 Aug 2019 06:38:33 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0KGD-0004mj-HQ
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 06:38:23 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7L6cFWE111177;
 Wed, 21 Aug 2019 01:38:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566369495;
 bh=LhmYRBIhziyX3futN1EoMHuPXLhN+yAMM7NrqT9pGwc=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=jHqWTjgJioaugtacV0kEZr8DvG43f6qKtDoIE96CpxPkvB0nELSiiEj1BrMNhhG3G
 MUu+khp1Tn1jxXLrmuYVx0PCh598XzwXRgWt624YNwzUTK/uSzPZ7dt8RBmUQZduQz
 /h3dyXhTnr2vyp97tqsCP1ufc943HML2Hz7ipb0E=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7L6cFlq068867
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 21 Aug 2019 01:38:15 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 21
 Aug 2019 01:38:14 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 21 Aug 2019 01:38:14 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7L6cCw6029530;
 Wed, 21 Aug 2019 01:38:13 -0500
Subject: Re: [PATCH 5/8] soc: ti: omap-prm: add omap4 PRM data
To: Suman Anna <s-anna@ti.com>, <ssantosh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>,
 <robh+dt@kernel.org>
References: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
 <1565164139-21886-6-git-send-email-t-kristo@ti.com>
 <04bc6773-dbd4-e1ab-ce31-d93e99dafb33@ti.com>
 <9d684bdc-28b8-0772-2957-93e01c55aae4@ti.com>
 <ed0ec707-ddea-cbfa-ecdf-99faeb770f3f@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <6bb038b8-6bfc-196a-d1fc-b97931be9849@ti.com>
Date: Wed, 21 Aug 2019 09:38:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <ed0ec707-ddea-cbfa-ecdf-99faeb770f3f@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_233821_706784_28EB0186 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAuOC4yMDE5IDIwLjIzLCBTdW1hbiBBbm5hIHdyb3RlOgo+IE9uIDgvMjAvMTkgMjo1MiBB
TSwgVGVybyBLcmlzdG8gd3JvdGU6Cj4+IE9uIDIwLjguMjAxOSAyLjA4LCBTdW1hbiBBbm5hIHdy
b3RlOgo+Pj4gT24gOC83LzE5IDI6NDggQU0sIFRlcm8gS3Jpc3RvIHdyb3RlOgo+Pj4+IEFkZCBQ
Uk0gZGF0YSBmb3Igb21hcDQgZmFtaWx5IG9mIFNvQ3MuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5
OiBUZXJvIEtyaXN0byA8dC1rcmlzdG9AdGkuY29tPgo+Pj4+IC0tLQo+Pj4+ICDCoCBkcml2ZXJz
L3NvYy90aS9vbWFwX3BybS5jIHwgMjAgKysrKysrKysrKysrKysrKysrKysKPj4+PiAgwqAgMSBm
aWxlIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKykKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3NvYy90aS9vbWFwX3BybS5jIGIvZHJpdmVycy9zb2MvdGkvb21hcF9wcm0uYwo+Pj4+IGlu
ZGV4IDg3MDUxNWUzLi45YjhkNTk0NSAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL3NvYy90aS9v
bWFwX3BybS5jCj4+Pj4gKysrIGIvZHJpdmVycy9zb2MvdGkvb21hcF9wcm0uYwo+Pj4+IEBAIC01
NCw3ICs1NCwyNyBAQCBzdHJ1Y3Qgb21hcF9yZXNldF9kYXRhIHsKPj4+PiAgwqAgwqAgI2RlZmlu
ZSBPTUFQX1BSTV9OT19SU1RTVMKgwqDCoCBCSVQoMCkKPj4+PiAgwqAgK3N0cnVjdCBvbWFwX3By
bV9kYXRhIG9tYXA0X3BybV9kYXRhW10gPSB7Cj4+Pgo+Pj4gc3RhdGljIGNvbnN0Cj4+Cj4+IFdp
bGwgZml4IHRoaXMgYW5kIHJlc3Qgb2YgdGhlIHNpbWlsYXIgY29tbWVudHMuCj4+Cj4+IC1UZXJv
Cj4+Cj4+Pgo+Pj4gcmVnYXJkcwo+Pj4gU3VtYW4KPj4+Cj4+Pj4gK8KgwqDCoCB7IC5uYW1lID0g
Im1wdSIsIC5iYXNlID0gMHg0YTMwNjMwMCwgLnB3c3RzdCA9IDB4NCB9LAo+Pj4+ICvCoMKgwqAg
eyAubmFtZSA9ICJ0ZXNsYSIsIC5iYXNlID0gMHg0YTMwNjQwMCwgLnB3c3RzdCA9IDB4NCwgLnJz
dGN0bCA9Cj4+Pj4gMHgxMCwgLnJzdHN0ID0gMHgxNCB9LAo+Pj4+ICvCoMKgwqAgeyAubmFtZSA9
ICJhYmUiLCAuYmFzZSA9IDB4NGEzMDY1MDAsIC5wd3N0c3QgPSAweDQgfSwKPj4+PiArwqDCoMKg
IHsgLm5hbWUgPSAiYWx3YXlzX29uX2NvcmUiLCAuYmFzZSA9IDB4NGEzMDY2MDAsIC5wd3N0c3Qg
PSAweDQgfSwKPj4+PiArwqDCoMKgIHsgLm5hbWUgPSAiY29yZSIsIC5iYXNlID0gMHg0YTMwNjcw
MCwgLnB3c3RzdCA9IDB4NCwgLnJzdGN0bCA9Cj4+Pj4gMHgyMTAsIC5yc3RzdCA9IDB4MjE0IH0s
Cj4+Pj4gK8KgwqDCoCB7IC5uYW1lID0gIml2YWhkIiwgLmJhc2UgPSAweDRhMzA2ZjAwLCAucHdz
dHN0ID0gMHg0LCAucnN0Y3RsID0KPj4+PiAweDEwLCAucnN0c3QgPSAweDE0IH0sCj4+Pj4gK8Kg
wqDCoCB7IC5uYW1lID0gImNhbSIsIC5iYXNlID0gMHg0YTMwNzAwMCwgLnB3c3RzdCA9IDB4NCB9
LAo+Pj4+ICvCoMKgwqAgeyAubmFtZSA9ICJkc3MiLCAuYmFzZSA9IDB4NGEzMDcxMDAsIC5wd3N0
c3QgPSAweDQgfSwKPj4+PiArwqDCoMKgIHsgLm5hbWUgPSAiZ2Z4IiwgLmJhc2UgPSAweDRhMzA3
MjAwLCAucHdzdHN0ID0gMHg0IH0sCj4+Pj4gK8KgwqDCoCB7IC5uYW1lID0gImwzaW5pdCIsIC5i
YXNlID0gMHg0YTMwNzMwMCwgLnB3c3RzdCA9IDB4NCB9LAo+Pj4+ICvCoMKgwqAgeyAubmFtZSA9
ICJsNHBlciIsIC5iYXNlID0gMHg0YTMwNzQwMCwgLnB3c3RzdCA9IDB4NCB9LAo+Pj4+ICvCoMKg
wqAgeyAubmFtZSA9ICJjZWZ1c2UiLCAuYmFzZSA9IDB4NGEzMDc2MDAsIC5wd3N0c3QgPSAweDQg
fSwKPj4+PiArwqDCoMKgIHsgLm5hbWUgPSAid2t1cCIsIC5iYXNlID0gMHg0YTMwNzcwMCwgLnB3
c3RzdCA9IDB4NCB9LAo+Pj4+ICvCoMKgwqAgeyAubmFtZSA9ICJlbXUiLCAuYmFzZSA9IDB4NGEz
MDc5MDAsIC5wd3N0c3QgPSAweDQgfSwKPj4+PiArwqDCoMKgIHsgLm5hbWUgPSAiZGV2aWNlIiwg
LmJhc2UgPSAweDRhMzA3YjAwLCAucnN0Y3RsID0gMHgwLCAucnN0c3QgPQo+Pj4+IDB4NCB9LAo+
IAo+IFNvLCBsb29rcyBsaWtlIHlvdSBhcmUgdXNpbmcgcHdzdGN0cmwgYXMgMCBieSBkZWZhdWx0
LCBidXQgc29tZSBvZiB0aGVtCj4gd2lsbCBuZWl0aGVyIGhhdmUgcHdzdGN0cmwgb3IgcHdzdHN0
IGxpa2UgImRldmljZSIgUFJNIGhlcmUuIElzIHRoZSBwbGFuCj4gdG8gdXNlIC0xIGZvciB0aGUg
ZmllbGRzLCBvciBhIGZsYWdzIGZpZWxkPwoKTXVsdGlwbGUgcGF0aHMgYXJlIHBvc3NpYmxlLCBJ
IHdpbGwgc2VlIHdoYXQgbWFrZXMgbW9zdCBzZW5zZSBvbmNlIEkgCmltcGxlbWVudCBpdC4KCi1U
ZXJvCgo+IAo+IHJlZ2FyZHMKPiBTdW1hbgo+IAo+Pj4+ICvCoMKgwqAgeyB9LAo+Pj4+ICt9Owo+
Pj4+ICsKPj4+PiAgwqAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgb21hcF9wcm1f
aWRfdGFibGVbXSA9IHsKPj4+PiArwqDCoMKgIHsgLmNvbXBhdGlibGUgPSAidGksb21hcDQtcHJt
LWluc3QiLCAuZGF0YSA9IG9tYXA0X3BybV9kYXRhIH0sCj4+Pj4gIMKgwqDCoMKgwqAgeyB9LAo+
Pj4+ICDCoCB9Owo+Pj4+ICAgCj4+Pgo+Pgo+PiAtLSAKPiAKCi0tClRleGFzIEluc3RydW1lbnRz
IEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLiBZLXR1bm51cy9C
dXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
