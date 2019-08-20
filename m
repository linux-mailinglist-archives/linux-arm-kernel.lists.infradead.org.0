Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3FD9675A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 19:24:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wlgTZRbyPMPnuhaVqD9VWUL/vUDx6fnI7qFPe5slBgQ=; b=Lem7SSVTR5nU48
	YvqdxidWDG9v9nx5TjYOLrSKoiBQeOKA6ypVyJ0Pb8ah1oSI6UeQrTWJ2KhZoT/Dfw1vJKS/fe6oo
	KTMFl8IIfn9c3BmMO11LFjrF4bfxeN6BEObgsvdXSTija+FztEkdNbKfOUhULuSW2qWS681JkgyMJ
	xzWvIjJC1KUmenC3W15KXm79dD9znimkd5SIqQxfDUAvaCLlPXbNpJdkgCXOlnu6ofGfLiXy2fwQv
	sbG3RDA3NlK+7xueOtcztCg4fi+6fLUCHkZ9bYajnFSc6hkXAm/SKY4UFys8n8mSDiPr8So9PBI6Q
	rwVF44u+T1OInzPV15eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i07rg-0003OT-D5; Tue, 20 Aug 2019 17:24:12 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i07rX-0003O4-As
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 17:24:04 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7KHNwPl037361;
 Tue, 20 Aug 2019 12:23:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566321839;
 bh=3coPamp12U7rOrX0gGA1OOmWrMsb4FMbc1a7GqoR5iE=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=P8CNwPEiQWKjL/gi/Aj422xAUWGW+SQMQHjVg7N+wGNwmzkoOaVM863qC8UcvVFg1
 NWJRkXQOf+TseRQjGZ6Zd9+ZgLGASBBESnmb3/vK9ayyRvsXifBlUG0dX3+drZ4o8z
 Y9Ov7CixACl8H6DcHWF5R7uLZL5cYWoebJFBL/zM=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7KHNwrl061587
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 20 Aug 2019 12:23:58 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 20
 Aug 2019 12:23:58 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 20 Aug 2019 12:23:58 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7KHNwgv020020;
 Tue, 20 Aug 2019 12:23:58 -0500
Subject: Re: [PATCH 5/8] soc: ti: omap-prm: add omap4 PRM data
To: Tero Kristo <t-kristo@ti.com>, <ssantosh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>,
 <robh+dt@kernel.org>
References: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
 <1565164139-21886-6-git-send-email-t-kristo@ti.com>
 <04bc6773-dbd4-e1ab-ce31-d93e99dafb33@ti.com>
 <9d684bdc-28b8-0772-2957-93e01c55aae4@ti.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <ed0ec707-ddea-cbfa-ecdf-99faeb770f3f@ti.com>
