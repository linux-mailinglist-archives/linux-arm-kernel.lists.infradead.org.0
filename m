Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 163D0159248
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 15:51:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Gpwgl9xP+DInz40D9oyBFke51HtK7d8PYK7580M5M20=; b=CLbbzTsQyGTkXXinZEdIAKvDp
	3uWUkErbJyCaSOY19h5Uxsv/WEvSk8RHjGWcOhnqaAHugveLNL9SQEj5n38/BjRSyHj1vpKg5hGXv
	kWEYdnGOwjmtFMrziM8zCnlE5kDbWILOCFMyzkyMuLPQv+xWzFrx8D1bKq9DqDFdrN47uFU3NO5xt
	aWWZaKfGdD6fZfbmIH0/agMul4AE8ClYI7XCyhqHv5WCG5gR8bkTQevPccvw/NfzNrsuoXKc+3jHV
	oEybgesMuQz1J/Q126CkPRAq9eBp9WcVWSqrTtOTOs1MG8+rlpgJA5ebdMn8LF0LCYkcq/F631bd+
	K1yAS8iIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Wsi-0006D0-G2; Tue, 11 Feb 2020 14:51:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Wsa-0006B8-J2
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 14:51:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8588030E;
 Tue, 11 Feb 2020 06:51:09 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D7B6F3F68E;
 Tue, 11 Feb 2020 06:51:03 -0800 (PST)
Subject: Re: [PATCHv9 00/12] PCI: Recode Mobiveil driver and add PCIe Gen4
 driver for NXP Layerscape SoCs
To: Laurentiu Tudor <laurentiu.tudor@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Olof Johansson <olof@lixom.net>
References: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
 <CAOesGMjAQSfx1WZr6b1kNX=Exipj_f4X_f39Db7AxXr4xG4Tkg@mail.gmail.com>
 <DB8PR04MB6747DA8E1480DCF3EFF67C9284500@DB8PR04MB6747.eurprd04.prod.outlook.com>
 <20200110153347.GA29372@e121166-lin.cambridge.arm.com>
 <CAOesGMj9X1c7eJ4gX2QWXSNszPkRn68E4pkrSCxKMYJG7JHwsg@mail.gmail.com>
 <DB8PR04MB67473114B315FBCC97D0C6F9841D0@DB8PR04MB6747.eurprd04.prod.outlook.com>
 <CAOesGMieMXHWBO_p9YJXWWneC47g+TGDt9SVfvnp5tShj5gbPw@mail.gmail.com>
 <20200210152257.GD25745@shell.armlinux.org.uk>
 <CAOesGMj6B-X1s8-mYqS0N6GJXdKka1MxaNV=33D1H++h7bmXrA@mail.gmail.com>
 <CADRPPNSXPCVQEWXfYOpmGBCXMg2MvSPqDEMeeH_8VhkPHDuR5w@mail.gmail.com>
 <da4dcdc7-c022-db67-cda2-f90f086b729e@nxp.com>
 <aec47903-50e4-c61b-6aec-63e3e9bc9332@arm.com>
 <27e0acfc-0782-bd97-a80e-1143f1315891@nxp.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <60272422-b4c8-a86a-fa73-c158f723acb4@arm.com>
