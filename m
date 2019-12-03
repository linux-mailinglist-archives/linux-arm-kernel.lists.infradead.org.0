Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F6A110111
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 16:20:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A/tgKijLOBBi90sqXZqma+LMclT0QXXs0A6Ci8GGnlg=; b=fgMwd+89pbpwrwXA/x3eHWkQY
	MW2XrFaHB9sqOtG2zUiE8O2FX6YrW4R4d8DFu/IrQTJGRjoCxfSrnUShiQ5jwhAbMUkrwK+Y7HgfN
	xPPDDmxjno7SOdjmFJi3GkPf/XJ9geyzDw/LD+YuTqceHaHWtyU7bd8T+iriQ9pHAaT+Qv8Pr3EK+
	FlLdMhuYFIYCx3aYJkdDNI0GxST8YpKkZGiTzvFE1BcOspUCITXQ9W1XB5FjB3C6dcn8GOo8t74n2
	ASIN+bk7vbfXgOCLz6kOczxfyEZ9DrpElEA736tTK9voxPmZodK+7DWN8bsFckBRF8phRU3D4Zpfj
	xuZaY6ukA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic9yi-0004Tl-9Y; Tue, 03 Dec 2019 15:20:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic9yb-0004Ss-4h
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 15:20:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5C73F31B;
 Tue,  3 Dec 2019 07:20:30 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 686E23F52E;
 Tue,  3 Dec 2019 07:20:28 -0800 (PST)
Subject: Re: [PATCH] PCI: layerscape: Add the SRIOV support in host side
To: Marc Zyngier <maz@kernel.org>, Xiaowei Bao <xiaowei.bao@nxp.com>
References: <20191202104506.27916-1-xiaowei.bao@nxp.com>
 <606a00a2edcf077aa868319e0daa4dbc@www.loen.fr>
 <AM5PR04MB3299A5A504DEFEF3E137A27CF5420@AM5PR04MB3299.eurprd04.prod.outlook.com>
 <3dcdf44eb76390730658e3f4d932620c@www.loen.fr>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <8f56c2d9-ab01-a91e-902f-a61def0e8ce8@arm.com>
