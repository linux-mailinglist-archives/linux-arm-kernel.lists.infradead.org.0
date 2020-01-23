Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26852146390
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 09:34:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SmBxQOYl88VVJKKhkFXc8FPGn3t5w0AMwg7krUYjUJk=; b=u6dGRLbPmo0tL0
	qSZrZzBIA0Dg0RabAjwKhQ7LnaHhu0Raa/Jc1L/dUP6Yi2Yy2TIgOyGcEXZjsPCwXSNw3pqOCqQk6
	6owXQBXDneDfkWirMOolr5XpjS6PHymTDZnaLcpK1aVaq0begV9jvHlLYylcZFzSqaSFiMF8rcOoW
	+79qWtoPJHR/H1U+B66tstmRGKtuXu9EtOtYjAP842RPUFe97qKWXlgA2nb2RVy7OgoMdIEXAZNcX
	ZLGg1YqI8XCrRoyR6NsZpo7aD52lUQHJjQtQ0LK0/OWSMqJ/IKN8BJ5EhMD4a1oqpOtnkOQaAc00j
	L5gh0Qk/Q5PIpz7+OYIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuXw2-0005LZ-HB; Thu, 23 Jan 2020 08:33:54 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuXvs-0005LF-21
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 08:33:45 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00N8XdES099404;
 Thu, 23 Jan 2020 02:33:39 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579768419;
 bh=EXVW/TtzQc961AukemstUi0Ud91p3tlNYKlSlMlNi54=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=T2oRHE6ekaf7IMKlnUJetLw8/zNlhuNlaHc+OeP8QGRnCmO8ENs7VC8xehJyYkxOD
 CJor9gh2C3MPrBNAlG1YRCYwFveU1JYD6scTbSGjIdTRPIcYxWli0I+t7fUWn/QmxK
 HE+k9Vi6bvhTWK5XLLAS4feWdql6mCo7Z7/M/k/Y=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00N8XdLF088327
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 23 Jan 2020 02:33:39 -0600
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 23
 Jan 2020 02:33:38 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 23 Jan 2020 02:33:38 -0600
Received: from [10.24.69.20] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00N8XZ1M011906;
 Thu, 23 Jan 2020 02:33:36 -0600
Subject: Re: [PATCH v2 1/9] arm64: dts: ti: k3-am65-main: Correct main NAVSS
 representation
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <t-kristo@ti.com>, <nm@ti.com>
References: <20200122082621.4974-1-peter.ujfalusi@ti.com>
 <20200122082621.4974-2-peter.ujfalusi@ti.com>
 <600df214-620b-fa41-82ef-01132d9bdfae@ti.com>
 <04a1bb97-f308-f866-ad4f-907cd7fb3515@ti.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <469a35b0-9b60-7faf-2b1b-a77f9f502a50@ti.com>
