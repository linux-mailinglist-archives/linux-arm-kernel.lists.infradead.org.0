Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 490C894FE2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 23:29:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ajV5Ak4ys0sy/AOGpn070VTuDriV3DdKOKxzmnHFSg=; b=nWPTBnCG1f2hnL
	MKRe9yLqeZSbPcXvxu3P2K/GlIRR+0qgxOJyLmhhz3Lrh+7lk91F2P83M6l/M22PNsIM2hwulVvlN
	aYtAzbUx2i4MMF/BMdRtkYEnPPfj8GRWyj1zOTBozGPkXmcfBmwTHnrQxF/XOkhB/fZj3JdlKrlBW
	ySZ2Kbpkxxq1FEo0/cwhu1sqsteqOFPeCbiDZkWeRYuRWXR23If7IgyM8B9azlR3uanfNhSu+U3Kq
	rb/XX/imD8Tf1JCL1/UscQ0MKP9etvRgAA42Z4UTc0qO5qvGahCJnH0xq5ps0TCWDxZLLhq/mbxPL
	SYcFGQrFeLXAr0u4y02g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzpD7-0000r9-PZ; Mon, 19 Aug 2019 21:29:05 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzpCP-0000qn-OA
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 21:28:23 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7JLSHOH059039;
 Mon, 19 Aug 2019 16:28:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566250097;
 bh=R3CvKhP4vQcqtfj3+dD7nsaUpdCV96/Wikeo+l/e9ws=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=uFH95b4N2VRdDSL7vwHs1MePP6TEAL4awQvQmeXeicuTPRHcqvC0ppxDQmNshXQil
 JFpa/rB9GoELhr+u7P0YEDgKbf95UodNIgb8sc0UyzD/7lAFdOLOlQfRoIie5FCxe7
 f7oOLEXWXvcmO9IcCdn+Kh4TWdcqiPCeccTS/VjM=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7JLSGjC052868
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 19 Aug 2019 16:28:17 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 19
 Aug 2019 16:28:16 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 19 Aug 2019 16:28:16 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7JLSGgL033121;
 Mon, 19 Aug 2019 16:28:16 -0500
Subject: Re: [PATCH 1/8] dt-bindings: omap: add new binding for PRM instances
To: Tero Kristo <t-kristo@ti.com>, Keerthy <j-keerthy@ti.com>,
 <ssantosh@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-omap@vger.kernel.org>, <robh+dt@kernel.org>
References: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
 <1565164139-21886-2-git-send-email-t-kristo@ti.com>
 <6bf4194b-23c0-2de0-3f9c-e99195336dc7@ti.com>
 <aa5538ae-76b4-942b-dc98-6e55628cf36a@ti.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <b6506850-f4fc-43be-b5b7-b83cd77b5d66@ti.com>
