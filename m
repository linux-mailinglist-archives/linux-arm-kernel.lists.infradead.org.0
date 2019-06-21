Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B75C44E5EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:31:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M5/X1IMO8QfGV2UdtPbbAj/U7mXsD1cqmC5Vyb1pVQc=; b=Kc1TDkE2cCOPU0T3opKfognF5
	YrIl+6u0OEqgaW9o69IfTszITAqrT/qB4Iw2JIL5G2PspJ68W/Zq+NmCkiMB6eAPAqG9glg9bGPD5
	A7OJvWf8QrELXfQC3DOoM0URlFnlW2Q8qcGUUqHHgmU4JG20nxXdjl1ugio4M8KNw8I+V6TVhDwzD
	P1goqlwCBk7ivazO5zBqqm/jVflJ1UQYJ8ZJ1tIYZyoga8LPNEJu1QoZYGRbEBdMT1ZJjib5FOfOr
	HGKNhNL617JVseb7Mz8b8r20lY+h7MkYRIWIQfTKZIwF17A0rkDMaVob/uM4xXbrgYbmB4nuqZmR7
	5ICKSef9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGpk-00086Z-Er; Fri, 21 Jun 2019 10:31:52 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heGpS-000854-P6
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 10:31:36 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 3B1E260A97; Fri, 21 Jun 2019 10:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561113093;
 bh=83saP5agyCLRXJFITOAnGb07C5NHBmkBg6UjpUVttgY=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=XK3OmDbiGqcrSHWfrgYDgdZeDeTuKusvrdvOqek9PdlK9A+QPGfIW/dfyqG1zeWol
 6+/dwqOnMXgnLcJUwInGC4TOKQI1qUS/kUvbq0q7YHinqrBkWphjckGyXJPzPs3J1Q
 GsE6SQzsXDJFTq0cQWyfYE0wBBAnDgGaF5hmQT0c=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.79.136.27]
 (blr-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 17BFC60A97;
 Fri, 21 Jun 2019 10:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561113091;
 bh=83saP5agyCLRXJFITOAnGb07C5NHBmkBg6UjpUVttgY=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=axloNVl89+yy34mWOOy+ow2feDwzdwCo3bq5O8XkPeD0V00sUYEE7FdmvD27I7bKy
 GrWorYJktFH3kn4yPv4yaKpZPt4GJ/pqGJu8ZKIiqbJQ3t8Hsc7Tm6Y2ZLR2vUGyxR
 1GJ+wioETU4/lFl9rSksdTUGen1YpAYl49oBLyto=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 17BFC60A97
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: [PATCHv2 2/2] coresight: Abort probe if cpus are not available
To: Suzuki K Poulose <suzuki.poulose@arm.com>, mathieu.poirier@linaro.org,
 leo.yan@linaro.org, robh+dt@kernel.org, devicetree@vger.kernel.org,
 alexander.shishkin@linux.intel.com, david.brown@linaro.org,
 mark.rutland@arm.com
References: <cover.1561054498.git.saiprakash.ranjan@codeaurora.org>
 <65050e4cb2b0433f3cb9b1ca0bf6ec49d0751086.1561054498.git.saiprakash.ranjan@codeaurora.org>
 <d6e6a32e-4e15-5bc8-42f9-6cfe72fc0910@arm.com>
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Message-ID: <01e1758f-7574-7735-f129-f072f93aeca6@codeaurora.org>
Date: Fri, 21 Jun 2019 16:01:23 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <d6e6a32e-4e15-5bc8-42f9-6cfe72fc0910@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_033134_979002_9EFE5DD0 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: rnayak@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, sibis@codeaurora.org,
 vivek.gautam@codeaurora.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3V6dWtpLAoKT24gNi8yMS8yMDE5IDM6MTAgUE0sIFN1enVraSBLIFBvdWxvc2Ugd3JvdGU6
Cj4gT24gMDYvMjAvMjAxOSAwNzozMSBQTSwgU2FpIFByYWthc2ggUmFuamFuIHdyb3RlOgo+PiBD
dXJyZW50bHkgY29yZXNpZ2h0IGV0bSBhbmQgY3B1LWRlYnVnIHdpbGwgZ28gYWhlYWQgd2l0aAo+
PiB0aGUgcHJvYmUgZXZlbiB3aGVuIGNvcnJlc3BvbmRpbmcgY3B1cyBhcmUgbm90IGF2YWlsYWJs
ZQo+PiBhbmQgZXJyb3Igb3V0IGxhdGVyIGluIHRoZSBwcm9iZSBwYXRoLiBJbiBzdWNoIGNhc2Vz
LCBpdAo+PiBpcyBiZXR0ZXIgdG8gYWJvcnQgdGhlIHByb2JlIGVhcmxpZXIuCj4+Cj4+IFdpdGhv
dXQgdGhpcywgc2V0dGluZyAqbm9zbXAqIHdpbGwgdGhyb3cgYmVsb3cgZXJyb3JzOgo+Pgo+PiDC
oCBbwqDCoMKgIDUuOTEwNjIyXSBjb3Jlc2lnaHQtY3B1LWRlYnVnIDg1MDAwMC5kZWJ1ZzogQ29y
ZXNpZ2h0IAo+PiBkZWJ1Zy1DUFUwIGluaXRpYWxpemVkCj4+IMKgIFvCoMKgwqAgNS45MTQyNjZd
IGNvcmVzaWdodC1jcHUtZGVidWcgODUyMDAwLmRlYnVnOiBDUFUxIGRlYnVnIGFyY2ggCj4+IGlu
aXQgZmFpbGVkCj4+IMKgIFvCoMKgwqAgNS45MjE0NzRdIGNvcmVzaWdodC1jcHUtZGVidWcgODU0
MDAwLmRlYnVnOiBDUFUyIGRlYnVnIGFyY2ggCj4+IGluaXQgZmFpbGVkCj4+IMKgIFvCoMKgwqAg
NS45MjgzMjhdIGNvcmVzaWdodC1jcHUtZGVidWcgODU2MDAwLmRlYnVnOiBDUFUzIGRlYnVnIGFy
Y2ggCj4+IGluaXQgZmFpbGVkCj4+IMKgIFvCoMKgwqAgNS45MzUzMzBdIGNvcmVzaWdodCBldG0w
OiBDUFUwOiBFVE0gdjQuMCBpbml0aWFsaXplZAo+PiDCoCBbwqDCoMKgIDUuOTQxODc1XSBjb3Jl
c2lnaHQtZXRtNHggODVkMDAwLmV0bTogRVRNIGFyY2ggaW5pdCBmYWlsZWQKPj4gwqAgW8KgwqDC
oCA1Ljk0Njc5NF0gY29yZXNpZ2h0LWV0bTR4OiBwcm9iZSBvZiA4NWQwMDAuZXRtIGZhaWxlZCB3
aXRoIAo+PiBlcnJvciAtMjIKPj4gwqAgW8KgwqDCoCA1Ljk1MjcwN10gY29yZXNpZ2h0LWV0bTR4
IDg1ZTAwMC5ldG06IEVUTSBhcmNoIGluaXQgZmFpbGVkCj4+IMKgIFvCoMKgwqAgNS45NTg5NDVd
IGNvcmVzaWdodC1ldG00eDogcHJvYmUgb2YgODVlMDAwLmV0bSBmYWlsZWQgd2l0aCAKPj4gZXJy
b3IgLTIyCj4+IMKgIFvCoMKgwqAgNS45NjQ4NTNdIGNvcmVzaWdodC1ldG00eCA4NWYwMDAuZXRt
OiBFVE0gYXJjaCBpbml0IGZhaWxlZAo+PiDCoCBbwqDCoMKgIDUuOTcxMDk2XSBjb3Jlc2lnaHQt
ZXRtNHg6IHByb2JlIG9mIDg1ZjAwMC5ldG0gZmFpbGVkIHdpdGggCj4+IGVycm9yIC0yMgo+IAo+
IFRoYXQgaXMgZXhwZWN0ZWQuIFdoYXQgZWxzZSBkbyB5b3UgZXhwZWN0ID8KPiAKPj4KPj4gU2ln
bmVkLW9mZi1ieTogU2FpIFByYWthc2ggUmFuamFuIDxzYWlwcmFrYXNoLnJhbmphbkBjb2RlYXVy
b3JhLm9yZz4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvaHd0cmFjaW5nL2NvcmVzaWdodC9jb3Jlc2ln
aHQtcGxhdGZvcm0uYyB8IDMgKysrCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaHd0cmFjaW5nL2NvcmVzaWdodC9jb3Jlc2ln
aHQtcGxhdGZvcm0uYyAKPj4gYi9kcml2ZXJzL2h3dHJhY2luZy9jb3Jlc2lnaHQvY29yZXNpZ2h0
LXBsYXRmb3JtLmMKPj4gaW5kZXggOGIwM2ZhNTczNjg0Li4zZjQ1NTk1OTZjNmIgMTAwNjQ0Cj4+
IC0tLSBhL2RyaXZlcnMvaHd0cmFjaW5nL2NvcmVzaWdodC9jb3Jlc2lnaHQtcGxhdGZvcm0uYwo+
PiArKysgYi9kcml2ZXJzL2h3dHJhY2luZy9jb3Jlc2lnaHQvY29yZXNpZ2h0LXBsYXRmb3JtLmMK
Pj4gQEAgLTE2OCw2ICsxNjgsOSBAQCBzdGF0aWMgaW50IG9mX2NvcmVzaWdodF9nZXRfY3B1KHN0
cnVjdCBkZXZpY2UgKmRldikKPj4gwqDCoMKgwqDCoCBjcHUgPSBvZl9jcHVfbm9kZV90b19pZChk
bik7Cj4+IMKgwqDCoMKgwqAgb2Zfbm9kZV9wdXQoZG4pOwo+PiArwqDCoMKgIGlmIChudW1fb25s
aW5lX2NwdXMoKSA8PSBjcHUpCj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVOT0RFVjsKPiAK
PiBUaGF0IGlzIGEgcG9pbnRsZXNzIGFuZCB0ZXJyaWJseSB3cm9uZyBjaGVjay4gV2hhdCBpZiB5
b3UgaGF2ZSBvbmx5IDIKPiBvbmxpbmUgQ1BVcyAoQ1BVMCBhbmQgQ1BVNCkgYW5kIHlvdSB3ZXJl
IHByb2Nlc3NpbmcgdGhlIEVUTSBmb3IgQ1BVNCA/Cj4KClNvcnJ5LCBJIGRpZCBub3QgY29uc2lk
ZXIgc3VjaCBjYXNlcy4KCj4gTW9yZSBvdmVyIHlvdSBzaG91bGQgc2ltcGx5IGxldCB0aGUgZHJp
dmVyIGhhbmRsZSBhIGNhc2Ugd2hlcmUgdGhlIENQVQo+IGlzIG5vdCBvbmxpbmUuIE1heSBiZSB0
aGUgZHJpdmVyIGNvdWxkIHJlZ2lzdGVyIGEgaG90cGx1ZyBub3RpZmllciBhbmQKPiBicmluZyBp
dHNlbGYgdXAgd2hlbiB0aGUgQ1BVIGNvbWVzIG9ubGluZS4KPiAKPiBTbywgcGxlYXNlIGRyb3Ag
dGhpcyBwYXRjaC4KPiAKClN1cmUgSSB3aWxsIGRyb3AgdGhpcyBwYXRjaC4KClRoYW5rcywKU2Fp
CgotLSAKUVVBTENPTU0gSU5ESUEsIG9uIGJlaGFsZiBvZiBRdWFsY29tbSBJbm5vdmF0aW9uIENl
bnRlciwgSW5jLiBpcyBhIG1lbWJlcgpvZiBDb2RlIEF1cm9yYSBGb3J1bSwgaG9zdGVkIGJ5IFRo
ZSBMaW51eCBGb3VuZGF0aW9uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
