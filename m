Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0DBF7997
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 18:17:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pXCuw3lNnODkXhUSVDwzkqga45c3Gmwrvh6ChIj8Bag=; b=OCSKsZ+WcOhBc/
	0f/cTwnUX/njFjdi6U1J/kGUPxLRydk+YeV5mpBFmI4ChHFkpVWxT0qmopc7uNRGm146KJ3N5Y3r5
	I+fU7+obYCtV9Yu2dr/YejPXtVWuq2ZRwsAg8VrZ3vHkly7aHXEKKMwAtG04XUeLvqzmEdVVbS5Cx
	9YgxjTmkbqfo545wqAOJwXo2955QmkgkrOemW9i0Trd5pn/ngXCGazBMU+UVjUQ6vtZMQc+WwAh+g
	4f458NP/kOkMBld3z122MWVKnVliXYvx+bKjoAGucKyi39hrwxq90SobdUjbGh1AnlQHm9yVNxxmr
	DpEz04r96x/cGxfFLuJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUDJF-0003tY-Ag; Mon, 11 Nov 2019 17:17:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUDJ3-0003ss-1d
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 17:16:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E2D0731B;
 Mon, 11 Nov 2019 09:16:44 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8ED4D3F534;
 Mon, 11 Nov 2019 09:16:43 -0800 (PST)
Date: Mon, 11 Nov 2019 17:16:35 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH 1/2] arm64: Rename WORKAROUND_1165522 to SPECULATIVE_AT
Message-ID: <20191111171621.GA30274@lakrids.cambridge.arm.com>
References: <20191111141157.55062-1-steven.price@arm.com>
 <20191111141157.55062-2-steven.price@arm.com>
 <160a852027f4481cc63aed72c4f4a409@www.loen.fr>
 <013eec05-b558-d97a-bf95-248a62f25dc5@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <013eec05-b558-d97a-bf95-248a62f25dc5@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_091649_132539_BADE7B44 
