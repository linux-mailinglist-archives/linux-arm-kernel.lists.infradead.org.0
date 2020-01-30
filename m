Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9DC14DB31
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 14:04:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GzfcjJp7Ue/Ks5SgVCr0cR3f2C7YIxt6cUeosO5xf2Y=; b=D4G6oQYzlyhrUC
	tRi6xa8OvlLS+kKwMsOmBD9vJcf3RVSbhKYGvQ4zNPhSS6/aOtcJsHEB3RGQMIjKb3+OZhj2YQQNi
	aWqJcxzqgEHXzOIQXBdJrjXy8szyq+vLDzBSc8fp60knEtP0P8mJeYDuEJGkc5SIJvMhe0pj9OA7b
	FEbGXW+QMO7186e5NyDTB2Zj76/CcqkiSg0okO3A/79tqHT+5RF/rsaRkO4yTBpkjEDvG3sw9+/2L
	KcQpQvk/NpCMe4dTPW3++A9Yr3KVaU9c0PoYfAUYoYkJzkeVaYg0a0oA36jUUYTISTPSWWKW8s4H+
	Y6Frqd4mheq+HQxlGZFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix9Uh-0003Dx-2g; Thu, 30 Jan 2020 13:04:27 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix9UY-0003DL-DF
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 13:04:19 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00UD3r8w022295;
 Thu, 30 Jan 2020 07:03:53 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1580389433;
 bh=mEcLQEChF7CG3SdoHl9lJA4gqUSKK86HYBojtm7S8K4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=FdMory5EL5Lpr0oRMV/b8+w2bkp0m8n3dQv69sKaKqOqAuQb7aVSxUZh0v5UsXSgg
 IDQfesYGJX3fhF+Gi4f5C2PIxuGmZNdZPCohbCRXc8q6GnwhwN7X6Pg5+qV3HTdI+E
 Lr3BM/QAGKgzOKtFWVKfsyuXXX3t2WX6q8Q6LGoM=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00UD3rwY115312;
 Thu, 30 Jan 2020 07:03:53 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 30
 Jan 2020 07:03:52 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 30 Jan 2020 07:03:52 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00UD3oM1101462;
 Thu, 30 Jan 2020 07:03:50 -0600
Subject: Re: [PoC] arm: dma-mapping: direct: Apply dma_pfn_offset only when it
 is valid
To: Christoph Hellwig <hch@lst.de>
References: <8eb68140-97b2-62ce-3e06-3761984aa5b1@ti.com>
 <20200114164332.3164-1-peter.ujfalusi@ti.com>
 <f8121747-8840-e279-8c7c-75a9d4becce8@arm.com>
 <28ee3395-baed-8d59-8546-ab7765829cc8@ti.com>
 <4f0e307f-29a9-44cd-eeaa-3b999e03871c@arm.com>
 <75843c71-1718-8d61-5e3d-edba6e1b10bd@ti.com> <20200130075332.GA30735@lst.de>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <b2b1cb21-3aae-2181-fd79-f63701f283c0@ti.com>
