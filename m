Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F53D0E24
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 14:02:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tflil8BX0UXe9zFtXfel89h+a/Ah7hbjTs4d8M94OHI=; b=oEHfzeN7Eg9Wcb
	xR6SaPdZej0m72ZPcIO8hoPCNT0EHrSvMv73+pBwJTsH9RxdwxKt5H960KbYKN9apsRZLJ94skg5M
	WsYgCj0rdeTz6PB7mRcn4TEIsU59JJzi5QJHhOrECqL7lI2vrPRvOjXrZN8B5wX0BlG32dJMZ0/2K
	cthrQHtyzqJj3RHotobNir0kFa4S0cml5g33+otFMoqZV+Af8UskN1hQMcuJHFLGOxK+UvZ6WNHph
	vpa2OsyvgGiI8gdAuaSvZKiHZqsSaLeVJNid8SLiB8QXdj2ANvlRBwXd8tJlly8On1jPb3jBQ1bux
	ddsg0tX7a8A4Po452i8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIAfF-000692-8I; Wed, 09 Oct 2019 12:01:57 +0000
Received: from lb3-smtp-cloud7.xs4all.net ([194.109.24.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIAf0-000674-MU; Wed, 09 Oct 2019 12:01:44 +0000
Received: from [IPv6:2001:983:e9a7:1:2801:e038:f2c3:e060]
 ([IPv6:2001:983:e9a7:1:2801:e038:f2c3:e060])
 by smtp-cloud7.xs4all.net with ESMTPA
 id IAeqigHJmjZ8vIAeriHhcm; Wed, 09 Oct 2019 14:01:34 +0200
Subject: Re: [PATCH 0/2] media: meson: vdec: Add compliant H264 support
To: Maxime Jourdan <mjourdan@baylibre.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>
References: <20191007145909.29979-1-mjourdan@baylibre.com>
 <8563127e-fe2c-a633-556b-8a883cebb171@xs4all.nl>
 <977c48e8-8275-c96a-688b-ccfbb873eb79@baylibre.com>
 <65a88bfc-d82b-1487-7983-507149b11673@xs4all.nl>
 <acef4f1e-0b59-30f5-f31f-9fc22f393072@baylibre.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <fb6edb95-069e-abeb-416e-2327da0a87ab@xs4all.nl>
Date: Wed, 9 Oct 2019 14:01:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <acef4f1e-0b59-30f5-f31f-9fc22f393072@baylibre.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfGi47KnphFpmq7kX9aL/0EwGBcfglgjk3LWvAVsJcUqelmL++LiEgeR3wCxbBepBVMIsdzenDFShNHJrGbronNneIgaQKJz27vasy2nrMaDJ7tMEUcKm
 ilCBEeALSDyC0/8UPWcloPLszMO5zWPGMYXcqY/jkqjq0lfmvTgmlVtHZsvsA1S3l3soMtC7oP5ypYwtUkRXHv2fuQzTkiru6Lrb6DbehdCfovyfBeKO88DQ
 kjZ1HpqBznbTxE5rfE/8ToyJ6ZtvPlC11EpT9k6LB8vmZCKd5yLHNSWe3oMrQMW/qVmLrij/44aCRvAZqVY0Zg2C5pQ0medl3FwbympC6K9MOplJdbF5nyXZ
 0kI0Rdi/Fx3M1liSOHSu+oo6YzP68cpR4HsEs967v+Nd4QodZ3J22CnGXEp2DZN8DcdsLxCmvcqZ/nZPDQ3kuNhy7Bdjfz14ocqjhmicnztiyTsGRAK8vqR3
 RwTDOO72U0OBv3xzyZUbl5aaXmT9+DIpLFlin7GNjNRCW/httL2koQnP36qBrWZeIJxL740twpAkHvX+tTsKikFI1bxzY+QdQrMyLlXoaNMzP0QBMeiTvA+/
 +kP8UbzM89CURzCLpB+lIBv9/JYEw7E5fbXwHjvWux6al1tiESrix0qx4989y7R2TYJ4IbYBu2DlkWDo32qgZfw8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_050142_900976_1DEC05FC 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.31 listed in list.dnswl.org]
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAvOC8xOSAzOjQwIFBNLCBNYXhpbWUgSm91cmRhbiB3cm90ZToKPiBPbiAwNy8xMC8yMDE5
IDE4OjM5LCBIYW5zIFZlcmt1aWwgd3JvdGU6Cj4+IE9uIDEwLzcvMTkgNjoyNCBQTSwgTWF4aW1l
IEpvdXJkYW4gd3JvdGU6Cj4+PiBPbiAwNy8xMC8yMDE5IDE3OjEyLCBIYW5zIFZlcmt1aWwgd3Jv
dGU6Cj4+Pj4gT24gMTAvNy8xOSA0OjU5IFBNLCBNYXhpbWUgSm91cmRhbiB3cm90ZToKPj4+Pj4g
SGVsbG8sCj4+Pj4+Cj4+Pj4+IFRoaXMgcGF0Y2ggc2VyaWVzIGFpbXMgdG8gYnJpbmcgSC4yNjQg
c3VwcG9ydCBhcyB3ZWxsIGFzIGNvbXBsaWFuY2UgdXBkYXRlCj4+Pj4+IHRvIHRoZSBhbWxvZ2lj
IHN0YXRlZnVsIHZpZGVvIGRlY29kZXIgZHJpdmVyLgo+Pj4+Pgo+Pj4+PiBUaGVyZSBpcyAxIGlz
c3VlIHRoYXQgcmVtYWlucyBjdXJyZW50bHk6Cj4+Pj4+Cj4+Pj4+IMKgwqAgLSBUaGUgZm9sbG93
aW5nIGNvZGVwYXRoIGhhZCB0byBiZSBjb21tZW50ZWQgb3V0IGZyb20gdjRsMi1jb21wbGlhbmNl
IGFzCj4+Pj4+IGl0IGxlZCB0byBzdGFsbGluZzoKPj4+Pj4KPj4+Pj4gaWYgKG5vZGUtPmNvZGVj
X21hc2sgJiBTVEFURUZVTF9ERUNPREVSKSB7Cj4+Pj4+IMKgwqDCoMKgwqBzdHJ1Y3QgdjRsMl9k
ZWNvZGVyX2NtZCBjbWQ7Cj4+Pj4+IMKgwqDCoMKgwqBidWZmZXIgYnVmX2NhcChtMm1fcSk7Cj4+
Pj4+Cj4+Pj4+IMKgwqDCoMKgwqBtZW1zZXQoJmNtZCwgMCwgc2l6ZW9mKGNtZCkpOwo+Pj4+PiDC
oMKgwqDCoMKgY21kLmNtZCA9IFY0TDJfREVDX0NNRF9TVE9QOwo+Pj4+Pgo+Pj4+PiDCoMKgwqDC
oMKgLyogTm8gYnVmZmVycyBhcmUgcXVldWVkLCBjYWxsIFNUUkVBTU9OLCB0aGVuIFNUT1AgKi8K
Pj4+Pj4gwqDCoMKgwqDCoGZhaWxfb25fdGVzdChub2RlLT5zdHJlYW1vbihxLmdfdHlwZSgpKSk7
Cj4+Pj4+IMKgwqDCoMKgwqBmYWlsX29uX3Rlc3Qobm9kZS0+c3RyZWFtb24obTJtX3EuZ190eXBl
KCkpKTsKPj4+Pj4gwqDCoMKgwqDCoGZhaWxfb25fdGVzdChkb2lvY3RsKG5vZGUsIFZJRElPQ19E
RUNPREVSX0NNRCwgJmNtZCkpOwo+Pj4+Pgo+Pj4+PiDCoMKgwqDCoMKgZmFpbF9vbl90ZXN0KGJ1
Zl9jYXAucXVlcnlidWYobm9kZSwgMCkpOwo+Pj4+PiDCoMKgwqDCoMKgZmFpbF9vbl90ZXN0KGJ1
Zl9jYXAucWJ1Zihub2RlKSk7Cj4+Pj4+IMKgwqDCoMKgwqBmYWlsX29uX3Rlc3QoYnVmX2NhcC5k
cWJ1Zihub2RlKSk7Cj4+Pj4+IMKgwqDCoMKgwqBmYWlsX29uX3Rlc3QoIShidWZfY2FwLmdfZmxh
Z3MoKSAmIFY0TDJfQlVGX0ZMQUdfTEFTVCkpOwo+Pj4+PiDCoMKgwqDCoMKgZm9yICh1bnNpZ25l
ZCBwID0gMDsgcCA8IGJ1Zl9jYXAuZ19udW1fcGxhbmVzKCk7IHArKykKPj4+Pj4gwqDCoMKgwqDC
oMKgwqDCoCBmYWlsX29uX3Rlc3QoYnVmX2NhcC5nX2J5dGVzdXNlZChwKSk7Cj4+Pj4+IMKgwqDC
oMKgwqBmYWlsX29uX3Rlc3Qobm9kZS0+c3RyZWFtb2ZmKHEuZ190eXBlKCkpKTsKPj4+Pj4gwqDC
oMKgwqDCoGZhaWxfb25fdGVzdChub2RlLT5zdHJlYW1vZmYobTJtX3EuZ190eXBlKCkpKTsKPj4+
Pj4KPj4+Pj4gwqDCoMKgwqDCoC8qIENhbGwgU1RSRUFNT04sIHF1ZXVlIG9uZSBDQVBUVVJFIGJ1
ZmZlciwgdGhlbiBTVE9QICovCj4+Pj4+IMKgwqDCoMKgwqBmYWlsX29uX3Rlc3Qobm9kZS0+c3Ry
ZWFtb24ocS5nX3R5cGUoKSkpOwo+Pj4+PiDCoMKgwqDCoMKgZmFpbF9vbl90ZXN0KG5vZGUtPnN0
cmVhbW9uKG0ybV9xLmdfdHlwZSgpKSk7Cj4+Pj4+IMKgwqDCoMKgwqBmYWlsX29uX3Rlc3QoYnVm
X2NhcC5xdWVyeWJ1Zihub2RlLCAwKSk7Cj4+Pj4+IMKgwqDCoMKgwqBmYWlsX29uX3Rlc3QoYnVm
X2NhcC5xYnVmKG5vZGUpKTsKPj4+Pj4gwqDCoMKgwqDCoGZhaWxfb25fdGVzdChkb2lvY3RsKG5v
ZGUsIFZJRElPQ19ERUNPREVSX0NNRCwgJmNtZCkpOwo+Pj4+Pgo+Pj4+PiDCoMKgwqDCoMKgZmFp
bF9vbl90ZXN0KGJ1Zl9jYXAuZHFidWYobm9kZSkpOwo+Pj4+PiDCoMKgwqDCoMKgZmFpbF9vbl90
ZXN0KCEoYnVmX2NhcC5nX2ZsYWdzKCkgJiBWNEwyX0JVRl9GTEFHX0xBU1QpKTsKPj4+Pj4gwqDC
oMKgwqDCoGZvciAodW5zaWduZWQgcCA9IDA7IHAgPCBidWZfY2FwLmdfbnVtX3BsYW5lcygpOyBw
KyspCj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgZmFpbF9vbl90ZXN0KGJ1Zl9jYXAuZ19ieXRlc3Vz
ZWQocCkpOwo+Pj4+PiDCoMKgwqDCoMKgZmFpbF9vbl90ZXN0KG5vZGUtPnN0cmVhbW9mZihxLmdf
dHlwZSgpKSk7Cj4+Pj4+IMKgwqDCoMKgwqBmYWlsX29uX3Rlc3Qobm9kZS0+c3RyZWFtb2ZmKG0y
bV9xLmdfdHlwZSgpKSk7Cj4+Pj4+IH0KPj4+Pj4KPj4+Pj4gVGhlIHJlYXNvbiBmb3IgdGhpcyBp
cyBiZWNhdXNlIHRoZSBkcml2ZXIgaGFzIGEgbGltaXRhdGlvbiB3aGVyZSBhbGwKPj4+Pj4gY2Fw
dHVyZWJ1ZmZlcnMgbXVzdCBiZSBxdWV1ZWQgdG8gdGhlIGRyaXZlciBiZWZvcmUgU1RSRUFNT04g
aXMgZWZmZWN0aXZlLgo+Pj4+PiBUaGUgZmlybXdhcmUgbmVlZHMgdG8ga25vdyBpbiBhZHZhbmNl
IHdoYXQgYWxsIHRoZSBidWZmZXJzIGFyZSBiZWZvcmUKPj4+Pj4gc3RhcnRpbmcgdG8gZGVjb2Rl
Lgo+Pj4+PiBUaGlzIGxpbWl0YXRpb24gaXMgZW5mb3JjZWQgdmlhIHEtPm1pbl9idWZmZXJzX25l
ZWRlZC4KPj4+Pj4gQXMgc3VjaCwgaW4gdGhpcyBjb21wbGlhbmNlIGNvZGVwYXRoLCBTVFJFQU1P
TiBpcyBuZXZlciBhY3R1YWxseSBjYWxsZWQKPj4+Pj4gZHJpdmVyLXNpZGUgYW5kIHRoZXJlIGlz
IGEgc3RhbGwgb24gZmFpbF9vbl90ZXN0KGJ1Zl9jYXAuZHFidWYobm9kZSkpOwo+Pj4+Cj4+Pj4g
VGhhdCdzIGludGVyZXN0aW5nLiBJIHdpbGwgaGF2ZSB0byBsb29rIG1vcmUgY2xvc2VseSBhdCB0
aGlzLgoKVGhpcyByZXF1aXJlcyBhIGhlbHBlciBmdW5jdGlvbiBpbiB2aWRlb2J1ZjItdjRsMi5j
LgoKSW4gdmRlY19kZWNvZGVyX2NtZCB5b3Ugd291bGQgbmVlZCBjb2RlIGxpa2UgdGhpczoKCglp
ZiAoIXZiMl9zdGFydF9zdHJlYW1pbmdfY2FsbGVkKCZjYXB0dXJlX3F1ZXVlKSkgewoJCXZiMl9k
ZXF1ZXVlX2VtcHR5X2xhc3RfYnVmKCZjYXB0dXJlX3F1ZXVlKTsKCQlyZXR1cm4gMDsKCX0KClRo
ZSB2YjJfZGVxdWV1ZV9lbXB0eV9sYXN0X2J1ZiAoZnVuY3Rpb24gbmFtZSBjYW4gcHJvYmFibHkg
YmUgaW1wcm92ZWQgdXBvbiEpCmRvZXMgbm90aGluZyBpZiBubyBjYXB0dXJlIGJ1ZmZlcnMgd2Vy
ZSBxdWV1ZWQsIG90aGVyd2lzZSBpdCB0YWtlcyB0aGUgZmlyc3QKYnVmZmVyLCBzZXRzIHRoZSBM
QVNUIGZsYWcgYW5kIHNldHMgYnl0ZXN1c2VkIHRvIDAgYW5kIG1hcmtzIGl0IGFzIERPTkUuCgpU
aGUgZHJpdmVyIGNhbm5vdCBkbyB0aGlzIGRpcmVjdGx5LCBzaW5jZSB0aGUgYnVmZmVycyB3ZXJl
IG5ldmVyIHF1ZXVlZCB0byB0aGUKZHJpdmVyIGFuZCBhcmUgb3duZWQgYnkgdmIyLgoKVGhpcyBp
cyBzb21ldGhpbmcgdGhhdCBuZWVkcyB0byBiZSBkb25lIGZvciBhbnkgY29kZWMgZHJpdmVyIHRo
YXQgc2V0cwptaW5fYnVmZmVyc19uZWVkZWQgdG8gYSB2YWx1ZSA+IDEuCgpUaGUgdmIyIGZ1bmN0
aW9uIHdvdWxkIGxvb2sgc29tZXRoaW5nIGxpa2UgdGhpczoKCnZvaWQgdmIyX2RxYnVmX2VtcHR5
X2xhc3RfYnVmKHN0cnVjdCB2YjJfcXVldWUgKnEpCnsKICAgICAgICBzdHJ1Y3QgdmIyX2J1ZmZl
ciAqdmI7CiAgICAgICAgc3RydWN0IHZiMl92NGwyX2J1ZmZlciAqdmJ1ZjsKICAgICAgICB1bnNp
Z25lZCBpbnQgaTsKCiAgICAgICAgaWYgKFdBUk5fT04ocS0+aXNfb3V0cHV0KSkKICAgICAgICAg
ICAgICAgIHJldHVybjsKICAgICAgICBpZiAobGlzdF9lbXB0eSgmcS0+cXVldWVkX2xpc3QpKQog
ICAgICAgICAgICAgICAgcmV0dXJuOwogICAgICAgIHZiID0gbGlzdF9maXJzdF9lbnRyeSgmcS0+
cXVldWVkX2xpc3QsIHN0cnVjdCB2YjJfYnVmZmVyLCBxdWV1ZWRfZW50cnkpOwogICAgICAgIGxp
c3RfZGVsKCZ2Yi0+cXVldWVkX2VudHJ5KTsKICAgICAgICBmb3IgKGkgPSAwOyBpIDwgdmItPm51
bV9wbGFuZXM7IGkrKykKICAgICAgICAgICAgICAgIHZiMl9zZXRfcGxhbmVfcGF5bG9hZCh2Yiwg
aSwgMCkKICAgICAgICB2YnVmID0gdG9fdmIyX3Y0bDJfYnVmZmVyKHZiKTsKICAgICAgICB2YnVm
LT5mbGFncyB8PSBWNEwyX0JVRl9GTEFHX0xBU1Q7CiAgICAgICAgdmIyX2J1ZmZlcl9kb25lKHZi
LCBWQjJfQlVGX1NUQVRFX0RPTkUpOwp9CkVYUE9SVF9TWU1CT0xfR1BMKHZiMl9kcWJ1Zl9lbXB0
eV9sYXN0X2J1Zik7CgpOZWl0aGVyIGNvbXBpbGVkLCBub3IgdGVzdGVkLCBhbmQgSSB0aGluayB0
aGlzIHNob3VsZCBiZSBpbiB2NGwyLW1lbTJtZW0uYyBpbnN0ZWFkIG9mCmluIHZpZGVvYnVmMi12
NGwyLmMgc2luY2UgdGhpcyBpcyB2ZXJ5IG0ybSBzcGVjaWZpYy4KClNvIHNlZSB0aGlzIGFzIGEg
c3VnZ2VzdGlvbiA6LSkKCkFueXdheSwgdGhlIGtleSB0YWtlLWF3YXkgZnJvbSB0aGlzIGlzIHRo
YXQgdXNlcnNwYWNlIGRvZXMgbm90IGtub3cgaWYgeW91ciBkcml2ZXIKYmVoYXZlcyB0aGUgd2F5
IGl0IGRvZXMsIHNvIFNUT1Agc2hvdWxkIHN0aWxsIHByb2R1Y2UgYSBzYW5lIGV4cGVjdGVkIHJl
c3VsdC4KCldoaWNoIGluIHRoaXMgaXMganVzdCBhIHNpbmdsZSBlbXB0eSBjYXB0dXJlIGJ1ZmZl
ciBtYXJrZWQgTEFTVC4KClJlZ2FyZHMsCgoJSGFucwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