X-CRM114-Status: GOOD (  21.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBOb3YgMTEsIDIwMTkgYXQgMDQ6MDc6MzlQTSArMDAwMCwgU3RldmVuIFByaWNlIHdy
b3RlOgo+IE9uIDExLzExLzIwMTkgMTU6NDIsIE1hcmMgWnluZ2llciB3cm90ZToKPiA+PiArY29u
ZmlnIEFSTTY0X1dPUktBUk9VTkRfU1BFQ1VMQVRJVkVfQVQKPiA+PiArwqDCoMKgIGJvb2wKPiA+
PiArCj4gPj4gwqBjb25maWcgQVJNNjRfRVJSQVRVTV8xMTY1NTIyCj4gPj4gwqDCoMKgwqAgYm9v
bCAiQ29ydGV4LUE3NjogU3BlY3VsYXRpdmUgQVQgaW5zdHJ1Y3Rpb24gdXNpbmcgb3V0LW9mLWNv
bnRleHQKPiA+PiB0cmFuc2xhdGlvbiByZWdpbWUgY291bGQgY2F1c2Ugc3Vic2VxdWVudCByZXF1
ZXN0IHRvIGdlbmVyYXRlIGFuCj4gPj4gaW5jb3JyZWN0IHRyYW5zbGF0aW9uIgo+ID4+IMKgwqDC
oMKgIGRlZmF1bHQgeQo+ID4+ICvCoMKgwqAgc2VsZWN0IEFSTTY0X1dPUktBUk9VTkRfU1BFQ1VM
QVRJVkVfQVQKPiA+IAo+ID4gSSdkIG9iamVjdCB0aGF0IEFSTTY0X0VSUkFUVU1fMTMxOTM2NyAo
YW5kIGl0cyBiaWcgYnJvdGhlciAxMzE5NTM3KQo+ID4gYXJlIGFsc28gcmVsYXRlZCB0byBzcGVj
dWxhdGl2ZSBBVCBleGVjdXRpb24sIGFuZCB5ZXQgYXJlIG5vdCBjb3ZlcmVkCj4gPiBieSB0aGlz
IGNvbmZpZ3VyYXRpb24gc3ltYm9sLgo+IAo+IEdvb2QgcG9pbnQuCj4gCj4gPiBJIGNhbiBzZWUg
dGhyZWUgc29sdXRpb25zIHRvIHRoaXM6Cj4gPiAKPiA+IC0gRWl0aGVyIHlvdSBjYWxsIGl0IFNQ
RUNVTEFUSVZFX0FUX1ZIRSBhbmQgaW50cm9kdWNlIFNQRUNVTEFUSVZFX0FUX05WSEUKPiA+IMKg
IGZvciBzeW1tZXRyeQo+IAo+IFRlbXB0aW5nLi4uCgpGV0lXLCB0aGlzIHNvdW5kcyBmaW5lIHRv
IG1lLgoKPiA+IC0gT3IgeW91IG1ha2UgU1BFQ1VMQVRJVkVfQVQgY292ZXIgYWxsIHRoZSBzcGVj
dWxhdGl2ZSBBVCBlcnJhdGEsIHdoaWNoCj4gPiDCoCBtYXkgb3IgbWF5IG5vdCB3b3JrLi4uCj4g
Cj4gVGhpcyBhY3R1YWxseSBzb3VuZHMgdGhlIG5lYXRlc3QsIGJ1dCBJJ20gbm90IHN1cmUgd2hl
dGhlciB0aGVyZSdzIGdvaW5nCj4gdG8gYmUgYW55IGNvbmZsaWN0cyBiZXR3ZWVuIFZIRS9OVkhF
LiBJJ2xsIHByb3RvdHlwZSB0aGlzIGFuZCBzZWUgaG93Cj4gdWdseSBpdCBpcy4KPiAKPiA+IC0g
T3IgZXZlbiBiZXR0ZXIsIHlvdSBqdXN0IGFtbWVuZCB0aGUgZG9jdW1lbnRhdGlvbiB0byBzYXkg
dGhhdCAxMTY1NTIyCj4gPiDCoCBhbHNvIGNvdmVycyB0aGUgbmV3bHkgZm91bmQgQTU1IG9uZSAo
anVzdCBsaWtlIHdlIGhhdmUgZm9yIEE1Ny9BNzIpCj4gCj4gV2VsbCBNYXJrIFJ1dGxhbmQgZGlz
bGlrZWQgbXkgaW5pdGlhbCB0aG91Z2h0cyBhYm91dCBqdXN0IGluY2x1ZGluZyBib3RoCj4gZXJy
YXRhIGluIG9uZSBvcHRpb24gbGlrZSB0aGF0IC0gaGVuY2UgdGhlIHJlZmFjdG9yaW5nIGluIHRo
aXMgcGF0Y2guCj4gQWx0aG91Z2ggb2YgY291cnNlIHRoYXQncyBleGFjdGx5IHdoYXQncyBoYXBw
ZW5lZCB3aXRoIDEzMTkzNjcvMTMxOTUzNy4uLgoKTXkgdmlldyBvbiB0aGlzIGlzIHRoYXQgdXNp
bmcgb25lIGVycmF0dW0gY29uZmlnIHN5bWJvbCB0byBjb3ZlciB0aGUKd29ya2Fyb3VuZCBmb3Ig
YW5vdGhlciBpcyBtb3JlIGNvbmZ1c2luZyB0aGFuIGhhdmluZyBhIGxldmVsIG9mCmluZGlyZWN0
aW9uLCBhbmQgSSB3b3VsZCd2ZSBwcmVmZXJyZWQgdGhlIGluZGlyZWN0aW9uIGZvciB0aGF0IGNh
c2UgdG9vLgogCj4gPiBXaGF0IGRvIHlvdSB0aGluaz8KPiAKPiBJJ2xsIGhhdmUgYSBnbyBhdCBT
UEVDVUxBVElWRV9BVCBjb3ZlcmluZyBib3RoIFZIRS9OVkhFIC0gZnJvbSBhbgo+IGluaXRpYWwg
bG9vayBpdCBzZWVtcyBsaWtlIGl0IHNob3VsZCB3b3JrIGFuZCBpdCB3b3VsZCBiZSBuZWF0IGlm
IGl0Cj4gZG9lcy4gSW4gcGFydGljdWxhciBpdCBzaG91bGQgYXZvaWQgdGhlIG5lY2Vzc2l0eSB0
byByZXF1aXJlIFZIRSB3aGVuCj4gdGhlIGVycmF0dW0gaXMgcHJlc2VudC4KPiAKPiBPdGhlcndp
c2UgSSBndWVzcyBTUEVDVUxBVElWRV9BVF97LE59VkhFIGlzIHByb2JhYmx5IHNlY29uZCBiZXN0
LgoKQm90aCBzb3VuZCBnb29kIHRvIG1lLgoKVGhhbmtzIGZvciBkZWFsaW5nIHdpdGggdGhpcyEK
Ck1hcmsuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
