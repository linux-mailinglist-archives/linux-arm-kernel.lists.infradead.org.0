Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 215BC15F82
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 10:38:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AzM3I6vW6NB3JI6AGslvkHmqS6gC2o6jLgPAcb87qxw=; b=J7Upelh4wPXKxp
	6P0Dqj7HLUXk5OlbssLarif+CGedDXiHKwBQSKh9f3FDoPBTzYFoF27NxP9o7bS4J9reMnNWCMccS
	3BsrU+PsWPqEl22OPN+Nb1u2MgtvHOnMAoY9wRGAZi4qvZo12Hz3fkIDywml3H2QbCapSUn50OQwT
	ASB3ay4NqZuww5H+8yErorrGSivtEgyEVgk1ZQRZcWYHrvLtQ5RxZKG8l+0g0ULVPxu9wyq1W53XB
	GclCU2NvXRI5qLGmGIUjRrPRMHtN3hENzkRVIdr/GD2ke8Pwg8BB05NLyh0FGpAvSEcGJunKSRa9h
	hU+NL6iJ6ILjipr+VSIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNvbz-0005wO-1i; Tue, 07 May 2019 08:38:07 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNvbs-0005vi-2f
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 08:38:01 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x478bsCu127307;
 Tue, 7 May 2019 03:37:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1557218274;
 bh=Olgyr8WZLKt8gGzTEuPealNrw31hIrJIggcB6sk9mwA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=AfFSF5EpswIiPbbL86OZYu4kcAilSG876Qa3ixDnLUyX+cjNV9vO0Tk9jHPPemr4v
 1CVzjgsmaL03L1j016BhNw3R8ODKp8RRZ+IWqjbVYJTx7SmneRYDxRMF1UZz+8Lce3
 gOWook+vRea/dwRFIjqOgQhifaTq2U9ckMd44ibM=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x478bsVP089757
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 7 May 2019 03:37:54 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 7 May
 2019 03:37:54 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 7 May 2019 03:37:54 -0500
Received: from [192.168.2.10] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x478boXY045826;
 Tue, 7 May 2019 03:37:50 -0500
Subject: Re: [PATCH 1/8] dmaengine: Add matching device node validation in
 __dma_request_channel()
To: Baolin Wang <baolin.wang@linaro.org>, <dan.j.williams@intel.com>,
 <vkoul@kernel.org>
References: <cover.1557206859.git.baolin.wang@linaro.org>
 <17a22052fdb759ae6129e30f9bd8862f23a03ad9.1557206859.git.baolin.wang@linaro.org>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <42b84cfe-3281-7f4e-03cc-6ca126e16191@ti.com>
