Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A87D34CB55
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 11:51:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3q/PpFvGuwVr6m82yEaCqatlWKlLLxTT8VlLf92KmsM=; b=EiRMAxCVxDB8xOzDUwEPsBXur
	HgGnOTZqzEH7+VDx9U7EmgHiD9T/195878rFFo1ZWrVlZlfn+F0M0XKjwMeMPV/PHNsvyaRC6YBh7
	cRDopJBaERRYAOQyydZcf+pTqk/gkQAdwj1z4SQjKxnVY/4gYRiE+Er4RmzXjuHYCSnXbb5/m1gR9
	LQj5SBrgSsRaY53QZg6kTPhfLAqker6Ro2EDDeOh4d2aHUNaJggDz4r0trL4lNKZly8KatYbMzQdR
	DMkLDztyta7iIQT5QK1n8doR9lmUo4Qk14RawSriesMdtJNoIXTukbL90ghOrtVGoiqOuFLVepvfZ
	GpYc/+ePg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdtjX-0008LN-AL; Thu, 20 Jun 2019 09:51:55 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdtjI-0008Kr-IZ
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 09:51:42 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 3567260A00; Thu, 20 Jun 2019 09:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561024300;
 bh=FTnHHkOBPI2GvO4kz1UX298AWCMk0yT9kwHdT2vRHA8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=lGxJlS9nxtxDOo6b2LwI3fxourcUrm+3EY5gG//GMKF01lTy8qCpui7hMIrtVwNt4
 O3JdNknR8iqcbLWt1W9rZq76vIQiR6keWM2IMYgRLFHvSBh6Qv0/67xd88gBDxXK4s
 VYZIGWXrDr84xlqiSIuUMFzLswJ8yiOMSFV+GvG0=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4E4D260300;
 Thu, 20 Jun 2019 09:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561024299;
 bh=FTnHHkOBPI2GvO4kz1UX298AWCMk0yT9kwHdT2vRHA8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=pFVj2IK9p+xx6oLjwIOp6q4A3iPx7JS824D3ETVdvNPYMwDB08WJNQxnsoj212OjI
 TLyAlcdl/Wvm+amB4zZeRz0iuvHk/dBZ6O/BB3Pe8sCVTOetw66N4Txl8fCNep2O3o
 iUIeQMVki2vaggmK8Q+p8N43kGKPOgwvm7vtYC5w=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4E4D260300
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: Coresight causes synchronous external abort on msm8916
To: Suzuki K Poulose <suzuki.poulose@arm.com>, stephan@gerhold.net,
 mathieu.poirier@linaro.org
References: <20190618202623.GA53651@gerhold.net>
 <a51f117f-c48d-d3f4-c3d1-9b584e3a055f@arm.com>
 <20190619183904.GB937@gerhold.net>
 <0dcea9a1-999d-7d85-267e-c3bfcfcfa95a@codeaurora.org>
 <6589bf4d-5b39-c95e-0ee5-aaf35a87b40e@arm.com>
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Message-ID: <78b67245-9053-6175-9f9e-dbb12e5fb55c@codeaurora.org>
Date: Thu, 20 Jun 2019 15:21:34 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <6589bf4d-5b39-c95e-0ee5-aaf35a87b40e@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_025140_653160_E137CDD8 
X-CRM114-Status: GOOD (  25.50  )
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
 david.brown@linaro.org, agross@kernel.org, sibis@codeaurora.org,
 vivek.gautam@codeaurora.org, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3V6dWtpLAoKT24gNi8yMC8yMDE5IDI6MzYgUE0sIFN1enVraSBLIFBvdWxvc2Ugd3JvdGU6
