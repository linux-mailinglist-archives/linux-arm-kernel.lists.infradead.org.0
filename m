Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E60EC5DA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 16:47:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IOay/mITpCL4w0af6l8QB5gcZ2t7mRUdWL8N8uCJxRM=; b=s+uVD8bsk3q5fs89SI35mecsx
	goXT/hbMSEyOV/VsjwdbQb/a0KG+Ty8bkkU8iOR3XZJYUgW6fBkXwTxKX4ShHHkCcVJCZKyxRYMv/
	m95P0Kx79cIH4d6xxGeJ4UShx5/JOk/PRyO760F0vOpsvakTCp+0gHSRPImSrIC8IrJt9KqfgpnfK
	cTmCjxrnjx8hN0OTiiUPipORDonL2FY9oU5TFMHYC/CavkvF+BgOoqdkpn+ahpyPtFbDiG6tCVVCd
	qxFtVaqvg/u01DLxQqFiXw/tDse2ZWR8r//wbvDtmSnvYTrlaljc06UwzJoJB4ONlAXo/PkSZX/j7
	++c/m3PVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZ9A-0002oP-LS; Fri, 01 Nov 2019 15:47:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZ91-0002mf-Lm
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 15:47:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9391C31F;
 Fri,  1 Nov 2019 08:47:19 -0700 (PDT)
Received: from [172.20.38.5] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0FD033F719;
 Fri,  1 Nov 2019 08:47:17 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
References: <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
 <20190807115614.phm7sbyae6yajkug@flea>
 <CA+E=qVdh3MHMsEC9XKe5-7O8fGTHFh76WLOgVf+PZPv7c4JE9w@mail.gmail.com>
 <20190808162628.pthvy3tgf3naj76s@flea>
 <CA+E=qVeiWoRGn05HpMzx_5yidit4GM18tBrziW5MBo00f_-PKQ@mail.gmail.com>
 <20190812080420.saelmqb36vkelxn4@flea>
 <CA+E=qVchsqOF_hVD-qBuKwi7PTMYtUR-LE2dD_mpptFJcWE_yw@mail.gmail.com>
 <20190813053905.hu2hyi7fah2vujzz@flea>
 <CA+E=qVegU8M09tmbxGUaBSoueGU6PRsAtr9XWrc8V8HnCPjULg@mail.gmail.com>
 <CA+E=qVeArUV0u_17ty=HgaU35TwcBfQjSOJf0A5yM6L6+W-0Og@mail.gmail.com>
 <20190925110844.qfm5ris7xeze44th@gilmour>
 <CAJiuCcfcmkb_BgDcDJziUwoZXAgLN4Bh0GGZKR3NVNRpnFhBEQ@mail.gmail.com>
 <CA+E=qVeopby6zn1PBsOGb0JjA6-viTN_iXxRnWF6+NGtbZ_BtQ@mail.gmail.com>
 <CAJiuCcdZfbO+s2L-PcKA4PEm8B8=niYMO1w1nLVQ9hzq6Fjv=A@mail.gmail.com>
