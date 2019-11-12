Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D134AF8999
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 08:22:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qcm+fAZm92pppJ5PjuTj9HY7VUljVUR4IMgvtqxiF64=; b=nAMCz3IW6WuQgD
	CyhLCTN4a3+h7DZ7RKUtVzuxke6Lnq1Z8vqaypABIroROPg/jM+HfPVaKk096dNg0voyCK4D5kYlJ
	VyqZT+syNAK2Z+O/iWpppte3OJb7fdsGfF62h9agDtfgA264N9BBNFNlzNWhDnx9D/TtVK2NU+T4X
	buTDxGILWR5OOCtl6b6ZTP12lQTPNyfEbPaDg3R9AfGukJOs2pd30EKDMZI/dWqCUKMqvMxgHlR4g
	zuhIulXlFdgR+EDg8LaLjexc6xaRKPs/TIrY/lS7p5qEGmxrrK/pkAWyWO1NXEvkW/FHlXGQzT08R
	LAcKul30U+d99MSQMTiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUQUw-00042G-N7; Tue, 12 Nov 2019 07:21:58 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUQUg-00041A-HE
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 07:21:45 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAC7LVf2088839;
 Tue, 12 Nov 2019 01:21:31 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573543291;
 bh=woQZTsKk2OYK92qovCWNbbXV0PHk/eUYSwCK3xC7AAY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Ml6kIdY/D3Pk57pR/ISnCy1mReqQOqi/pEuYbG7qD94Wmf6BTfezl8lghQ0smAYrN
 CPdQqerXhDgQdCwg//Rlg5l52uiSeEoHvEuBD1Ly8rcCtyvF61TKIGxl5GY8Dys4Yv
 OAR52Hnz9jlDy054X9haVvAyLupTvrNNi3XF/eOw=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAC7LVhj046541;
 Tue, 12 Nov 2019 01:21:31 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 12
 Nov 2019 01:21:13 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 12 Nov 2019 01:21:13 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAC7LRRS015248;
 Tue, 12 Nov 2019 01:21:27 -0600
Subject: Re: [PATCH v4 10/15] dmaengine: ti: New driver for K3 UDMA - split#2:
 probe/remove, xlate and filter_fn
To: Vinod Koul <vkoul@kernel.org>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-11-peter.ujfalusi@ti.com>
 <20191111053301.GO952516@vkoul-mobl>
 <9b0f8bec-4964-8136-4173-7b45e479c0c5@ti.com>
 <20191112053440.GV952516@vkoul-mobl>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <faa0f80d-ab8f-effc-07da-f1328a3d9c01@ti.com>
