Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6045AD7DC5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:30:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XuCN9V0UkDHHFxVy5pDdf4lzTKdsuTzSFbyp/jW1f8I=; b=nyWWE4FBtkhVdQ
	fwTBjv1NN9tnft8Bq6cTTTfaZ6TEeXqxGwU6HCt0JPv8uTcgvXrvmEf4uYXXDySq2L+RONQFD5bLb
	bnDOwMeWEpGJ5VK9buQf2bzxbPBKpQ1/C2Xi7yl8fEIKWK7LknxmugrlX5hw96K0TC95xYPNoZnO+
	hOkVcVHzoxf++vC4OhE0AgsU4U8HB+qZ9kjfVUZMW/qMF5PrXri8PcUjDPf4Z0kG4mQRB9SM3f6Xg
	bf4ml/A+82soKs8x8GttjieCksdqaV0bmzm0VUNmyIJrEnIezN6xn9erCw68FoOw6Gi8PN5FTDArH
	1+MlCY0etNIuJiwlEXWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQdz-0004WN-Cw; Tue, 15 Oct 2019 17:29:59 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQdn-0004Vu-Gj
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 17:29:49 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9FHTXFQ085986;
 Tue, 15 Oct 2019 12:29:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1571160573;
 bh=KrgWh3TYfGhwD7OfEBPyzWk6XjSnfwlDaFgeUWGRq+4=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=L1gtts7qAYQjzYbF+sV9wfqa36DIJryMOvxkH5mko3FySUga9Qv0Ryz9RwRoaqamS
 H9ZKjoBMctkL1BsrCqknon/FODW30FoI6MktcLlD77XWoZwCjgM0G8/RTcnMektaHw
 gxwd0TSqbVxFCU9w4vc9/HCRI1Ym8atG/0w0fKpU=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9FHTX9g073402
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 15 Oct 2019 12:29:33 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 15
 Oct 2019 12:29:33 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 15 Oct 2019 12:29:26 -0500
Received: from [192.168.2.10] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9FHTTnV090514;
 Tue, 15 Oct 2019 12:29:29 -0500
Subject: Re: [PATCH v3 07/14] dt-bindings: dma: ti: Add document for K3 UDMA
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: Rob Herring <robh@kernel.org>
References: <20191001061704.2399-1-peter.ujfalusi@ti.com>
 <20191001061704.2399-8-peter.ujfalusi@ti.com> <20191010175232.GA24556@bogus>
 <ef07299b-eb43-d582-adb8-46f46681f9a5@ti.com>
