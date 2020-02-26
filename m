Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8401A16F51A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 02:36:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XDOV1lBYbyiIhsPRcoKEsXhKR3wJvdUNJAs4FDib5GU=; b=nb8Weu0pZ6qzwHfL3DddC7pCk
	jOQFzJGGa67W5pHhnFw4WTlwS3zUZH95zBgMiMWvIuIp+UZVNVvmdHadJkRrES6sEGDQ1JwmUEU14
	LAeFJ6x26U++j8p+MYpEQNrUN6OWUBqDAcGHKHWuc9q/wjUcJzR/8rLUDrc/wyanOeGjqk927E4Ed
	q6Bq6T2/PPXgakSTBvfo+H4ZMs7ObopL7DBb5+jUPiy+JQLafZCj9AfltBjesYw1O8MtYRSWqs2gY
	VFcBT3hHbuG63fyEMoNbbyX0ETLX4x7UJW4D8s2Yx6Lx8+6rbukU6rdkPeQ8i5ltEvVnWNGnXhYm4
	gkEioC03Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6lcL-0007vs-ER; Wed, 26 Feb 2020 01:36:05 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6lcE-0007sN-37
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 01:35:59 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 9BD9497D363A8F050052;
 Wed, 26 Feb 2020 09:35:37 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Wed, 26 Feb 2020
 09:35:28 +0800
Subject: Re: [PATCH] irqchip/gic-v3-its: Clear Valid before writing any bits
 else in VPENDBASER
To: Marc Zyngier <maz@kernel.org>
References: <20200224025029.92-1-yuzenghui@huawei.com>
 <bb7cdb29eda9cf160bcf85a58a9fc63d@kernel.org>
 <6ce5c751-6d17-b9ee-4054-edad7de075bf@huawei.com>
 <d8d9fbeddfe59574c457b2f803d0af6c@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <22aa4f88-6a32-1204-e428-de1ffc52b600@huawei.com>
