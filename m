Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1832A1751DD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 03:41:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BqsgwDtJ07Q7NOYFTfalEKdYaiOLhVNevCWn2/S9tJc=; b=INaShxPLfsMAgIb26fQLTqiIG
	VAULfsms0gqnwootP9fmaWvf2JIz+QsQzUjg0ttPt+5Bda6SWk8zZTP3UUmGkxkm1huw1iKRPC8Q1
	W9v352vTGJU7wSSqF2E/3PKRfuRL+ME3Bgc+S/lobzakOFYW0Pn7zH+V1HvJSrIXE8+91iiGvZIzn
	mLJLKsu5SXMKu20p1btzn5VMZHCjUZ43gzFjns9vn2tEGaQgT7G+GGvwnBs+9u/Wu7Zj3wHFEG001
	evxPYxf/U3O4px0bb2479prfYbLZ8sWAhY24gcsqXCbwEZlVtsafhl0fZ0oDjQNowQKXYHpvF9Lsa
	r1TgPwqUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8b0v-0002YA-AC; Mon, 02 Mar 2020 02:41:01 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8b0o-0002WS-NF
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 02:40:56 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 66F8A3F26BA126D15212;
 Mon,  2 Mar 2020 10:40:39 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Mon, 2 Mar 2020
 10:40:32 +0800
Subject: Re: [PATCH v4 16/20] KVM: arm64: GICv4.1: Allow SGIs to switch
 between HW and SW interrupts
To: Marc Zyngier <maz@kernel.org>
References: <20200214145736.18550-1-maz@kernel.org>
 <20200214145736.18550-17-maz@kernel.org>
 <6798eb13-a7e9-2a92-91b2-9b657962ea79@huawei.com>
 <7aa668a5920b8deb8c2ee2fec3ef69b3@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <865e3cc6-19e3-a1ec-84a6-8c15ad738345@huawei.com>
Date: Mon, 2 Mar 2020 10:40:30 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <7aa668a5920b8deb8c2ee2fec3ef69b3@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_184054_926530_5194EECB 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org, Eric
 Auger <eric.auger@redhat.com>, Robert
 Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>, Julien
 Thierry <julien.thierry.kdev@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDIwMjAvMi8yOSAzOjE2LCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4gSGkgWmVu