Date: Thu, 30 Jan 2020 15:04:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200130075332.GA30735@lst.de>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_050418_548846_5A1E5C55 
X-CRM114-Status: GOOD (  21.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: robh@kernel.org, vigneshr@ti.com, konrad.wilk@oracle.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, rogerq@ti.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAzMC8wMS8yMDIwIDkuNTMsIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+IFtza2lwcGlu
ZyB0aGUgRFQgYml0cywgYXMgSSdtIGV2ZXJ5dGhpbmcgYnV0IGFuIGV4cGVydCBvbiB0aGF0Li5d
Cj4gCj4gT24gTW9uLCBKYW4gMjcsIDIwMjAgYXQgMDQ6MDA6MzBQTSArMDIwMCwgUGV0ZXIgVWpm
YWx1c2kgd3JvdGU6Cj4+IEkgYWdyZWUgb24gdGhlIHBoeXNfdG9fZG1hKCkuIEl0IHNob3VsZCBm
YWlsIGZvciBhZGRyZXNzZXMgd2hpY2ggZG9lcwo+PiBub3QgZmFsbCBpbnRvIGFueSBvZiB0aGUg
cmFuZ2VzLgo+PiBJdCBpcyBqdXN0IGEgdGhhdCB3ZSBpbiBMaW51eCBkb24ndCBoYXZlIHRoZSBj
b25jZXB0IGF0bSBmb3IgcmFuZ2VzLCB3ZQo+PiBoYXZlIG9ubHkgX29uZV8gcmFuZ2Ugd2hpY2gg
YXBwbGllcyB0byBldmVyeSBtZW1vcnkgYWRkcmVzcy4KPiAKPiB3aGF0IGRvZXMgYXRtIGhlcmUg
bWVhbj8KCnN0cnVjdCBkZXZpY2UgaGF2ZSBvbmx5IHNpbmdsZSBkbWFfcGZuX29mZnNldCwgb25l
IGNhbiBub3QgaGF2ZSBtdWx0aXBsZQpyYW5nZXMgZGVmaW5lZC4gSWYgd2UgaGF2ZSB0aGVuIG9u
bHkgdGhlIGZpcnN0IGlzIHRha2VuIGFuZCB0aGUgcGh5c2ljYWwKYWRkcmVzcyBhbmQgZG1hIGFk
ZHJlc3MgaXMgZGlzY2FyZGVkLCBvbmx5IHRoZSBkbWFfcGZuX29mZnNldCBpcyBzdG9yZWQKYW5k
IHVzZWQuCgo+IFdlIGhhdmUgbmVlZGVkIG11bHRpLXJhbmdlIHN1cHBvcnQgZm9yIHF1aXRlIGEg
d2hpbGUsIGFzIGNvbW1vbiBicm9hZGNvbQo+IFNPQ3MgZG8gbmVlZCBpdC4gIFNvIHBhdGNoZXMg
Zm9yIHRoYXQgYXJlIHdlbGNvbWUgYXQgbGVhc3QgZnJvbSB0aGUKPiBETUEgbGF5ZXIgcGVyc3Bl
Y3RpdmUgKGtpbmRhIHNpbWlsYXIgdG8geW91ciBwc2V1ZG8gY29kZSBlYXJsaWVyKQoKQnV0IGRv
IHRoZXkgaGF2ZSBkbWFfcGZuX29mZnNldCAhPSAwPwoKPj4+IE5vYm9keSdzIGRpc3B1dGluZyB0
aGF0IHRoZSBjdXJyZW50IGRtYV9kaXJlY3Rfc3VwcG9ydGVkKCkKPj4+IGltcGxlbWVudGF0aW9u
IGlzIGJyb2tlbiBmb3IgdGhlIGNhc2Ugd2hlcmUgWk9ORV9ETUEgaXRzZWxmIGlzIG9mZnNldAo+
Pj4gZnJvbSBQQSAwOyB0aGUgbW9yZSBwcmVzc2luZyBxdWVzdGlvbiBpcyB3aHkgQ2hyaXN0b3Bo
J3MgZGlmZiwgd2hpY2ggd2FzCj4+PiB0cnlpbmcgdG8gdGFrZSB0aGF0IGludG8gYWNjb3VudCwg
c3RpbGwgZGlkbid0IHdvcmsuCj4+Cj4+IEkgdW5kZXJzdGFuZCB0aGF0IHRoaXMgaXMgYSBiaXQg
bW9yZSBjb21wbGV4IHRoYW4gSSBpbnRlcnByZXQgaXQsIGJ1dAo+PiB0aGUgazJnIGlzIGJyb2tl
biBhbmQgY3VycmVudGx5IHRoZSBzaW1wbGVzdCB3YXkgdG8gbWFrZSBpdCB3b3JrIGlzIHRvCj4+
IHVzZSB0aGUgYXJtIGRtYV9vcHMgaW4gY2FzZSB0aGUgcGZuX29mZnNldCBpcyBub3QgMC4KPj4g
SXQgd2lsbCBiZSBlYXN5IHRvIHRlc3QgZG1hLWRpcmVjdCBjaGFuZ2VzIHRyeWluZyB0byBhZGRy
ZXNzIHRoZSBpc3N1ZQo+PiBpbiBoYW5kLCBidXQgd2lsbCBhbGxvdyBrMmcgdG8gYmUgdXNhYmxl
IGF0IHRoZSBzYW1lIHRpbWUuCj4gCj4gV2VsbCwgdXNpbmcgdGhlIGxlZ2FjeSBhcm0gZG1hIG9w
cyBtZWFucyB3ZSBjYW4ndCB1c2Ugc3dpb3RsYiBpZiB0aGVyZQo+IGlzIGFuIG9mZnNldCwgd2hp
Y2ggaXMgYWxzbyB3cm9uZyBmb3IgbG90cyBvZiBjb21tb24gY2FzZXMsIGluY2x1ZGluZwo+IHRo
ZSBScGkgNC4gIEknbSBzdGlsbCBjdXJpb3VzIHdoeSBteSBwYXRjaCBkaWRuJ3Qgd29yaywgYXMg
SSB0aG91Z2h0Cj4gaXQgc2hvdWxkLgoKVGhlIGRtYV9wZm5fb2Zmc2V0IGlzIF9zdGlsbF8gYXBw
bGllZCB0byB0aGUgbWFzayB3ZSBhcmUgdHJ5aW5nIHRvIHNldAooYW5kIHZhbGlkYXRlKSB2aWEg
ZG1hLWRpcmVjdC4KCmluIGRtYV9kaXJlY3Rfc3VwcG9ydGVkOgptYXNrID09IDB4ZmZmZmZmZmYg
Ly8gRE1BX0JJVF9NQVNLKDMyKQpkZXYtPmRtYV9wZm5fb2Zmc2V0ID09IDB4NzgwMDAwIC8vIEtl
eXN0b25lIDIKbWluX21hc2sgPT0gMHhmZmZmZmYKCnRtcF9tYXNrID0gX19waHlzX3RvX2RtYShk
ZXYsIG1pbl9tYXNrKTsKdG1wX21hc2sgPT0gMHhmZjg4MGZmZmZmZgoKd2l0aGluIF9fcGh5c190
b19kbWEoKSBjb252ZXJ0cyB0aGUgbWluX21hc2sgdG8gcGZuIGFuZCBjYWxscwpwZm5fdG9fZG1h
KCkgd2hpY2ggZG9lczoKaWYgKGRldikKCXBmbiAtPSBkZXYtPmRtYV9wZm5fb2Zmc2V0OwoKdGhl
IHJldHVybmVkIHBmbiBpcyB0aGVuIGNvbnZlcnRlZCBiYWNrIHRvIGFkZHJlc3MuCgp0aGUgbWFz
ayAoMHhmZmZmZmZmZikgaXMgd2VsbCB1bmRlciB0aGUgdG1wX21hc2sgKDB4ZmY4ODBmZmZmZmYp
IHNvCmRtYV9kaXJlY3Rfc3VwcG9ydGVkKCkgd2lsbCB0ZWxsIHVzIHRoYXQgRE1BIGlzIG5vdCBz
dXBwb3J0ZWQgZm9yCkRNQV9CSVRfTUFTSygzMiksIHdoaWNoIGlzIG5vdCB0cnVlLCBiZWNhdXNl
IERNQSBpcyBzdXBwb3J0aW5nIDMyIGJpdHMuCgo+IFdlJ2xsIG5lZWQgdG8gZmluZCB0aGUgbWlu
aW11bSBjaGFuZ2UgdG8gbWFrZSBpdCB3b3JrCj4gZm9yIG5vdyB3aXRob3V0IHN3aXRjaGluZyBv
cHMsIGV2ZW4gaWYgaXQgaXNuJ3QgdGhlIGNvcnJlY3Qgb25lLCBhbmQKPiB0aGVuIHdvcmsgZnJv
bSB0aGVyZS4KClN1cmUsIGJ1dCBjYW4gd2UgZml4IHRoZSByZWdyZXNzaW9uIGJ5IHJldmVydGlu
ZyB0byBhcm1fb3BzIGZvciBub3cgb25seQppZiBkbWFfcGZuX29mZnNldCBpcyBub3QgMD8gSXQg
dXNlZCB0byB3b3JrIGZpbmUgaW4gdGhlIHBhc3QgYXQgbGVhc3QgaXQKYXBwZWFyZWQgdG8gd29y
ayBvbiBLMiBwbGF0Zm9ybXMuCgotIFDDqXRlcgoKVGV4YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBP
eSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAgSGVsc2lua2kuClktdHVubnVzL0J1c2luZXNzIElE
OiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhlbHNpbmtpCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
