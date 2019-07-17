Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 852816C04C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 19:22:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=He/PcTNw/3hxHzb8WfIaDnyWpr+dz8j0a0pvgnel+tU=; b=RCGuoHItpq1njIfQjr1JdHLNy
	WESUTFyYFv6HjJvovhj0Auxa2i/iDJQ3ugvKoTc+CTSwIDpPJDqmD3EGvLSN8Kc0krg7csBVCGQrk
	rUZ3rsmBHWB+1dE8fXwBIwVHcI/6PyrWI9FOqth4IKBkA87+KE6/Jd5N+dbsINnXUv1cj5PuyDzaE
	SUxkYVS2CCGm7CB8mkRe++9RX/rOEnzJ97L1FnCSXv/lnyeAuEyJQn4aXr7h9NlU14Xj0xDG3tUfd
	xNHbiz5XGu7LxBRr6ybTv8a/xDRG1ADs9v/oHGjX1Lqogc//znwa0tLZPzY5PPsI4SGtI+pPLxvBx
	9N5PLEWFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnndl-0006Ek-4n; Wed, 17 Jul 2019 17:22:53 +0000
Received: from vern.gendns.com ([98.142.107.122])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnndO-0005xT-40
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 17:22:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lechnology.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0e5KXANYBSya6HFY+w50szT78V3hXoXrtYknRgw92PY=; b=gIlQDHNo+7ek+vYWfHdVTFxW6d
 kMOJGCGKxDfLFXrwfXRbsKuHiUd4R8kXgAAcOU21r5PYa7/8bwhtTxieHeeyqReWP7Ems3tIbeXgR
 XshlZ5r1AJDGwycXPa2SmDxjpa9B8vFOLM8PSnlnKgGa0reGv31ItWue3x42potZohs8AfGU6bY+D
 vnNSt7UUdRH2ykv951H1d11lef/uaRiORrSFn4tL2puuHguaP1nu7dfreXkmqzlI1pWHwbhE3MTOJ
 qHAGPh4VQcY32IMBta8JLWKUqv6fdG7eI79D8uom5XRz3YpLG/UU9aFgYKUWOGXtc5lguNmb41Ohq
 tXtzIj+A==;
Received: from 108-198-5-147.lightspeed.okcbok.sbcglobal.net
 ([108.198.5.147]:47560 helo=[192.168.0.134])
 by vern.gendns.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <david@lechnology.com>)
 id 1hnncd-007Yqa-Ka; Wed, 17 Jul 2019 13:21:43 -0400
Subject: Re: [PATCH 2/6] irqchip/irq-pruss-intc: Add a PRUSS irqchip driver
 for PRUSS interrupts
To: Suman Anna <s-anna@ti.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jason Cooper <jason@lakedaemon.net>
References: <20190708035243.12170-1-s-anna@ti.com>
 <20190708035243.12170-3-s-anna@ti.com>
 <3d91800b-e858-8c73-5ea8-e99e5ea30e8e@lechnology.com>
 <54e871a8-dfa4-f65b-5869-d1661144cbf0@ti.com>
From: David Lechner <david@lechnology.com>
Message-ID: <5241ecb9-4ab2-b01c-367c-38c554c056c4@lechnology.com>
Date: Wed, 17 Jul 2019 12:21:42 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <54e871a8-dfa4-f65b-5869-d1661144cbf0@ti.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - vern.gendns.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lechnology.com
X-Get-Message-Sender-Via: vern.gendns.com: authenticated_id:
 davidmain+lechnology.com/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: vern.gendns.com: davidmain@lechnology.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_102230_325300_AEB46E8C 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 Tony Lindgren <tony@atomide.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, "Andrew F. Davis" <afd@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, Murali Karicheri <m-karicheri2@ti.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNy8xNi8xOSAxMjoyMSBQTSwgU3VtYW4gQW5uYSB3cm90ZToKPj4+ICtzdGF0aWMgaW50IHBy