Date: Tue, 3 Dec 2019 15:20:27 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <3dcdf44eb76390730658e3f4d932620c@www.loen.fr>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_072033_272228_B9D6941E 
X-CRM114-Status: GOOD (  23.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Roy Zang <roy.zang@nxp.com>, lorenzo.pieralisi@arm.com,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 "Z.q. Hou" <zhiqiang.hou@nxp.com>, linux-kernel@vger.kernel.org,
 "M.h. Lian" <minghuan.lian@nxp.com>, robh+dt@kernel.org,
 Mingkai Hu <mingkai.hu@nxp.com>, bhelgaas@google.com, andrew.murray@arm.com,
 frowand.list@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDMvMTIvMjAxOSAxMTo1MSBhbSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IE9uIDIwMTktMTIt
MDMgMDE6NDIsIFhpYW93ZWkgQmFvIHdyb3RlOgo+Pj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0KPj4+IEZyb206IE1hcmMgWnluZ2llciA8bWF6QG1pc3RlcmpvbmVzLm9yZz4KPj4+IFNlbnQ6
IDIwMTnlubQxMuaciDLml6UgMjA6NDgKPj4+IFRvOiBYaWFvd2VpIEJhbyA8eGlhb3dlaS5iYW9A
bnhwLmNvbT4KPj4+IENjOiByb2JoK2R0QGtlcm5lbC5vcmc7IGZyb3dhbmQubGlzdEBnbWFpbC5j
b207IE0uaC4gTGlhbgo+Pj4gPG1pbmdodWFuLmxpYW5AbnhwLmNvbT47IE1pbmdrYWkgSHUgPG1p
bmdrYWkuaHVAbnhwLmNvbT47IFJveSBaYW5nCj4+PiA8cm95LnphbmdAbnhwLmNvbT47IGxvcmVu
em8ucGllcmFsaXNpQGFybS5jb207IGFuZHJldy5tdXJyYXlAYXJtLmNvbTsKPj4+IGJoZWxnYWFz
QGdvb2dsZS5jb207IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOwo+Pj4gbGludXgta2VybmVs
QHZnZXIua2VybmVsLm9yZzsgbGludXgtcGNpQHZnZXIua2VybmVsLm9yZzsKPj4+IGxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgWi5xLiBIb3UgPHpoaXFpYW5nLmhvdUBueHAu
Y29tPgo+Pj4gU3ViamVjdDogUmU6IFtQQVRDSF0gUENJOiBsYXllcnNjYXBlOiBBZGQgdGhlIFNS
SU9WIHN1cHBvcnQgaW4gaG9zdCBzaWRlCj4+Pgo+Pj4gT24gMjAxOS0xMi0wMiAxMDo0NSwgWGlh
b3dlaSBCYW8gd3JvdGU6Cj4+PiA+IEdJQyBnZXQgdGhlIG1hcCByZWxhdGlvbnMgb2YgZGV2aWQg
YW5kIHN0cmVhbSBpZCBmcm9tIHRoZSBtc2ktbWFwCj4+PiA+IHByb3BlcnR5IG9mIERUUywgb3Vy
IHBsYXRmb3JtIGFkZCB0aGlzIHByb3BlcnR5IGluIHUtYm9vdCBiYXNlIG9uIHRoZQo+Pj4gPiBQ
Q0llIGRldmljZSBpbiB0aGUgYnVzLCBidXQgaWYgZW5hYmxlIHRoZSB2ZiBkZXZpY2UgaW4ga2Vy
bmVsLCB0aGUgdmYKPj4+ID4gZGV2aWNlIG1zaS1tYXAgd2lsbCBub3Qgc2V0LCBzbyB0aGUgdmYg
ZGV2aWNlIGNhbid0IHdvcmssIHRoaXMgcGF0Y2gKPj4+ID4gcHVycG9zZSBpcyB0aGF0IG1hbmFn
ZSB0aGUgc3RyZWFtIGlkIGFuZCBkZXZpY2UgaWQgbWFwIHJlbGF0aW9ucwo+Pj4gPiBkeW5hbWlj
YWxseSBpbiBrZXJuZWwsIGFuZCBtYWtlIHRoZSBuZXcgUENJZSBkZXZpY2Ugd29yayBpbiBrZXJu
ZWwuCj4+PiA+Cj4+PiA+IFNpZ25lZC1vZmYtYnk6IFhpYW93ZWkgQmFvIDx4aWFvd2VpLmJhb0Bu
eHAuY29tPgo+Pj4gPiAtLS0KPj4+ID7CoCBkcml2ZXJzL29mL2lycS5jwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA5ICsrKwo+Pj4gPsKg
IGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1sYXllcnNjYXBlLmMgfCA5NAo+Pj4gPiAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+Pj4gPsKgIGRyaXZlcnMvcGNpL3Byb2JlLmPC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDYgKysK
Pj4+ID7CoCBkcml2ZXJzL3BjaS9yZW1vdmUuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgfMKgIDYgKysKPj4+ID7CoCA0IGZpbGVzIGNoYW5nZWQsIDExNSBp
bnNlcnRpb25zKCspCj4+PiA+Cj4+PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL29mL2lycS5jIGIv
ZHJpdmVycy9vZi9pcnEuYyBpbmRleAo+Pj4gPiBhMjk2ZWFmLi43OTFlNjA5IDEwMDY0NAo+Pj4g
PiAtLS0gYS9kcml2ZXJzL29mL2lycS5jCj4+PiA+ICsrKyBiL2RyaXZlcnMvb2YvaXJxLmMKPj4+
ID4gQEAgLTU3Niw2ICs1NzYsMTEgQEAgdm9pZCBfX2luaXQgb2ZfaXJxX2luaXQoY29uc3Qgc3Ry
dWN0IG9mX2RldmljZV9pZAo+Pj4gPiAqbWF0Y2hlcykKPj4+ID7CoMKgwqDCoMKgIH0KPj4+ID7C
oCB9Cj4+PiA+Cj4+PiA+ICt1MzIgX193ZWFrIGxzX3BjaWVfc3RyZWFtaWRfZml4KHN0cnVjdCBk
ZXZpY2UgKmRldiwgdTMyIHJpZCkgewo+Pj4gPiArwqDCoMKgIHJldHVybiByaWQ7Cj4+PiA+ICt9
Cj4+PiA+ICsKPj4+ID7CoCBzdGF0aWMgdTMyIF9fb2ZfbXNpX21hcF9yaWQoc3RydWN0IGRldmlj
ZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlX25vZGUKPj4+ID4gKipucCwKPj4+ID7CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHUzMiByaWRfaW4pCj4+PiA+wqAgewo+Pj4gPiBAQCAtNTkw
LDYgKzU5NSwxMCBAQCBzdGF0aWMgdTMyIF9fb2ZfbXNpX21hcF9yaWQoc3RydWN0IGRldmljZSAq
ZGV2LAo+Pj4gPiBzdHJ1Y3QgZGV2aWNlX25vZGUgKipucCwKPj4+ID7CoMKgwqDCoMKgwqDCoMKg
wqAgaWYgKCFvZl9tYXBfcmlkKHBhcmVudF9kZXYtPm9mX25vZGUsIHJpZF9pbiwgIm1zaS1tYXAi
LAo+Pj4gPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIm1zaS1tYXAtbWFzayIs
IG5wLCAmcmlkX291dCkpCj4+PiA+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYnJlYWs7Cj4+
PiA+ICsKPj4+ID4gK8KgwqDCoCBpZiAocmlkX291dCA9PSByaWRfaW4pCj4+PiA+ICvCoMKgwqDC
oMKgwqDCoCByaWRfb3V0ID0gbHNfcGNpZV9zdHJlYW1pZF9maXgocGFyZW50X2RldiwgcmlkX2lu
KTsKPj4+Cj4+PiBPdmVyIG15IGRlYWQgYm9keS4gR2V0IHlvdXIgZmlybXdhcmUgdG8gcHJvcGVy
bHkgcHJvZ3JhbSB0aGUgTFVUIHNvIAo+Pj4gdGhhdCBpdAo+Pj4gcHJlc2VudHMgdGhlIElUUyB3
aXRoIGEgcmVhc29uYWJsZSB0b3BvbG9neS4gVGhlcmUgaXMgYWJzb2x1dGVseSBubyAKPj4+IHdh
eSB0aGlzCj4+PiBraW5kIG9mIGNoYW5nZSBtYWtlcyBpdCBpbnRvIHRoZSBrZXJuZWwuCj4+Cj4+
IFNvcnJ5IGZvciB0aGlzLCBJIGtub3cgaXQgaXMgbm90IHJlYXNvbmFibGUsIGJ1dCBJIGhhdmUg
bm8gb3RoZXIgd2F5LAo+PiBhcyBJIGtub3csIEFSTQo+PiBnZXQgdGhlIG1hcHBpbmcgb2Ygc3Ry
ZWFtIElEIHRvIHJlcXVlc3QgSUQgZnJvbSB0aGUgbXNpLW1hcCBwcm9wZXJ0eQo+PiBvZiBEVFMs
IGlmCj4+IGFkZCBhIG5ldyBkZXZpY2Ugd2hpY2ggbmVlZCB0aGUgc3RyZWFtIElEIGFuZCB0cnkg
dG8gZ2V0IGl0IGZyb20gdGhlCj4+IG1zaS1tYXAgb2YgRFRTLAo+PiBpdCB3aWxsIGZhaWxlZCBh
bmQgbm90IHdvcmssIHllcz8gU28gY291bGQgeW91IGdpdmUgbWUgYSBiZXR0ZXIKPj4gYWR2aWNl
IHRvIGZpeCB0aGlzIGlzc3VlLAo+PiBJIHdvdWxkIHJlYWxseSBhcHByZWNpYXRlIGFueSBjb21t
ZW50cyBvciBzdWdnZXN0aW9ucywgdGhhbmtzIGEgbG90Lgo+IAo+IFdoeSBjYW4ndCBmaXJtd2Fy
ZSBleHBvc2UgYW4gbXNpLW1hcC9tc2ktbWFwLW1hc2sgdGhhdCBoYXMgYSBsYXJnZQo+IGVub3Vn
aCByYW5nZSB0byBlbnN1cmUgbWFwcGluZyBvZiBWRnM/IFdoYXQgYXJlIHRoZSBsaW1pdGF0aW9u
cyBvZgo+IHRoZSBMVVQgdGhhdCB3b3VsZCBwcmV2ZW50IHRoaXMgZnJvbSBiZWluZyBjb25maWd1
cmVkIGJlZm9yZSB0aGUKPiBrZXJuZWwgYm9vdHM/CgpGdXJ0aGVybW9yZSwgbm90ZSB0aGF0IHRo
aXMgYXR0ZW1wdCBpc24ndCBkb2luZyBhbnl0aGluZyBmb3IgdGhlIFNNTVUgClN0cmVhbSBJRHMs
IHNvIHRoZSBtb21lbnQgYW55b25lIHRyaWVzIHRvIGFzc2lnbiB0aG9zZSBWRnMgdGhleSdyZSBz
dGlsbCAKZ29pbmcgdG8gZ28gYmFuZyBhbnl3YXkuIEFueSBmaXJtd2FyZS1iYXNlZCBmaXh1cCBm
b3IgSUQgbWFwcGluZ3MsIApjb25maWcgc3BhY2UgYWRkcmVzc2VzLCBldGMuIG5lZWRzIHRvIGJl
IFNSLUlPVi1hd2FyZSBhbmQgYWNjb3VudCBmb3IgCmFsbCAqcG9zc2libGUqIEJERnMuCgpPbiBM
UzIwODUgYXQgbGVhc3QsIElJUkMgeW91IGNhbiBjb25maWd1cmUgYSBzaW5nbGUgTFVUIGVudHJ5
IHRvIGp1c3QgCnRyYW5zbGF0ZSB0aGUgQnVzOkRldmljZSBpZGVudGlmaWVyIGFuZCBwYXNzIHNv
bWUgb3IgYWxsIG9mIHRoZSBGdW5jdGlvbiAKYml0cyBzdHJhaWdodCB0aHJvdWdoIGFzIHRoZSBM
U0JzIG9mIHRoZSBTdHJlYW0gSUQsIHNvIEkgZG9uJ3QgYmVsaWV2ZSAKdGhlIHJlbGF0aXZlbHkg
bGltaXRlZCBudW1iZXIgb2YgTFVUIHJlZ2lzdGVycyBzaG91bGQgYmUgdG9vIG11Y2ggb2YgYW4g
Cmlzc3VlLiBGb3IgZXhhbXBsZSwgbGFzdCB0aW1lIEkgaGFja2VkIG9uIHRoYXQgSSBhcHBhcmVu
dGx5IGhhZCBpdCBzZXQgCnVwIHN0YXRpY2FsbHkgbGlrZSB0aGlzOgoKJnBjaWUzIHsKCS8qIFNx
dWFzaCA4OjU6MyBCREYgZG93biB0byAyOjI6MyAqLwoJbXNpLW1hcC1tYXNrID0gPDB4MDMxZj47
Cgltc2ktbWFwID0gPDB4MDAwICZpdHMgMHgwMCAweDIwPiwKCQkgIDwweDEwMCAmaXRzIDB4MjAg
MHgyMD4sCgkJICA8MHgyMDAgJml0cyAweDQwIDB4MjA+LAoJCSAgPDB4MzAwICZpdHMgMHg2MCAw
eDIwPjsKfTsKClJvYmluLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