Date: Thu, 23 Jan 2020 14:02:45 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <04a1bb97-f308-f866-ad4f-907cd7fb3515@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_003344_181590_FCF77FF1 
X-CRM114-Status: GOOD (  21.36  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMi8wMS8yMCA1OjA5IFBNLCBQZXRlciBVamZhbHVzaSB3cm90ZToKPiAKPiAKPiBPbiAy
Mi8wMS8yMDIwIDEzLjAzLCBMb2tlc2ggVnV0bGEgd3JvdGU6Cj4+Cj4+Cj4+IE9uIDIyLzAxLzIw
IDE6NTYgUE0sIFBldGVyIFVqZmFsdXNpIHdyb3RlOgo+Pj4gTkFWU1MgaXMgYSBzdWJzeXN0ZW0g
Y29udGFpbmluZyBkaWZmZXJlbnQgSVBzLCBpdCBpcyBub3QgcmVhbGx5IGEgYnVzLgo+Pj4gQ2hh
bmdlIHRoZSBjb21wYXRpYmxlIGZyb20gInNpbXBsZS1idXMiIHRvICJzaW1wbGUtbWZkIiB0byBy
ZWZsZWN0IHRoYXQuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgVWpmYWx1c2kgPHBldGVy
LnVqZmFsdXNpQHRpLmNvbT4KPj4+IC0tLQo+Pj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMt
YW02NS1tYWluLmR0c2kgfCA0ICsrLS0KPj4+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3RpL2szLWFtNjUtbWFpbi5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy90aS9rMy1hbTY1
LW1haW4uZHRzaQo+Pj4gaW5kZXggZWZiMjQ1Nzk5MjJjLi5lNDBmN2FjYmVjNDIgMTAwNjQ0Cj4+
PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3RpL2szLWFtNjUtbWFpbi5kdHNpCj4+PiArKysg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3RpL2szLWFtNjUtbWFpbi5kdHNpCj4+PiBAQCAtMzg1LDgg
KzM4NSw4IEBAIGludHJfbWFpbl9ncGlvOiBpbnRlcnJ1cHQtY29udHJvbGxlcjAgewo+Pj4gIAkJ
dGksc2NpLXJtLXJhbmdlLWdpcnEgPSA8MHgxPjsKPj4+ICAJfTsKPj4+ICAKPj4+IC0JY2Jhc3Nf
bWFpbl9uYXZzczogaW50ZXJjb25uZWN0MCB7Cj4+PiAtCQljb21wYXRpYmxlID0gInNpbXBsZS1i
dXMiOwo+Pj4gKwljYmFzc19tYWluX25hdnNzOiBuYXZzc0AzMDgwMDAwMCB7Cj4+Cj4+IFRoaXMg
aW50cm9kdWNlcyBiZWxvdyBkdGMgd2FybmluZyB3aGVuIGJ1aWx0IHdpdGggVz0xCj4+Cj4+IGFy
Y2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtYW02NS1tYWluLmR0c2k6Mzg4LjM1LTUzMC40OiBXYXJu
aW5nCj4+ICh1bml0X2FkZHJlc3NfdnNfcmVnKTogL2ludGVyY29ubmVjdEAxMDAwMDAvbmF2c3NA
MzA4MDAwMDA6IG5vZGUgaGFzIGEgdW5pdAo+PiBuYW1lLCBidXQgbm8gcmVnIHByb3BlcnR5Cj4g
Cj4gSW50ZXJlc3RpbmcsIHRoZSBleGFtcGxlIGluCj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2RtYS90aS9rMy11ZG1hLnlhbWwKPiAKPiBpcyBiYXNpY2FsbHkgdGhlIHNhbWUg
YW5kIGR0X2JpbmRpbmdfY2hlY2sgaXMgaGFwcHkgYWJvdXQgaXQ6Cj4gRFRDICAgICBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZG1hL3RpL2szLXVkbWEuZXhhbXBsZS5kdC55YW1s
Cj4gQ0hFQ0sgICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZG1hL3RpL2szLXVk
bWEuZXhhbXBsZS5kdC55YW1sCj4gCj4gYnV0IGl0IHNjcmVhbWVkIHdoZW4gSSBoYWQgdGhlIHNp
bXBsZS1idXMgaW4gdGhlcmUgKGNvcGllZCBmcm9tIHRoZQo+IGV4aXN0aW5nIGR0c2kgZmlsZSku
Cj4gCj4gVGhlIG5vZGUgbmFtZSBmb3Igc2ltcGxlLWJ1cyBfbXVzdF8gYmUKPiAnXihidXN8c29j
fGF4aXxhaGJ8YXBiKShAWzAtOWEtZl0rKT8kJwo+IAo+IEkgd291bGQgbm90IHVzZSBhbnkgb2Yg
dGhlc2UgdG8gTkFWU1Mgbm9kZS4uLgo+IAo+PiB0aGlzIGlzIHJlcHJlc2VudGluZyBjYmFzcyBp
bnNpZGUgbWFpbl9uYXZzcywganVzdCBsaWtlIGNiYXNzX21haW4uIFlvdSBjYW4gZHJvcAo+PiB0
aGlzIHBhdGNoIGFuZCB0aGUgc2ltaWxhciBtY3UgdmVyc2lvbi4KPiAKPiBBY2NvcmRpbmcgdG8g
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9tZmQudHh0Ogo+IC0gY29tcGF0
aWJsZSA6ICJzaW1wbGUtbWZkIiAtIHRoaXMgc2lnbmlmaWVzIHRoYXQgdGhlIG9wZXJhdGluZyBz
eXN0ZW0KPiAgIHNob3VsZCBjb25zaWRlciBhbGwgc3Vibm9kZXMgb2YgdGhlIE1GRCBkZXZpY2Ug
YXMgc2VwYXJhdGUgZGV2aWNlcwo+ICAgYWtpbiB0byBob3cgInNpbXBsZS1idXMiIGluZGljYXRl
cyB3aGVuIHRvIHNlZSBzdWJub2RlcyBhcyBjaGlsZHJlbgo+ICAgZm9yIGEgc2ltcGxlIG1lbW9y
eS1tYXBwZWQgYnVzLgo+IAo+IE5BVlNTIGlzIGZhbGxpbmcgaW50byBzaW1wbGUtbWZkIGFzIHRo
ZSBkZXZpY2VzIHVuZGVyIGl0IGFyZSBpbmRlcGVuZGVudAo+IGRldmljZXMuCgpva2F5LCBtYXkg
YmUgcmVuYW1lIGNiYXNzX21haW5fbmF2c3MgdG8gbWFpbl9uYXZzcy4KClRoYW5rcyBhbmQgcmVn
YXJkcywKTG9rZXNoCgo+IAo+Pgo+PiBUaGFua3MgYW5kIHJlZ2FyZHMsCj4+IExva2VzaAo+Pgo+
Pj4gKwkJY29tcGF0aWJsZSA9ICJzaW1wbGUtbWZkIjsKPj4+ICAJCSNhZGRyZXNzLWNlbGxzID0g
PDI+Owo+Pj4gIAkJI3NpemUtY2VsbHMgPSA8Mj47Cj4+PiAgCQlyYW5nZXM7Cj4+Pgo+IAo+IC0g
UMOpdGVyCj4gCj4gVGV4YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAy
MiwgMDAxODAgSGVsc2lua2kuCj4gWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290
aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
