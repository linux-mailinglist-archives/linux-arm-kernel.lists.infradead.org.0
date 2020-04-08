Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3319A1A1EC0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 12:26:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=obV+DlFKpVX4sqYyI1RUVHnmTsOupn9Ba0tjRPoU11k=; b=HSrVSLOOuCwO9HlYlD1Fbqi2C
	CO2x4EKJqqYGh7m8dVARu3dTh5AfNkwlzQDoZiI2xCkvgceEA5H1CdHZDl+I20qi3MpS3bDWs+CEa
	oYFsEhbW0nkeaVSGpfH1BByVn/DI6f0PyssPMMUSm7gIfaKBP5wKN05tmMEY5OGW5/HeiRsnBPD+5
	FZq6kN4buQfDgAki9NB3OGb7hJvMESFu1jU2BzMRCcZ05KoAsaea6TDL7oESEpesNCxcQnydOvGGO
	E0kxuwScwF6f/B+3+wsXZIDyFpBf+58e7tdA+8T7IE7wrejMD/3bEHyw76vq8vg0QAD5IzNci4wHK
	pbNBG4YGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM7un-0002n9-R7; Wed, 08 Apr 2020 10:26:37 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM7ug-0002mZ-Bl
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 10:26:32 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 09A50195B5C7AFE7BC58;
 Wed,  8 Apr 2020 11:26:23 +0100 (IST)
Received: from [127.0.0.1] (10.210.166.224) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Wed, 8 Apr 2020
 11:26:22 +0100
Subject: Re: [PATCH 0/6] perf/imx_ddr: Add namespace for i.MX8 DDR Perf
To: Joakim Zhang <qiangqing.zhang@nxp.com>
References: <20200222104621.2258-1-qiangqing.zhang@nxp.com>
 <6dbeabcf-c15a-0bbd-cef4-b25d0133854f@huawei.com>
 <DB7PR04MB4618D2E1892120EB659B8695E6EC0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <2f81eb7a-a6e4-1cc6-cd0a-ca3d749bd552@huawei.com>
 <DB7PR04MB4618C0A8DD9BAB2A529CDCECE6EA0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <a2cc0772-4f5d-aba3-1f5c-7d4eef7a3f72@huawei.com>
 <DB7PR04MB461803AD15E47AA880F0915DE6EA0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <55836919-41b5-0834-f7a7-1a2a34535677@huawei.com>
 <bd67910e-1522-39cd-5527-b9b18f3da96d@huawei.com>
 <DB8PR04MB6795996085AD2167E2358907E6C30@DB8PR04MB6795.eurprd04.prod.outlook.com>
 <ccab39b0-c84f-e529-4067-07466b5433a1@huawei.com>
 <VI1PR04MB68000808CEE4BC23403C35A0E6C00@VI1PR04MB6800.eurprd04.prod.outlook.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <ca2db002-975a-ffe0-2dfc-c85f4e6205bb@huawei.com>
Date: Wed, 8 Apr 2020 11:25:59 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB68000808CEE4BC23403C35A0E6C00@VI1PR04MB6800.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [10.210.166.224]
X-ClientProxiedBy: lhreml738-chm.china.huawei.com (10.201.108.188) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_032630_549929_CB97C070 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Zhangshaokun <zhangshaokun@hisilicon.com>, Jiri Olsa <jolsa@redhat.com>,
 Frank Li <frank.li@nxp.com>, Linuxarm <linuxarm@huawei.com>,
 "acme@kernel.org" <acme@kernel.org>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDgvMDQvMjAyMCAwNjowNCwgSm9ha2ltIFpoYW5nIHdyb3RlOgo+PiAgIC4gQ2FuIHlvdSBh
