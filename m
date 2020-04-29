Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7171BDF60
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 15:44:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aK4LldIAAarLCeetUllT13ve+AXNz9aAGQFehkZuwiU=; b=RRGd3STygF382lZXlqxPu3ek0
	kogSfU0BnQ0/QE+TBQPstnES6CaAp6IKfYYUEmVvcujc2AkqYPDMv7u/jxLrwinGCoYwNTGllBZzv
	N+RjLNXcVSajt2/46QkUT+yE9IEyT1Z4b23RAfMJ4qdFy+lYk/n3K47bZS4Z8BPvIuofmXYgAgC80
	4yoJ6QJ0kKAbSkWpmN8gGcghY1m8C5UICigtOkzPf1y8Ft2dKo3Vx+rA8763SN+JJDrEQnBZaMOJ3
	VKoI3+uY9oD72qs950w48nOED3DbSk0y0APWI8gBuUFJ5ncOUEqK78DDGwAwdVgw6xQfyRRBCX/Af
	0qrtesbfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTn11-0005h2-QP; Wed, 29 Apr 2020 13:44:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTn0o-0005dm-U7
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 13:44:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0E6091045;
 Wed, 29 Apr 2020 06:44:25 -0700 (PDT)
Received: from [10.37.12.139] (unknown [10.37.12.139])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1BBD33F68F;
 Wed, 29 Apr 2020 06:44:21 -0700 (PDT)
Subject: Re: [PATCH] coresight: dynamic-replicator: Fix handling of multiple
 connections
To: saiprakash.ranjan@codeaurora.org, mike.leach@linaro.org
References: <20200426143725.18116-1-saiprakash.ranjan@codeaurora.org>
 <cf5852e9-c3c1-3d31-46f0-0370719947ab@arm.com>
 <CAJ9a7VgF3-Hdc7KSw9gVBeXSDHNguhqVhp60oK2XhCtr3DhDqg@mail.gmail.com>
 <84918e7d-c933-3fa1-a61e-0615d4b3cf2c@arm.com>
 <668ea1283a6dd6b34e701972f6f71034@codeaurora.org>
 <5b0f5d77c4eec22d8048bb0ffa078345@codeaurora.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <759d47de-2101-39cf-2f1c-cfefebebd548@arm.com>