Date: Tue, 11 Feb 2020 14:51:01 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <27e0acfc-0782-bd97-a80e-1143f1315891@nxp.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_065112_713536_66F6A744 
X-CRM114-Status: GOOD (  19.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Diana Madalina Craciun <diana.craciun@nxp.com>,
 "M.h. Lian" <minghuan.lian@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "andrew.murray@arm.com" <andrew.murray@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTEvMDIvMjAyMCAxOjU1IHBtLCBMYXVyZW50aXUgVHVkb3Igd3JvdGU6Cj4gCj4gCj4gT24g
MTEuMDIuMjAyMCAxNTowNCwgUm9iaW4gTXVycGh5IHdyb3RlOgo+PiBPbiAyMDIwLTAyLTExIDEy
OjEzIHBtLCBMYXVyZW50aXUgVHVkb3Igd3JvdGU6Cj4+IFsuLi5dCj4+Pj4gVGhpcyBpcyBhIGtu
b3duIGlzc3VlIGFib3V0IERQQUEyIE1DIGJ1cyBub3Qgd29ya2luZyB3ZWxsIHdpdGggU01NVQo+
Pj4+IGJhc2VkIElPIG1hcHBpbmcuwqAgQWRkaW5nIExhdXJlbnRpdSB0byB0aGUgY2hhaW4gd2hv
IGhhcyBiZWVuIGxvb2tpbmcKPj4+PiBpbnRvIHRoaXMgaXNzdWUuCj4+Pgo+Pj4gWWVzLCBJJ20g
Y2xvc2VseSBmb2xsb3dpbmcgdGhlIGlzc3VlLiBJIGFjdHVhbGx5IGhhdmUgYSB3b3JrYXJvdW5k
IAo+Pj4gKGF0dGFjaGVkKSBidXQgaGF2ZW4ndCBzdWJtaXR0ZWQgYXMgaXQgd2lsbCBwcm9iYWJs
eSByYWlzZSBhIGxvdCBvZiAKPj4+IGV5ZWJyb3dzLiBJbiB0aGUgbWVhbiB0aW1lIEknbSBmb2xs
b3dpbmcgc29tZSBkaXNjdXNzaW9ucyBbMV1bMl1bM10gCj4+PiBvbiB0aGUgaW9tbXUgbGlzdCB3
aGljaCBzZWVtIHRvIHRyeSB0byB0YWNrbGUgd2hhdCBhcHBlYXJzIHRvIGJlIGEgCj4+PiBzaW1p
bGFyIGlzc3VlIGJ1dCB3aXRoIGZyYW1lYnVmZmVycy4gTXkgaG9wZSBpcyB0aGF0IHdlIHdpbGwg
YmUgYWJsZSAKPj4+IHRvIGxldmVyYWdlIHdoYXRldmVyIHR1cm5zIG91dC4KPj4KPj4gSW5kZWVk
IGl0J3MgbW9yZSBnZW5lcmFsIHRoYW4gZnJhbWVidWZmZXJzIC0gaW4gZmFjdCB0aGVyZSB3YXMg
YSAKPj4gc3BlY2lmaWMgcmVxdWlyZW1lbnQgZnJvbSB0aGUgSU9SVCBzaWRlIHRvIGFjY29tbW9k
YXRlIG5ldHdvcmsvc3RvcmFnZSAKPj4gY29udHJvbGxlcnMgd2l0aCBpbi1tZW1vcnkgZmlybXdh
cmUvY29uZmlndXJhdGlvbiBkYXRhL3doYXRldmVyIHNldCB1cCAKPj4gYnkgdGhlIGJvb3Rsb2Fk
ZXIgdGhhdCB3YW50IHRvIGJlIGhhbmRlZCBvZmYgJ2xpdmUnIHRvIExpbnV4IGJlY2F1c2UgCj4+
IHRoZSBvdmVyaGVhZCBvZiBzdG9wcGluZyBhbmQgcmVzdGFydGluZyB0aGVtIGlzIGltcHJhY3Rp
Y2FsLiBUaHVzIHRoaXMgCj4+IERQQUEyIHNldHVwIGlzIHZlcnkgbXVjaCB3aXRoaW4gc2NvcGUg
b2YgdGhlIGRlc2lyZWQgc29sdXRpb24sIHNvIAo+PiBwbGVhc2UgZmVlbCBmcmVlIHRvIGpvaW4g
aW4gKHBhcnRpY3VsYXJseSBvbiB0aGUgRFQgcGFydHMpIDopCj4gCj4gV2lsbCBzdXJlIGRvLiBT
ZWVtcyB0aGF0IHRoZSAybmQgYXBwcm9hY2ggKHRoZSBvbmUgd2l0aCBsaXN0IG9mIAo+IGNvbXBh
dGlibGVzIGluIGFybS1zbW11KSBmaXRzIHJlYWxseSB3ZWxsIHdpdGggb3VyIHNjZW5hcmlvLiBX
aWxsIHRoaXMgCj4gYmUgdGhlIHdheSB0byBnbyBmb3J3YXJkPwoKSSdtIGhvcGluZyB0aGF0IFRo
aWVycnkncyBwcm9wb3NhbCBjYW4gYmUgbWFkZSB0byB3b3JrIG91dCwgc2luY2UgaXQncyAKY2xv
c2VyIHRvIGhvdyB0aGUgQUNQSSB2ZXJzaW9uIHNob3VsZCB3b3JrLCB3aGljaCBtZWFucyB3ZSB3
b3VsZCBiZSBhYmxlIAp0byBkbyBhIGxvdCBtb3JlIGluIHNoYXJlZCBjb21tb24gY29kZSByYXRo
ZXIgdGhhbiBiYWtpbmcgbWFnaWMgCmtub3dsZWRnZSBhbmQgZHVwbGljYXRlZCBmdW5jdGlvbmFs
aXR5IGludG8gaW5kaXZpZHVhbCBJT01NVSBkcml2ZXJzLgoKPj4gQXMgZm9yIHJpZ2h0IG5vdywg
bm90ZSB0aGF0IHlvdXIgcGF0Y2ggd291bGQgb25seSBiZSBhIHBhcnRpYWwgCj4+IG1pdGlnYXRp
b24gdG8gc2xpZ2h0bHkgcmVkdWNlIHRoZSBmYXVsdCB3aW5kb3cgYnV0IG5vdCByZW1vdmUgaXQg
Cj4+IGVudGlyZWx5LiBUbyBiZSByb2J1c3QgdGhlIFNNTVUgZHJpdmVyICpoYXMqIHRvIGtub3cg
YWJvdXQgbGl2ZSAKPj4gc3RyZWFtcyBiZWZvcmUgdGhlIGZpcnN0IGFybV9zbW11X3Jlc2V0KCkg
LSBoZW5jZSB0aGUgbmVlZCBmb3IgZ2VuZXJpYyAKPj4gZmlybXdhcmUgYmluZGluZ3MgLSBzbyBk
b2luZyBhbnl0aGluZyBmcm9tIHRoZSBNQyBkcml2ZXIgaXMgYWxyZWFkeSAKPj4gdG9vIGxhdGUg
KGFuZCBpbmRlZWQgdGhlIGN1cnJlbnQgaW9tbXVfcmVxdWVzdF9kbV9mb3JfZGV2KCkgbWVjaGFu
aXNtIAo+PiBpcyBpdHNlbGYgYSBtaWNyb2Nvc20gb2YgdGhlIHNhbWUgcHJvYmxlbSkuCj4gCj4g
SSB0aGluayB5b3UgbWlnaHQgaGF2ZSBtaXNzZWQgaW4gdGhlIHBhdGNoIHRoYXQgaXQgcGF1c2Vz
IHRoZSBmaXJtd2FyZSAKPiBhdCBlYXJseSBib290LCBpbiBpdHMgZHJpdmVyIGluaXQgYW5kIGl0
IHJlc3VtZXMgaXQgb25seSBhZnRlciAKPiBpb21tdV9yZXF1ZXN0X2RtX2Zvcl9kZXYoKSBoYXMg
Y29tcGxldGVkLiA6KQoKQWgsIGZyb20gdGhlIGNvbnRleHQgSSBtaXNzZWQgdGhhdCB0aGF0IHdh
cyBub24tbW9kdWxhciBhbmQgcmVseWluZyBvbiAKaW5pdGNhbGwgdHJpY2tlcnkuLi4gZmFpciBl
bm91Z2gsIGluIHRoYXQgY2FzZSBJJ2xsIGRvd25ncmFkZSBteSAiaXQncyAKaW5zdWZmaWNpZW50
IiB0byAiaXQncyB1Z2x5IGFuZCBzb21ld2hhdCBmcmFnaWxlIiA6UAoKVGhhbmtzLApSb2Jpbi4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