Date: Wed, 26 Feb 2020 09:35:26 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <d8d9fbeddfe59574c457b2f803d0af6c@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_173558_306201_E75A3519 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: wanghaibin.wang@huawei.com, Yanlei Jia <jiayanlei@huawei.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC8yLzI2IDM6NDUsIE1hcmMgWnluZ2llciB3cm90ZToKPiBIaSBaZW5naHVpLAo+IAo+
IE9uIDIwMjAtMDItMjUgMDI6MDYsIFplbmdodWkgWXUgd3JvdGU6Cj4+IEhpIE1hcmMsCj4+Cj4+
IE9uIDIwMjAvMi8yNSA3OjQ3LCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4+PiBIaSBaZW5naHVpLAo+
Pj4KPj4+IE9uIDIwMjAtMDItMjQgMDI6NTAsIFplbmdodWkgWXUgd3JvdGU6Cj4+Pj4gVGhlIFZh
bGlkIGJpdCBtdXN0IGJlIGNsZWFyZWQgYmVmb3JlIGNoYW5naW5nIGFueXRoaW5nIGVsc2Ugd2hl
biAKPj4+PiB3cml0aW5nCj4+Pj4gR0lDUl9WUEVOREJBU0VSIHRvIGF2b2lkIHRoZSBVTlBSRURJ
Q1RBQkxFIGJlaGF2aW9yLiBUaGlzIGlzIGV4YWN0bHkgCj4+Pj4gd2hhdAo+Pj4+IHdlJ3ZlIGRv
bmUgb24gMzJiaXQgYXJtLCBidXQgbm90IG9uIGFybTY0Lgo+Pj4KPj4+IEknbSBub3QgcXVpdGUg
c3VyZSBob3cgeW91IGRlY2lkZSB0aGF0IFZhbGlkIG11c3QgYmUgY2xlYXJlZCBiZWZvcmUgCj4+
PiBjaGFuZ2luZwo+Pj4gYW55dGhpbmcgZWxzZS4gVGhlIHJlYXNvbiB3aHkgd2UgZG8gaXQgb24g
MzJiaXQgaXMgdGhhdCB3ZSBjYW5ub3QgdXBkYXRlCj4+PiB0aGUgZnVsbCA2NGJpdCByZWdpc3Rl
ciBhdCBvbmNlLCBzbyB3ZSBzdGFydCBieSBjbGVhcmluZyBWYWxpZCBzbyB0aGF0Cj4+PiB3ZSBj
YW4gdXBkYXRlIHRoZSByZXN0LiBhcm02NCBkb2Vzbid0IHJlcXVpcmUgdGhhdC4KPj4KPj4gVGhl
IHByb2JsZW0gY2FtZSBvdXQgZnJvbSBkaXNjdXNzaW9ucyB3aXRoIG91ciBHSUMgZW5naW5lZXJz
IGFuZCB3aGF0IHdlCj4+IHRhbGtlZCBhYm91dCBhdCB0aGF0IHRpbWUgd2FzIElISSAwMDY5RSA5
LjExLjM2IC0gdGhlIGRlc2NyaXB0aW9uIG9mIHRoZQo+PiBWYWxpZCBmaWVsZDoKPj4KPj4gIldy
aXRpbmcgYSBuZXcgdmFsdWUgdG8gYW55IGJpdCBvZiBHSUNSX1ZQRU5EQkFTRVIsIG90aGVyIHRo
YW4KPj4gR0lDUl9WUEVOREJBU0VSLlZhbGlkLCB3aGVuIEdJQ1JfVlBFTkRCQVNFUi5WYWxpZD09
MSBpcyBVTlBSRURJQ1RBQkxFLiIKPj4KPj4gSXQgbG9va3MgbGlrZSB3ZSBzaG91bGQgZmlyc3Qg
Y2xlYXIgdGhlIFZhbGlkIGFuZCB0aGVuIHdyaXRlIHNvbWV0aGluZwo+PiBlbHNlLiBXZSBtaWdo
dCBoYXZlIHNvbWUgbWlzLXVuZGVyc3RhbmRpbmcgYWJvdXQgdGhpcyBzdGF0ZW1lbnQuLgo+IAo+
IFNvIHRoYXQncyB0aGUgdjQuMCB2ZXJzaW9uIG9mIFZQRU5EQkFTRVIuIE9uIHY0LjAsIHlvdSBz
dGFydCBieSBjbGVhcmluZwo+IFZhbGlkLCBub3QgY2hhbmdpbmcgYW55IG90aGVyIGJpdC4gU3Vi
c2VxdWVudCBwb2xsaW5nIG9mIHRoZSBsZWFkcyB0bwo+IHRoZSBQZW5kaW5nTGFzdCBiaXQgb25j
ZSBEaXJ0eSBjbGVhcnMuIFRoZSBjdXJyZW50IGNvZGUgZm9sbG93cyB0aGlzCj4gcHJpbmNpcGxl
Lgo+IAo+Pj4gRm9yIHRoZSByZXN0IG9mIGRpc2N1c3Npb24sIGxldCdzIGlnbm9yZSBHSUN2NC4x
IDMyYml0IHN1cHBvcnQgKEknbQo+Pj4gcHJldHR5IHN1cmUgbm9ib2R5IGNhcmVzIGFib3V0IHRo
YXQpLgo+Pj4KPj4+PiBUaGlzIHdvcmtzIGZpbmUgb24gR0lDdjQgd2hlcmUgd2Ugb25seSBjbGVh
ciBWYWxpZCBmb3IgYSB2UEUgCj4+Pj4gZGVzY2hlZHVsZS4KPj4+PiBXaXRoIHRoZSBpbnRyb2R1
Y3Rpb24gb2YgR0lDdjQuMSwgd2UgbWlnaHQgYWxzbyBuZWVkIHRvIHRhbGsgCj4+Pj4gc29tZXRo
aW5nIGVsc2UKPj4+PiAoZS5nLiwgUGVuZGluZ0xhc3QsIERvb3JiZWxsKSB0byB0aGUgcmVkaXN0
cmlidXRvciB3aGVuIGNsZWFyaW5nIHRoZSAKPj4+PiBWYWxpZC4KPj4+PiBMZXQncyBwb3J0IHRo
ZSAzMmJpdCBnaWNyX3dyaXRlX3ZwZW5kYmFzZXIoKSB0byBhcm02NCBzbyB0aGF0IAo+Pj4+IGhh
cmR3YXJlIGNhbgo+Pj4+IGRvIHRoZSByaWdodCB0aGluZyBhZnRlciBkZXNjaGVkdWxpbmcgdGhl
IHZQRS4KPj4+Cj4+PiBUaGUgc3BlYyBzYXlzIHRoYXQ6Cj4+Pgo+Pj4gIkZvciBhIHdyaXRlIHRo
YXQgd3JpdGVzIEdJQ1JfVlBFTkRCQVNFUi5WYWxpZCBmcm9tIDEgdG8gMCwgaWYKPj4+IEdJQ1Jf
VlBFTkRCQVNFUi5QZW5kaW5nTGFzdCBpcyB3cml0dGVuIGFzIDEgdGhlbiAKPj4+IEdJQ1JfVlBF
TkRCQVNFUi5QZW5kaW5nTGFzdAo+Pj4gdGFrZXMgYW4gVU5LTk9XTiB2YWx1ZSBhbmQgR0lDUl9W
UEVOREJBU0VSLkRvb3JiZWxsIGlzIHRyZWF0ZWQgYXMgCj4+PiBiZWluZyAwLiIKPj4+Cj4+PiBh
bmQKPj4+Cj4+PiAiV2hlbiBHSUNSX1ZQRU5EQkFTRVIuVmFsaWQgaXMgd3JpdHRlbiBmcm9tIDEg
dG8gMCwgaWYgdGhlcmUgYXJlIAo+Pj4gb3V0c3RhbmRpbmcKPj4+IGVuYWJsZWQgcGVuZGluZyBp
bnRlcnJ1cHRzIEdJQ1JfVlBFTkRCQVNFUi5Eb29yYmVsbCBpcyB0cmVhdGVkIGFzIDAuIgo+Pj4K
Pj4+IHdoaWNoIGluZGljYXRlIHRoYXQgUGVuZGluZ0xhc3QvRG9vcmJlbGwgaGF2ZSB0byBiZSB3
cml0dGVuIGF0IHRoZSAKPj4+IHNhbWUgdGltZQo+Pj4gYXMgd2UgY2xlYXIgVmFsaWQuCj4+Cj4+
IFllcy4gSSBvYnZpb3VzbHkgbWlzc2VkIHRoZXNlIHR3byBwb2ludHMgd2hlbiB3cml0aW5nIHRo
aXMgcGF0Y2guCj4+Cj4+PiBDYW4geW91IHBvaW50IG1lIHRvIHRoZSBiaXQgb2YgdGhlIHY0LjEg
c3BlYyB0aGF0IG1ha2VzCj4+PiB0aGlzICJjbGVhciBWYWxpZCBiZWZvcmUgZG9pbmcgYW55dGhp
bmcgZWxzZSIgcmVxdWlyZW1lbnQgZXhwbGljaXQ/Cj4+Cj4+IE5vLCBub3RoaW5nIGluIHY0LjEg
c3BlYyBzdXBwb3J0cyBtZSA6LSjCoCBUaGUgYWJvdmUgaGFzIGJlZW4gZm9yd2FyZGVkCj4+IHRv
IEhpc2lsaWNvbiBhbmQgSSB3aWxsIGNvbmZpcm0gdGhlc2Ugd2l0aCB0aGVtLiBJdCB3b3VsZCBi
ZSBlYXN5IGZvcgo+PiBoYXJkd2FyZSB0byBoYW5kbGUgdGhlIFBlbmRpbmdMYXN0L0RCIHdoZW4g
Y2xlYXJpbmcgVmFsaWQsIEkgdGhpbmsuCj4gCj4gdjQuMSBjaGFuZ2VzIHRoZSB3YXkgVlBFTkRC
QVNFUiB3b3JrcyBpbiBhIG51bWJlciBvZiB3YXkuIENsZWFyaW5nIFZhbGlkIAo+IGFsbG93cwo+
IGEgImhhbmRzaGFrZSI6IEF0IHRoZSBwb2ludCBvZiBtYWtpbmcgdGhlIHZQRSBub24tcmVzaWRl
bnQsIHRvIHNwZWNpZnkgdGhlCj4gZXhwZWN0ZWQgYmVoYXZpb3VyIG9mIHRoZSByZWRpc3RyaWJ1
dG9yIG9uY2UgdGhlIHJlc2lkZW5jeSBoYXMgYmVlbiAKPiBjb21wbGV0ZWQuCj4gVGhpcyBpbmNs
dWRlcyByZXF1ZXN0aW5nIHRoZSBkb29yYmVsbCBvciB0ZWxsaW5nIHRoZSBHSUMgdGhhdCB3ZSBk
b24ndCAKPiBjYXJlIHRvCj4ga25vdyBhYm91dCBQZW5kaW5nTGFzdC4KPiAKPiBUaGlzIGlzIGVm
ZmVjdGl2ZWx5IGEgcmVsYXhhdGlvbiBvZiB0aGUgdjQuMCBiZWhhdmlvdXIuIEkgYmVsaWV2ZSB0
aGUgCj4gY3VycmVudAo+IHN0YXRlIG9mIHRoZSBkcml2ZXIgbWF0Y2hlcyBib3RoIHNwZWNzIChu
b3QgdXNpbmcgY29tbW9uIGNvZGUgdGhvdWdoKS4KClllcywgSSBhZ3JlZSB3aXRoIGFsbCBvZiB0
aGUgYWJvdmUuIFRoYW5rcyBmb3IgeW91ciBjb25maXJtYXRpb24gYW5kCnBsZWFzZSBpZ25vcmUg
dGhpcyBwYXRjaC4KCgpUaGFua3MsClplbmdodWkKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