Date: Tue, 12 Nov 2019 09:22:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191112053440.GV952516@vkoul-mobl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_232142_673920_92EACF2C 
X-CRM114-Status: GOOD (  18.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, robh+dt@kernel.org, ssantosh@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMi8xMS8yMDE5IDcuMzQsIFZpbm9kIEtvdWwgd3JvdGU6Cj4gT24gMTEtMTEtMTksIDEx
OjE2LCBQZXRlciBVamZhbHVzaSB3cm90ZToKPj4KPj4KPj4gT24gMTEvMTEvMjAxOSA3LjMzLCBW
aW5vZCBLb3VsIHdyb3RlOgo+Pj4gT24gMDEtMTEtMTksIDEwOjQxLCBQZXRlciBVamZhbHVzaSB3
cm90ZToKPj4+Cj4+Pj4gK3N0YXRpYyBib29sIHVkbWFfZG1hX2ZpbHRlcl9mbihzdHJ1Y3QgZG1h
X2NoYW4gKmNoYW4sIHZvaWQgKnBhcmFtKQo+Pj4+ICt7Cj4+Pj4gKwlzdHJ1Y3QgcHNpbF9lbmRw
b2ludF9jb25maWcgKmVwX2NvbmZpZzsKPj4+PiArCXN0cnVjdCB1ZG1hX2NoYW4gKnVjOwo+Pj4+
ICsJc3RydWN0IHVkbWFfZGV2ICp1ZDsKPj4+PiArCXUzMiAqYXJnczsKPj4+PiArCj4+Pj4gKwlp
ZiAoY2hhbi0+ZGV2aWNlLT5kZXYtPmRyaXZlciAhPSAmdWRtYV9kcml2ZXIuZHJpdmVyKQo+Pj4+
ICsJCXJldHVybiBmYWxzZTsKPj4+PiArCj4+Pj4gKwl1YyA9IHRvX3VkbWFfY2hhbihjaGFuKTsK
Pj4+PiArCXVkID0gdWMtPnVkOwo+Pj4+ICsJYXJncyA9IHBhcmFtOwo+Pj4+ICsJdWMtPnJlbW90
ZV90aHJlYWRfaWQgPSBhcmdzWzBdOwo+Pj4+ICsKPj4+PiArCWlmICh1Yy0+cmVtb3RlX3RocmVh
ZF9pZCAmIEszX1BTSUxfRFNUX1RIUkVBRF9JRF9PRkZTRVQpCj4+Pj4gKwkJdWMtPmRpciA9IERN
QV9NRU1fVE9fREVWOwo+Pj4+ICsJZWxzZQo+Pj4+ICsJCXVjLT5kaXIgPSBETUFfREVWX1RPX01F
TTsKPj4+Cj4+PiBDYW4geW91IGV4cGxhaW4gdGhpcyBhIGJpdD8KPj4KPj4gVGhlIFVETUFQIGlu
IEszIHdvcmtzIGJldHdlZW4gdHdvIFBTSS1MIGVuZHBvaW50LiBUaGUgc291cmNlIGFuZAo+PiBk
ZXN0aW5hdGlvbiBuZWVkcyB0byBiZSBwYWlyZWQgdG8gYWxsb3cgZGF0YSBmbG93Lgo+PiBTb3Vy
Y2UgdGhyZWFkIElEcyBhcmUgaW4gcmFuZ2Ugb2YgMHgwMDAwIC0gMHg3ZmZmLCB3aGlsZSBkZXN0
aW5hdGlvbgo+PiB0aHJlYWQgSURzIGFyZSAweDgwMDAgLSAweGZmZmYuCj4+Cj4+IElmIHRoZSBy
ZW1vdGUgdGhyZWFkIElEIGhhdmUgdGhlIGJpdCAzMSBzZXQgKDB4ODAwMCkgdGhlbiB0aGUgdHJh
bnNmZXIKPj4gaXMgTUVNX1RPX0RFViBhbmQgSSBuZWVkIHRvIHBpY2sgb25lIHVudXNlZCB0Y2hh
biBmb3IgaXQuIElmIHRoZSByZW1vdGUKPj4gaXMgdGhlIHNvdXJjZSB0aGVuIGl0IGNhbiBiZSBo
YW5kbGVkIGJ5IHJjaGFuLgo+Pgo+PiBkbWFzID0gPCZtYWluX3VkbWFwIDB4YzQwMD4sIDwmbWFp
bl91ZG1hcCAweDQ0MDA+Owo+PiBkbWEtbmFtZXMgPSAidHgiLCAicngiOwo+Pgo+PiAweGM0MDAg
aXMgYSBkZXN0aW5hdGlvbiB0aHJlYWQgSUQsIHNvIGl0IGlzIE1FTV9UT19ERVYKPj4gMHg0NDAw
IGlzIGEgc291cmNlIHRocmVhZCBJRCwgc28gaXQgaXMgREVWX1RPX01FTQo+Pgo+PiBFdmVuIGlu
IE1FTV9UT19NRU0gY2FzZSBJIG5lZWQgdG8gcGFpciB0d28gVURNQVAgY2hhbm5lbHM6Cj4+IFVE
TUFQIHNvdXJjZSB0aHJlYWRzIGFyZSBzdGFydGluZyBhdCBvZmZzZXQgMHgxMDAwLCBVRE1BUCBk
ZXN0aW5hdGlvbgo+PiB0aHJlYWRzIGFyZSAweDkwMDArCj4gCj4gT2theSBzbyBhIGNoYW5uZWwg
aXMgc2V0IGZvciBhIGRpcmVjdGlvbiB1bnRpbCB0ZWFyZG93bi4gQWxzbyB0aGlzIGFuZAo+IG90
aGVyIHBhdGNoIGNvbW1lbnRzIGFyZSBxdWl0ZSB1c2VmdWwsIGNhbiB3ZSBhZGQgdGhlbSBoZXJl
PwoKVGhlIGRpcmVjdGlvbiBjaGVja3MgaW4gdGhlIHByZXAgY2FsbGJhY2tzIGRvIHByaW50IHRo
ZSByZWFzb24gd2h5IHRoZQp0cmFuc2ZlciBpcyByZWplY3RlZCB3aGVuIGl0IGNvbWVzIHRvIG5v
dCBtYXRjaGluZyBkaXJlY3Rpb24uCgpIYXZpbmcgc2FpZCB0aGF0LCBJIGNhbiBhZGQgY29tbWVu
dCB0byB0aGUgdWRtYV9hbGxvY19jaGFuX3Jlc291cmNlcygpCmZ1bmN0aW9uIGFib3V0IHRoaXMg
cmVzdHJpY3Rpb24sIG9yIGJldHRlciBhIGRldl9kYmcoKSB0byBzYXkgdGhhdCB0aGUKZ2l2ZW4g
Y2hhbm5lbCBpcyBhbGxvY2F0ZWQgZm9yIGEgZ2l2ZW4gZGlyZWN0aW9uLgoKPj4gQ2hhbmdpbmcg
ZGlyZWN0aW9uIHJ1bnRpbWUgaXMgaGFyZGx5IHBvc3NpYmxlIGFzIGl0IHdvdWxkIGludm9sdmUK
Pj4gdGVhcmluZyBkb3duIHRoZSBjaGFubmVsLCByZW1vdmluZyBpbnRlcnJ1cHRzLCBkZXN0cm95
aW5nIHJpbmdzLAo+PiByZW1vdmluZyB0aGUgUFNJLUwgcGFpcmluZyBhbmQgcmVkb2luZyBldmVy
eXRoaW5nLgo+IAo+IG9rYXkgSSB3b3VsZCBleHBlY3QgdGhlIHByZXBfIHRvIGNoZWNrIGZvciBk
aXJlY3Rpb24gYW5kIHJlamVjdCB0aGUgY2FsbAo+IGlmIGRpcmVjdGlvbiBpcyBkaWZmZXJlbnQu
CgpUaGV5IGRvIGNoZWNrLCB1ZG1hX3ByZXBfc2xhdmVfc2coKSBhbmQgdWRtYV9wcmVwX2RtYV9j
eWNsaWMoKToKaWYgKGRpciAhPSB1Yy0+ZGlyKSB7CglkZXZfZXJyKGNoYW4tPmRldmljZS0+ZGV2
LAoJCSIlczogY2hhbiVkIGlzIGZvciAlcywgbm90IHN1cHBvcnRpbmcgJXNcbiIsCgkJX19mdW5j
X18sIHVjLT5pZCwgdWRtYV9nZXRfZGlyX3RleHQodWMtPmRpciksCgkJdWRtYV9nZXRfZGlyX3Rl
eHQoZGlyKSk7CglyZXR1cm4gTlVMTDsKfQoKdWRtYV9wcmVwX2RtYV9tZW1jcHkoKToKaWYgKHVj
LT5kaXIgIT0gRE1BX01FTV9UT19NRU0pIHsKCWRldl9lcnIoY2hhbi0+ZGV2aWNlLT5kZXYsCgkJ
IiVzOiBjaGFuJWQgaXMgZm9yICVzLCBub3Qgc3VwcG9ydGluZyAlc1xuIiwKCQlfX2Z1bmNfXywg
dWMtPmlkLCB1ZG1hX2dldF9kaXJfdGV4dCh1Yy0+ZGlyKSwKCQl1ZG1hX2dldF9kaXJfdGV4dChE
TUFfTUVNX1RPX01FTSkpOwoJcmV0dXJuIE5VTEw7Cn0KCj4gCgotIFDDqXRlcgoKVGV4YXMgSW5z
dHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAgSGVsc2lua2kuClkt
dHVubnVzL0J1c2luZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhlbHNp
bmtpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