Message-ID: <2e3e8dae-6678-6ca3-ca05-5acb691d5c0e@foss.arm.com>
Date: Fri, 1 Nov 2019 15:47:11 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAJiuCcdZfbO+s2L-PcKA4PEm8B8=niYMO1w1nLVQ9hzq6Fjv=A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_084723_797794_A7CEF73F 
X-CRM114-Status: GOOD (  29.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 "Jared D . McNeill" <jmcneill@netbsd.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Harald Geyer <harald@ccbib.org>, Robin Murphy <robin.murphy@arm.com>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTEvMS8xOSAxMTozMCBBTSwgQ2zDqW1lbnQgUMOpcm9uIHdyb3RlOgoKSGksCgo+IE9uIFRo
dSwgMzEgT2N0IDIwMTkgYXQgMjE6MzUsIFZhc2lseSBLaG9ydXpoaWNrIDxhbmFyc291bEBnbWFp
bC5jb20+IHdyb3RlOgo+Pgo+PiBPbiBUaHUsIE9jdCAzMSwgMjAxOSBhdCAxMjoxMCBQTSBDbMOp
bWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPiB3cm90ZToKPj4+Cj4+PiBIaSwKPj4+
Cj4+PiBKdXN0IGEgcmVtYXJrIGhlcmUgYnV0IHRoZSBpbnRlcnJ1cHQgYXJlIGZyb20gMTUyIHRv
IDE1NSBTUEkuCj4+PiBCdXQgdGhlcmUgaXMgYW4gb2Zmc2V0IG9mIDMyIG5vIChyZW1vdmUgU0dJ
L1BQSSk/Cj4+PiBUaGlzIHNob3VsZCBiZSBmcm9tIDEyMCB0byAxMjMKPj4KPj4gSSBhbHJlYWR5
IHRyaWVkIGl0IChhbmQgSSBiZWxpZXZlIHNvbWVvbmUgYWxyZWFkeSBzdWdnZXN0ZWQgaXQgYWJv
dmUpLAo+PiBpdCBkb2Vzbid0IGZpeCBQTVUgaW50ZXJydXB0cyB0aG91Z2guCj4gCj4gT2sgdGhh
bmtzIGZvciB0aGUgY29uZmlybWF0aW9uLgo+IAo+IE1hZGUgYSByZXNlYXJjaCBhYm91dCB0aGUg
UE1VIGZvciBBNjQgYW5kIGZvdW5kIHRoYXQgQW5kcmUgUHJ6eXdhcmEKPiBtYWRlIGEgcGF0Y2gg
dG8gZW5hYmxlIGl0Ogo+IGh0dHBzOi8vZ2lzdC5naXRodWIuY29tL2Fwcml0emVsL2QwMjVhYmFh
MTQyNWZjYWY1OTkxYjVmZmNmMThhMGEzCj4gCj4gTWF5YmUgaGUgY2FuIGNvbmZpcm0gb3Igbm90
IHRoZSBpc3N1ZSBvbiBBNjQgPwoKV2VsbCwgSSB0cmllZCBpdCBiYWNrIHRoZW4sIGJ1dCBjb3Vs
ZG4ndCBtYWtlIHRoZSBpbnRlcnJ1cHRzIHdvcmsgKGFuZCAKeWVzLCBJIHRyaWVkICsvLSAzMiku
IFRoYXQncyB0aGUgcmVhc29uIEkgZGlkbid0IHNlbmQgaXQgYmFjayB0aGVuLgoKSSBjYW4ndCBz
YXkgd2hldGhlciB0aGUgSVJRIGxpbmVzIGFyZSBub3Qgd2lyZWQgb3IgdGhlIG1hbnVhbCBqdXN0
IGdpdmVzIAp0aGUgd3JvbmcgbnVtYmVycy4gSSBkb24ndCBoYXZlIGFjY2VzcyB0byBhIGJvYXJk
IGJlZm9yZSBTdW5kYXksIGJ1dCBpZiAKc29tZW9uZSB3YW50cyB0byBiZWF0IG1lIHRvIGl0Ogot
IEhhY2sgVS1Cb290IHRvIGFkZCBhIGNvbW1hbmQgdG8gcHJvZ3JhbSBvbmUgUE1VIGNvdW50ZXIg
dG8gZXhwaXJlIApxdWlja2x5LCBhbmQgZW5hYmxlIG92ZXJmbG93IGludGVycnVwdHMuCi0gRW5h
YmxlICphbGwqIFNQSXMgb24gdGhlIEdJQyBkaXN0cmlidXRvciBsZXZlbCwgYW5kIGVuYWJsZSB0
aGUgCmRpc3RyaWJ1dG9yLiBLZWVwIHRoZSBHSUMgQ1BVIGludGVyZmFjZSBkaXNhYmxlZC4KLSBU
cmlnZ2VyIHRoZSBVLUJvb3QgY29tbWFuZCwgYW5kIGluc3BlY3QgdGhlIEdJQ0RfSVNQRU5EUiBy
ZWdpc3RlcnMgdG8gCnNlZSBpZiBhbnkgU1BJIGZpcmVkLgotIEFsc28gZG91YmxlIGNoZWNrIHRo
ZSBQTVUgb3ZlcmZsb3cgc3RhdHVzIHJlZ2lzdGVyIHRvIHZlcmlmeSB0aGF0IHRoZSAKZXZlbnQg
dHJpZ2dlcmVkLgoKQ2hlZXJzLApBbmRyZS4KCj4gCj4gUmVnYXJkcywKPiBDbMOpbWVudAo+IAo+
Pgo+Pj4gUmVnYXJkcywKPj4+IENsw6ltZW50Cj4+Pgo+Pj4gT24gV2VkLCAyNSBTZXAgMjAxOSBh
dCAxMzowOSwgTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPiB3cm90ZToKPj4+Pgo+
Pj4+IE9uIE1vbiwgU2VwIDIzLCAyMDE5IGF0IDA0OjU1OjU5UE0gLTA3MDAsIFZhc2lseSBLaG9y
dXpoaWNrIHdyb3RlOgo+Pj4+PiBPbiBNb24sIFNlcCAyMywgMjAxOSBhdCA0OjUxIFBNIFZhc2ls
eSBLaG9ydXpoaWNrIDxhbmFyc291bEBnbWFpbC5jb20+IHdyb3RlOgo+Pj4+Pj4KPj4+Pj4+IE9u
IE1vbiwgQXVnIDEyLCAyMDE5IGF0IDEwOjM5IFBNIE1heGltZSBSaXBhcmQKPj4+Pj4+IDxtYXhp
bWUucmlwYXJkQGJvb3RsaW4uY29tPiB3cm90ZToKPj4+Pj4+Pgo+Pj4+Pj4+IE9uIE1vbiwgQXVn
IDEyLCAyMDE5IGF0IDExOjAxOjUxQU0gLTA3MDAsIFZhc2lseSBLaG9ydXpoaWNrIHdyb3RlOgo+
Pj4+Pj4+PiBPbiBNb24sIEF1ZyAxMiwgMjAxOSBhdCAxOjA0IEFNIE1heGltZSBSaXBhcmQgPG1h
eGltZS5yaXBhcmRAYm9vdGxpbi5jb20+IHdyb3RlOgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IE9uIFRo
dSwgQXVnIDA4LCAyMDE5IGF0IDEyOjU5OjA3UE0gLTA3MDAsIFZhc2lseSBLaG9ydXpoaWNrIHdy
b3RlOgo+Pj4+Pj4+Pj4+IE9uIFRodSwgQXVnIDgsIDIwMTkgYXQgOToyNiBBTSBNYXhpbWUgUmlw
YXJkIDxtYXhpbWUucmlwYXJkQGJvb3RsaW4uY29tPiB3cm90ZToKPj4+Pj4+Pj4+Pj4KPj4+Pj4+
Pj4+Pj4gT24gV2VkLCBBdWcgMDcsIDIwMTkgYXQgMTA6MzY6MDhBTSAtMDcwMCwgVmFzaWx5IEto
b3J1emhpY2sgd3JvdGU6Cj4+Pj4+Pj4+Pj4+PiBPbiBXZWQsIEF1ZyA3LCAyMDE5IGF0IDQ6NTYg
QU0gTWF4aW1lIFJpcGFyZCA8bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4+Pj4+
Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+PiBPbiBUdWUsIEF1ZyAwNiwgMjAxOSBhdCAwNzozOToyNlBN
IC0wNzAwLCBWYXNpbHkgS2hvcnV6aGljayB3cm90ZToKPj4+Pj4+Pj4+Pj4+Pj4gT24gVHVlLCBB
dWcgNiwgMjAxOSBhdCAyOjE0IFBNIFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5jb20+
IHdyb3RlOgo+Pj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+IE9uIDIwMTktMDgtMDYgOTo1
MiBwbSwgVmFzaWx5IEtob3J1emhpY2sgd3JvdGU6Cj4+Pj4+Pj4+Pj4+Pj4+Pj4gT24gVHVlLCBB
dWcgNiwgMjAxOSBhdCAxOjE5IFBNIEhhcmFsZCBHZXllciA8aGFyYWxkQGNjYmliLm9yZz4gd3Jv
dGU6Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IFZhc2lseSBLaG9ydXpoaWNr
IHdyaXRlczoKPj4+Pj4+Pj4+Pj4+Pj4+Pj4+IE9uIFR1ZSwgQXVnIDYsIDIwMTkgYXQgNzozNSBB
TSBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBoeUBhcm0uY29tPiB3cm90ZToKPj4+Pj4+Pj4+Pj4+
Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IE9uIDA2LzA4LzIwMTkgMTU6MDEsIFZhc2lseSBL
aG9ydXpoaWNrIHdyb3RlOgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+PiBMb29rcyBsaWtlIFBNVSBpbiBB
NjQgaXMgYnJva2VuLCBpdCBnZW5lcmF0ZXMgbm8gaW50ZXJydXB0cyBhdCBhbGwgYW5kCj4+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+IGFzIHJlc3VsdCAncGVyZiB0b3AnIHNob3dzIG5vIGV2ZW50cy4KPj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+Pj4+Pj4+IERvZXMgc29tZXRoaW5nIGxpa2Ug
J3BlcmYgc3RhdCBzbGVlcCAxJyBhdCBsZWFzdCBjb3VudCBjeWNsZXMgY29ycmVjdGx5Pwo+Pj4+
Pj4+Pj4+Pj4+Pj4+Pj4+IEl0IGNvdWxkIHdlbGwganVzdCBiZSB0aGF0IHRoZSBpbnRlcnJ1cHQg
bnVtYmVycyBhcmUgd3JvbmcuLi4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+
PiBMb29rcyBsaWtlIGl0IGRvZXMsIGF0IGxlYXN0IHJlc3VsdCBsb29rcyBwbGF1c2libGU6Cj4+
Pj4+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEknbSB1c2luZyBwZXJmIHN0YXQgcmVn
dWxhcmx5IChjYWNoZSBiZW5jaG1hcmtzKSBhbmQgaXQgd29ya3MgZmluZS4KPj4+Pj4+Pj4+Pj4+
Pj4+Pj4KPj4+Pj4+Pj4+Pj4+Pj4+Pj4gVW5mb3J0dW5hdGVseSBJIHdhc24ndCBhd2FyZSB0aGF0
IHBlcmYgc3RhdCBpcyBhIHBvb3IgdGVzdCBmb3IKPj4+Pj4+Pj4+Pj4+Pj4+Pj4gdGhlIGludGVy
cnVwdHMgcGFydCBvZiB0aGUgbm9kZSwgd2hlbiBJIGFkZGVkIGl0LiBTbyBJJ20gbm90IHRvbwo+
Pj4+Pj4+Pj4+Pj4+Pj4+PiBzdXJwcmlzZWQgSSBnb3QgaXQgd3JvbmcuCj4+Pj4+Pj4+Pj4+Pj4+
Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+Pj4+IEhvd2V2ZXIsIGl0IHdvdWxkIGJlIHVuZm9ydHVuYXRlIGlm
IHRoZSBub2RlIGdvdCByZW1vdmVkIGNvbXBsZXRlbHksCj4+Pj4+Pj4+Pj4+Pj4+Pj4+IGJlY2F1
c2UgcGVyZiBzdGF0IHdvdWxkIG5vdCB3b3JrIGFueW1vcmUuIE1heWJlIHdlIGNhbiBvbmx5IHJl
bW92ZQo+Pj4+Pj4+Pj4+Pj4+Pj4+PiB0aGUgaW50ZXJydXB0cyBvciBqdXN0IGZpeCB0aGVtIGV2
ZW4gaWYgdGhlIEhXIGRvZXNuJ3Qgd29yaz8KPj4+Pj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+
Pj4+IEknbSBub3QgZmFtaWxpYXIgd2l0aCBQTVUgZHJpdmVyLiBJcyBpdCBwb3NzaWJsZSB0byBn
ZXQgaXQgd29ya2luZwo+Pj4+Pj4+Pj4+Pj4+Pj4+IHdpdGhvdXQgaW50ZXJydXB0cz8KPj4+Pj4+
Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4+PiBZdXAgLSB5b3UgZ2V0IGEgZ3J1bXB5IG1lc3NhZ2Ug
ZnJvbSB0aGUgZHJpdmVyLCBpdCB3aWxsIHJlZnVzZSBzYW1wbGluZwo+Pj4+Pj4+Pj4+Pj4+Pj4g
ZXZlbnRzICh0aGUgb25lcyB3aGljaCB3ZXJlbid0IHdvcmtpbmcgYW55d2F5KSwgYW5kIGlmIHlv
dSBtZWFzdXJlCj4+Pj4+Pj4+Pj4+Pj4+PiBhbnl0aGluZyBmb3IgbG9uZyBlbm91Z2ggdGhhdCBh
IGNvdW50ZXIgb3ZlcmZsb3dzIHlvdSdsbCBnZXQgd29ua3kKPj4+Pj4+Pj4+Pj4+Pj4+IHJlc3Vs
dHMuIEJ1dCBmb3IgY291bnRpbmcgaGFyZHdhcmUgZXZlbnRzIG92ZXIgcmVsYXRpdmVseSBzaG9y
dCBwZXJpb2RzCj4+Pj4+Pj4+Pj4+Pj4+PiBpdCdsbCBzdGlsbCBkbyB0aGUgam9iLgo+Pj4+Pj4+
Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+PiBJIHRyaWVkIHRvIGRyb3AgaW50ZXJydXB0cyBjb21wbGV0
ZWx5IGZyb20gdGhlIG5vZGUgYnV0ICdwZXJmIHRvcCcgaXMKPj4+Pj4+Pj4+Pj4+Pj4gc3RpbGwg
YnJva2VuLiBUaG91Z2ggbm93IGluIGRpZmZlcmVudCB3YXk6IGl0IGNvbXBsYWlucyAiY3ljbGVz
OiBQTVUKPj4+Pj4+Pj4+Pj4+Pj4gSGFyZHdhcmUgZG9lc24ndCBzdXBwb3J0IHNhbXBsaW5nL292
ZXJmbG93LWludGVycnVwdHMuIFRyeSAncGVyZgo+Pj4+Pj4+Pj4+Pj4+PiBzdGF0JyIKPj4+Pj4+
Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4+IEkgaGF2ZSBubyBpZGVhIGlmIHRoYXQncyB0aGUgY3VscHJp
dCwgYnV0IHdoYXQgaXMgdGhlIHN0YXRlIG9mIHRoZQo+Pj4+Pj4+Pj4+Pj4+IDB4MDkwMTAwMDAg
cmVnaXN0ZXI/Cj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4gV2hhdCByZWdpc3RlciBpcyB0aGF0
IGFuZCBob3cgZG8gSSBjaGVjayBpdD8KPj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4gSXQncyBpbiB0
aGUgQ1BVWCBDb25maWd1cmF0aW9uIGJsb2NrLCBhbmQgdGhlIGJpdHMgYXJlIGxhYmVsbGVkIGFz
IENQVQo+Pj4+Pj4+Pj4+PiBEZWJ1ZyBSZXNldC4KPj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4gQW5k
IGlmIHlvdSBoYXZlIGJ1c3lib3gsIHlvdSBjYW4gdXNlIGRldm1lbS4KPj4+Pj4+Pj4+Pgo+Pj4+
Pj4+Pj4+IENQVVggY29uZmlndXJhdGlvbiBibG9jayBpcyBhdCAweDAxNzAwMDAwIGFjY29yZGlu
ZyB0byBBNjQgdXNlcgo+Pj4+Pj4+Pj4+IG1hbnVhbCwgYW5kIHBhcnRpY3VsYXIgcmVnaXN0ZXIg
eW91J3JlIGludGVyZXN0ZWQgaW4gaXMgYXQgMHgwMTcwMDA4MCwKPj4+Pj4+Pj4+PiBpdHMgdmFs
dWUgaXMgMHgxMTEwMTEwRi4KPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IEJpdHMgMTYtMTkgYXJlIG5v
dCBkZWZpbmVkIGluIHVzZXIgbWFudWFsIGFuZCBhcmUgbm90IHNldC4KPj4+Pj4+Pj4+Cj4+Pj4+
Pj4+PiBTb3JyeSwgSSBzb21laG93IHRob3VnaHQgdGhpcyB3YXMgZm9yIHRoZSBINi4uLgo+Pj4+
Pj4+Pj4KPj4+Pj4+Pj4+IEkgZG9uJ3QgaGF2ZSBhbnkgaWRlYSB0aGVuIDovCj4+Pj4+Pj4+Cj4+
Pj4+Pj4+IE9LLCBzbyB3aGF0IHNob3VsZCB3ZSBkbz8gJ3BlcmYgdG9wJy8ncGVyZiByZWNvcmQn
IHdvcmsgZmluZSBpZiBQTVUKPj4+Pj4+Pj4gbm9kZSBpcyBkcm9wcGVkLCBidXQgdGhleSBkb24n
dCB3b3JrIGlmIFBNVSBub2RlIGlzIHByZXNlbnQgKGV2ZW4gd2l0aAo+Pj4+Pj4+PiBpbnRlcnJ1
cHRzIGRyb3BwZWQpLiBJJ2QgcHJlZmVyIHRvIGhhdmUgJ3BlcmYgdG9wJyBhbmQgJ3BlcmYgcmVj
b3JkJwo+Pj4+Pj4+PiB3b3JraW5nIGluc3RlYWQgb2YgJ3BlcmYgc3RhdCcKPj4+Pj4+Pgo+Pj4+
Pj4+IFdlbGwsIGl0IGRvZXNuJ3Qgd29yayBzbyB3ZSBzaG91bGQganVzdCByZW1vdmUgdGhlIG5v
ZGUsIGFuZCBpZgo+Pj4+Pj4+IHNvbWVvbmUgd2FudHMgaXQgYmFjaywgdGhleSBzaG91bGQgZmln
dXJlIGl0IG91dC4KPj4+Pj4+Cj4+Pj4+PiBIZXkgTWF4aW1lLAo+Pj4+Pj4KPj4+Pj4+IFNvIGNh
biB5b3UgbWVyZ2UgdGhpcyBwYXRjaD8KPj4+Pj4KPj4+Pj4gQWRkZWQgbmV3IE1heGltZSdzIGVt
YWlsIHRvIENDCj4+Pj4KPj4+PiBRdWV1ZWQgYXMgYSBmaXggZm9yIDUuNCwgdGhhbmtzIQo+Pj4+
IE1heGltZQo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4+Pj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPj4+PiBsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