dXNzX2ludGNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4+ICt7Cj4+PiAr
wqDCoMKgIHN0YXRpYyBjb25zdCBjaGFyICogY29uc3QgaXJxX25hbWVzW10gPSB7Cj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJob3N0MCIsICJob3N0MSIsICJob3N0MiIsICJo
b3N0MyIsCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJob3N0NCIsICJob3N0
NSIsICJob3N0NiIsICJob3N0NyIsIH07Cj4+PiArwqDCoMKgIHN0cnVjdCBkZXZpY2UgKmRldiA9
ICZwZGV2LT5kZXY7Cj4+PiArwqDCoMKgIHN0cnVjdCBwcnVzc19pbnRjICppbnRjOwo+Pj4gK8Kg
wqDCoCBzdHJ1Y3QgcmVzb3VyY2UgKnJlczsKPj4+ICvCoMKgwqAgc3RydWN0IGlycV9jaGlwICpp
cnFjaGlwOwo+Pj4gK8KgwqDCoCBpbnQgaSwgaXJxOwo+Pj4gKwo+Pj4gK8KgwqDCoCBpbnRjID0g
ZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCppbnRjKSwgR0ZQX0tFUk5FTCk7Cj4+PiArwqDCoMKg
IGlmICghaW50YykKPj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVOT01FTTsKPj4+ICvCoMKg
wqAgcGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgaW50Yyk7Cj4+PiArCj4+PiArwqDCoMKgIHJl
cyA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZShwZGV2LCBJT1JFU09VUkNFX01FTSwgMCk7Cj4+PiAr
wqDCoMKgIGludGMtPmJhc2UgPSBkZXZtX2lvcmVtYXBfcmVzb3VyY2UoZGV2LCByZXMpOwo+Pj4g
K8KgwqDCoCBpZiAoSVNfRVJSKGludGMtPmJhc2UpKSB7Cj4+PiArwqDCoMKgwqDCoMKgwqAgZGV2
X2VycihkZXYsICJmYWlsZWQgdG8gcGFyc2UgYW5kIG1hcCBpbnRjIG1lbW9yeSByZXNvdXJjZVxu
Iik7Cj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIFBUUl9FUlIoaW50Yy0+YmFzZSk7Cj4+PiAr
wqDCoMKgIH0KPj4+ICsKPj4+ICvCoMKgwqAgZGV2X2RiZyhkZXYsICJpbnRjIG1lbW9yeTogcGEg
JXBhIHNpemUgMHglenggdmEgJXBLXG4iLCAmcmVzLT5zdGFydCwKPj4+ICvCoMKgwqDCoMKgwqDC
oCAoc2l6ZV90KXJlc291cmNlX3NpemUocmVzKSwgaW50Yy0+YmFzZSk7Cj4+PiArCj4+PiArwqDC
oMKgIG11dGV4X2luaXQoJmludGMtPmxvY2spOwo+Pj4gKwo+Pj4gK8KgwqDCoCBwcnVzc19pbnRj
X2luaXQoaW50Yyk7Cj4+PiArCj4+PiArwqDCoMKgIGlycWNoaXAgPSBkZXZtX2t6YWxsb2MoZGV2
LCBzaXplb2YoKmlycWNoaXApLCBHRlBfS0VSTkVMKTsKPj4+ICvCoMKgwqAgaWYgKCFpcnFjaGlw
KQo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAtRU5PTUVNOwo+Pj4gKwo+Pj4gK8KgwqDCoCBp
cnFjaGlwLT5pcnFfYWNrID0gcHJ1c3NfaW50Y19pcnFfYWNrOwo+Pj4gK8KgwqDCoCBpcnFjaGlw
LT5pcnFfbWFzayA9IHBydXNzX2ludGNfaXJxX21hc2s7Cj4+PiArwqDCoMKgIGlycWNoaXAtPmly
cV91bm1hc2sgPSBwcnVzc19pbnRjX2lycV91bm1hc2s7Cj4+PiArwqDCoMKgIGlycWNoaXAtPmly
cV9yZXRyaWdnZXIgPSBwcnVzc19pbnRjX2lycV9yZXRyaWdnZXI7Cj4+PiArwqDCoMKgIGlycWNo
aXAtPmlycV9yZXF1ZXN0X3Jlc291cmNlcyA9IHBydXNzX2ludGNfaXJxX3JlcXJlczsKPj4+ICvC
oMKgwqAgaXJxY2hpcC0+aXJxX3JlbGVhc2VfcmVzb3VyY2VzID0gcHJ1c3NfaW50Y19pcnFfcmVs
cmVzOwo+Pj4gK8KgwqDCoCBpcnFjaGlwLT5uYW1lID0gZGV2X25hbWUoZGV2KTsKPj4KPj4gU2hv
dWxkIHdlIGFsc28gc2V0IGBpcnFjaGlwLT5wYXJlbnRfZGV2aWNlID0gZGV2O2AgaGVyZT8KPj4K
Pj4gSSB0cmllZCBpdCBhbmQgaGFkIHRvIGFkZCBwbSBydW50aW1lIHN0dWZmIGFzIHdlbGwsIG90
aGVyd2lzZQo+PiByZXF1ZXN0aW5nIGlycXMgd291bGQgZmFpbC4KPiAKPiBJIGhhdmVuJ3Qgc2Vl
biBhbnkgZHVyaW5nIG15IGxvY2FsIHRlc3RpbmcuIFdoYXQgc29ydCBvZiBmYWlsdXJlIGFyZSB5
b3UKPiBzZWVpbmc/Cj4gCj4gVGhlIGNsb2NraW5nIGZvciB0aGUgb3ZlcmFsbCBQUlVTUyBtb2R1
bGUgd2lsbCBiZSBoYW5kbGVkIGluIGVpdGhlciB0aGUKPiB0aS1zeXNjIGRyaXZlciBmb3IgT01B
UCBTb0NzIG9yIGluIHRoZSBwcnVzcyBwbGF0Zm9ybSBkcml2ZXIuCj4gCkkgd2FzIGdldHRpbmcg
LUVBQ0NFU1MgYnViYmxpbmcgdXAgZnJvbSBycG1fcmVzdW1lKCkgaW4gZHJpdmVycy9iYXNlLwpw
b3dlci9ydW50aW1lLmMuIEl0IHdhcyBwcm9iYWJseSBhIG1peCBvZiBob3cgSSBzZXQgdXAgdGhl
IGRldmljZSB0cmVlCmFuZCB0aGUgZHVtbXkgUFJVU1MgYnVzIGRyaXZlciBJIG1hZGUuCgpJJ20g
c3VyZSBpdCB3aWxsIGJlIGZpbmUgd2l0aCBhIHByb3BlciBQUlVTUyBwbGF0Zm9ybSBkcml2ZXIu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