Z2h1aSwKPiAKPiBPbiAyMDIwLTAyLTIwIDAzOjU1LCBaZW5naHVpIFl1IHdyb3RlOgo+PiBIaSBN
YXJjLAo+Pgo+PiBPbiAyMDIwLzIvMTQgMjI6NTcsIE1hcmMgWnluZ2llciB3cm90ZToKPj4+IElu
IG9yZGVyIHRvIGxldCBhIGd1ZXN0IGJ1eSBpbiB0aGUgbmV3LCBhY3RpdmUtbGVzcyBTR0lzLCB3
ZQo+Pj4gbmVlZCB0byBiZSBhYmxlIHRvIHN3aXRjaCBiZXR3ZWVuIHRoZSB0d28gbW9kZXMuCj4+
Pgo+Pj4gSGFuZGxlIHRoaXMgYnkgc3RvcHBpbmcgYWxsIGd1ZXN0IGFjdGl2aXR5LCB0cmFuc2Zl
ciB0aGUgc3RhdGUKPj4+IGZyb20gb25lIG1vZGUgdG8gdGhlIG90aGVyLCBhbmQgcmVzdW1lIHRo
ZSBndWVzdC4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBNYXJjIFp5bmdpZXIgPG1hekBrZXJuZWwu
b3JnPgo+Pgo+PiBbLi4uXQo+Pgo+Pj4gZGlmZiAtLWdpdCBhL3ZpcnQva3ZtL2FybS92Z2ljL3Zn
aWMtdjMuYyBiL3ZpcnQva3ZtL2FybS92Z2ljL3ZnaWMtdjMuYwo+Pj4gaW5kZXggMWJjMDliNTIz
NDg2Li4yYzlmYzEzZTJjNTkgMTAwNjQ0Cj4+PiAtLS0gYS92aXJ0L2t2bS9hcm0vdmdpYy92Z2lj
LXYzLmMKPj4+ICsrKyBiL3ZpcnQva3ZtL2FybS92Z2ljL3ZnaWMtdjMuYwo+Pj4gQEAgLTU0MCw2
ICs1NDAsOCBAQCBpbnQgdmdpY192M19tYXBfcmVzb3VyY2VzKHN0cnVjdCBrdm0gKmt2bSkKPj4+
IMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIG91dDsKPj4+IMKgwqDCoMKgwqAgfQo+Pj4gwqAgK8Kg
wqDCoCBpZiAoa3ZtX3ZnaWNfZ2xvYmFsX3N0YXRlLmhhc19naWN2NF8xKQo+Pj4gK8KgwqDCoMKg
wqDCoMKgIHZnaWNfdjRfY29uZmlndXJlX3ZzZ2lzKGt2bSk7Cj4+PiDCoMKgwqDCoMKgIGRpc3Qt
PnJlYWR5ID0gdHJ1ZTsKPj4+IMKgwqDCoCBvdXQ6Cj4+Cj4+IElzIHRoZXJlIGFueSByZWFzb24g
dG8gaW52b2tlIHZnaWNfdjRfY29uZmlndXJlX3ZzZ2lzKCkgaGVyZT8KPj4gVGhpcyBpcyBjYWxs
ZWQgb24gdGhlIGZpcnN0IFZDUFUgcnVuLCB0aHJvdWdoIGt2bV92Z2ljX21hcF9yZXNvdXJjZXMo
KS4KPj4gU2hvdWxkbid0IHRoZSB2U0dJIGNvbmZpZ3VyYXRpb24gb25seSBkcml2ZW4gYnkgYSBH
SUNEX0NUTFIubkFTU0dJcmVxCj4+IHdyaXRpbmcgKGZyb20gZ3Vlc3QsIG9yIGZyb20gdXNlcnNw
YWNlIG1heWJlKT8KPiAKPiBXaGF0IEknbSB0cnlpbmcgdG8gY2F0Y2ggaGVyZSBpcyB0aGUgZ3Vl
c3QgdGhhdCBoYXMgYmVlbiByZXN0b3JlZCB3aXRoCj4gbkFTU0dJcmVxIHNldC4gQXQgdGhlIG1v
bWVudCwgd2UgZG9uJ3QgZG8gYW55dGhpbmcgb24gdGhlIHVzZXJzcGFjZQo+IHNpZGUsIGJlY2F1
c2UgdGhlIHZtbSBjb3VsZCBkZWNpZGUgdG8gd3JpdGUgdGhhdCBwYXJ0aWN1bGFyIGJpdAo+IG11
bHRpcGxlIHRpbWVzLCBhbmQgc3dpdGNoaW5nIGJldHdlZW4gdGhlIHR3byBtb2RlcyBpcyBleHBl
bnNpdmUgKG5vdAo+IHRvIG1lbnRpb24gdGhhdCBhbGwgdGhlIHZjcHVzIG1heSBub3QgaGF2ZSBi
ZWVuIGNyZWF0ZWQgeWV0KS4KPiAKPiBNb3ZpbmcgaXQgdG8gdGhlIGZpcnN0IHJ1biBtYWtlcyBh
bGwgdGhlc2UgcGl0ZmFsbHMgZ28gYXdheSAod2UgaGF2ZSB0aGUKPiBmaW5hbCBuQVNTU0dJcmVx
IHZhbHVlLCBhbmQgYWxsIHRoZSB2Y3B1cyBhcmUgYWNjb3VudGVkIGZvcikuCgpTbyB3aGF0IHdp
bGwgaGFwcGVuIG9uIHJlc3RvcmF0aW9uIGlzIChyb3VnaGx5KToKCiAgLSBmb3IgR0lDUl9JU1BF
TlIwOiBXZSB3aWxsIHJlc3RvcmUgdGhlIHBlbmRpbmcgc3RhdHVzIG9mIHZTR0lzIGludG8KICAg
IHNvZnR3YXJlIHBlbmRpbmdfbGF0Y2gsIGp1c3QgbGlrZSB3aGF0IHdlJ3ZlIGRvbmUgZm9yIG5v
cm1hbCBTR0lzLgogIC0gZm9yIEdJQ0RfQ1RMUi5uQVNTR0lyZXE6IFdlIHdpbGwgb25seSByZWNv
cmQgdGhlIHdyaXR0ZW4gdmFsdWUuCiAgICAoTm90ZSB0byBteXNlbGY6IE5vIGludm9jYXRpb24g
b2YgY29uZmlndXJlX3ZzZ2lzKCkgaW4gdWFjY2Vzc193cml0ZQogICAgIGNhbGxiYWNrLCBJIHBy
ZXZpb3VzbHkgbWl4ZWQgaXQgdXAgd2l0aCB0aGUgZ3Vlc3Qgd3JpdGUgY2FsbGJhY2suKQogIC0g
RmluYWxseSwgeW91IGNob29zZSB0aGUgZmlyc3QgdmNwdSBydW4gYXMgdGhlIGFwcHJvcHJpYXRl
IHBvaW50IHRvCiAgICBwb3RlbnRpYWxseSBmbHVzaCB0aGUgcGVuZGluZyBzdGF0dXMgdG8gSFcg
YWNjb3JkaW5nIHRvIHRoZSBmaW5hbAogICAgbkFTU0dJcmVxIHZhbHVlLgoKPiAKPiBEb2VzIHRo
aXMgbWFrZSBzZW5zZSB0byB5b3U/CgpZZWFoLCBpdCBzb3VuZHMgbGlrZSBhIGdvb2QgaWRlYSEg
QW5kIHBsZWFzZSBpZ25vcmUgd2hhdCBJJ3ZlIHJlcGxpZWQgdG8KcGF0Y2ggIzE1LCBJIG9idmlv
dXNseSBtaXNzZWQgeW91ciBpbnRlbnRpb24gYXQgdGhhdCB0aW1lLCBzb3JyeS4uLgoKQnV0IGNh
biB3ZSBtb3ZlIHRoaXMgaHVuayB0byBzb21lIHBsYWNlcyBtb3JlIGFwcHJvcHJpYXRlLCBmb3Ig
ZXhhbXBsZSwKcHV0IGl0IHRvZ2V0aGVyIHdpdGggdGhlIEdJQ0RfQ1RMUidzIHVhY2Nlc3Nfd3Jp
dGUgY2hhbmdlPyBJdCBtaWdodCBtYWtlCnRoaW5ncyBhIGJpdCBjbGVhcmVyIGZvciBvdGhlciBy
ZXZpZXdlcnMuIDotKQoKClRoYW5rcywKWmVuZ2h1aQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