Date: Wed, 29 Apr 2020 14:49:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <5b0f5d77c4eec22d8048bb0ffa078345@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_064431_057222_5DD2755D 
X-CRM114-Status: GOOD (  26.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, mathieu.poirier@linaro.org, swboyd@chromium.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDQvMjkvMjAyMCAxMjo0NyBQTSwgU2FpIFByYWthc2ggUmFuamFuIHdyb3RlOgo+IE9uIDIw
MjAtMDQtMjggMTc6NTMsIFNhaSBQcmFrYXNoIFJhbmphbiB3cm90ZToKPj4gT24gMjAyMC0wNC0y
NyAxOToyMywgU3V6dWtpIEsgUG91bG9zZSB3cm90ZToKPj4+IE9uIDA0LzI3LzIwMjAgMTA6NDUg
QU0sIE1pa2UgTGVhY2ggd3JvdGU6Cj4+IFsuLi5dCj4+Pj4+Cj4+Pj4+IFRoaXMgaXMgbm90IHN1
ZmZpY2llbnQuIFlvdSBtdXN0IHByZXZlbnQgYW5vdGhlciBzZXNzaW9uIHRyeWluZyB0bwo+Pj4+
PiBlbmFibGUgdGhlIG90aGVyIHBvcnQgb2YgdGhlIHJlcGxpY2F0b3IgYXMgdGhpcyBjb3VsZCBz
aWxlbnRseSBmYWlsCj4+Pj4+IHRoZSAib24tZ29pbmciIHNlc3Npb24uIE5vdCBpZGVhbC4gRmFp
bCB0aGUgYXR0ZW1wdCB0byBlbmFibGUgYSBwb3J0Cj4+Pj4+IGlmIHRoZSBvdGhlciBwb3J0IGlz
IGFjdGl2ZS4gWW91IGNvdWxkIHRyYWNrIHRoaXMgaW4gc29mdHdhcmUgYW5kCj4+Pj4+IGZhaWwg
ZWFybHkuCj4+Pj4+Cj4+Pj4+IFN1enVraQo+Pj4+Cj4+Pj4gV2hpbGUgSSBoYXZlIG5vIGlzc3Vl
IGluIHByaW5jaXBsZSB3aXRoIG5vdCBlbmFibGluZyBhIHBhdGggdG8gYSBzaW5rCj4+Pj4gdGhh
dCBpcyBub3QgaW4gdXNlIC0gaW5kZWVkIGluIHNvbWUgY2FzZXMgYXR0YWNoaW5nIHRvIHVudXNl
ZCBzaW5rcwo+Pj4+IGNhbiBjYXVzZSBiYWNrLXByZXNzdXJlIHRoYXQgc2xvd3MgdGhyb3VnaHB1
dCAoY2YgVFBJVSkgLSBJIGFtCj4+Pj4gY29uY2VybmVkIHRoYXQgdGhpcyBtb2RpZmljYXRpb24g
aXMgbWFza2luZyBhbiB1bmRlcmx5aW5nIGlzc3VlIHdpdGgKPj4+PiB0aGUgcGxhdGZvcm0gaW4g
cXVlc3Rpb24uCj4+Pj4KPj4+PiBTaG91bGQgd2UgZGVjaWRlIHRvIGVuYWJsZSB0aGUgZGl2ZXJz
aW9uIG9mIGRpZmZlcmVudCBJRHMgdG8gZGlmZmVyZW50Cj4+Pj4gc2lua3Mgb3IgYWxsb3cgZGlm
ZmVyZW50IHNlc3Npb25zIGdvIHRvIGRpZmZlcmVudCBzaW5rcywgdGhlbiB0aGlzIGhhcwo+Pj4+
IHBvdGVudGlhbCB0byBmYWlsIG9uIHRoZSBTQzcxODAgU29DIC0gYW5kIGl0IHdpbGwgYmUgZGlm
ZmljdWx0IGluCj4+Pj4gZnV0dXJlIHRvIGFzc29jaWF0ZSBhIHByb2JsZW0gd2l0aCB0aGlzIGRp
c2N1c3Npb24uCj4+Pgo+Pj4gTWlrZSwKPj4+Cj4+PiBJIHRoaW5rIHRoYXRzIGEgZ29vZCBwb2lu
dC4KPj4+IFNhaSwgcGxlYXNlIGNvdWxkIHdlIG5hcnJvdyBkb3duIHRoaXMgdG8gdGhlIHJlYWwg
cHJvYmxlbSBhbmQgbWF5IGJlCj4+PiB3b3JrIGFyb3VuZCBpdCBmb3IgdGhlICJkZXZpY2UiID8g
RG8gd2Uga25vdyB3aGljaCBzaW5rIGlzIGNhdXNpbmcgdGhlCj4+PiBiYWNrIHByZXNzdXJlID8g
V2UgY291bGQgdGhlbiBwdXNoIHRoZSAid29yayBhcm91bmQiIHRvIHRoZSByZXBsaWNhdG9yCj4+
PiBpdCBpcyBjb25uZWN0ZWQgdG8uCj4+Pgo+Pj4gU3V6dWtpCj4+Cj4+IEhpIFN1enVraSwgTWlr
ZSwKPj4KPj4gVG8gYWRkIHNvbWUgbW9yZSB0byB0aGUgaW5mb3JtYXRpb24gcHJvdmlkZWQgZWFy
bGllciwKPj4gc3dhb19yZXBsaWNhdG9yKDZiMDYwMDApIGFuZCBldGYgYXJlCj4+IGluIEFPU1Mg
KEFsd2F5cy1Pbi1TdWJTeXN0ZW0pIGdyb3VwLiBBbHNvIFRQSVUoY29ubmVjdGVkIHRvCj4+IHFk
c3NfcmVwbGljYXRvcikgYW5kIEVVRChjb25uZWN0ZWQKPj4gdG8gc3dhb19yZXBsaWNhdG9yKSBz
aW5rcyBhcmUgdW51c2VkLgo+Pgo+PiBQbGVhc2UgaWdub3JlIHRoZSBpZCBmaWx0ZXIgdmFsdWVz
IHByb3ZpZGVkIGVhcmxpZXIuCj4+IEhlcmUgYXJlIElEIGZpbHRlciB2YWx1ZXMgYWZ0ZXIgYm9v
dCBhbmQgYmVmb3JlIGVuYWJsaW5nIHJlcGxpY2F0b3IuIAo+PiBBcyBwZXIKPj4gdGhlc2UgaWRm
aWx0ZXIgdmFsdWVzLCB3ZSBzaG91bGQgbm90IHRyeSB0byBlbmFibGUgcmVwbGljYXRvciBpZiBp
dHMgCj4+IGFscmVhZHkKPj4gZW5hYmxlZCAoaW4gdGhpcyBjYXNlIGZvciBzd2FvX3JlcGxpY2F0
b3IpIHJpZ2h0Pwo+Pgo+PiBsb2NhbGhvc3QgfiAjIGNhdAo+PiAvc3lzL2J1cy9hbWJhL2Rldmlj
ZXMvNmIwNjAwMC5yZXBsaWNhdG9yL3JlcGxpY2F0b3IxL21nbXQvaWRmaWx0ZXIwCj4+IDB4MAo+
PiBsb2NhbGhvc3QgfiAjIGNhdAo+PiAvc3lzL2J1cy9hbWJhL2RldmljZXMvNmIwNjAwMC5yZXBs
aWNhdG9yL3JlcGxpY2F0b3IxL21nbXQvaWRmaWx0ZXIxCj4+IDB4MAo+Pgo+PiBsb2NhbGhvc3Qg
fiAjIGNhdAo+PiAvc3lzL2J1cy9hbWJhL2RldmljZXMvNjA0NjAwMC5yZXBsaWNhdG9yL3JlcGxp
Y2F0b3IwL21nbXQvaWRmaWx0ZXIwCj4+IDB4ZmYKPj4gbG9jYWxob3N0IH4gIyBjYXQKPj4gL3N5
cy9idXMvYW1iYS9kZXZpY2VzLzYwNDYwMDAucmVwbGljYXRvci9yZXBsaWNhdG9yMC9tZ210L2lk
ZmlsdGVyMQo+PiAweGZmCj4+Cj4gCj4gTG9va2luZyBtb3JlIGludG8gcmVwbGljYXRvcjEoc3dh
b19yZXBsaWNhdG9yKSB2YWx1ZXMgYXMgMHgwIGV2ZW4gYWZ0ZXIgCj4gcmVwbGljYXRvcl9yZXNl
dCgpCj4gaW4gcmVwbGljYXRvciBwcm9iZSwgSSBhZGRlZCBkeW5hbWljX3JlcGxpY2F0b3JfcmVz
ZXQgaW4gCj4gZHluYW1pY19yZXBsaWNhdG9yX2VuYWJsZSgpCj4gYW5kIGFtIG5vdCBzZWVpbmcg
YW55IGhhcmRsb2NrdXAuIEFsc28gSSBhZGRlZCBzb21lIHByaW50cyB0byBjaGVjayB0aGUgCj4g
aWRmaWx0ZXIKPiB2YWx1ZXMgYmVmb3JlIGFuZCBhZnRlciByZXNldCBhbmQgZm91bmQgdGhhdCBp
dHMgbm90IHNldCB0byAweGZmIGV2ZW4gCj4gYWZ0ZXIgcmVwbGljYXRvcl9yZXNldCgpCj4gaW4g
cmVwbGljYXRvciBwcm9iZSwgSSBkb24ndCBzZWUgYW55IG90aGVyIHBhdGggc2V0dGluZyBpdCB0
byAweDAuCj4gCj4gQWZ0ZXIgcHJvYmU6Cj4gCj4gW8KgwqDCoCA4LjQ3NzY2OV0gZnVuYyByZXBs
aWNhdG9yX3Byb2JlIGJlZm9yZSByZXNldCByZXBsaWNhdG9yIHJlcGxpY2F0b3IxIAo+IFJFUExJ
Q0FUT1JfSURGSUxURVIwPTB4MCBSRVBMSUNBVE9SX0lERklMVEVSMT0weDAKPiBbwqDCoMKgIDgu
NDg5NDcwXSBmdW5jIHJlcGxpY2F0b3JfcHJvYmUgYWZ0ZXIgcmVzZXQgcmVwbGljYXRvciByZXBs
aWNhdG9yMSAKPiBSRVBMSUNBVE9SX0lERklMVEVSMD0weGZmIFJFUExJQ0FUT1JfSURGSUxURVIx
PTB4ZmYKCkFGQUlDUywgYWZ0ZXIgdGhlIHJlc2V0IGJvdGggb2YgdGhlbSBhcmUgc2V0IHRvIDB4
ZmYuCgo+IFvCoMKgwqAgOC41MDI3MzhdIGZ1bmMgcmVwbGljYXRvcl9wcm9iZSBiZWZvcmUgcmVz
ZXQgcmVwbGljYXRvciByZXBsaWNhdG9yMCAKPiBSRVBMSUNBVE9SX0lERklMVEVSMD0weDAgUkVQ
TElDQVRPUl9JREZJTFRFUjE9MHgwCj4gW8KgwqDCoCA4LjUxNTIxNF0gZnVuYyByZXBsaWNhdG9y
X3Byb2JlIGFmdGVyIHJlc2V0IHJlcGxpY2F0b3IgcmVwbGljYXRvcjAgCj4gUkVQTElDQVRPUl9J
REZJTFRFUjA9MHhmZiBSRVBMSUNBVE9SX0lERklMVEVSMT0weGZmCgoKCj4gbG9jYWxob3N0IH4g
Iwo+IGxvY2FsaG9zdCB+ICMKPiBsb2NhbGhvc3QgfiAjIGVjaG8gMSA+IC9zeXMvYnVzL2NvcmVz
aWdodC9kZXZpY2VzL3RtY19ldHIwL2VuYWJsZV9zaW5rCj4gbG9jYWxob3N0IH4gIwo+IGxvY2Fs
aG9zdCB+ICMgZWNobyAxID4gL3N5cy9idXMvY29yZXNpZ2h0L2RldmljZXMvZXRtMC9lbmFibGVf
c291cmNlCj4gW8KgwqAgNTguNDkwNDg1XSBmdW5jIGR5bmFtaWNfcmVwbGljYXRvcl9lbmFibGUg
YmVmb3JlIHJlc2V0IHJlcGxpY2F0b3IgCj4gcmVwbGljYXRvcjAgUkVQTElDQVRPUl9JREZJTFRF
UjA9MHhmZiBSRVBMSUNBVE9SX0lERklMVEVSMT0weGZmCj4gW8KgwqAgNTguNTAzMjQ2XSBmdW5j
IGR5bmFtaWNfcmVwbGljYXRvcl9lbmFibGUgYWZ0ZXIgcmVzZXQgcmVwbGljYXRvciAKPiByZXBs
aWNhdG9yMCBSRVBMSUNBVE9SX0lERklMVEVSMD0weGZmIFJFUExJQ0FUT1JfSURGSUxURVIxPTB4
ZmYKPiBbwqDCoCA1OC41MjA5MDJdIGZ1bmMgZHluYW1pY19yZXBsaWNhdG9yX2VuYWJsZSBiZWZv
cmUgcmVzZXQgcmVwbGljYXRvciAKPiByZXBsaWNhdG9yMSBSRVBMSUNBVE9SX0lERklMVEVSMD0w
eDAgUkVQTElDQVRPUl9JREZJTFRFUjE9MHgwCgpZb3UgbmVlZCB0byBmaW5kIHdoYXQgaXMgcmVz
ZXR0aW5nIHRoZSBJREZJTFRFUnMgdG8gMCBmb3IgcmVwbGljYXRvcjEuCgo+IFvCoMKgIDU4LjUz
MzUwMF0gZnVuYyBkeW5hbWljX3JlcGxpY2F0b3JfZW5hYmxlIGFmdGVyIHJlc2V0IHJlcGxpY2F0
b3IgCj4gcmVwbGljYXRvcjEgUkVQTElDQVRPUl9JREZJTFRFUjA9MHhmZiBSRVBMSUNBVE9SX0lE
RklMVEVSMT0weGZmCj4gbG9jYWxob3N0IH4gIwo+IAo+IENhbiB3ZSBoYXZlIGEgcmVwbGljYXRv
cl9yZXNldCBpbiBkeW5hbWljX3JlcGxpY2F0b3JfZW5hYmxlPwo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2h3dHJhY2luZy9jb3Jlc2lnaHQvY29yZXNpZ2h0LXJlcGxpY2F0b3IuYyAKPiBiL2Ry
aXZlcnMvaHd0cmFjaW5nL2NvcmVzaWdodC9jb3Jlc2lnaHQtcmVwbGljYXRvci5jCj4gaW5kZXgg
ZTdkYzFjMzFkMjBkLi43OTRmOGU0YzA0OWYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9od3RyYWNp
bmcvY29yZXNpZ2h0L2NvcmVzaWdodC1yZXBsaWNhdG9yLmMKPiArKysgYi9kcml2ZXJzL2h3dHJh
Y2luZy9jb3Jlc2lnaHQvY29yZXNpZ2h0LXJlcGxpY2F0b3IuYwo+IEBAIC02OCw2ICs2OCw4IEBA
IHN0YXRpYyBpbnQgZHluYW1pY19yZXBsaWNhdG9yX2VuYWJsZShzdHJ1Y3QgCj4gcmVwbGljYXRv
cl9kcnZkYXRhICpkcnZkYXRhLAo+ICDCoMKgwqDCoMKgwqDCoCBpbnQgcmMgPSAwOwo+ICDCoMKg
wqDCoMKgwqDCoCB1MzIgcmVnOwo+IAo+ICvCoMKgwqDCoMKgwqAgZHluYW1pY19yZXBsaWNhdG9y
X3Jlc2V0KGRydmRhdGEpOwo+ICsKCkFnYWluIHlvdSBhcmUgdHJ5aW5nIHRvIG1hc2sgYW4gaXNz
dWUgd2l0aCB0aGlzLiBJcyB0aGUgZmlybXdhcmUKdXNpbmcgdGhlIHJlcGxpY2F0b3IgZm9yIGFu
eXRoaW5nID8gSWYgc28sIHRoaXMgbmVlZHMgdG8gYmUgY2xhaW1lZAp0byBwcmV2ZW50IHVzIGZy
b20gdXNpbmcgaXQuCgpTdXp1a2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