Date: Mon, 19 Aug 2019 16:28:16 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <aa5538ae-76b4-942b-dc98-6e55628cf36a@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_142821_932612_818AFD78 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: tony@atomide.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVGVybywKCk9uIDgvMTkvMTkgNDoyOCBBTSwgVGVybyBLcmlzdG8gd3JvdGU6Cj4gT24gMDgv
MDgvMjAxOSAwNzozNSwgS2VlcnRoeSB3cm90ZToKPj4KPj4KPj4gT24gMDcvMDgvMTkgMToxOCBQ
TSwgVGVybyBLcmlzdG8gd3JvdGU6Cj4+PiBBZGQgbmV3IGJpbmRpbmcgZm9yIE9NQVAgUFJNIChQ
b3dlciBhbmQgUmVzZXQgTWFuYWdlcikgaW5zdGFuY2VzLiBFYWNoCj4+PiBvZiB0aGVzZSB3aWxs
IGFjdCBhcyBhIHBvd2VyIGRvbWFpbiBjb250cm9sbGVyIGFuZCBwb3RlbnRpYWxseSBhcyBhCj4+
PiByZXNldAo+Pj4gcHJvdmlkZXIuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogVGVybyBLcmlzdG8g
PHQta3Jpc3RvQHRpLmNvbT4KPj4+IC0tLQo+Pj4gwqAgLi4uL2RldmljZXRyZWUvYmluZGluZ3Mv
YXJtL29tYXAvcHJtLWluc3QudHh0wqDCoMKgwqDCoCB8IDI0Cj4+PiArKysrKysrKysrKysrKysr
KysrKysrCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKQo+Pj4gwqAgY3Jl
YXRlIG1vZGUgMTAwNjQ0Cj4+PiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJt
L29tYXAvcHJtLWluc3QudHh0Cj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9hcm0vb21hcC9wcm0taW5zdC50eHQKPj4+IGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9vbWFwL3BybS1pbnN0LnR4dAo+Pj4gbmV3IGZpbGUg
bW9kZSAxMDA2NDQKPj4+IGluZGV4IDAwMDAwMDAuLmUwYWU4N2IKPj4+IC0tLSAvZGV2L251bGwK
Pj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vb21hcC9wcm0t
aW5zdC50eHQKPj4+IEBAIC0wLDAgKzEsMjQgQEAKPj4+ICtPTUFQIFBSTSBpbnN0YW5jZSBiaW5k
aW5ncwo+Pj4gKwo+Pj4gK1Bvd2VyIGFuZCBSZXNldCBNYW5hZ2VyIGlzIGFuIElQIGJsb2NrIG9u
IE9NQVAgZmFtaWx5IG9mIGRldmljZXMgd2hpY2gKPj4+ICtoYW5kbGUgdGhlIHBvd2VyIGRvbWFp
bnMgYW5kIHRoZWlyIGN1cnJlbnQgc3RhdGUsIGFuZCBwcm92aWRlIHJlc2V0Cj4+PiAraGFuZGxp
bmcgZm9yIHRoZSBkb21haW5zIGFuZC9vciBzZXBhcmF0ZSBJUCBibG9ja3MgdW5kZXIgdGhlIHBv
d2VyCj4+PiBkb21haW4KPj4+ICtoaWVyYXJjaHkuCgpTbywgSSBzZWUgdGhhdCB5b3UgYXJlIGFk
ZGluZyB0aGVzZSBhcyBmbGF0IG5vZGVzIGRpcmVjdGx5IHVuZGVyIHRoZSBwcm0Kbm9kZXMgd2hl
cmUgd2UgaGF2ZSB0aGUgY2xvY2tzIGFuZCBjbG9ja19kb21haW5zLiBBcmUgeW91IGFudGljaXBh
dGluZyBhCnNpbmdsZSBEVCBub2RlIGFuZC9vciBkcml2ZXIgbWFuYWdpbmcgYm90aCBwb3dlci1k
b21haW5zIGFuZCByZXNldHM/Cgo+Pj4gKwo+Pj4gK1JlcXVpcmVkIHByb3BlcnRpZXM6Cj4+PiAr
LSBjb21wYXRpYmxlOsKgwqDCoCBNdXN0IGJlIG9uZSBvZjoKPj4+ICvCoMKgwqDCoMKgwqDCoCAi
dGksYW0zLXBybS1pbnN0Igo+Pj4gK8KgwqDCoMKgwqDCoMKgICJ0aSxhbTQtcHJtLWluc3QiCj4+
PiArwqDCoMKgwqDCoMKgwqAgInRpLG9tYXA0LXBybS1pbnN0Igo+Pj4gK8KgwqDCoMKgwqDCoMKg
ICJ0aSxvbWFwNS1wcm0taW5zdCIKPj4+ICvCoMKgwqDCoMKgwqDCoCAidGksZHJhNy1wcm0taW5z
dCIKCldoYXQgYWJvdXQgT01BUDIsIE9NQVAzLCBETTgxNHgsIERNODE2eD8KCnJlZ2FyZHMKU3Vt
YW4KCj4+PiArLSByZWc6wqDCoMKgwqDCoMKgwqAgQ29udGFpbnMgUFJNIGluc3RhbmNlIHJlZ2lz
dGVyIGFkZHJlc3MgcmFuZ2UKPj4+ICvCoMKgwqDCoMKgwqDCoCAoYmFzZSBhZGRyZXNzIGFuZCBs
ZW5ndGgpCj4+Cj4+IEhvdyBhYm91dCByZXNldC1jZWxscyBwcm9wZXJ0eSwgSXNuJ3QgdGhhdCBh
IG1hbmRhdG9yeSBwcm9wZXJ0eT8KPiAKPiBJdCBpcyBvcHRpb25hbCwgYnV0IHlvdSBhcmUgcmln
aHQsIHNob3VsZCBiZSBhZGRlZCB0byB0aGlzLgo+IAo+IC1UZXJvCj4gCj4+Cj4+PiArCj4+PiAr
RXhhbXBsZToKPj4+ICsKPj4+ICtwcm1fZHNwMjogcHJtQDFiMDAgewo+Pj4gK8KgwqDCoCBjb21w
YXRpYmxlID0gInRpLGRyYTctcHJtLWluc3QiOwo+Pj4gK8KgwqDCoCByZWcgPSA8MHgxYjAwIDB4
NDA+Owo+Pj4gK8KgwqDCoCAjcmVzZXQtY2VsbHMgPSA8MT47Cj4+PiArfTsKPj4+Cj4gCj4gLS0g
Cj4gVGV4YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAg
SGVsc2lua2kuCj4gWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9E
b21pY2lsZTogSGVsc2lua2kKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