Message-ID: <d53f3bd7-d331-33c8-5232-c8f3cc9ac708@ti.com>
Date: Tue, 15 Oct 2019 20:30:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <ef07299b-eb43-d582-adb8-46f46681f9a5@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_102947_659627_33574447 
X-CRM114-Status: GOOD (  30.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 t-kristo@ti.com, tony@atomide.com, vkoul@kernel.org, ssantosh@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Um9iLAoKT24gMTAvMTEvMTkgMTA6MzAgQU0sIFBldGVyIFVqZmFsdXNpIHdyb3RlOgo+IAo+IEkg
aGF2ZSBhbHJlYWR5IG1vdmVkIHRoZSBUUiB2cyBQYWNrZXQgbW9kZSBjaGFubmVsIHNlbGVjdGlv
biwgd2hpY2ggZG9lcwo+IG1ha2Ugc2Vuc2UgYXMgaXQgd2FzIExpbnV4J3MgY2hvaWNlIHRvIHVz
ZSBUUiBmb3IgY2VydGFpbiBjYXNlcy4KPiAKPiBJZiBJIG1vdmUgdGhlc2UgdG8gY29kZSB0aGVu
IHdlIG5lZWQgdG8gaGF2ZSBiaWcgdGFibGVzCj4gc3RydWN0IHBzaWxfY29uZmlnIGFtNjU0X3Bz
aWxbMzI3NjddID0ge307Cj4gc3RydWN0IHBzaWxfY29uZmlnIGo3MjFlX3BzaWxbMzI3NjddID0g
e307CgpBZnRlciB0aGlua2luZyBhYm91dCB0aGlzIGEgYml0IG1vcmUsIEkgdGhpbmsgd2UgY2Fu
IG1vdmUgYWxsIHRoZSBQU0ktTAplbmRwb2ludCBjb25maWd1cmF0aW9uIHRvIHRoZSBrZXJuZWwg
YXMgbm90IGFsbCB0aGUgMzI3NjcgdGhyZWFkcyBhcmUKYWN0dWFsbHkgaW4gdXNlLiBTdXJlIGl0
IGlzIGdvaW5nIHRvIGJlIHNvbWUgYW1vdW50IG9mIHN0YXRpYyBkYXRhIGluCnRoZSBrZXJuZWws
IGJ1dCBpdCBpcyBhbiBhY2NlcHRhYmxlIGNvbXByb21pc2UuCgpUaGUgRE1BIGJpbmRpbmcgY2Fu
IGxvb2sgbGlrZSB0aGlzOgoKZG1hcyA9IDwmbWFpbl91ZG1hcCAweGM0MDA+LAogICAgICAgPCZt
YWluX3VkbWFwIDB4NDQwMD47CmRtYS1uYW1lcyA9ICJ0eCIsICJyeCI7CgpvcgpkbWFzID0gPCZt
YWluX3VkbWFwIDB4NDQwMCBVRE1BX0RJUl9UWD4sCiAgICAgICA8Jm1haW5fdWRtYXAgMHg0NDAw
IFVETUFfRElSX1JYPjsKZG1hLW5hbWVzID0gInR4IiwgInJ4IjsKCklmIEkga2VlcCB0aGUgZGly
ZWN0aW9uLgoweGM0MDAgaXMgZGVzdGluYXRpb24gSUQsIHdoaWNoIGlzIDB4NDQwMCB8IDB4ODAw
MCBhcyBwZXIgUFNJLUwKc3BlY2lmaWNhdGlvbi4KSW4gdGhlIFRSTSBvbmx5IHRoZSBzb3VyY2Ug
dGhyZWFkcyBjYW4gYmUgZm91bmQgYXMgYSBtYXAgKHRocmVhZCBJRHMgPAoweDdmZmYpLCBidXQg
dGhlIGJpbmRpbmcgZG9jdW1lbnQgY2FuIGNvdmVyIHRoaXMuCgpUaGlzIHdheSB3ZSBkb24ndCBu
ZWVkIGFub3RoZXIgZHRzaSBmaWxlIGFuZCBJIGNhbiBjcmVhdGUgdGhlIG1hcCBpbiB0aGUKa2Vy
bmVsLgoKVGhpcyB3aWxsIGhpZGUgc29tZSBkZXRhaWxzIG9mIHRoZSBIVyBmcm9tIERULCBidXQg
c2luY2UgdGhlIFBTSS1MCnRocmVhZCBjb25maWd1cmF0aW9uIGlzIHN0YXRpYyBpbiBoYXJkd2Fy
ZSBJIGJlbGlldmUgaXQgaXMgYWNjZXB0YWJsZS4KCkhvd2V2ZXIgd2Ugc3RpbGwgaGF2ZSB1bmNv
dmVyZWQgZmVhdHVyZXMgaW4gdGhlIGJpbmRpbmcgb3IgaW4gY29kZSwgbGlrZQphIGNhc2Ugd2hl
biB0aGUgUlggZG9lcyBub3QgaGF2ZSBhY2Nlc3MgdG8gdGhlIERNQSBjaGFubmVsLCBvbmx5IGZs
b3dzLgpOb3Qgc3VyZSBpZiBJIHNob3VsZCByZXNlcnZlIHRoZSBkaXJlY3Rpb24gcGFyYW1ldGVy
IGFzIGFuIGluZGljYXRpb24gdG8KdGhpcyBvciBmaW5kIG90aGVyIHdheS4KQmFzaWNhbGx5IHdl
IGNvbW11bmljYXRlIG9uIHRoZSBnaXZlbiBQU0ktTCB0aHJlYWQgd2l0aG91dCBoYXZpbmcgYSBE
TUEKY2hhbm5lbCBhcyBvdGhlciBjb3JlIGlzIG93bmluZyB0aGUgY2hhbm5lbC4KCldoYXQgZG8g
eW91IHRoaW5rPwoKPiAKPiBhbmQgZm9yIGVhY2ggbmV3IGZhbWlseSBtZW1iZXIgYSBuZXcgb25l
Lgo+IAo+IEFsc28sIGlmIHdlIHdhbnQgYWRkIERNQSBzdXBwb3J0IGZvciBhIG5ldyBwZXJpcGhl
cmFsIHdlIHdvdWxkIG5lZWQgdG8KPiBtb2RpZnkgdGhlIGtlcm5lbCBhbmQgdGhlIERUIGluIHN5
bmMgKHdlbGwsIGtlcm5lbCBmaXJzdCwgdGhhbiBEVCkuCj4gCj4+IE9yIGRvIHNvbWUgY29tYmlu
YXRpb24gb2YgdGhlIGFib3ZlLiAKPiAKPiBXaGF0IGFib3V0IHRoaXM6Cj4gY3JlYXRlIGEgbmV3
IGR0c2kgZmlsZSBwZXIgU29DIChrMy1hbTY1NC1wc2lsLmR0c2ksIGszLWs3MjFlLXBzaWwuZHRz
aSkKPiBmb3IgdGhlIFBTSS1MIHRocmVhZHMgYW5kIGluc2lkZSBzb21ldGhpbmcgbGlrZSB0aGlz
Ogo+IAo+IHBzaWwtdGhyZWFkczogcHNpbC10aHJlYWRzIHsKPiAJLi4uCj4gCS8qIFNBMlVMOiAw
eDQwMDAgLSAweDQwMDMgKi8KPiAJdGkscHNpbC1jb25maWctNDAwMCB7Cj4gCQlsaW51eCx1ZG1h
LW1vZGUgPSA8VURNQV9QS1RfTU9ERT47Cj4gCQl0aSxuZWVkcy1lcGliOwo+IAkJdGkscHNkLXNp
emUgPSA8NjQ+Owo+IAkJdGksbm90ZHBrdDsKPiAJfTsKPiAKPiAJdGkscHNpbC1jb25maWctNDAw
MSB7Cj4gCQlsaW51eCx1ZG1hLW1vZGUgPSA8VURNQV9QS1RfTU9ERT47Cj4gCQl0aSxuZWVkcy1l
cGliOwo+IAkJdGkscHNkLXNpemUgPSA8NjQ+Owo+IAkJdGksbm90ZHBrdDsKPiAJfTsKPiAKPiAJ
dGkscHNpbC1jb25maWctNDAwMiB7Cj4gCQlsaW51eCx1ZG1hLW1vZGUgPSA8VURNQV9QS1RfTU9E
RT47Cj4gCQl0aSxuZWVkcy1lcGliOwo+IAkJdGkscHNkLXNpemUgPSA8NjQ+Owo+IAkJdGksbm90
ZHBrdDsKPiAJfTsKPiAKPiAJLi4uCj4gCS8qIFBETUE2IChQRE1BX01DQVNQX0cwKTogMHg0NDAw
IC0gMHg0NDAyICovCj4gCXRocmVhZC00NDAwIHsKPiAJCXRpLHBkbWEtc3RhdGljdHItdHlwZSA9
IDxQRE1BX1NUQVRJQ19UUl9YWT47Cj4gCQl0aSxwZG1hLWVuYWJsZS1hY2MzMjsKPiAJCXRpLHBk
bWEtZW5hYmxlLWJ1cnN0Owo+IAl9Owo+IAo+IAl0aHJlYWQtNDQwMSB7Cj4gCQl0aSxwZG1hLXN0
YXRpY3RyLXR5cGUgPSA8UERNQV9TVEFUSUNfVFJfWFk+Owo+IAkJdGkscGRtYS1lbmFibGUtYWNj
MzI7Cj4gCQl0aSxwZG1hLWVuYWJsZS1idXJzdDsKPiAJfTsKPiAKPiAJdGhyZWFkLTQ0MDIgewo+
IAkJdGkscGRtYS1zdGF0aWN0ci10eXBlID0gPFBETUFfU1RBVElDX1RSX1hZPjsKPiAJCXRpLHBk
bWEtZW5hYmxlLWFjYzMyOwo+IAkJdGkscGRtYS1lbmFibGUtYnVyc3Q7Cj4gCX07Cj4gCj4gCS4u
Lgo+IH07Cj4gCj4gVGhlbiB0aGUgYmluZGluZyB3b3VsZCBsb29rIGxpa2UgdGhpcyBmb3Igc2Ey
dWw6Cj4gCj4gLyogdHg6IGNyeXB0b19wbnAtMSwgcng6IGNyeXB0b19wbnAtMSAqLwo+IGRtYXMg
PSA8Jm1haW5fdWRtYXAgMHg0MDAwIFVETUFfRElSX1RYPiwKPiAgICAgICAgPCZtYWluX3VkbWFw
IDB4NDAwMCBVRE1BX0RJUl9SWD4sCj4gICAgICAgIDwmbWFpbl91ZG1hcCAweDQwMDEgVURNQV9E
SVJfUlg+Owo+IGRtYS1uYW1lcyA9ICJ0eCIsICJyeDEiLCAicngyIjsKPiAKPiBmb3IgTWNBU1A6
Cj4gZG1hcyA9IDwmbWFpbl91ZG1hcCAweDQ0MDAgVURNQV9ESVJfVFg+LAo+ICAgICAgICA8Jm1h
aW5fdWRtYXAgMHg0NDAwIFVETUFfRElSX1JYPjsKPiBkbWEtbmFtZXMgPSAidHgiLCAicngiOwo+
IAo+IFRoZW4gZWl0aGVyIHdlIGNhbiBoYXZlIHBoYW5kbGUgaW4gdGhlIHVkbWFwIG5vZGVzIHRv
IHRoZSBwc2lsLXRocmVhZHMsCj4gb3IganVzdCBmaW5kIGl0IGZyb20gdGhlIHJvb3Qgd2hlbiBu
ZWVkZWQuCj4gCj4+IFNvcnJ5IEkgZG9uJ3QgaGF2ZSBzcGVjaWZpYyBzdWdnZXN0aW9ucywgYnV0
IEkganVzdCBzZWUgbG90cyBvZiBwcm9wZXJ0aWVzIAo+PiBhbmQgY29tcGxleGl0eSwgYW5kIEkg
ZG9uJ3QgcmVhbGx5IHVuZGVyc3RhbmQgdGhlIGgvdyBoZXJlLiBQdXR0aW5nIHRoZSAKPj4gY29t
cGxleGl0eSBpbiB3aGF0IGlzIGFuIEFCSSBpcyBnZW5lcmFsbHkgbm90IGEgZ29vZCBwbGFuLgo+
IAo+IFRoZSBjb21wbGV4aXR5IGlzIGNvbWluZyBmcm9tIHRoZSBoYXJkd2FyZSBpdHNlbGYuIElm
IEkgY2FuIG5vdCBkZXNjcmliZQo+IHRoZSBoYXJkd2FyZSB0aGFuIGl0IGlzIG5vdCBnb2luZyB0
byBiZSBlYXN5IGZvciB0aGUgc29mdHdhcmUgdG8gZmlndXJlCj4gb3V0IHdoYXQgaXQgaXMgZGVh
bGluZyB3aXRoLgo+IAo+PiBBbmQgSSBkb24ndCAKPj4gaGF2ZSB0aGUgYmFuZHdpZHRoIHRvIHN0
dWR5IGFuZCB1bmRlcnN0YW5kIHRoZSBjb21wbGV4aXRpZXMgb2YgeW91ciBoL3cgCj4+IChhbmQg
ZXZlcnlvbmUgZWxzZXMpLCBzbyBqdXN0IG1vcmUgZXhwbGFuYXRpb25zIGFyZSBub3QgbGlrZWx5
IHRvIHJlYWxseSAKPj4gaGVscC4KPiAKPiBTdXJlLCBJIHVuZGVyc3RhbmQuCj4gCj4gLSBQw6l0
ZXIKPiAKPiBUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1IDIyLCAw
MDE4MCBIZWxzaW5raS4KPiBZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFp
a2thL0RvbWljaWxlOiBIZWxzaW5raQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKPiAKCi0gUGV0ZXIKClRleGFz
IEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtp
LgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBI
ZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
