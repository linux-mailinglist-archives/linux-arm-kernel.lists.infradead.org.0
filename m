Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E13D714B0CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 09:20:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KfCEcyf64mpxT2WMaAmu4+hFIRfSt8oLUdHgMM3REAU=; b=EWqpP8cdFc+wFk
	yfHeOlblCvhaRj0ilDKiSQQSZGiyzFYyPmoSNStVOyOKBIhyJ5m3wV5hRM4vLAKISh3c7ov7407B8
	2MmDqdBWyOdZZhh9uBY1NWyZV3eIAAX3LPJCmFhHH0skz9/3D2GZw0NyT8vcpNW3d3rVW7LVM/yQq
	ip1al0gesgJjZUGlCzjwIuZ+lqG6oi7eG6OeX61p1nhWE1T4X4V4olt4kjeXY65prl7LLDTjr+7aH
	ujKNTBju18AUDuLV4RkROITP3Pwa/CwcHqTmlOPyKacdmsrtCUbvNlkxXzVRvIxThW4TF8yqHca/z
	QArT/WN4jnu4D3I4xzDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwM76-0001wj-Ql; Tue, 28 Jan 2020 08:20:48 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwM6w-0001w4-Ic
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 08:20:40 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00S8KNjt028638;
 Tue, 28 Jan 2020 02:20:23 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1580199623;
 bh=8puorSS2DhVQd8TswvusYCRWiQHEdCmIblxq5NzEfKY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=xBh/qDShAxxjP942ORw04g8URKhIt3mOedUwGR10rZangDQIWSIxfKgKHsUeiTtNL
 s2wC1w79g1NmvLGND9S0f+qydHhXamX6gRMx+E88rXwn1BdWZ9eMKk55ft7xNuPUi2
 xJJe6jsgZHPAxy3Ag3cxjrVWW9w+e4D4bz8Mbo0A=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00S8KN84033053
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 28 Jan 2020 02:20:23 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 28
 Jan 2020 02:20:23 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 28 Jan 2020 02:20:23 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00S8KKnV104334;
 Tue, 28 Jan 2020 02:20:21 -0600
Subject: Re: [PATCH] arm64: defconfig: Enable Texas Instruments UDMA driver
To: Olof Johansson <olof@lixom.net>
References: <20200124092359.12429-1-peter.ujfalusi@ti.com>
 <20200124200811.ytgs66cg5qpugi5c@localhost>
 <12f40648-fec6-9179-1f62-0a648996ed20@ti.com>
 <CAOesGMiFw2V6fdbGCOfgsVq+WK-4ijdzivDdX3hbS2E=bO4zkg@mail.gmail.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <a81fa6b0-811c-82af-4cf6-e2f4ac3c0ded@ti.com>