Date: Tue, 20 Aug 2019 12:23:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <9d684bdc-28b8-0772-2957-93e01c55aae4@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_102403_505642_70FFF085 
X-CRM114-Status: GOOD (  15.54  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gOC8yMC8xOSAyOjUyIEFNLCBUZXJvIEtyaXN0byB3cm90ZToKPiBPbiAyMC44LjIwMTkgMi4w
OCwgU3VtYW4gQW5uYSB3cm90ZToKPj4gT24gOC83LzE5IDI6NDggQU0sIFRlcm8gS3Jpc3RvIHdy
b3RlOgo+Pj4gQWRkIFBSTSBkYXRhIGZvciBvbWFwNCBmYW1pbHkgb2YgU29Dcy4KPj4+Cj4+PiBT
aWduZWQtb2ZmLWJ5OiBUZXJvIEtyaXN0byA8dC1rcmlzdG9AdGkuY29tPgo+Pj4gLS0tCj4+PiDC
oCBkcml2ZXJzL3NvYy90aS9vbWFwX3BybS5jIHwgMjAgKysrKysrKysrKysrKysrKysrKysKPj4+
IMKgIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvc29jL3RpL29tYXBfcHJtLmMgYi9kcml2ZXJzL3NvYy90aS9vbWFwX3BybS5jCj4+
PiBpbmRleCA4NzA1MTVlMy4uOWI4ZDU5NDUgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL3NvYy90
aS9vbWFwX3BybS5jCj4+PiArKysgYi9kcml2ZXJzL3NvYy90aS9vbWFwX3BybS5jCj4+PiBAQCAt
NTQsNyArNTQsMjcgQEAgc3RydWN0IG9tYXBfcmVzZXRfZGF0YSB7Cj4+PiDCoCDCoCAjZGVmaW5l
IE9NQVBfUFJNX05PX1JTVFNUwqDCoMKgIEJJVCgwKQo+Pj4gwqAgK3N0cnVjdCBvbWFwX3BybV9k
YXRhIG9tYXA0X3BybV9kYXRhW10gPSB7Cj4+Cj4+IHN0YXRpYyBjb25zdAo+IAo+IFdpbGwgZml4
IHRoaXMgYW5kIHJlc3Qgb2YgdGhlIHNpbWlsYXIgY29tbWVudHMuCj4gCj4gLVRlcm8KPiAKPj4K
Pj4gcmVnYXJkcwo+PiBTdW1hbgo+Pgo+Pj4gK8KgwqDCoCB7IC5uYW1lID0gIm1wdSIsIC5iYXNl
ID0gMHg0YTMwNjMwMCwgLnB3c3RzdCA9IDB4NCB9LAo+Pj4gK8KgwqDCoCB7IC5uYW1lID0gInRl
c2xhIiwgLmJhc2UgPSAweDRhMzA2NDAwLCAucHdzdHN0ID0gMHg0LCAucnN0Y3RsID0KPj4+IDB4
MTAsIC5yc3RzdCA9IDB4MTQgfSwKPj4+ICvCoMKgwqAgeyAubmFtZSA9ICJhYmUiLCAuYmFzZSA9
IDB4NGEzMDY1MDAsIC5wd3N0c3QgPSAweDQgfSwKPj4+ICvCoMKgwqAgeyAubmFtZSA9ICJhbHdh
eXNfb25fY29yZSIsIC5iYXNlID0gMHg0YTMwNjYwMCwgLnB3c3RzdCA9IDB4NCB9LAo+Pj4gK8Kg
wqDCoCB7IC5uYW1lID0gImNvcmUiLCAuYmFzZSA9IDB4NGEzMDY3MDAsIC5wd3N0c3QgPSAweDQs
IC5yc3RjdGwgPQo+Pj4gMHgyMTAsIC5yc3RzdCA9IDB4MjE0IH0sCj4+PiArwqDCoMKgIHsgLm5h
bWUgPSAiaXZhaGQiLCAuYmFzZSA9IDB4NGEzMDZmMDAsIC5wd3N0c3QgPSAweDQsIC5yc3RjdGwg
PQo+Pj4gMHgxMCwgLnJzdHN0ID0gMHgxNCB9LAo+Pj4gK8KgwqDCoCB7IC5uYW1lID0gImNhbSIs
IC5iYXNlID0gMHg0YTMwNzAwMCwgLnB3c3RzdCA9IDB4NCB9LAo+Pj4gK8KgwqDCoCB7IC5uYW1l
ID0gImRzcyIsIC5iYXNlID0gMHg0YTMwNzEwMCwgLnB3c3RzdCA9IDB4NCB9LAo+Pj4gK8KgwqDC
oCB7IC5uYW1lID0gImdmeCIsIC5iYXNlID0gMHg0YTMwNzIwMCwgLnB3c3RzdCA9IDB4NCB9LAo+
Pj4gK8KgwqDCoCB7IC5uYW1lID0gImwzaW5pdCIsIC5iYXNlID0gMHg0YTMwNzMwMCwgLnB3c3Rz
dCA9IDB4NCB9LAo+Pj4gK8KgwqDCoCB7IC5uYW1lID0gImw0cGVyIiwgLmJhc2UgPSAweDRhMzA3
NDAwLCAucHdzdHN0ID0gMHg0IH0sCj4+PiArwqDCoMKgIHsgLm5hbWUgPSAiY2VmdXNlIiwgLmJh
c2UgPSAweDRhMzA3NjAwLCAucHdzdHN0ID0gMHg0IH0sCj4+PiArwqDCoMKgIHsgLm5hbWUgPSAi
d2t1cCIsIC5iYXNlID0gMHg0YTMwNzcwMCwgLnB3c3RzdCA9IDB4NCB9LAo+Pj4gK8KgwqDCoCB7
IC5uYW1lID0gImVtdSIsIC5iYXNlID0gMHg0YTMwNzkwMCwgLnB3c3RzdCA9IDB4NCB9LAo+Pj4g
K8KgwqDCoCB7IC5uYW1lID0gImRldmljZSIsIC5iYXNlID0gMHg0YTMwN2IwMCwgLnJzdGN0bCA9
IDB4MCwgLnJzdHN0ID0KPj4+IDB4NCB9LAoKU28sIGxvb2tzIGxpa2UgeW91IGFyZSB1c2luZyBw
d3N0Y3RybCBhcyAwIGJ5IGRlZmF1bHQsIGJ1dCBzb21lIG9mIHRoZW0Kd2lsbCBuZWl0aGVyIGhh
dmUgcHdzdGN0cmwgb3IgcHdzdHN0IGxpa2UgImRldmljZSIgUFJNIGhlcmUuIElzIHRoZSBwbGFu
CnRvIHVzZSAtMSBmb3IgdGhlIGZpZWxkcywgb3IgYSBmbGFncyBmaWVsZD8KCnJlZ2FyZHMKU3Vt
YW4KCj4+PiArwqDCoMKgIHsgfSwKPj4+ICt9Owo+Pj4gKwo+Pj4gwqAgc3RhdGljIGNvbnN0IHN0
cnVjdCBvZl9kZXZpY2VfaWQgb21hcF9wcm1faWRfdGFibGVbXSA9IHsKPj4+ICvCoMKgwqAgeyAu
Y29tcGF0aWJsZSA9ICJ0aSxvbWFwNC1wcm0taW5zdCIsIC5kYXRhID0gb21hcDRfcHJtX2RhdGEg
fSwKPj4+IMKgwqDCoMKgwqAgeyB9LAo+Pj4gwqAgfTsKPj4+IMKgCj4+Cj4gCj4gLS0gCj4gVGV4
YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAgSGVsc2lu
a2kuCj4gWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2ls
ZTogSGVsc2lua2kKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