Cj4gCj4gCj4gV2UgYXJlIG5vdCB5ZXQgdGhlcmUgaW4gdGhlIENvcmVzaWdodCBkcml2ZXIgYW5k
IHdlIGNyYXNoIGF0IEFNQkEgYnVzIGxheWVyCj4gdHJ5aW5nIHRvIHJlYWQgdGhlIFBJRCBvZiB0
aGUgQ29yZVNpZ2h0IGRldmljZS4gU28gSSBkb3VidCBpZiB0aGlzIGlzIGFuCj4gaXNzdWUgeW91
ciBwYXRjaCB0cnlpbmcgdG8gYWRkcmVzcy4gSSBzdGlsbCB0aGluayB0aGlzIGlzIGEgZGVidWcg
cG93ZXIgCj4gZG9tYWluCj4gaXNzdWUuIE1vcmUgeW91ciBwYXRjaCBiZWxvdy4KClllcywgSSBz
dXBwb3NlIHlvdSBhcmUgcmlnaHQuIEp1c3QgZm9yIHRlc3RpbmcsIEkgaGFkIGRpc2FibGVkIHBz
Y2kKZW5hYmxlIG1ldGhvZCBmb3Igbm9uIGJvb3QgY3B1cyBvbiBtc204OTE2IGFuZCBpdCBqdXN0
IGNyYXNoZWQgd2l0aG91dAphbnkgdHJhY2VzLiBTbywgSSB0aG91Z2h0IG1heWJlIHRoYXQgY291
bGQgaGF2ZSBiZWVuIGEgcmVhc29uIGZvciAKU3RlcGhhbidzIGNyYXNoIGFzIHdlbGwuCgo+IAo+
PiBsaWtlIGNwdSBhZmZpbml0eSBpc3N1ZS4gQ2FuIHlvdSBwbGVhc2UgdHJ5IG91dCB0aGlzIHBh
dGNoIGFuZCBsZXQgdXMKPj4ga25vdz8KPiAKPiBJbiBnZW5lcmFsIEkgYW0gZm9yIHRoZSBwYXRj
aCwgYnJlYWtpbmcgdGhlICJhc3N1bXB0aW9uIiB0aGF0IGEgbWlzc2luZyBDUFUKPiBwaGFuZGxl
IGdpdmVzIHlvdSB0aGUgYWZmaW5pdHkgb2YgIjAiLgo+IAo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9od3RyYWNpbmcvY29yZXNpZ2h0L2NvcmVzaWdodC1jcHUtZGVidWcuYwo+PiBiL2RyaXZl
cnMvaHd0cmFjaW5nL2NvcmVzaWdodC9jb3Jlc2lnaHQtY3B1LWRlYnVnLmMKPj4gaW5kZXggZTg4
MTlkNzUwOTM4Li45YWNmOWYxOTBkNDIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvaHd0cmFjaW5n
L2NvcmVzaWdodC9jb3Jlc2lnaHQtY3B1LWRlYnVnLmMKPj4gKysrIGIvZHJpdmVycy9od3RyYWNp
bmcvY29yZXNpZ2h0L2NvcmVzaWdodC1jcHUtZGVidWcuYwo+PiBAQCAtNTc5LDcgKzU3OSwxMSBA
QCBzdGF0aWMgaW50IGRlYnVnX3Byb2JlKHN0cnVjdCBhbWJhX2RldmljZSAqYWRldiwKPj4gY29u
c3Qgc3RydWN0IGFtYmFfaWQgKmlkKQo+PiDCoMKgwqDCoMKgwqAgaWYgKCFkcnZkYXRhKQo+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVOT01FTTsKPj4KPj4gLcKgwqDCoCBkcnZkYXRh
LT5jcHUgPSBucCA/IG9mX2NvcmVzaWdodF9nZXRfY3B1KG5wKSA6IDA7Cj4+ICvCoMKgwqAgZHJ2
ZGF0YS0+Y3B1ID0gbnAgPyBvZl9jb3Jlc2lnaHRfZ2V0X2NwdShucCkgOiAtRU5PREVWOwo+IAo+
IAo+IG9mX2NvcmVzaWdodF9nZXRfY3B1KCkgbXVzdCBiZSBtb2RpZmllZCB0byByZXR1cm4gLUVO
T0RFViwgcmF0aGVyIHRoYW4KPiBkZWZhdWx0aW5nIHRvIDAuIFRoaXMgaXMgc29tZXRoaW5nIHRo
YXQgaXMgcmVxdWlyZWQgYnkgdGhlIENUSSBkcml2ZXIgdG9vLgo+IEFuZCBsZXRzIG5vdCBicmlu
ZyB1cCBzb21ldGhpbmcgYW5kIGFzc3VtZSBpdCBiZWxvbmdzIHRvIENQVTAuCj4gCj4+ICvCoMKg
wqAgaWYgKGRydmRhdGEtPmNwdSA9PSAtRU5PREVWKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1
cm4gLUVOT0RFVjsKPj4gK8KgwqDCoCB9Cj4+ICsKPj4gwqDCoMKgwqDCoMKgIGlmIChwZXJfY3B1
KGRlYnVnX2RydmRhdGEsIGRydmRhdGEtPmNwdSkpIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAg
ZGV2X2VycihkZXYsICJDUFUlZCBkcnZkYXRhIGhhcyBhbHJlYWR5IGJlZW4gaW5pdGlhbGl6ZWRc
biIsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHJ2ZGF0YS0+Y3B1KTsKPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvaHd0cmFjaW5nL2NvcmVzaWdodC9jb3Jlc2lnaHQtZXRtNHguYwo+
PiBiL2RyaXZlcnMvaHd0cmFjaW5nL2NvcmVzaWdodC9jb3Jlc2lnaHQtZXRtNHguYwo+PiBpbmRl
eCA4YmIwMDkyYzdlYzIuLjY2MDQzMmFjYmFjMCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9od3Ry
YWNpbmcvY29yZXNpZ2h0L2NvcmVzaWdodC1ldG00eC5jCj4+ICsrKyBiL2RyaXZlcnMvaHd0cmFj
aW5nL2NvcmVzaWdodC9jb3Jlc2lnaHQtZXRtNHguYwo+PiBAQCAtMTEwNyw3ICsxMTA3LDEwIEBA
IHN0YXRpYyBpbnQgZXRtNF9wcm9iZShzdHJ1Y3QgYW1iYV9kZXZpY2UgKmFkZXYsCj4+IGNvbnN0
IHN0cnVjdCBhbWJhX2lkICppZCkKPj4KPj4gwqDCoMKgwqDCoMKgIHNwaW5fbG9ja19pbml0KCZk
cnZkYXRhLT5zcGlubG9jayk7Cj4+Cj4+IC3CoMKgwqAgZHJ2ZGF0YS0+Y3B1ID0gcGRhdGEgPyBw
ZGF0YS0+Y3B1IDogMDsKPiAKPiBJIGJlbGlldmUsIHdlIHNob3VsZCBzaW1wbHkgYWJvcnQgd2hl
biB3ZSBkb24ndCBoYXZlIHBkYXRhLiBUaGVyZSBpcyBubyAKPiBwb2ludAo+IGluIHJlZ2lzdGVy
aW5nIHRoaXMgRVRNIHVubGVzcyB3ZSBrbm93IHdoZXJlIHRoaXMgaXMgY29ubmVjdGVkIHRvLgo+
IAoKSSBkaWQgbm90IHVuZGVyc3RhbmQgdGhpcyBjb21tZW50IHNpbmNlIEkgYW0gcmV0dXJuaW5n
IHdpdGggRU5PREVWIGhlcmUKYW5kIG5vdCByZWdpc3RlcmluZyB0aGlzIEVUTS4KCj4+ICvCoMKg
wqAgZHJ2ZGF0YS0+Y3B1ID0gcGRhdGEgPyBwZGF0YS0+Y3B1IDogLUVOT0RFVjsKPj4gK8KgwqDC
oCBpZiAoZHJ2ZGF0YS0+Y3B1ID09IC1FTk9ERVYpIHsKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVy
biAtRU5PREVWOwo+PiArwqDCoMKgwqDCoMKgIH0KPiAKPj4KPj4gwqDCoMKgwqDCoMKgIGNwdXNf
cmVhZF9sb2NrKCk7Cj4+IMKgwqDCoMKgwqDCoCBldG1kcnZkYXRhW2RydmRhdGEtPmNwdV0gPSBk
cnZkYXRhOwo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9od3RyYWNpbmcvY29yZXNpZ2h0L29mX2Nv
cmVzaWdodC5jCj4+IGIvZHJpdmVycy9od3RyYWNpbmcvY29yZXNpZ2h0L29mX2NvcmVzaWdodC5j
Cj4+IGluZGV4IDcwNDU5MzBmYzk1OC4uOGMxYjkwYmEyMzNjIDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL2h3dHJhY2luZy9jb3Jlc2lnaHQvb2ZfY29yZXNpZ2h0LmMKPj4gKysrIGIvZHJpdmVycy9o
d3RyYWNpbmcvY29yZXNpZ2h0L29mX2NvcmVzaWdodC5jCj4+IEBAIC0xNTMsMTQgKzE1MywxNCBA
QCBpbnQgb2ZfY29yZXNpZ2h0X2dldF9jcHUoY29uc3Qgc3RydWN0IGRldmljZV9ub2RlCj4+ICpu
b2RlKQo+PiDCoMKgwqDCoMKgwqAgc3RydWN0IGRldmljZV9ub2RlICpkbjsKPj4KPj4gwqDCoMKg
wqDCoMKgIGRuID0gb2ZfcGFyc2VfcGhhbmRsZShub2RlLCAiY3B1IiwgMCk7Cj4+IC3CoMKgwqAg
LyogQWZmaW5pdHkgZGVmYXVsdHMgdG8gQ1BVMCAqLwo+PiArwqDCoMKgIC8qIEFmZmluaXR5IGRl
ZmF1bHRzIHRvIGludmFsaWQgKi8KPj4gwqDCoMKgwqDCoMKgIGlmICghZG4pCj4+IC3CoMKgwqDC
oMKgwqDCoCByZXR1cm4gMDsKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAtRU5PREVWOwo+PiDC
oMKgwqDCoMKgwqAgY3B1ID0gb2ZfY3B1X25vZGVfdG9faWQoZG4pOwo+PiDCoMKgwqDCoMKgwqAg
b2Zfbm9kZV9wdXQoZG4pOwo+Pgo+PiAtwqDCoMKgIC8qIEFmZmluaXR5IHRvIENQVTAgaWYgbm8g
Y3B1IG5vZGVzIGFyZSBmb3VuZCAqLwo+PiAtwqDCoMKgIHJldHVybiAoY3B1IDwgMCkgPyAwIDog
Y3B1Owo+PiArwqDCoMKgIC8qIEFmZmluaXR5IHRvIGludmFsaWQgaWYgbm8gY3B1IG5vZGVzIGFy
ZSBmb3VuZCAqLwo+PiArwqDCoMKgIHJldHVybiAoY3B1IDwgMCkgPyAtRU5PREVWIDogY3B1Owo+
IAo+ICDCoMKgwqDCoHJldHVybiBjcHUgPwo+IAo+IElmIHlvdSBzcGxpdCB0aGlzIGludG8gMyBk
aWZmZXJlbnQgcGF0Y2hlcywgSSB3b3VsZCBiZSBoYXBweSB0byBBY2sgdGhlbS4KPgoKU3VyZSwg
SSB3aWxsIHJlYWR5IHRoZSBwYXRjaGVzLgoKVGhhbmtzLApTYWkKCj4gTWF0aGlldSwKPiAKPiBX
aGF0IGRvIHlvdSB0aGluayA/Cj4gCj4gCj4gQ2hlZXJzCj4gU3V6dWtpCgotLSAKUVVBTENPTU0g
SU5ESUEsIG9uIGJlaGFsZiBvZiBRdWFsY29tbSBJbm5vdmF0aW9uIENlbnRlciwgSW5jLiBpcyBh
IG1lbWJlcgpvZiBDb2RlIEF1cm9yYSBGb3J1bSwgaG9zdGVkIGJ5IFRoZSBMaW51eCBGb3VuZGF0
aW9uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
