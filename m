Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 564BB1D2F23
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 14:07:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7wj1gShY27aSqoTPnqqcS9ZbYSrp140D5B1rlKsq3YQ=; b=m7q60I0e2G0tFtUKwHDXgUF5f
	Ff+hP6BwgtH1wTvQusQPEGZjBxXnEEAOjJY2FpZVTAPF1rvGyX8NML+duJpZ1PEsIerpt7EPUkz+G
	Uwg6r2qd4CtTZnWu7H5u4nLoMLxCEBbcLi8O1tqFdIT/hBwB3VJUcXMcz5UqykviTAEvTDq2OzVrL
	DYbTFzWWt47FEmLT73H5aBLmqKtvTDAMDfoVb9qQP38ETtLLsd3TJqBdA6nVtr4PzfpR5SnsprUCU
	mEEaUwp+NfkTpKesM0gu1uozrLyywiHYF/qNnV/qJdNS15hvIdGDPG5QxI7QOBSCBItklXAmQY7Iw
	RbpYnA7rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZCdc-0001W0-Kv; Thu, 14 May 2020 12:06:56 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZCdT-0001UI-Tf
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 12:06:49 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id EA559415B56C1C9A6CF1;
 Thu, 14 May 2020 13:06:37 +0100 (IST)
Received: from [127.0.0.1] (10.47.3.198) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Thu, 14 May
 2020 13:06:36 +0100
Subject: Re: [PATCH v3 0/2] irqchip/gic-v3-its: Balance LPI affinity across
 CPUs
From: John Garry <john.garry@huawei.com>
To: Marc Zyngier <maz@kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
References: <20200316115433.9017-1-maz@kernel.org>
 <9171c554-50d2-142b-96ae-1357952fce52@huawei.com>
 <80b673a7-1097-c5fa-82c0-1056baa5309d@huawei.com>
 <f2971d1c-50f8-bf5a-8b16-8d84a631b0ba@huawei.com>
