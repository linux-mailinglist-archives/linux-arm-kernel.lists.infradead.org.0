Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C2197F5E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 17:49:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eDGBgY7QhczVWjNXquFoXdBt92gw08mW4gxUAOT1hj0=; b=jkDXeCGKhER5LF
	hnjuBccjMbQPaDbNBFDGQ+Wx301CEWBqPBFeGZ7vpb/gvO3O9VkyVw1BkuubzPYhTIFw3N/Ys1M3G
	kOrFBDIKEFYxsxhC9XwjFTRwfW0nZ7Md1dyFHectjf7g1PeMt3bZQjNY6wmJdaiZZX4ozUkmn9kt/
	kR0AUSlm5o5oTBHmdVDk5O/jr3gu3cui6tSayuzOXkaHTeFbDijO16IAquA5RiVzlhDEXT8McMza2
	tYncwyHKqoIXf2Wf7/Z6Avvqp8pMvrHiIfc8wLT0+U5n5RSC8QRpF8r3lnBLquJajPcxawTeIVizx
	V5sKyu3COFSiKMcUx3Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Sri-0007ln-Sm; Wed, 21 Aug 2019 15:49:38 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Sra-0007lR-38
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 15:49:31 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7LFnP2r027548;
 Wed, 21 Aug 2019 10:49:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566402565;
 bh=Ly74aUdlsn8TYmM0ZxccMxi0tgZheiDmSFdlBw2ORmg=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=L3NQMhdIy8sgi6xjTdNQ2blzPJIrPyaf0vTZcrAvdLIvYj3VKlwxAaNoD3DkkifuY
 MRdgysxdYaZ9eS37T+2EGMhJiBUDc1vwcy3G+PRmUjxWQkSK39pHvCkbd2gAwiF3j0
 QOnvNKtqpndvwN2NhmmwwZL2cvV0iIuv9ozzALmk=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7LFnPHh039370
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 21 Aug 2019 10:49:25 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 21
 Aug 2019 10:49:24 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 21 Aug 2019 10:49:24 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7LFnOTk114132;
 Wed, 21 Aug 2019 10:49:24 -0500
Subject: Re: [PATCH 6/8] soc: ti: omap_prm: add data for am33xx
To: Tero Kristo <t-kristo@ti.com>, <ssantosh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>,
 <robh+dt@kernel.org>
References: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
 <1565164139-21886-7-git-send-email-t-kristo@ti.com>
 <ebb6e240-1252-5a4f-39a2-403ee699d8aa@ti.com>
 <8f5f86db-270a-7278-9d9c-e84c0fa9b73c@ti.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <ca2c21c9-ddcd-e378-ca2b-435e91c87700@ti.com>
