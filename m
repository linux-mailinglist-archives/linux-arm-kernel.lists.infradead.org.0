Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93448197A56
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 13:04:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ldHDUDnra2U84Aqq2AXZ6TM45edLJtvDpCtSitvl9ms=; b=tlA047kOL/SoAMmQyqSiwYL0I
	UqPF62mW4qxNdT8bjD2avS5b4YENMoNqAAqBiX9gR09TCag6NU2XPw6S3TPpLMUn2/LX3Aua3t6sh
	pOYN/Nu98nZ1OG6kc2kzb9uLFa+qUn58F93ReS9/BO5qCESGozFX2zljiwH+z8r6CzGnQUUYZgMQ5
	TRqgBwoove92cQlMMuVeEngcmqS8aEoLrzv+Zmm4Jkg8T9nIFlTibUxk8+zmXlePz3jk1DXY3WkcP
	Xb2JOP0Rt/nTaNDy8WChxLKGXcAwJT+/13GIqCf45lbYuTLDHyjosMn1eoP5lmG1JjgL445VkgeD1
	sMST8XqRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIsDX-00012v-Bw; Mon, 30 Mar 2020 11:04:31 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIsDO-00011t-JA
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 11:04:24 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id C3040E8136E03DC0BEF8;
 Mon, 30 Mar 2020 12:04:01 +0100 (IST)
Received: from [127.0.0.1] (10.47.8.155) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 30 Mar
 2020 12:04:00 +0100
Subject: Re: [PATCH 0/6] perf/imx_ddr: Add namespace for i.MX8 DDR Perf
From: John Garry <john.garry@huawei.com>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
References: <20200222104621.2258-1-qiangqing.zhang@nxp.com>
 <6dbeabcf-c15a-0bbd-cef4-b25d0133854f@huawei.com>
 <DB7PR04MB4618D2E1892120EB659B8695E6EC0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <2f81eb7a-a6e4-1cc6-cd0a-ca3d749bd552@huawei.com>
 <DB7PR04MB4618C0A8DD9BAB2A529CDCECE6EA0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <a2cc0772-4f5d-aba3-1f5c-7d4eef7a3f72@huawei.com>
 <DB7PR04MB461803AD15E47AA880F0915DE6EA0@DB7PR04MB4618.eurprd04.prod.outlook.com>
 <55836919-41b5-0834-f7a7-1a2a34535677@huawei.com>
Message-ID: <bd67910e-1522-39cd-5527-b9b18f3da96d@huawei.com>
Date: Mon, 30 Mar 2020 12:03:44 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <55836919-41b5-0834-f7a7-1a2a34535677@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.47.8.155]
X-ClientProxiedBy: lhreml727-chm.china.huawei.com (10.201.108.78) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_040422_780228_E7700352 
X-CRM114-Status: GOOD (  22.68  )
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