Date: Tue, 7 May 2019 11:37:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <17a22052fdb759ae6129e30f9bd8862f23a03ad9.1557206859.git.baolin.wang@linaro.org>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_013800_195987_326EF8AF 
X-CRM114-Status: GOOD (  25.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: jroedel@suse.de, vincent.guittot@linaro.org, Zubair.Kakakhel@imgtec.com,
 dmaengine@vger.kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 wsa+renesas@sang-engineering.com, thierry.reding@gmail.com, linux-imx@nxp.com,
 kernel@pengutronix.de, linux-tegra@vger.kernel.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAwNy8wNS8yMDE5IDkuMDksIEJhb2xpbiBXYW5nIHdyb3RlOgo+IFdoZW4gdXNlciB0
cnkgdG8gcmVxdWVzdCBvbmUgRE1BIGNoYW5uZWwgYnkgX19kbWFfcmVxdWVzdF9jaGFubmVsKCks
IGl0IHdvbid0Cj4gdmFsaWRhdGUgaWYgaXQgaXMgdGhlIGNvcnJlY3QgRE1BIGRldmljZSB0byBy
ZXF1ZXN0LCB0aGF0IHdpbGwgbGVhZCBlYWNoIERNQQo+IGVuZ2luZSBkcml2ZXIgdG8gdmFsaWRh
dGUgdGhlIGNvcnJlY3QgZGV2aWNlIG5vZGUgaW4gdGhlaXIgZmlsdGVyIGZ1bmN0aW9uCj4gaWYg
aXQgaXMgbmVjZXNzYXJ5Lgo+IAo+IFRodXMgd2UgY2FuIGFkZCB0aGUgbWF0Y2hpbmcgZGV2aWNl
IG5vZGUgdmFsaWRhdGlvbiBpbiB0aGUgRE1BIGVuZ2luZSBjb3JlLAo+IHRvIHJlbW92ZSBhbGwg
b2YgZGV2aWNlIG5vZGUgdmFsaWRhdGlvbiBpbiB0aGUgZHJpdmVycy4KCkkgaGF2ZSBwaWNrZWQg
dGhpcyBwYXRjaCB0byBteSBUSSBVRE1BIHNlcmllcyBhbmQgd2l0aApfX2RtYV9yZXF1ZXN0X2No
YW5uZWwoKSBpdCB3b3JrcyBhcyBleHBlY3RlZCAtIHBpY2tpbmcgdGhlIGNoYW5uZWwgZnJvbQp0
aGUgY29ycmVjdCBETUEgZGV2aWNlLgoKVGVzdGVkLWJ5OiBQZXRlciBVamZhbHVzaSA8cGV0ZXIu
dWpmYWx1c2lAdGkuY29tPgoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBCYW9saW4gV2FuZyA8YmFvbGlu
LndhbmdAbGluYXJvLm9yZz4KPiAtLS0KPiAgZHJpdmVycy9kbWEvZG1hZW5naW5lLmMgICB8ICAg
MTAgKysrKysrKystLQo+ICBkcml2ZXJzL2RtYS9vZi1kbWEuYyAgICAgIHwgICAgNCArKy0tCj4g
IGluY2x1ZGUvbGludXgvZG1hZW5naW5lLmggfCAgIDEyICsrKysrKysrLS0tLQo+ICAzIGZpbGVz
IGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZG1hL2RtYWVuZ2luZS5jIGIvZHJpdmVycy9kbWEvZG1hZW5naW5lLmMKPiBp
bmRleCAzYTExYjEwLi42MTAwODBjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZG1hL2RtYWVuZ2lu
ZS5jCj4gKysrIGIvZHJpdmVycy9kbWEvZG1hZW5naW5lLmMKPiBAQCAtNjQxLDExICs2NDEsMTMg
QEAgc3RydWN0IGRtYV9jaGFuICpkbWFfZ2V0X2FueV9zbGF2ZV9jaGFubmVsKHN0cnVjdCBkbWFf
ZGV2aWNlICpkZXZpY2UpCj4gICAqIEBtYXNrOiBjYXBhYmlsaXRpZXMgdGhhdCB0aGUgY2hhbm5l
bCBtdXN0IHNhdGlzZnkKPiAgICogQGZuOiBvcHRpb25hbCBjYWxsYmFjayB0byBkaXNwb3NpdGlv
biBhdmFpbGFibGUgY2hhbm5lbHMKPiAgICogQGZuX3BhcmFtOiBvcGFxdWUgcGFyYW1ldGVyIHRv
IHBhc3MgdG8gZG1hX2ZpbHRlcl9mbgo+ICsgKiBAbnA6IGRldmljZSBub2RlIHRvIGxvb2sgZm9y
IERNQSBjaGFubmVscwo+ICAgKgo+ICAgKiBSZXR1cm5zIHBvaW50ZXIgdG8gYXBwcm9wcmlhdGUg
RE1BIGNoYW5uZWwgb24gc3VjY2VzcyBvciBOVUxMLgo+ICAgKi8KPiAgc3RydWN0IGRtYV9jaGFu
ICpfX2RtYV9yZXF1ZXN0X2NoYW5uZWwoY29uc3QgZG1hX2NhcF9tYXNrX3QgKm1hc2ssCj4gLQkJ
CQkgICAgICAgZG1hX2ZpbHRlcl9mbiBmbiwgdm9pZCAqZm5fcGFyYW0pCj4gKwkJCQkgICAgICAg
ZG1hX2ZpbHRlcl9mbiBmbiwgdm9pZCAqZm5fcGFyYW0sCj4gKwkJCQkgICAgICAgc3RydWN0IGRl
dmljZV9ub2RlICpucCkKPiAgewo+ICAJc3RydWN0IGRtYV9kZXZpY2UgKmRldmljZSwgKl9kOwo+
ICAJc3RydWN0IGRtYV9jaGFuICpjaGFuID0gTlVMTDsKPiBAQCAtNjUzLDYgKzY1NSwxMCBAQCBz
dHJ1Y3QgZG1hX2NoYW4gKl9fZG1hX3JlcXVlc3RfY2hhbm5lbChjb25zdCBkbWFfY2FwX21hc2tf
dCAqbWFzaywKPiAgCS8qIEZpbmQgYSBjaGFubmVsICovCj4gIAltdXRleF9sb2NrKCZkbWFfbGlz
dF9tdXRleCk7Cj4gIAlsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUoZGV2aWNlLCBfZCwgJmRtYV9k
ZXZpY2VfbGlzdCwgZ2xvYmFsX25vZGUpIHsKPiArCQkvKiBGaW5kcyBhIERNQSBjb250cm9sbGVy
IHdpdGggbWF0Y2hpbmcgZGV2aWNlIG5vZGUgKi8KPiArCQlpZiAobnAgJiYgZGV2aWNlLT5kZXYt
Pm9mX25vZGUgJiYgbnAgIT0gZGV2aWNlLT5kZXYtPm9mX25vZGUpCj4gKwkJCWNvbnRpbnVlOwo+
ICsKPiAgCQljaGFuID0gZmluZF9jYW5kaWRhdGUoZGV2aWNlLCBtYXNrLCBmbiwgZm5fcGFyYW0p
Owo+ICAJCWlmICghSVNfRVJSKGNoYW4pKQo+ICAJCQlicmVhazsKPiBAQCAtNzY5LDcgKzc3NSw3
IEBAIHN0cnVjdCBkbWFfY2hhbiAqZG1hX3JlcXVlc3RfY2hhbl9ieV9tYXNrKGNvbnN0IGRtYV9j
YXBfbWFza190ICptYXNrKQo+ICAJaWYgKCFtYXNrKQo+ICAJCXJldHVybiBFUlJfUFRSKC1FTk9E
RVYpOwo+ICAKPiAtCWNoYW4gPSBfX2RtYV9yZXF1ZXN0X2NoYW5uZWwobWFzaywgTlVMTCwgTlVM
TCk7Cj4gKwljaGFuID0gX19kbWFfcmVxdWVzdF9jaGFubmVsKG1hc2ssIE5VTEwsIE5VTEwsIE5V
TEwpOwo+ICAJaWYgKCFjaGFuKSB7Cj4gIAkJbXV0ZXhfbG9jaygmZG1hX2xpc3RfbXV0ZXgpOwo+
ICAJCWlmIChsaXN0X2VtcHR5KCZkbWFfZGV2aWNlX2xpc3QpKQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2RtYS9vZi1kbWEuYyBiL2RyaXZlcnMvZG1hL29mLWRtYS5jCj4gaW5kZXggOTFmZDM5NS4u
NmI0M2QwNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2RtYS9vZi1kbWEuYwo+ICsrKyBiL2RyaXZl
cnMvZG1hL29mLWRtYS5jCj4gQEAgLTMxNiw4ICszMTYsOCBAQCBzdHJ1Y3QgZG1hX2NoYW4gKm9m
X2RtYV9zaW1wbGVfeGxhdGUoc3RydWN0IG9mX3BoYW5kbGVfYXJncyAqZG1hX3NwZWMsCj4gIAlp
ZiAoY291bnQgIT0gMSkKPiAgCQlyZXR1cm4gTlVMTDsKPiAgCj4gLQlyZXR1cm4gZG1hX3JlcXVl
c3RfY2hhbm5lbChpbmZvLT5kbWFfY2FwLCBpbmZvLT5maWx0ZXJfZm4sCj4gLQkJCSZkbWFfc3Bl
Yy0+YXJnc1swXSk7Cj4gKwlyZXR1cm4gX19kbWFfcmVxdWVzdF9jaGFubmVsKCZpbmZvLT5kbWFf
Y2FwLCBpbmZvLT5maWx0ZXJfZm4sCj4gKwkJCQkgICAgICZkbWFfc3BlYy0+YXJnc1swXSwgZG1h
X3NwZWMtPm5wKTsKPiAgfQo+ICBFWFBPUlRfU1lNQk9MX0dQTChvZl9kbWFfc2ltcGxlX3hsYXRl
KTsKPiAgCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hZW5naW5lLmggYi9pbmNsdWRl
L2xpbnV4L2RtYWVuZ2luZS5oCj4gaW5kZXggZDQ5ZWM1Yy4uNTA0MDg1YiAxMDA2NDQKPiAtLS0g
YS9pbmNsdWRlL2xpbnV4L2RtYWVuZ2luZS5oCj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWFlbmdp
bmUuaAo+IEBAIC0xMzE0LDcgKzEzMTQsOCBAQCBzdGF0aWMgaW5saW5lIGVudW0gZG1hX3N0YXR1
cyBkbWFfYXN5bmNfaXNfY29tcGxldGUoZG1hX2Nvb2tpZV90IGNvb2tpZSwKPiAgZW51bSBkbWFf
c3RhdHVzIGRtYV93YWl0X2Zvcl9hc3luY190eChzdHJ1Y3QgZG1hX2FzeW5jX3R4X2Rlc2NyaXB0
b3IgKnR4KTsKPiAgdm9pZCBkbWFfaXNzdWVfcGVuZGluZ19hbGwodm9pZCk7Cj4gIHN0cnVjdCBk
bWFfY2hhbiAqX19kbWFfcmVxdWVzdF9jaGFubmVsKGNvbnN0IGRtYV9jYXBfbWFza190ICptYXNr
LAo+IC0JCQkJCWRtYV9maWx0ZXJfZm4gZm4sIHZvaWQgKmZuX3BhcmFtKTsKPiArCQkJCSAgICAg
ICBkbWFfZmlsdGVyX2ZuIGZuLCB2b2lkICpmbl9wYXJhbSwKPiArCQkJCSAgICAgICBzdHJ1Y3Qg
ZGV2aWNlX25vZGUgKm5wKTsKPiAgc3RydWN0IGRtYV9jaGFuICpkbWFfcmVxdWVzdF9zbGF2ZV9j
aGFubmVsKHN0cnVjdCBkZXZpY2UgKmRldiwgY29uc3QgY2hhciAqbmFtZSk7Cj4gIAo+ICBzdHJ1
Y3QgZG1hX2NoYW4gKmRtYV9yZXF1ZXN0X2NoYW4oc3RydWN0IGRldmljZSAqZGV2LCBjb25zdCBj
aGFyICpuYW1lKTsKPiBAQCAtMTMzOSw3ICsxMzQwLDkgQEAgc3RhdGljIGlubGluZSB2b2lkIGRt
YV9pc3N1ZV9wZW5kaW5nX2FsbCh2b2lkKQo+ICB7Cj4gIH0KPiAgc3RhdGljIGlubGluZSBzdHJ1
Y3QgZG1hX2NoYW4gKl9fZG1hX3JlcXVlc3RfY2hhbm5lbChjb25zdCBkbWFfY2FwX21hc2tfdCAq
bWFzaywKPiAtCQkJCQkgICAgICBkbWFfZmlsdGVyX2ZuIGZuLCB2b2lkICpmbl9wYXJhbSkKPiAr
CQkJCQkJICAgICBkbWFfZmlsdGVyX2ZuIGZuLAo+ICsJCQkJCQkgICAgIHZvaWQgKmZuX3BhcmFt
LAo+ICsJCQkJCQkgICAgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApCj4gIHsKPiAgCXJldHVybiBO
VUxMOwo+ICB9Cj4gQEAgLTE0MTEsNyArMTQxNCw4IEBAIHN0YXRpYyBpbmxpbmUgaW50IGRtYWVu
Z2luZV9kZXNjX2ZyZWUoc3RydWN0IGRtYV9hc3luY190eF9kZXNjcmlwdG9yICpkZXNjKQo+ICB2
b2lkIGRtYV9ydW5fZGVwZW5kZW5jaWVzKHN0cnVjdCBkbWFfYXN5bmNfdHhfZGVzY3JpcHRvciAq
dHgpOwo+ICBzdHJ1Y3QgZG1hX2NoYW4gKmRtYV9nZXRfc2xhdmVfY2hhbm5lbChzdHJ1Y3QgZG1h
X2NoYW4gKmNoYW4pOwo+ICBzdHJ1Y3QgZG1hX2NoYW4gKmRtYV9nZXRfYW55X3NsYXZlX2NoYW5u
ZWwoc3RydWN0IGRtYV9kZXZpY2UgKmRldmljZSk7Cj4gLSNkZWZpbmUgZG1hX3JlcXVlc3RfY2hh
bm5lbChtYXNrLCB4LCB5KSBfX2RtYV9yZXF1ZXN0X2NoYW5uZWwoJihtYXNrKSwgeCwgeSkKPiAr
I2RlZmluZSBkbWFfcmVxdWVzdF9jaGFubmVsKG1hc2ssIHgsIHkpIFwKPiArCV9fZG1hX3JlcXVl
c3RfY2hhbm5lbCgmKG1hc2spLCB4LCB5LCBOVUxMKQo+ICAjZGVmaW5lIGRtYV9yZXF1ZXN0X3Ns
YXZlX2NoYW5uZWxfY29tcGF0KG1hc2ssIHgsIHksIGRldiwgbmFtZSkgXAo+ICAJX19kbWFfcmVx
dWVzdF9zbGF2ZV9jaGFubmVsX2NvbXBhdCgmKG1hc2spLCB4LCB5LCBkZXYsIG5hbWUpCj4gIAo+
IEBAIC0xNDI5LDYgKzE0MzMsNiBAQCBzdGF0aWMgaW5saW5lIGludCBkbWFlbmdpbmVfZGVzY19m
cmVlKHN0cnVjdCBkbWFfYXN5bmNfdHhfZGVzY3JpcHRvciAqZGVzYykKPiAgCWlmICghZm4gfHwg
IWZuX3BhcmFtKQo+ICAJCXJldHVybiBOVUxMOwo+ICAKPiAtCXJldHVybiBfX2RtYV9yZXF1ZXN0
X2NoYW5uZWwobWFzaywgZm4sIGZuX3BhcmFtKTsKPiArCXJldHVybiBfX2RtYV9yZXF1ZXN0X2No
YW5uZWwobWFzaywgZm4sIGZuX3BhcmFtLCBOVUxMKTsKPiAgfQo+ICAjZW5kaWYgLyogRE1BRU5H
SU5FX0ggKi8KPiAKCi0gUMOpdGVyCgpUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jr
a2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4KWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1
MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
