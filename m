Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6F7109A29
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 09:29:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j8QNn9Uszm4aZwlikthylWGXZIAmj/0bko5EV2FeBMs=; b=I2NFlyt96zj+3h
	QAQjra6NZBTPhiHIcC+wFe7vMH3BmVi2nROo7vdXJX+LGJcdGVMPDd9Ylcihc49DrpxxRYNsdPb3n
	546SoUeokdWyIJz8c9+6gg8MAI5fZNL7fb1wBdxpzMG7HjeRxXGMWk6Rnn4lpFgwYwYG8UEstL5UU
	E/d5l5SQyoWW7TrBRu/l18OTgf2ks00BZWJAVHjO8D7CL3NLx9NQ1h+qh8H+PwmY9K3CXCZq6ZbNY
	3VT1ZEwlLSi4D9ybWuF0Rz25yBoBxkBCETu6wSa8SXYMK8IxKBOAzNZ3OUH5noSNP0PHYYyId9wsJ
	olliAsuo40nqmcrZzn/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZWEE-0004hf-DX; Tue, 26 Nov 2019 08:29:46 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZWE2-0004gZ-IX
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 08:29:36 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAQ8TIGd113992;
 Tue, 26 Nov 2019 02:29:18 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1574756958;
 bh=sOlBif7gK5pnyCr+lDdyRLduRMavJKYGdPrcVdrE3vk=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=D8uPLtYb5/IfCiXlyv90/OI9+s3XAyzzegnbexNxyBmMAlhDsyMh32hGIKoAflM3P
 OYs0ZDbdS0Yrxvcvm8v2hWOsK8Kh9wV3g4wyAHG6M0B8AqVszRrkgWG0kvn+JOomMz
 7eA37MHwzghpLHmPgFCVCY1D3Ckmpb0WRtkKJEvw=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xAQ8TInK027696
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 26 Nov 2019 02:29:18 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 26
 Nov 2019 02:29:17 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 26 Nov 2019 02:29:17 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAQ8TDfx099514;
 Tue, 26 Nov 2019 02:29:14 -0600
Subject: Re: [PATCH v4 08/15] dt-bindings: dma: ti: Add document for K3 UDMA
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: Rob Herring <robh@kernel.org>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-9-peter.ujfalusi@ti.com> <20191105021900.GA17829@bogus>
 <fc1ea525-54f1-ff1a-7e1c-61b54f5be862@ti.com>
 <CAL_JsqJbV7Zd40admW-x2SSveMqMkG0tM6RFTwjCJyYxX4Cxtw@mail.gmail.com>
 <b4705f2e-b2fb-f00f-7d4d-bd440fe89135@ti.com>