Date: Tue, 28 Jan 2020 10:21:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAOesGMiFw2V6fdbGCOfgsVq+WK-4ijdzivDdX3hbS2E=bO4zkg@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_002038_700000_D359C078 
X-CRM114-Status: GOOD (  25.00  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Arnd Bergmann <arnd@arndb.de>, SoC Team <soc@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Will Deacon <will@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgT2xvZiwKCk9uIDI3LzAxLzIwMjAgMTcuMzAsIE9sb2YgSm9oYW5zc29uIHdyb3RlOgo+Pj4g
SSBhbHNvIHNlZSB0aGF0IHRoaXMgaXMgc3RhdGljYWxseSBlbmFibGluZyB0aGlzIGRyaXZlciAt
LSB3ZSB0cnkgdG8ga2VlcCBhcwo+Pj4gbWFueSBkcml2ZXJzIGFzIHBvc3NpYmxlIGFzIG1vZHVs
ZXMgdG8gYXZvaWQgdGhlIHN0YXRpYyBrZXJuZWwgZnJvbSBncm93aW5nIHRvbwo+Pj4gbGFyZ2Uu
IFdvdWxkIHRoYXQgYmUgYSBzdWl0YWJsZSBhcHByb2FjaCBoZXJlLCBvciBpcyB0aGUgZHJpdmVy
IG5lZWRlZCB0byByZWFjaAo+Pj4gcm9vdGZzIGZvciBmdXJ0aGVyIG1vZHVsZSBsb2FkaW5nPwo+
Pgo+PiBXZSB3b3VsZCBuZWVkIGJ1aWx0IGluIERNQSBmb3IgbmZzIHJvb3RmcywgU0QvTU1DIGhh
cyBpdCdzIG93biBidWl0LWluCj4+IEFETUEuIFdlIGRvIG5vdCBoYXZlIG5ldHdvcmsgZHJpdmVy
cyB1cHN0cmVhbSBhcyB0aGV5IGRlcGVuZCBvbiB0aGUgRE1BLgo+IAo+IE9rLCBzbyB0aGF0IGNh
biBlaXRoZXIgYmUgdHVybmVkIGludG8gYSByYW1kaXNrIGFyZ3VtZW50LCBvciBpbnRvIGEKPiAi
d2UgcmVhbGx5IHdhbnQgdG8gZW5hYmxlIG5vbi1yYW1kaXNrIHJvb3RmcyBib290cyBvbiB0aGlz
IGhhcmR3YXJlCj4gYmVjYXVzZSBpdCdzIGEgY29tbW9uIHVzZSBjYXNlIi4KClNEL01NQyBkb2Vz
IG5vdCBuZWVkIHNsYXZlIERNQSwgaXQgaXMgc2VsZiBjb250YWluaW5nIHdpdGggaXQncyBvd24K
YnVpbHQtaW4gRE1BLgpJJ20gbm90IHN1cmUgaWYgaXQgaXMgZW5hYmxlZCBpbiBkZWZjb25maWcu
IEl0IGlzIG5vdCBlbmFibGVkIGF0IGFsbCBpbgpkZWZjb25maWcgYXRtLgoKTm9ybWFsbHkgSSB3
b3VsZCB1c2UgbmZzIHJvb3RmcywgYnV0IHdlIGRvbid0IGhhdmUgbmV0d29yayBkcml2ZXJzCnVw
c3RyZWFtIGZvciBLMyBwbGF0Zm9ybS4KCkkgdGhpbmsgaGF2aW5nIHRoZSBVRE1BIHN0YWNrIGFz
IG1vZHVsZSBzaG91bGQgYmUgZmluZSB3aGVuIEkgaGF2ZSB0aGUKZGVwZW5kZW5jaWVzIGluIHRv
IGJlIGFibGUgdG8gYnVpbGQgdGhlbSBhcyBtb2R1bGVzLgoKPiBJIGZpbmQgaXQgdXNlZnVsIHRv
IGNoYWxsZW5nZSBtb3N0IG9mIHRoZSA9eSBkcml2ZXJzIHRvIG1ha2UgcGVvcGxlCj4gdGhpbmsg
YWJvdXQgaXQsIGFuZCBhdCBzb21lIHBvaW50IHdlJ2xsIGVub3VnaCBvdmVyaGVhZCBvZiBjcnVm
dCBpbgo+IHRoZSBzdGF0aWMgc3VwZXJzZXQga2VybmVsIHRoYXQgZGVmY29uZmlnIHRvZGF5IGlz
IHVzZWQgZm9yIHN1Y2ggdGhhdAo+IHdlIG5lZWQgdG8gcHJ1bmUgbW9yZSA9eSAtPiA9bSwKClN1
cmUsIEkgZnVsbHkgYWdyZWUgb24gdGhpcywgd2Ugc2hvdWxkIGhhdmUgbm9uIGJvb3QgbmVlZGVk
IGRyaXZlcnMgYXMKbW9kdWxlcy4KCj4gYnV0IHRoaXMgcGFydGljdWxhciBkcml2ZXIgaXMgcHJv
YmFibHkKPiBPSyAoaXQncyBhbHNvIG5vdCBsYXJnZSkuCgpXZWxsLCBpdCBkZXBlbmRzIGhvdyB5
b3UgbG9vayBhdCBpdCA7KQoKVURNQSBzdGFjayBpcyBub3QgZW5hYmxlZCBpbiBkZWZjb25maWcg
KHcvbyB0aGlzIHBhdGNoKToKJCBzaXplIHZtbGludXgKdGV4dCAgICAgIGRhdGEgICAgIGJzcyAg
ICAgZGVjICAgICAgIGhleCAgICAgIGZpbGVuYW1lCjE3ODUzNzE3ICA5MjIxODcyICA0NjkyODgg
IDI3NTQ0ODc3ICAxYTQ0ZDJkICB2bWxpbnV4CgpVRE1BIHN0YWNrIGlzIGVuYWJsZWQgaW4gZGVm
Y29uZmlnICh3IHRoaXMgcGF0Y2gpOgokIHNpemUgdm1saW51eAp0ZXh0ICAgICAgZGF0YSAgICAg
YnNzICAgICBkZWMgICAgICAgaGV4ICAgICAgZmlsZW5hbWUKMTc4OTA5NzAgIDkyMzc1NDQgIDQ2
OTI4OCAgMjc1OTc4MDIgIDFhNTFiZWEgIHZtbGludXgKCkl0IHdvdWxkIGJlIG5pY2UgZm9yIG90
aGVyIGRyaXZlciB0byBlbmFibGUgdGhlIERNQSBpZiBpdCBpcyBhY2NlcHRhYmxlCnRvIGhhdmUg
aXQgYnVpbHQgaW4gZm9yIHN0YXJ0IGFuZCB3aGVuIEkgY2FuIGJ1aWxkIGl0IGFzIG1vZHVsZSB3
ZSBjYW4Kc3dpdGNoIGl0IHRvIG1vZHVsZT8KCj4+IEltaG8gbW9kdWxlIHdvdWxkIGJlIGZpbmUg
Zm9yIHRoZSBETUEgc3RhY2ssIGJ1dCBuZWl0aGVyIHJpbmdhY2Mgb3IgdGhlCj4+IFVETUEgZHJp
dmVyIGNhbiBiZSBidWlsdCBhcyBtb2R1bGUgYXRtIHVudGlsIHRoZSBmb2xsb3dpbmcgcGF0Y2hl
cyBnb3QKPj4gbWVyZ2VkOgo+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjAwMTIy
MTA0NzIzLjE2OTU1LTEtcGV0ZXIudWpmYWx1c2lAdGkuY29tLwo+PiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9sa21sLzIwMjAwMTIyMTA0MDMxLjE1NzMzLTEtcGV0ZXIudWpmYWx1c2lAdGkuY29t
Lwo+Pgo+PiBJIGhhdmUgdGhlIHBhdGNoZXMgdG8gYWRkIGJhY2sgbW9kdWxlIHN1cHBvcnQsIGJ1
dCB3YWl0aW5nIG9uIHRoZXNlCj4+IGN1cnJlbnRseS4KPiAKPiAtT2xvZgo+IAoKLSBQw6l0ZXIK
ClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhl
bHNpbmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWlj
aWxlOiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