ZGQgdGhpcywgcmVnZW5lcmF0ZSwKPj4gYW5kIHJldHJ5Ogo+Pgo+PiBkaWZmIC0tZ2l0IGEvdG9v
bHMvcGVyZi9wbXUtZXZlbnRzL2pldmVudHMuYyBiL3Rvb2xzL3BlcmYvcG11LWV2ZW50cy9qZXZl
bnRzLmMKPj4gaW5kZXggNjc1YWVjOTg4MWNlLi4xNmRjZjAwYzc5MmEgMTAwNjQ0Cj4+IC0tLSBh
L3Rvb2xzL3BlcmYvcG11LWV2ZW50cy9qZXZlbnRzLmMKPj4gKysrIGIvdG9vbHMvcGVyZi9wbXUt
ZXZlbnRzL2pldmVudHMuYwo+PiBAQCAtMjU4LDYgKzI1OCw3IEBAIHN0YXRpYyBzdHJ1Y3QgbWFw
IHsKPj4gICAgICAgICAgeyAiaGlzaV9zY2NsLGwzYyIsICJoaXNpX3NjY2wsbDNjIiB9LAo+PiAg
ICAgICAgICAvKiBpdCdzIG5vdCByZWFsaXN0aWMgdG8ga2VlcCBhZGRpbmcgdGhlc2UsIHdlIG5l
ZWQgc29tZXRoaW5nIG1vcmUKPj4gc2NhbGFibGUgLi4uICovCj4+ICAgICAgICAgIHsgInNtbXV2
M19wbWNnIiwgInNtbXV2M19wbWNnIiB9LAo+PiArICAgICAgIHsgImlteDhfZGRyIiwgImlteDhf
ZGRyIiB9LAo+PiAgICAgICAgICB7ICJMM1BNQyIsICJhbWRfbDMiIH0sCj4+ICAgICAgICAgIHt9
Cj4gWWVzLCBldmVudHMgY2FuIHdvcmsgYWZ0ZXIgYWRkaW5nIHRoaXMgY29kZSwgaG93ZXZlciwg
bWV0cmljcyBzdGlsbCBjYW4ndCB3b3JrLCBpdCBzZWVtcyB0aGF0IG1ldHJpY2dyb3VwIGZhaWxz
IHRvIHBhcnNlIHRoZSBtZXRyaWMgZXhwcmVzc2lvbi4gWW91IG1heSBjaGFuZ2Ugc29tZXRoaW5n
IGZyb20gbWV0cmljZ3JvdXAuYyBjYXVzaW5nIHRoaXMgaXNzdWUuCgpUaGF0IGNvZGUgc2hvdWxk
IGJlIGVmZmVjdGl2ZWx5IHRoZSBzYW1lLgoKV2hhdCBkb2VzIHBlcmYgbGlzdCBzaG93IGZvciB0
aGUgbWV0cmljcyBub3c/Cgo+IAo+Pj4gcm9vdEBpbXg4bW1ldms6fiMgLi9wZXJmIHN0YXQgLWEg
LUkgMTAwMCAtTSBpbXg4bW1fZGRyMF9yZWFkLmFsbCBldmVudAoKQ2FuIHlvdSBydW4gd2l0aCAt
diBvcHRpb24gYW5kIHNoYXJlIHRoZSByZXN1bHQ/Cgo+Pj4gc3ludGF4IGVycm9yOiAnJwo+Pj4g
ICAgICAgICAgICAgICAgICAgICAgICAgXF9fXyBwYXJzZXIgZXJyb3IKPj4+Cj4+PiAgICBVc2Fn
ZTogcGVyZiBzdGF0IFs8b3B0aW9ucz5dIFs8Y29tbWFuZD5dCj4+Pgo+Pj4gICAgICAgLU0sIC0t
bWV0cmljcyA8bWV0cmljL21ldHJpYyBncm91cCBsaXN0Pgo+Pj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIG1vbml0b3Igc3BlY2lmaWVkIG1ldHJpY3Mgb3IgbWV0cmljIGdyb3Vwcwo+Pj4g
KHNlcGFyYXRlZCBieSAsKQo+Pj4KPj4+IEhvd2V2ZXIsIGl0IGNhbiB3b3JrIG9uIGJyYW5jaDoK
Pj4gcHJpdmF0ZS10b3BpYy1wZXJmLTUuNi1wbXUtZXZlbnRzLXVwc3RyZWFtLXYyLiBXaGF0IGNo
YW5nZXMgaGF2ZSB5b3UgbWFkZQo+PiBjb21wYXJlZCB0byBsYXN0Pwo+Pj4gQ291bGQgeW91IGhl
bHAgZG8gYmVsb3cgY2hhbmdlPyBTaW5jZSBzb21lIFNvY3MgbWF5IGhhdmUgdHdvIGRkcgo+PiBj
b250cm9sbGVyKGRkcjAvZGRyMSkgd2l0aCB0aGUgc2FtZSBldmVudCBjb2RlLgo+Pgo+PiBUaGUg
cGVyZiB0b29sIGNhbiBoYW5kbGUgdGhhdC4gU28ganVzdCBydW4gcGVyZiB3aXRoIC12IG9wdGlv
biwgYW5kIGl0IHdpbGwgc2hvdwo+PiBldmVudCBjb3VudCBicmVha2Rvd24gcGVyIFBNVSwgbGlr
ZSB0aGlzOgo+Pgo+PiByb290QHVidW50dTovIyAuL3BlcmYgc3RhdCAtdiAtZSBzbW11djNfcG1j
Zy5sMV90bGIgc2xlZXAgMSBVc2luZyBDUFVJRAo+PiAweDAwMDAwMDAwNDgwZmQwMTAgVXNpbmcg
U1lTSUQgSElQMDgKPj4gLT4gc21tdXYzX3BtY2dfMjAwMTAwMDIwL2V2ZW50PTB4OGEvCj4+IC0+
IHNtbXV2M19wbWNnXzIwMDE0MDAyMC9ldmVudD0weDhhLwo+PiAtPiBzbW11djNfcG1jZ18xMDAw
MjAvZXZlbnQ9MHg4YS8KPj4gLT4gc21tdXYzX3BtY2dfMTQwMDIwL2V2ZW50PTB4OGEvCj4+IC0+
IHNtbXV2M19wbWNnXzIwMDE0ODAyMC9ldmVudD0weDhhLwo+PiAtPiBzbW11djNfcG1jZ18xNDgw
MjAvZXZlbnQ9MHg4YS8KPj4gc21tdXYzX3BtY2cubDFfdGxiOiAwIDEwMDEyMjE2OTAgMTAwMTIy
MTY5MAo+PiBzbW11djNfcG1jZy5sMV90bGI6IDAgMTAwMTIyMDA5MCAxMDAxMjIwMDkwCj4+IHNt
bXV2M19wbWNnLmwxX3RsYjogMTAxIDEwMDEyMTk2NjAgMTAwMTIxOTY2MAo+PiBzbW11djNfcG1j
Zy5sMV90bGI6IDAgMTAwMTIxOTAxMCAxMDAxMjE5MDEwCj4+IHNtbXV2M19wbWNnLmwxX3RsYjog
MCAxMDAxMjE4MzYwIDEwMDEyMTgzNjAKPj4gc21tdXYzX3BtY2cubDFfdGxiOiAxMzQgMTAwMTIx
Nzg1MCAxMDAxMjE3ODUwCj4+Cj4+IEhlcmUgc21tdXYzX3BtY2dfMjAwMTAwMDIwLCBzbW11djNf
cG1jZ18yMDAxNDAwMjAsIGV0YyBhcmUgYWxsCj4+IGluc3RhbmNlcyBvZiB0aGUgc2FtZSBQTVUs
IGxpa2UgeW91ciBERFJDLgo+Pgo+PiBBbmQgaWYgeW91IHdhbnQgdG8gcnVuIGp1c3QgZm9yIGEg
c2luZ2xlIFBNVSwgdHJ5IGxpa2U6Cj4+Cj4+IC4vcGVyZiBzdGF0IC1lIHNtbXV2M19wbWNnXzIw
MDE0ODAyMC9zbW11djNfcG1jZy5sMV90bGIvCj4gVGhhbmsgeW91IGZvciB5b3VyIGhpbnQsIGl0
IGlzIHJlYWxseSB1c2VmdWwuCj4gCj4gVGhlbiBwbGVhc2UgaGVscCB1cGRhdGUgdGhlIGRkcmMu
anNvbiBhbmQgbWV0cmljLmpzb246CgpvaywgZmluZQoKPiBkZHJjLmpzb246Cj4gWwo+ICAgICB7
Cj4gICAgICAgICAgICAgIkJyaWVmRGVzY3JpcHRpb24iOiAiZGRyIGN5Y2xlcyBldmVudCIsCj4g
ICAgICAgICAgICAgIkV2ZW50Q29kZSI6ICIweDAwIiwKPiAgICAgICAgICAgICAiRXZlbnROYW1l
IjogImlteDhfZGRyLmN5Y2xlcyIsCgpub3RlOiBpZiB5b3UgaGF2ZSBqdXN0ICJjeWNsZXMiIGhl
cmUsIGluc3RlYWQgb2YgImlteDhfZGRyLmN5Y2xlcyIsIHRoZW4gCnRoZSBIVyBQTVUgZXZlbnQg
d2lsbCBub3Qgc2hvdyBpbiBwZXJmIGxpc3QgYW5kIHlvdSBvbmx5IGdldCB0aGUgYWxpYXMgCnVu
ZGVyIOKAnGlteDhfZGRy4oCdIGdyb3VwLiBUaGlzIGNhbiBiZSBnb29kIGlmIHlvdXIgUE1VIGhh
cyBzbyBtYW55IGV2ZW50cyAKYW5kIHlvdSBkb24ndCB3YW50IHRvIHNob3cgdGhlbSBhbGwuIEZv
ciBoaXNpbGljb24gUE1VLCB3ZSBoYXZlIG92ZXIgNjAwIApIVyBQTVUgZXZlbnRzLgoKSG93ZXZl
ciwgYXMgSSBzZWUsIGEgZG93bnNpZGUgaXMgdGhhdCBtYW55IFBNVXMgaGF2ZSAiY3ljbGVzIiBl
dmVudHMsIAphbmQgaWYgeW91IGp1c3QgdXNlICJjeWNsZXMiIGFzIHBlcmYgZXZlbnQsIHRoZW4g
aXQgbWF5IGp1c3QgdXNlIHRoZSAKaW5jb3JyZWN0IFBNVSBieSBhY2NpZGVudC4gSSBuZWVkIHRv
IGNoZWNrIHRoaXMgbW9yZS4KCnRoYW5rcywKSm9obgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