Date: Wed, 21 Aug 2019 10:49:24 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <8f5f86db-270a-7278-9d9c-e84c0fa9b73c@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_084930_220554_82F28CB0 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: tony@atomide.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gOC8yMS8xOSAyOjIzIEFNLCBUZXJvIEtyaXN0byB3cm90ZToKPiBPbiAyMC44LjIwMTkgMjEu
NDgsIFN1bWFuIEFubmEgd3JvdGU6Cj4+IEhpIFRlcm8sCj4+Cj4+IE9uIDgvNy8xOSAyOjQ4IEFN
LCBUZXJvIEtyaXN0byB3cm90ZToKPj4+IEFkZCBQUk0gaW5zdGFuY2UgZGF0YSBmb3IgQU0zM3h4
IFNvQy4gSW5jbHVkZXMgc29tZSBiYXNpYyByZWdpc3Rlcgo+Pj4gZGVmaW5pdGlvbnMgYW5kIHJl
c2V0IGRhdGEgZm9yIG5vdy4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBUZXJvIEtyaXN0byA8dC1r
cmlzdG9AdGkuY29tPgo+Pj4gLS0tCj4+PiDCoCBkcml2ZXJzL3NvYy90aS9vbWFwX3BybS5jIHwg
MTcgKysrKysrKysrKysrKysrKysKPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25z
KCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc29jL3RpL29tYXBfcHJtLmMgYi9kcml2
ZXJzL3NvYy90aS9vbWFwX3BybS5jCj4+PiBpbmRleCA5YjhkNTk0NS4uZmFkZmM3ZiAxMDA2NDQK
Pj4+IC0tLSBhL2RyaXZlcnMvc29jL3RpL29tYXBfcHJtLmMKPj4+ICsrKyBiL2RyaXZlcnMvc29j
L3RpL29tYXBfcHJtLmMKPj4+IEBAIC03Myw4ICs3MywyNSBAQCBzdHJ1Y3Qgb21hcF9wcm1fZGF0
YSBvbWFwNF9wcm1fZGF0YVtdID0gewo+Pj4gwqDCoMKgwqDCoCB7IH0sCj4+PiDCoCB9Owo+Pj4g
wqAgK3N0cnVjdCBvbWFwX3JzdF9tYXAgYW0zX3drdXBfcnN0X21hcFtdID0gewo+Pj4gK8KgwqDC
oCB7IC5yc3QgPSAzLCAuc3QgPSA1IH0sCj4+PiArwqDCoMKgIHsgLnJzdCA9IC0xIH0sCj4+PiAr
fTsKPj4+ICsKPj4+ICtzdHJ1Y3Qgb21hcF9wcm1fZGF0YSBhbTNfcHJtX2RhdGFbXSA9IHsKPj4+
ICvCoMKgwqAgeyAubmFtZSA9ICJwZXIiLCAuYmFzZSA9IDB4NDRlMDBjMDAsIC5wd3N0Y3RybCA9
IDB4YywgLnB3c3RzdCA9Cj4+PiAweDgsIC5mbGFncyA9IE9NQVBfUFJNX05PX1JTVFNUIH0sCj4+
PiArwqDCoMKgIHsgLm5hbWUgPSAid2t1cCIsIC5iYXNlID0gMHg0NGUwMGQwMCwgLnB3c3RjdHJs
ID0gMHg0LCAucHdzdHN0ID0KPj4+IDB4OCwgLnJzdHN0ID0gMHhjLCAucnN0bWFwID0gYW0zX3dr
dXBfcnN0X21hcCB9LAo+Pj4gK8KgwqDCoCB7IC5uYW1lID0gIm1wdSIsIC5iYXNlID0gMHg0NGUw
MGUwMCwgLnB3c3RzdCA9IDB4NCB9LAo+Pgo+PiBIYXMgYSByc3RzdCBidXQgbm8gcnN0Y3RybCwg
YnV0IHlvdXIgcmVnaXN0cmF0aW9uIGxvZ2ljIHRha2VzIGNhcmUgb2YKPj4gdGhpcy4gU29tZXdo
YXQgY29uZnVzaW5nLCB3aGVuIHlvdSBqdXN0IGxvb2sgYXQgdGhlIGRhdGEuIFNob3VsZCB5b3UK
Pj4gbGltaXQgdGhlIGNoZWNrIHRvIG9ubHkgcnN0Y3RybCBhbmQgT01BUF9QUk1fTk9fUlNUU1Q/
Cj4gCj4gSSB0aGluayBpdHMgcHJvYmFibHkgYmV0dGVyIEkgaW52ZXJ0IHRoZSBmbGFncyBhbmQg
ZXhwbGljaXRseSBzdGF0ZQo+IE9NQVBfUFJNX0hBU19SU1RTVCB8IE9NQVBfUFJNX0hBU19SU1RD
VFJMLCBpbiBjYXNlIGFueSB6ZXJvIHZhbHVlIGlzCj4gdXNlZCBmb3IgdGhlc2UuCgpZZWFoLCBz
b21ldGhpbmcgc2ltaWxhciB0byBIV01PRF9PTUFQNF9aRVJPX0NMS0NUUkxfT0ZGU0VUIGluIGN1
cnJlbnQKaHdtb2QgY29kZS4KCj4gCj4+Cj4+PiArwqDCoMKgIHsgLm5hbWUgPSAiZGV2aWNlIiwg
LmJhc2UgPSAweDQ0ZTAwZjAwLCAucnN0Y3RsID0gMHgwLCAucnN0c3QgPQo+Pj4gMHg4IH0sCj4+
Cj4+IE5vIHB3cnN0Y3RybCBhbmQgcHdyc3RzdCByZWdpc3RlcnMsIHNvIHNhbWUgY29tbWVudCBh
cyBvbiBPTUFQNCBkYXRhLgo+IAo+IEkgc2hvdWxkIHByb2JhYmx5IGFkZCBzb21lIGZsYWcgZm9y
IHRoaXMgaW4gZnV0dXJlIG9uY2UgdGhlIHN1cHBvcnQgZm9yCj4gcG93ZXIgZG9tYWlucyBpcyBh
ZGRlZC4KPiAKPiBBbnl3YXksIEknbGwgZGl0Y2ggYWxsIHB3c3RjdHJsIC8gcHdzdHN0IGRhdGEg
Zm9yIG5vdyBhcyBpdCBzZWVtcyB0bwo+IGJvdGhlciB5b3UgdG9vIG11Y2guCgpPSywgdGhhdCdz
IHByb2JhYmx5IGNsZWFuZXIsIGFuZCB0aGUgY29kZSBhbmQgZGF0YSBjYW4gYmUgaGFuZGxlZCB3
aGVuCnlvdSBpbXBsZW1lbnQgdGhlIHBvd2VyLWRvbWFpbiBwaWVjZXMuCgpyZWdhcmRzClN1bWFu
Cgo+IAo+IC1UZXJvCj4gCj4+Cj4+PiArwqDCoMKgIHsgLm5hbWUgPSAicnRjIiwgLmJhc2UgPSAw
eDQ0ZTAxMDAwLCAucHdzdHN0ID0gMHg0IH0sCj4+PiArwqDCoMKgIHsgLm5hbWUgPSAiZ2Z4Iiwg
LmJhc2UgPSAweDQ0ZTAxMTAwLCAucHdzdHN0ID0gMHgxMCwgLnJzdGN0bCA9Cj4+PiAweDQsIC5y
c3RzdCA9IDB4MTQgfSwKPj4+ICvCoMKgwqAgeyAubmFtZSA9ICJjZWZ1c2UiLCAuYmFzZSA9IDB4
NDRlMDEyMDAsIC5wd3N0c3QgPSAweDQgfSwKPj4KPj4gSSBhbSBub3Qgc3VyZSBpZiBpdCBpcyBi
ZXR0ZXIgdG8gZXhwbGljaXRseSBsaXN0IHRoZSByZWdpc3RlcnMgYXQgMAo+PiBvZmZzZXQgcmF0
aGVyIHRoYW4gdXNpbmcgdGhlIGltcGxpZWQgdmFsdWUgb2YgMCwgc2luY2UgdGhlcmUgYXJlIHNv
bWUKPj4gcmVnaXN0ZXJzIHRoYXQgZG8gbm90IGV4aXN0IG9uIHNvbWUgUFJNIGluc3RhbmNlcyB3
aGljaCBhcmUgYWxzbyBub3QKPj4gZGVmaW5lZC4KPj4KPj4gcmVnYXJkcwo+PiBTdW1hbgo+Pgo+
Pj4gK8KgwqDCoCB7IH0sCj4+PiArfTsKPj4+ICsKPj4+IMKgIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
b2ZfZGV2aWNlX2lkIG9tYXBfcHJtX2lkX3RhYmxlW10gPSB7Cj4+PiDCoMKgwqDCoMKgIHsgLmNv
bXBhdGlibGUgPSAidGksb21hcDQtcHJtLWluc3QiLCAuZGF0YSA9IG9tYXA0X3BybV9kYXRhIH0s
Cj4+PiArwqDCoMKgIHsgLmNvbXBhdGlibGUgPSAidGksYW0zLXBybS1pbnN0IiwgLmRhdGEgPSBh
bTNfcHJtX2RhdGEgfSwKPj4+IMKgwqDCoMKgwqAgeyB9LAo+Pj4gwqAgfTsKPj4+IMKgCj4+Cj4g
Cj4gLS0gCj4gVGV4YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwg
MDAxODAgSGVsc2lua2kuCj4gWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290aXBh
aWtrYS9Eb21pY2lsZTogSGVsc2lua2kKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