Message-ID: <7c05b08b-2edc-7f97-0175-898e9772673e@huawei.com>
Date: Thu, 14 May 2020 13:05:43 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <f2971d1c-50f8-bf5a-8b16-8d84a631b0ba@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.47.3.198]
X-ClientProxiedBy: lhreml706-chm.china.huawei.com (10.201.108.55) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_050648_109227_D714DFBE 
X-CRM114-Status: GOOD (  21.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [185.176.76.210 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Jason Cooper <jason@lakedaemon.net>, chenxiang <chenxiang66@hisilicon.com>,
 Will Deacon <will@kernel.org>, "luojiaxing@huawei.com" <luojiaxing@huawei.com>,
 Ming Lei <ming.lei@redhat.com>, Zhou Wang <wangzhou1@hisilicon.com>,
 Thomas Gleixner <tglx@linutronix.de>, Robin Murphy <robin.murphy@arm.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiAKPiArwqDCoMKgwqDCoMKgIGl0c19pbmNfbHBpX2NvdW50KGQsIGNwdSk7Cj4gKwo+ICDCoMKg
wqDCoMKgwqDCoCByZXR1cm4gSVJRX1NFVF9NQVNLX09LX0RPTkU7Cj4gIMKgfQo+IAo+IFJlc3Vs
dHMgbG9vayBvazoKPiAgwqDCoMKgwqBudm1lLnVzZV90aHJlYWRlZF9pbnRlcnJ1cHRzPTHCoMKg
wqAgPTAqCj4gQmVmb3JlwqDCoMKgIDk1MEsgSU9Qc8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMTAw
MEsgSU9Qcwo+IEFmdGVywqDCoMKgIDExMDBLIElPUHPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDEx
NTBLIElPUHMKPiAKPiAqIGFzIG1lbnRpb25lZCBiZWZvcmUsIHRoaXMgaXMgcXVpdGUgdW5zdGFi
bGUgYW5kIGNhdXNlcyBsb2NrdXBzLiBKRllJLCAKPiB0aGVyZSB3YXMgYW4gYXR0ZW1wdCB0byBm
aXggdGhpczoKPiAKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1udm1lLzIwMTkxMjA5
MTc1NjIyLjE5NjQtMS1rYnVzY2hAa2VybmVsLm9yZy8KPiAKCkhpIE1hcmMsCgpKdXN0IHdvbmRl
cmluZyBpZiB3ZSBjYW4gdHJ5IHRvIGdldCB0aGlzIHNlcmllcyBvdmVyIHRoZSBsaW5lPwoKU28g
SSB0ZXN0ZWQgdGhlIHBhdGNoZXMgb24gdjUuNy1yYzUsIGFuZCBnZXQgc2ltaWxhciBwZXJmb3Jt
YW5jZSAKaW1wcm92ZW1lbnQgdG8gYWJvdmUuCgpJIGRpZCBhcHBseSBhIGNvdXBsZSBvZiBwYXRj
aGVzLCBiZWxvdywgdG8gcmVtZWR5IHRoZSBpc3N1ZXMgSSAKZXhwZXJpZW5jZWQgZm9yIG15IEQw
NkNTLgoKVGhhbmtzLApKb2huCgoKLS0tLT44CgoKW1BBVENIIDEvMl0gaXJxY2hpcC9naWMtdjMt
aXRzOiBEb24ndCBkb3VibGUgYWNjb3VudCBmb3IgdGFyZ2V0IENQVQogIGFzc2lnbm1lbnQKCklu
IGl0c19zZXRfYWZmaW5pdHkoKSwgd2hlbiBhIG1hbmFnZWQgaXJxIGlzIGFscmVhZHkgYXNzaWdu
ZWQgdG8gYSBDUFUsCndlIG1heSBuZWVkbGVzc2x5IHJlYXNzaWduIHRoZSBpcnEgdG8gYW5vdGhl
ciBDUFUuCgpUaGlzIGlzIGJlY2F1c2Ugd2hlbiBzZWxlY3RpbmcgdGhlIHRhcmdldCBDUFUsIGJl
aW5nIHRoZSBsZWFzdCBsb2FkZWQgCkNQVSBpbiB0aGUgbWFzaywgd2UgYWNjb3VudCBvZiB0aGF0
IGlycSBzdGlsbCBiZWluZyBhc3NpZ25lZCB0byBhIENQVTsKdGhlcmVieSB3ZSBtYXkgdW5mYWly
bHkgc2VsZWN0IGFub3RoZXIgQ1BVLgoKTW9kaWZ5IHRoaXMgYmVoYXZpb3VyIHRvIHByZS1kZWNy
ZW1lbnQgdGhlIGN1cnJlbnQgdGFyZ2V0IENQVSBMUEkgY291bnQKd2hlbiBmaW5kaW5nIHRoZSBs
ZWFzdCBsb2FkZWQgQ1BVLgoKQWx0ZXJuYXRpdmVseSB3ZSBtYXkgYmUgYWJsZSB0byBqdXN0IGJh
aWwgb3V0IGVhcmx5IHdoZW4gdGhlIGN1cnJlbnQgCnRhcmdldCBDUFUgYWxyZWFkeSBmYWxscyB3
aXRoaW4gdGhlIHJlcXVlc3RlZCBtYXNrLgoKLS0tCiAgZHJpdmVycy9pcnFjaGlwL2lycS1naWMt
djMtaXRzLmMgfCA2ICsrKystLQogIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9pcnFjaGlwL2lycS1naWMtdjMtaXRz
LmMgCmIvZHJpdmVycy9pcnFjaGlwL2lycS1naWMtdjMtaXRzLmMKaW5kZXggNzNmNWMxMi4uMmIx
OGZlYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9pcnFjaGlwL2lycS1naWMtdjMtaXRzLmMKKysrIGIv
ZHJpdmVycy9pcnFjaGlwL2lycS1naWMtdjMtaXRzLmMKQEAgLTE2MzYsNiArMTYzNiw4IEBAIHN0
YXRpYyBpbnQgaXRzX3NldF9hZmZpbml0eShzdHJ1Y3QgaXJxX2RhdGEgKmQsIApjb25zdCBzdHJ1
Y3QgY3B1bWFzayAqbWFza192YWwsCiAgCWlmIChpcnFkX2lzX2ZvcndhcmRlZF90b192Y3B1KGQp
KQogIAkJcmV0dXJuIC1FSU5WQUw7CgorCWl0c19kZWNfbHBpX2NvdW50KGQsIGl0c19kZXYtPmV2
ZW50X21hcC5jb2xfbWFwW2lkXSk7CisKICAJaWYgKCFmb3JjZSkKICAJCWNwdSA9IGl0c19zZWxl
Y3RfY3B1KGQsIG1hc2tfdmFsKTsKICAJZWxzZQpAQCAtMTY0NiwxNCArMTY0OCwxNCBAQCBzdGF0
aWMgaW50IGl0c19zZXRfYWZmaW5pdHkoc3RydWN0IGlycV9kYXRhICpkLCAKY29uc3Qgc3RydWN0
IGNwdW1hc2sgKm1hc2tfdmFsLAoKICAJLyogZG9uJ3Qgc2V0IHRoZSBhZmZpbml0eSB3aGVuIHRo
ZSB0YXJnZXQgY3B1IGlzIHNhbWUgYXMgY3VycmVudCBvbmUgKi8KICAJaWYgKGNwdSAhPSBpdHNf
ZGV2LT5ldmVudF9tYXAuY29sX21hcFtpZF0pIHsKLQkJaXRzX2luY19scGlfY291bnQoZCwgY3B1
KTsKLQkJaXRzX2RlY19scGlfY291bnQoZCwgaXRzX2Rldi0+ZXZlbnRfbWFwLmNvbF9tYXBbaWRd
KTsKICAJCXRhcmdldF9jb2wgPSAmaXRzX2Rldi0+aXRzLT5jb2xsZWN0aW9uc1tjcHVdOwogIAkJ
aXRzX3NlbmRfbW92aShpdHNfZGV2LCB0YXJnZXRfY29sLCBpZCk7CiAgCQlpdHNfZGV2LT5ldmVu
dF9tYXAuY29sX21hcFtpZF0gPSBjcHU7CiAgCQlpcnFfZGF0YV91cGRhdGVfZWZmZWN0aXZlX2Fm
ZmluaXR5KGQsIGNwdW1hc2tfb2YoY3B1KSk7CiAgCX0KCisJaXRzX2luY19scGlfY291bnQoZCwg
Y3B1KTsKKwogIAlyZXR1cm4gSVJRX1NFVF9NQVNLX09LX0RPTkU7CiAgfQoKLS0tCgoKW1BBVENI
IDIvMl0gaXJxY2hpcC9naWMtdjMtaXRzOiBIYW5kbGUgbm8gb3ZlcmxhcCBvZiBub24tbWFuYWdl
ZCBpcnEKICBhZmZpbml0eSBtYXNrCgpJbiBzZWxlY3RpbmcgdGhlIHRhcmdldCBDUFUgZm9yIGEg
bm9uLW1hbmFnZWQgaW50ZXJydXB0LCB3ZSBtYXkgc2VsZWN0IGEKdGFyZ2V0IENQVSBvdXRzaWRl
IHRoZSByZXF1ZXN0ZWQgYWZmaW5pdHkgbWFzay4KClRoaXMgaXMgYmVjYXVzZSB0aGVyZSBtYXkg
YmUgbm8gb3ZlcmxhcCBvZiB0aGUgSVRTIG5vZGUgbWFzayBhbmQgdGhlCnJlcXVlc3RlZCBDUFUg
YWZmaW5pdHkgbWFzay4gVGhlIHJlcXVlc3RlZCBhZmZpbml0eSBtYXNrIG1heSBiZSBjb21pbmcg
CmZyb20gdXNlcnNwYWNlIG9yIHNvbWUgZHJpdmVycyB3aGljaCB0cnkgdG8gc2V0IGlycSBhZmZp
bml0eSwgc2VlIFswXS4KCkluIHRoaXMgY2FzZSwganVzdCBpZ25vcmUgdGhlIElUUyBub2RlIGNw
dW1hc2suIFRoaXMgaXMgYSBkZXZpYXRpb24gZnJvbQp3aGF0IFRob21hcyBkZXNjcmliZWQuIEhh
dmluZyBzYWlkIHRoYXQsIEkgYW0gbm90IHN1cmUgaWYgdGhlIGludGVycnVwdCAKaXMgZXZlciBi
b3VuZCB0byBhIG5vZGUgZm9yIHVzLgoKWzBdIApodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9z
Y20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9kcml2ZXJzL3BlcmYv
aGlzaWxpY29uL2hpc2lfdW5jb3JlX3BtdS5jI240MTcKCi0tLQogIGRyaXZlcnMvaXJxY2hpcC9p
cnEtZ2ljLXYzLWl0cy5jIHwgNCAtLS0tCiAgMSBmaWxlIGNoYW5nZWQsIDQgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9pcnFjaGlwL2lycS1naWMtdjMtaXRzLmMgCmIvZHJpdmVy
cy9pcnFjaGlwL2lycS1naWMtdjMtaXRzLmMKaW5kZXggMmIxOGZlYi4uMTJkNWQ0YjQgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvaXJxY2hpcC9pcnEtZ2ljLXYzLWl0cy5jCisrKyBiL2RyaXZlcnMvaXJx
Y2hpcC9pcnEtZ2ljLXYzLWl0cy5jCkBAIC0xNTg0LDEwICsxNTg0LDYgQEAgc3RhdGljIGludCBp
dHNfc2VsZWN0X2NwdShzdHJ1Y3QgaXJxX2RhdGEgKmQsCiAgCQkJY3B1bWFza19hbmQodG1wbWFz
aywgY3B1bWFza19vZl9ub2RlKG5vZGUpLCBhZmZfbWFzayk7CiAgCQkJY3B1bWFza19hbmQodG1w
bWFzaywgdG1wbWFzaywgY3B1X29ubGluZV9tYXNrKTsKCi0JCQkvKiBJZiB0aGF0IGRvZXNuJ3Qg
d29yaywgdHJ5IHRoZSBub2RlbWFzayBpdHNlbGYgKi8KLQkJCWlmIChjcHVtYXNrX2VtcHR5KHRt
cG1hc2spKQotCQkJCWNwdW1hc2tfYW5kKHRtcG1hc2ssIGNwdW1hc2tfb2Zfbm9kZShub2RlKSwg
Y3B1X29ubGluZV9tYXNrKTsKLQogIAkJCWNwdSA9IGNwdW1hc2tfcGlja19sZWFzdF9sb2FkZWQo
ZCwgdG1wbWFzayk7CiAgCQkJaWYgKGNwdSA8IG5yX2NwdV9pZHMpCiAgCQkJCWdvdG8gb3V0OwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