Message-ID: <f2f4a4f5-335d-9a20-b410-91a7619fb84d@ti.com>
Date: Tue, 26 Nov 2019 10:29:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <b4705f2e-b2fb-f00f-7d4d-bd440fe89135@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_002934_763422_7A706719 
X-CRM114-Status: GOOD (  32.48  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, Keerthy <j-keerthy@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Tony Lindgren <tony@atomide.com>,
 Vinod <vkoul@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Um9iLAoKT24gMTUvMTEvMjAxOSAxMS40NSwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4gUm9iLAo+
IAo+IE9uIDE0LzExLzIwMTkgMTkuNTMsIFJvYiBIZXJyaW5nIHdyb3RlOgo+PiBPbiBUdWUsIE5v
diA1LCAyMDE5IGF0IDQ6MDcgQU0gUGV0ZXIgVWpmYWx1c2kgPHBldGVyLnVqZmFsdXNpQHRpLmNv
bT4gd3JvdGU6Cj4+Pgo+Pj4KPj4+Cj4+PiBPbiAwNS8xMS8yMDE5IDQuMTksIFJvYiBIZXJyaW5n
IHdyb3RlOgo+Pj4+IE9uIEZyaSwgTm92IDAxLCAyMDE5IGF0IDEwOjQxOjI4QU0gKzAyMDAsIFBl
dGVyIFVqZmFsdXNpIHdyb3RlOgo+Pj4+PiBOZXcgYmluZGluZyBkb2N1bWVudCBmb3IKPj4+Pj4g
VGV4YXMgSW5zdHJ1bWVudHMgSzMgTkFWU1MgVW5pZmllZCBETUEg4oCTIFBlcmlwaGVyYWwgUm9v
dCBDb21wbGV4IChVRE1BLVApLgo+Pj4+Pgo+Pj4+PiBVRE1BLVAgaXMgaW50cm9kdWNlZCBhcyBw
YXJ0IG9mIHRoZSBLMyBhcmNoaXRlY3R1cmUgYW5kIGNhbiBiZSBmb3VuZCBpbgo+Pj4+PiBBTTY1
NCBhbmQgajcyMWUuCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFBldGVyIFVqZmFsdXNpIDxw
ZXRlci51amZhbHVzaUB0aS5jb20+Cj4+Pj4+IC0tLQo+Pj4+PiBSb2IsCj4+Pj4+Cj4+Pj4+IGNh
biB5b3UgZ2l2ZSBtZSBzb21lIGhpbnQgb24gaG93IHRvIGZpeCB0aGVzZSB0d28gd2FybmluZ3Mg
ZnJvbSBkdF9iaW5kaW5nX2NoZWNrOgo+Pj4+Pgo+Pj4+PiAgIERUQyAgICAgRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RtYS90aS9rMy11ZG1hLmV4YW1wbGUuZHQueWFtbAo+Pj4+
PiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZG1hL3RpL2szLXVkbWEuZXhhbXBs
ZS5kdHM6MjMuMTMtNzI6IFdhcm5pbmcgKHJhbmdlc19mb3JtYXQpOiAvZXhhbXBsZS0wL2ludGVy
Y29ubmVjdEAzMDgwMDAwMDpyYW5nZXM6ICJyYW5nZXMiIHByb3BlcnR5IGhhcyBpbnZhbGlkIGxl
bmd0aCAoMjQgYnl0ZXMpIChwYXJlbnQgI2FkZHJlc3MtY2VsbHMgPT0gMSwgY2hpbGQgI2FkZHJl
c3MtY2VsbHMgPT0gMiwgI3NpemUtY2VsbHMgPT0gMikKPj4+Pj4gICBDSEVDSyAgIERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kbWEvdGkvazMtdWRtYS5leGFtcGxlLmR0LnlhbWwK
Pj4+Pgo+Pj4+IFRoZSBkZWZhdWx0ICNhZGRyZXNzLWNlbGxzIGlzIDEgZm9yIGV4YW1wbGVzLiBT
byB5b3UgbmVlZCB0bwo+Pj4+IGVpdGhlciBvdmVycmlkZSBpdCBvciBjaGFuZ2UgcmFuZ2VzIHBh
cmVudCBhZGRyZXNzIHNpemUuCj4+Pgo+Pj4gd3JhcHBpbmcgdGhlIGNiYXNzX21haW5fbmF2c3Mg
aW5zaWRlOgo+Pj4gY2Jhc3NfbWFpbiB7Cj4+PiAgICAgI2FkZHJlc3MtY2VsbHMgPSA8Mj47Cj4+
PiAgICAgI3NpemUtY2VsbHMgPSA8Mj47Cj4+PiAgICAgLi4uCj4+PiB9Owo+Pj4KPj4+IGZpeGVz
IGl0Lgo+Pj4KPj4+Pj4KPj4+Pj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rt
YS90aS9rMy11ZG1hLmV4YW1wbGUuZHQueWFtbDogaW50ZXJjb25uZWN0QDMwODAwMDAwOiAkbm9k
ZW5hbWU6MDogJ2ludGVyY29ubmVjdEAzMDgwMDAwMCcgZG9lcyBub3QgbWF0Y2ggJ14oYnVzfHNv
Y3xheGl8YWhifGFwYikoQFswLTlhLWZdKyk/JCcKPj4+Pgo+Pj4+IFVzZSAnYnVzJyBmb3IgdGhl
IG5vZGUgbmFtZSBvZiAnc2ltcGxlLWJ1cycuCj4+Pgo+Pj4gSSB0b29rIHRoZSBuYXZzcyBub2Rl
IGZyb20gdGhlIHVwc3RyZWFtIGR0cyAoSSdtIGdvaW5nIHRvIGZpeCBpdCB0aGVyZQo+Pj4gYXMg
d2VsbCkuCj4+PiBJdCBoYXMgc2ltcGxlLWJ1cyBmb3IgdGhlIG5hdnNzLCB3aGljaCBpcyBub3Qg
cXVpdGUgcmlnaHQgYXMgTkFWU1MgaXMKPj4+IG5vdCBhIGJ1cywgYnV0IGEgYmlnIHN1YnN5c3Rl
bSB3aXRoIG11bHRpcGxlIGNvbXBvbmVudHMgKFVETUFQLCByaW5nYWNjLAo+Pj4gSU5UQSwgSU5U
UiwgdGltZXJzLCBldGMpLgo+Pj4KPj4+IFdoYXQgYWJvdXQgdG8gY2hhbmdlIHRoZSBiaW5kaW5n
IGRvYyB0byBzaW1wbGUtbWZkIGxpa2UgdGhpcwo+Pgo+PiBUaGF0J3MgcmVhbGx5IGZvciB0aGlu
Z3Mgbm90IG1lbW9yeS1tYXBwZWQgKEknbSBzdXJlIHlvdSBjYW4gcHJvYmFibHkKPj4gZmluZCBh
biBleGFtcGxlIHRvIGNvbnRyYWRpY3QgbWUpLCBzbyBiZXR0ZXIgdG8ga2VlcCBzaW1wbGUtYnVz
IGlmIGFsbAo+PiB0aGUgY2hpbGQgbm9kZXMgaGF2ZSBhZGRyZXNzZXMuCj4gCj4gQWNjb3JkaW5n
IHRvIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvbWZkLnR4dDoKPiAtIEEg
cmFuZ2Ugb2YgbWVtb3J5IHJlZ2lzdGVycyBjb250YWluaW5nICJtaXNjZWxsYW5lb3VzIHN5c3Rl
bQo+ICAgcmVnaXN0ZXJzIiBhbHNvIGtub3duIGFzIGEgc3lzdGVtIGNvbnRyb2xsZXIgInN5c2Nv
biIgb3IgYW55IG90aGVyCj4gICBtZW1vcnkgcmFuZ2UgY29udGFpbmluZyBhIG1peCBvZiB1bnJl
bGF0ZWQgaGFyZHdhcmUgZGV2aWNlcy4KPiAKPiBOQVZTUyAoTkFWaWdhdG9yIFN1YlN5c3RlbSkg
ZmFsbHMgaW4gdGhlIGxhdGVyIGNhc2UsIGl0IGNvbnRhaW5zCj4gdW5yZWxhdGVkIGJsb2Nrcywg
bGlrZSB0aGUgVURNQVAsIHJpbmdhY2MsIG1haWxib3hlcywgc3BpbmxvY2tzLAo+IGludGVycnVw
dCBhZ2dyZWdhdG9yLCBpbnRlcnJ1cHQgcm91dGVyLCBldGMuCj4gCj4gLSBjb21wYXRpYmxlIDog
InNpbXBsZS1tZmQiIC0gdGhpcyBzaWduaWZpZXMgdGhhdCB0aGUgb3BlcmF0aW5nIHN5c3RlbQo+
ICAgc2hvdWxkIGNvbnNpZGVyIGFsbCBzdWJub2RlcyBvZiB0aGUgTUZEIGRldmljZSBhcyBzZXBh
cmF0ZSBkZXZpY2VzCj4gICBha2luIHRvIGhvdyAic2ltcGxlLWJ1cyIgaW5kaWNhdGVzIHdoZW4g
dG8gc2VlIHN1Ym5vZGVzIGFzIGNoaWxkcmVuCj4gICBmb3IgYSBzaW1wbGUgbWVtb3J5LW1hcHBl
ZCBidXMuCj4gCj4gVGhpcyBpcyBhIGJpdCBjb25mdXNpbmcsIGJ1dCBOQVZTUyBpcyBub3QgcmVh
bGx5IGEgYnVzLCBldmVyeXRoaW5nIGluIGl0Cj4gY2FuIGJlIGFjY2Vzc2VkIGJ5IHRoZSBDUFUg
dmlhIG1lbW9yeSBtYXBwZWQgcmVnaXN0ZXJzIChzb21lIHN1YiBkZXZpY2VzCj4gZG9lcyBub3Qg
aGF2ZSByZWdpc3RlcnMgZGVmaW5lZCwgdGhleSBhcmUgY29udHJvbGxlZCB2aWEgc3lzdGVtIGZp
cm13YXJlKS4KPiAKPj4gRG8geW91IG5lZWQgdGhlIG5vZGUgbmFtZSB0byBiZSAnbmF2c3MnIGZv
ciBzb21lIHJlYXNvbj8gSWYgc28sIHRoZW4KPj4gYmV0dGVyIGhhdmUgYSBjb21wYXRpYmxlIHN0
cmluZyBpbiB0aGVyZSB0byBpZGVudGlmeSBpdC4gSWYgbm90LCBqdXN0Cj4+IHVzZSAnYnVzJyBh
bmQgYmUgZG9uZSB3aXRoIGl0Lgo+IAo+IFdlIGRvbid0IG5lZWQgdW5pcXVlIGNvbXBhdGlibGUg
Zm9yIHRoZSBOQVZTUyBpdHNlbGYgYXMgdGhlcmUgaXMgbm90Cj4gbXVjaCB3ZSBjYW4gY29uZmln
dXJlIG9uIHRoZSB0b3AgbGV2ZWwsIGl0IGlzICdqdXN0JyBhIGJpZyBzdWJzeXN0ZW0KPiB3aXRo
IGFsbCBzb3J0cyBvZiB0aGluZ3MuCj4gCj4gSSBsaWtlIHRvIGtlZXAgdGhlICduYXZzcycgYXMg
bm9kZSBuYW1lIGFzIGl0IGdpdmVzIGh1bWFuIHVuZGVyc3RhbmRhYmxlCj4gcmVwcmVzZW50YXRp
b24gb2YgaXQgaW4gL3N5cyBmb3IgZXhhbXBsZSwgZWFzaWVyIHRvIHNlZSB0aGUgdG9wb2xvZ3ku
Cj4gCj4gSSBqdXN0IGZlZWwgdGhhdCB0aGUgJ2J1cycgZG9lcyBub3QgcmVhbGx5IGFwcGx5IHRv
IHdoYXQgTkFWU1MgaXMuCj4gUHJvYmFibHkgbXkgdmlldyBvZiBzaW1wbGUtYnVzIGlzIG5vdCBj
b3JyZWN0LgoKQ2FuIHlvdSBhZHZpY2Ugb24gaG93IHRvIHByb2NlZWQ/IEkgd291bGQgbGlrZSB0
byBzZW5kIHY2IHNvIFZpbm9kIGNhbgpwaWNrIGl0IGZvciBuZXh0IGFmdGVyIDUuNS1yYzEgaXMg
dGFnZ2VkLgpUaGlzIGlzIHRoZSBvbmx5IHRoaW5nIHdoaWNoIEkgbmVlZCB0byBjbG9zZSBvbiB0
byBiZSBhYmxlIHRvIGRvIHRoYXQuCgo+IAo+Pj4gY2Jhc3NfbWFpbl9uYXZzczogbmF2c3NAMzA4
MDAwMDAgewo+Pj4gICAgIGNvbXBhdGlibGUgPSAic2ltcGxlLW1mZCI7Cj4+PiAgICAgI2FkZHJl
c3MtY2VsbHMgPSA8Mj47Cj4+PiAgICAgI3NpemUtY2VsbHMgPSA8Mj47Cj4+PiAgICAgLi4uCj4+
PiB9Owo+Pj4KPj4+IGFuZCBmaXggdXAgdGhlIERUIHdoZW4gSSBnb3QgdG8gdGhlIHBvaW50IHdo
ZW4gSSBjYW4gc2VuZCB0aGUgcGF0Y2hlcyB0bwo+Pj4gZW5hYmxlIERNQSBmb3IgYW02NTQgYW5k
IGo3MjFlPwo+Pgo+PiBUaGVyZSdzIG5vIHJlcXVpcmVtZW50IHlldCBmb3IgRFRTIGZpbGVzIHRv
IG5vdCBoYXZlIHdhcm5pbmdzLgo+IAo+IFN1cmUsIGJ1dCBpdCBkb2VzIG5vdCBodXJ0IGlmIHRo
ZXkgYXJlIGNsZWFuIDspCj4gCj4+Pj4+ICsgIGNvbXBhdGlibGU6Cj4+Pj4+ICsgICAgb25lT2Y6
Cj4+Pj4+ICsgICAgICAtIGNvbnN0OiB0aSxhbTY1NC1uYXZzcy1tYWluLXVkbWFwCj4+Pj4+ICsg
ICAgICAtIGNvbnN0OiB0aSxhbTY1NC1uYXZzcy1tY3UtdWRtYXAKPj4+Pj4gKyAgICAgIC0gY29u
c3Q6IHRpLGo3MjFlLW5hdnNzLW1haW4tdWRtYXAKPj4+Pj4gKyAgICAgIC0gY29uc3Q6IHRpLGo3
MjFlLW5hdnNzLW1jdS11ZG1hcAo+Pj4+Cj4+Pj4gZW51bSB3b3JrcyBiZXR0ZXIgdGhhbiBvbmVP
Zitjb25zdC4gQmV0dGVyIGVycm9yIG1lc3NhZ2VzLgo+Pj4KPj4+IExpa2UgdGhpczoKPj4+ICAg
Y29tcGF0aWJsZToKPj4+ICAgICBvbmVPZjoKPj4+ICAgICAgIC0gZGVzY3JpcHRpb246IGZvciBB
TTY1NAo+Pj4gICAgICAgICBpdGVtczoKPj4+ICAgICAgICAgICAtIGVudW06Cj4+PiAgICAgICAg
ICAgICAgIC0gdGksYW02NTQtbmF2c3MtbWFpbi11ZG1hcAo+Pj4gICAgICAgICAgICAgICAtIHRp
LGFtNjU0LW5hdnNzLW1jdS11ZG1hcAo+Pj4KPj4+ICAgICAgIC0gZGVzY3JpcHRpb246IGZvciBK
NzIxRQo+Pj4gICAgICAgICBpdGVtczoKPj4+ICAgICAgICAgICAtIGVudW06Cj4+PiAgICAgICAg
ICAgICAgIC0gdGksajcyMWUtbmF2c3MtbWFpbi11ZG1hcAo+Pj4gICAgICAgICAgICAgICAtIHRp
LGo3MjFlLW5hdnNzLW1jdS11ZG1hcAo+Pgo+PiBJZiB0aGUgJ2Rlc2NyaXB0aW9uJyB3YXMgdXNl
ZnVsLCBidXQgaXQncyBub3QuIEp1c3Q6Cj4+Cj4+IGNvbXBhdGlibGU6Cj4+ICAgZW51bToKPj4g
ICAgIC0gdGksYW02NTQtbmF2c3MtbWFpbi11ZG1hcAo+PiAgICAgLSB0aSxhbTY1NC1uYXZzcy1t
Y3UtdWRtYXAKPj4gICAgIC0gdGksajcyMWUtbmF2c3MtbWFpbi11ZG1hcAo+PiAgICAgLSB0aSxq
NzIxZS1uYXZzcy1tY3UtdWRtYXAKPiAKPiBPSywgY2FuIEkga2VlcCB5b3VyIFJldmlld2VkLWJ5
IHlvdSBoYXZlIGdpdmVuIHRvIHY1IGlmIEkgZG8gdGhpcyBjaGFuZ2UKPiBmb3IgdjY/Cj4gCj4+
Cj4+Cj4+IFJvYgo+Pgo+IAo+IC0gUMOpdGVyCj4gCj4gVGV4YXMgSW5zdHJ1bWVudHMgRmlubGFu
ZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAgSGVsc2lua2kuCj4gWS10dW5udXMvQnVzaW5l
c3MgSUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKPiAKPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCj4gCgotIFDDqXRlcgoKVGV4YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2th
bGFua2F0dSAyMiwgMDAxODAgSGVsc2lua2kuClktdHVubnVzL0J1c2luZXNzIElEOiAwNjE1NTIx
LTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhlbHNpbmtpCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