T24gMjYvMDIvMjAyMCAxNzo0NiwgSm9obiBHYXJyeSB3cm90ZToKPj4+Pgo+Pj4+IEhvd2V2ZXIs
IHRoZXJlIGlzIGFuIGlzc3VlIGZyb20gbWV0cmljIHRlc3QuCj4+Pgo+Pj4gR29vZCwgc28gSSBu
b3cgaG9wZSB0aGF0IHlvdSBjYW4gZml4IHVwIHlvdXIgZXZlbnRzIGFuZCBtZXRyaWNzIEpTT05z
IAo+Pj4gYXMgeW91Cj4+PiB3YW50IHRoZW0uCj4+IFllcywgSSBoYXZlIHNlbnQgb3V0IHRoZSBw
dWxsIHJlcXVlc3QgdG8gZml4IHVwIHRoZW0uCj4gCj4gUGxlYXNlIG5vdGUgdGhhdCBqaXJrYSBh
bHNvIHJlcXVlc3RlZCB0aGF0IEkgYWRkIGEgUE1VIGV2ZW50cyBwZXJmIHRlc3QsIAo+IGFuZCBp
dCBsb29rcyBsaWtlIHRoYXQgd2lsbCBuZWVkIHRvIGdvIGJlZm9yZSBub24tUkZDIHZlcnNpb24g
b2YgdGhpcyAKPiBzZXJpZXMuLi4KPiAKPj4KPj4KPj4+Pgo+Pj4+IFRoZSByZXN1bHQgaXMgaW5j
b3JyZWN0IGlmIHdlIHVzZSptb3JlIHRoYW4gb25lKsKgIGV2ZW50IGluIG1ldHJpYyAKPj4+PiBl
eHByZXNzaW9uLAo+Pj4gc3VjaCBhczoKPj4+PiAiTWV0cmljRXhwciI6ICJpbXg4X2Rkci53cml0
ZS9pbXg4X2Rkci5jeWNsZXMiLCBPcgo+Pj4+ICJNZXRyaWNFeHByIjogImlteDhfZGRyLndyaXRl
ICsgaW14OF9kZHIuY3ljbGVzIiwKPj4+Pgo+Pj4+IElmIHlvdSBvbmx5IHNldCB0aGUgdGltZW91
dCgtLXRpbWVvdXQgMTAwMCBvciBzbGVlcCAxKSwgdGhlIHJlc3VsdCAKPj4+PiBpcyBjb3JyZWN0
Lgo+Pj4+IC4vcGVyZiBzdGF0IC1NIGlteDhtbV9kZHIwX3JlYWQuYWxsIHNsZWVwIDEgLi9wZXJm
IHN0YXQgLS10aW1lb3V0IDEwMDAKPj4+PiAtTSBpbXg4bW1fZGRyMF9yZWFkLmFsbAo+Pj4+Cj4+
Pj4gQnV0LCBpZiB5b3Ugc2V0IGludGVydmFsKC1JIHBhcmFtZXRlciksIG9ubHkgdGhlIGZpcnN0
IHJlc3VsdCBpcyAKPj4+PiBjb3JyZWN0LCBmb2xsb3dpbmcKPj4+IHJlc3VsdHMgYXJlIGluY29y
cmVjdC4KPj4+PiAuL3BlcmYgc3RhdCAtSSAxMDAwIC1NIGlteDhtbV9kZHIwX3JlYWQuYWxsCj4+
Pj4KPj4+PiBUaGlzIHNob3VsZG4ndCBiZWVuIGludHJvZHVjZWQgYnkgeW91ciBjb2RlIGNoYW5n
ZSwgdGhpcyBwcm9ibGVtIG1heSAKPj4+PiBhbHdheXMKPj4+IGV4aXN0Lgo+Pj4KPj4+IEknbSBu
b3Qgc3VyZSBpZiB0aGlzIGlzIGFuIGlzc3VlIG9yIHdoZXRoZXIgeW91J3JlIHVzaW5nIHRoZSB0
b29sIAo+Pj4gcHJvcGVybHkuCj4+Pgo+Pj4gSXQgbWlnaHQgaGVscCBpZiB5b3UgY2FuIHJlcHJv
ZHVjZSBvbiBhIHg4NiBtYWNoaW5lIG9yIG90aGVyIGFyY2ggCj4+PiB3aGljaCBoYXMKPj4+IG1l
dHJpYyBzdXBwb3J0IG9uIG1haW5saW5lIHRvZGF5IC0gbGlrZSBwb3dlciAtIGFuZCBxdWVyeSBh
Ym91dCB0aGF0Lgo+Pgo+PiBTb3JyeSwgSSBvbmx5IGhhdmUgdGhlIGFybTY0IG1hY2hpbmUuIAo+
IAo+IEdyZWF0LCBzbyB5b3UgZG8geW91ciBkZXZlbG9wbWVudCBvbiBhbiBhcm02NCBtYWNoaW5l
IGFzIHdlbGwuCj4gCj4gU28gSSBob3BlIHlvdSBtYXkgcmVwcm9kdWNlIGl0LiBZb3UganVzdCBu
ZWVkIHRvIGFkZCBhIG1ldHJpYyBmb3IgU01NVSAKPiB0byBjb25zdHJ1Y3Qgc3VjaCBjYXNlLgo+
PiBJIGFtIG5vdCBmYW1pbGlhciB0byBwZXJmIHRvb2wsIHNvIEkgZmFpbGVkIHRvIGZpbmQgdGhl
IGNhdXNlLiA6LSgKPiAKPiBJIHdvdWxkbid0IHJlbHkgb24gbWUgdG8gZml4IHRoaXMgZm9yIHlv
dSBBVE0gKGFzc3VtaW5nIGl0IGlzIGFjdHVhbGx5IAo+IGJyb2tlbikuCj4gCj4gQWJvdXQgdGhp
czoKCkhpIEpvYWtpbSwKCkkgaGF2ZSB1cGRhdGVkIG15IHBlcmYgc2VyaWVzIGhlcmU6CgpodHRw
czovL2dpdGh1Yi5jb20vaGlzaWxpY29uL2tlcm5lbC1kZXYvY29tbWl0cy9wcml2YXRlLXRvcGlj
LXBlcmYtNS42LXN5cy1wbXUtZXZlbnRzLXYyLXVwc3RyZWFtCgpQbGVhc2UgdGVzdCBpdC4gSXQg
aXMgYmFzZWQgb24gaWRlbnRpZmllciBmaWxlIGluIGZvcm06Cgovc3lzL2J1cy9ldmVudF9idXMv
ZGV2aWNlcy9QTVUvaWRlbnRpZmllcgoKSXQgaW5jbHVkZXMgeW91ciBpbXg4bT8gc3VwcG9ydCwg
YnV0IEkgYW0gbm90IHN1cmUgaWYgaXQncyB0aGUgbGF0ZXN0IApKU09OcyB0aGVyZS4KCkpGWUks
IEkgYWxzbyBoYXZlIGFuIFJGQyBTTU1VIFBNQ0cgcGF0Y2ggaGVyZToKCmh0dHBzOi8vZ2l0aHVi
LmNvbS9oaXNpbGljb24va2VybmVsLWRldi90cmVlL3ByaXZhdGUtdG9waWMtcGVyZi01LjYtc21t
dS1wbWNnLWlkZW50aWZpZXIKClNpbmNlIHdlJ3JlIGluIHRoZSBtZXJnZSB3aW5kb3csIEkgd291
bGQgcmF0aGVyIGF2b2lkIHBvc3RpbmcgaXQgdGhpcyAKdmVyeSBtb21lbnQuCgpIZXJlIHdhcyBt
eSBjb3ZlciBsZXR0ZXI6CgotLS0tLS0tPjgtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQoKcGVyZiBwbXUtZXZlbnRzOiBTdXBwb3J0IGV2ZW50IGFsaWFzaW5nIGZv
ciBzeXN0ZW0gUE1VcwoKQ3VycmVudGx5IGV2ZW50IGFsaWFzaW5nIGZvciBvbmx5IENQVSBhbmQg
dW5jb3JlIFBNVXMgaXMgc3VwcG9ydGVkLiBJbgpmYWN0LCBvbmx5IHVuY29yZSBQTVVzIGFsaWFz
aW5nIGlzIHN1cHBvcnRlZCBmb3Igd2hlbiB0aGUgdW5jb3JlIFBNVXMgYXJlCmZpeGVkIGZvciBh
IENQVSBpcyBzdXBwb3J0ZWQsIHdoaWNoIG1heSBub3QgYWx3YXlzIGJlIHRoZSBjYXNlIGZvciBj
ZXJ0YWluCmFyY2hpdGVjdHVyZXMuCgpUaGlzIHNlcmllcyBhZGRzIHN1cHBvcnQgZm9yIFBNVSBl
dmVudCBhbGlhc2luZyBmb3Igc3lzdGVtIGFuZCBvdGhlcgp1bmNvcmUgUE1VcyB3aGljaCBhcmUg
bm90IGZpeGVkIHRvIGEgc3BlY2lmaWMgQ1BVLgoKRm9yIHRoaXMsIHdlIGludHJvZHVjZSBzeXN0
ZW0gZXZlbnQgdGFibGVzIGluIGdlbmVyYXRlZCBwbXUtZXZlbnRzLmMsCndoaWNoIGNvbnRhaW4g
YSBwZXItU29DIHRhYmxlIG9mIGV2ZW50cyBvZiBhbGwgaXRzIHN5c3RlbSBQTVVzLiBFYWNoCnBl
ci1QTVUgZXZlbnQgaXMgbWF0Y2hlZCBieSBhICJDT01QQVQiIHByb3BlcnR5LgoKV2hlbiBjcmVh
dGVkIGFsaWFzZXMgZm9yIFBNVXMsIHdlIHRyZWF0IGNvcmUvdW5jb3JlKiBhbmQgc3lzdGVtIFBN
VXMKZGlmZmVyZW50bHk6CgotIEZvciBDUFUgUE1VLCB3ZSBhbHdheXMgbWF0Y2ggZm9yIHRoZSBl
dmVudCBtYXBmaWxlIGJhc2VkIG9uIHRoZSBDUFVJRC4KICAgVGhpcyBoYXMgbm90IGNoYW5nZWQu
CgotIEZvciBhbiB1bmNvcmUgb3Igc3lzdGVtIFBNVSwgd2UgaXRlcmF0ZSB0aHJvdWdoIGFsbCB0
aGUgZXZlbnRzIGluIGFsbAogICB0aGUgc3lzdGVtIFBNVSB0YWJsZXMuCgogICBNYXRjaGVzIGFy
ZSBiYXNlZCBvbiB0aGUgIkNPTVBBVCIgcHJvcGVydHkgbWF0Y2hpbmcgdGhlIFBNVSBzeXNmcwog
ICBpZGVudGlmaWVyIGNvbnRlbnRzLgoKKiB1bmNvcmUgUE1VcyBtYXkgYWxzbyBiZSBtYXRjaGVk
IGJ5IHN5c3RlbSBQTVVzIGV2ZW50IHN1cHBvcnQuCgpJbml0aWFsIHJlZmVyZW5jZSBzdXBwb3J0
IGlzIGFsc28gYWRkZWQgZm9yIEFSTSBTTU1VdjMgUE1DRyAoUGVyZm9ybWFuY2UKTW9uaXRvciBF
dmVudCBHcm91cCkgUE1VIGZvciBIaVNpbGljb24gaGlwMDggcGxhdGZvcm0gd2l0aCBvbmx5IGEg
c2luZ2xlCmV2ZW50IHNvIGZhciAtIHNlZSBkcml2ZXIgaW4gZHJpdmVycy9wZXJmL2FybV9zbW11
djNfcG11LmMgZm9yIHRoYXQgZHJpdmVyLgoKSGVyZSBpcyBhIHNhbXBsZSBvdXRwdXQgd2l0aCB0
aGlzIHNlcmllczoKCnJvb3RAdWJ1bnR1Oi8jIC4vcGVyZiBsaXN0CiAgIFsuLi5dCgpzbW11IHYz
IHBtY2c6CiAgIGNvbmZpZ19jYWNoZV9taXNzCiAgICAgICAgW0NvbmZpZ3VyYXRpb24gY2FjaGUg
bWlzcyBjYXVzZWQgYnkgdHJhbnNhY3Rpb24gb3IoQVRTIG9yCiAgICAgICAgbm9uLUFUUyl0cmFu
c2xhdGlvbiByZXF1ZXN0LiBVbml0OiBzbW11djNfcG1jZ10KICAgY29uZmlnX3N0cnVjdF9hY2Nl
c3MKICAgICAgICBbQ29uZmlndXJhdGlvbiBzdHJ1Y3R1cmUgYWNjZXNzLiBVbml0OiBzbW11djNf
cG1jZ10KICAgY3ljbGVzCiAgICAgICAgW0Nsb2NrIGN5Y2xlcy4gVW5pdDogc21tdXYzX3BtY2dd
CiAgIGwxX3RsYgogICAgICAgIFtTTU1VdjMgUE1DRyBMMSBUQUJMRSB0cmFuc2F0aW9uLiBVbml0
OiBzbW11djNfcG1jZ10KICAgcGNpZV9hdHNfdHJhbnNfcGFzc2VkCiAgICAgICAgW1BDSWUgQVRT
IFRyYW5zbGF0ZWQgVHJhbnNhY3Rpb24gcGFzc2VkIHRocm91Z2ggU01NVS4gVW5pdDogCnNtbXV2
M19wbWNnXQogICBwY2llX2F0c190cmFuc19ycQogICAgICAgIFtQQ0llIEFUUyBUcmFuc2xhdGlv
biBSZXF1ZXN0IHJlY2VpdmVkLiBVbml0OiBzbW11djNfcG1jZ10KICAgdGxiX21pc3MKICAgICAg
ICBbVExCIG1pc3MgY2F1c2VkIGJ5IGluY29taW5ndHJhbnNhY3Rpb24gb3IgKEFUUyBvciBub24t
QVRTKSAKdHJhbnNsYXRpb24KICAgICAgICAgcmVxdWVzdC4gVW5pdDogc21tdXYzX3BtY2ddCiAg
IHRyYW5zX3RhYmxlX3dhbGtfYWNjZXNzCiAgICAgICAgW1RyYW5zbGF0aW9uIHRhYmxlIHdhbGsg
YWNjZXNzLiBVbml0OiBzbW11djNfcG1jZ10KICAgdHJhbnNhY3Rpb24KICAgICAgICBbVHJhbnNh
Y3Rpb24uIFVuaXQ6IHNtbXV2M19wbWNnXQoKCnJvb3RAdWJ1bnR1Oi8jIC4vcGVyZiBzdGF0IC12
IC1lIHNtbXV2M19wbWNnLmwxX3RsYiBzbGVlcCAxClVzaW5nIENQVUlEIDB4MDAwMDAwMDA0ODBm
ZDAxMApVc2luZyBTWVNJRCBISVAwOAotPiBzbW11djNfcG1jZ18yMDAxMDAwMjAvZXZlbnQ9MHg4
YS8KLT4gc21tdXYzX3BtY2dfMjAwMTQwMDIwL2V2ZW50PTB4OGEvCi0+IHNtbXV2M19wbWNnXzEw
MDAyMC9ldmVudD0weDhhLwotPiBzbW11djNfcG1jZ18xNDAwMjAvZXZlbnQ9MHg4YS8KLT4gc21t
dXYzX3BtY2dfMjAwMTQ4MDIwL2V2ZW50PTB4OGEvCi0+IHNtbXV2M19wbWNnXzE0ODAyMC9ldmVu
dD0weDhhLwpzbW11djNfcG1jZy5sMV90bGI6IDAgMTAwMTIyMTY5MCAxMDAxMjIxNjkwCnNtbXV2
M19wbWNnLmwxX3RsYjogMCAxMDAxMjIwMDkwIDEwMDEyMjAwOTAKc21tdXYzX3BtY2cubDFfdGxi
OiAxMDEgMTAwMTIxOTY2MCAxMDAxMjE5NjYwCnNtbXV2M19wbWNnLmwxX3RsYjogMCAxMDAxMjE5
MDEwIDEwMDEyMTkwMTAKc21tdXYzX3BtY2cubDFfdGxiOiAwIDEwMDEyMTgzNjAgMTAwMTIxODM2
MApzbW11djNfcG1jZy5sMV90bGI6IDEzNCAxMDAxMjE3ODUwIDEwMDEyMTc4NTAKClBlcmZvcm1h
bmNlIGNvdW50ZXIgc3RhdHMgZm9yICdzeXN0ZW0gd2lkZSc6CgogICAgICAgICAgICAgICAgMjM1
ICAgICAgc21tdXYzX3BtY2cubDFfdGxiIAoKCiAgICAgICAgMS4wMDEyNjMxMjggc2Vjb25kcyB0
aW1lIGVsYXBzZWQKCnJvb3RAdWJ1bnR1Oi8jCgpTdXBwb3J0IGlzIGFsc28gYWRkZWQgZm9yIGlt
eDhtbSBERFIgUE1VLgoKU2VyaWVzIGlzIGhlcmU6Cmh0dHBzOi8vZ2l0aHViLmNvbS9oaXNpbGlj
b24va2VybmVsLWRldi9jb21taXRzL3ByaXZhdGUtdG9waWMtcGVyZi01LjYtc3lzLXBtdS1ldmVu
dHMtdjItdXBzdHJlYW0KCkRpZmZlcmVuY2VzIHRvIHYxOgotIFN0b3AgdXNpbmcgU29DIGlkIGFu
ZCB1c2UgYSBwZXItUE1VIGlkZW50aWZpZXIgaW5zdGVhZAotIEFkZCBtZXRyaWMgZ3JvdXAgc3lz
IGV2ZW50cyBzdXBwb3J0CiAgIC0gVGhpcyBpcyBhIGJpdCBoYWNreQotIEFkZCBpbXg4bW0gRERS
IFBlcmYgc3VwcG9ydAoKClRoYW5rcywKSm9obgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
