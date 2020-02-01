Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF7714FAC9
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Feb 2020 23:10:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mhSZ23o76oMsOQVdyZVfF/NbBfi6fpryYR4eEF9Q6dU=; b=Y6M2itQINLIm0Q
	IEzziA81cCzk7WhP/7UbYIDKGFemfeTvOZhrYi3JIfUSMLjxTmEsJyZpAqUrsHDCP5fANOX8iKt5U
	5EJyuWdvaEufzWB2YDEMzAXza8h3WK1srwH6olXenUat4502tprZ8e6jfxueMenXpHQj0KUWZhJo6
	4AC6pbanAbtTWxieN5hgHQL65anI0BXFUugKvv09M1cKl5JlfhpleqbOmgfQaouSm3fmJHrl60eqH
	3ECb8dRy1tDzYfvVlgZao1kNnNuCFF4L8lmXlpETh1knIsuwAh0SJPtjiCB0bITUAQjMwUZ3ijGyH
	xiJ79s/81vGDadN3AHHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iy0y8-0000eu-Fp; Sat, 01 Feb 2020 22:10:24 +0000
Received: from mail2.vany.ca ([142.54.190.254])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iy0y2-0000eX-Qg; Sat, 01 Feb 2020 22:10:20 +0000
Received: from [192.168.1.160] (unknown [192.159.180.39])
 by mail2.vany.ca (Postfix) with ESMTPSA id D471CAC00D3;
 Sat,  1 Feb 2020 16:10:16 -0600 (CST)
Subject: Re: [PATCH] arm64: dts: rockchip: Fix rk3328-roc-cc sdmmcio-regulator
To: Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <87imkryz5t.fsf@vany.ca>
 <7b9829b3-e2d2-95b1-03cb-1af7a3c6acad@arm.com>
 <4a6a9d81-c831-4167-7fbf-64805940fb6f@vany.ca>
 <d8a8b696-268b-1ea8-7b5e-406a651011ff@arm.com>
From: Adam Van Ymeren <adam@vany.ca>
Message-ID: <510d310b-30af-7b24-d472-907bc6b2ef46@vany.ca>
Date: Sat, 1 Feb 2020 17:10:15 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Icedove/68.4.1
MIME-Version: 1.0
In-Reply-To: <d8a8b696-268b-1ea8-7b5e-406a651011ff@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_141018_938349_42F1B742 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIwMjAtMDItMDEgMTI6NDYgcC5tLiwgUm9iaW4gTXVycGh5IHdyb3RlOgo+IE9uIDIwMjAt
MDItMDEgMzo0MSBwbSwgQWRhbSBWYW4gWW1lcmVuIHdyb3RlOgo+Pgo+PiBPbiAyMDIwLTAyLTAx
IDU6NTEgYS5tLiwgUm9iaW4gTXVycGh5IHdyb3RlOgo+Pj4gSGkgQWRhbSwKPj4+Cj4+PiBPbiAy
MDIwLTAxLTMxIDExOjM4IHBtLCBBZGFtIFZhbiBZbWVyZW4gd3JvdGU6Cj4+Pj4gV2l0aCB0aGlz
IGNoYW5nZSB0aGUga2VybmVsIHN1Y2Nlc3NmdWxseSBmaW5kcyB0aGUgU0QgQ2FyZCBhbmQgY2Fu
Cj4+Pj4gbG9hZAo+Pj4+IGEgcm9vdGZzIGZyb20gaXQuwqAgVGVzdGVkIG9uIGhhcmR3YXJlLgo+
Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogQWRhbSBWYW4gWW1lcmVuIDxhZGFtQHZhbnkuY2E+Cj4+
Pj4KPj4+PiBkaWZmIC11cHJOIC1YIGxpbnV4LTUuNS9Eb2N1bWVudGF0aW9uL2RvbnRkaWZmCj4+
Pj4gbGludXgtNS41LW9yaWcvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtcm9j
LWNjLmR0cwo+Pj4+IGxpbnV4LTUuNS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMy
OC1yb2MtY2MuZHRzCj4+Pj4gLS0tIGxpbnV4LTUuNS1vcmlnL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzI4LXJvYy1jYy5kdHMKPj4+PiAyMDIwLTAxLTI2IDE5OjIzOjAzLjAwMDAw
MDAwMCAtMDUwMAo+Pj4+ICsrKyBsaW51eC01LjUvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzMjgtcm9jLWNjLmR0cwo+Pj4+IDIwMjAtMDEtMzEgMTY6MjY6MzUuMzc3MDc1NDE5IC0w
NTAwCj4+Pj4gQEAgLTQ0LDcgKzQ0LDcgQEAKPj4+PiDCoMKgIMKgwqDCoMKgwqAgdmNjX3NkaW86
IHNkbW1jaW8tcmVndWxhdG9yIHsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxl
ID0gInJlZ3VsYXRvci1ncGlvIjsKPj4+PiAtwqDCoMKgwqDCoMKgwqAgZ3Bpb3MgPSA8JmdyZl9n
cGlvIDAgR1BJT19BQ1RJVkVfSElHSD47Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGdwaW9zID0gPCZn
cGlvMCBSS19QRDEgR1BJT19BQ1RJVkVfSElHSD47Cj4+Pgo+Pj4gR2l2ZW4gdGhhdCB0aGUgUksz
MzI4IGRhdGFzaGVldCBoYXMgbm8gbWVudGlvbiBvZiBHUElPMF9EMSBleGlzdGluZyBhdAo+Pj4g
YWxsLCBob3cgc3VyZSBhcmUgeW91IHRoYXQgdGhpcyBpcyBjb3JyZWN0IC0gaGF2ZSB5b3UgdGVz
dGVkIGNhcmRzIGluCj4+PiBib3RoIDMuM1YgYW5kIDEuOFYgKFVIUy0xKSBzaWduYWxsaW5nIG1v
ZGVzPwo+Pj4KPj4+IFRoZSBST0MtUkszMzI4LUNDIHNjaGVtYXRpY3Mgc2hvdyBHUElPX01VVEUg
YmVpbmcgdXNlZCB0byBiaWFzIHRoZQo+Pj4gZmVlZGJhY2sgcGluIG9mIGFuIGFkanVzdGFibGUg
cmVndWxhdG9yIHN1cHBseWluZyB0aGUgU0RNTUMwIEkvTwo+Pj4gZG9tYWluLCBzbyBpdCBzZWVt
cyBtb3JlIGxpa2VseSB0aGF0IHRoZSBwaW4gaXMgY29ycmVjdCBidXQgdGhlIHN0YXRlcwo+Pj4g
KG9yIHRoZSBwb2xhcml0eSkgYXJlIGJhY2t3YXJkcy4KPj4KPj4KPj4gSG1tIHllYWggYWZ0ZXIg
cmVhZGluZyB0aGUgc2NoZW1hdGljcyB0aGlzIGRvZXNuJ3QgbWFrZSBzZW5zZS7CoCBJIHRvb2sK
Pj4gaXQgZnJvbSB0aGUgdmVuZG9ycyBzb3VyY2UgdHJlZVsxXSwgYW5kIGl0IGRlZmluaXRlbHkg
YWxsb3dlZCBteSBzeXN0ZW0KPj4gdG8gYm9vdCB3aGVuIGl0IHdvdWxkbid0IGJlZm9yZSwgYnV0
IEkgb25seSB0cmllZCBhIDMuM1YgY2FyZC7CoCBJJ2xsIHRyeQo+PiBqdXN0IGNoYW5naW5nIHRo
ZSBwb2xhcml0eS7CoCBJJ2xsIGFsc28gZmluZCBhIFVIUy0xIGNhcmQgYW5kIHRlc3QgdGhhdCwK
Pj4gYW55IGFkdmljZSBvbiBob3cgdG8gdmVyaWZ5IHRoYXQgaXQncyBydW5uaW5nIGluIHRoZSAx
LjhWIG1vZGU/Cj4KPiBNeSBwcmVmZXJyZWQgbWV0aG9kIGlzIHRvIHN0aWNrIGEgbWV0ZXIgb24g
ZWl0aGVyIHRoZSB1U0Qgc29ja2V0IHBpbnMKPiBvciB0aGUgcmVndWxhdG9yIGl0c2VsZiBhbmQg
d2lnZ2xlIHRoZSBHUElPIGZyb20gdXNlcnNwYWNlLCBidXQKPiBwcmVmZXJhYmx5IG9ubHkgaWYg
dGhlIGJvYXJkIGNhbiBydW4gd2l0aG91dCBhIGNhcmQgaW5zZXJ0ZWQuCj4KPiBUaGF0IHNhaWQs
IEkganVzdCBzdWRkZW5seSByZW1lbWJlcmVkIGFib3V0IHJlZ3VsYXRvciBHUElPcyBiZWluZwo+
IHF1aXJreSBmb3IgbGVnYWN5IEFCSSByZWFzb25zIC0gSSdtIG5vdyA5OSUgc3VyZSB0aGF0IHlv
dSBzaG91bGQKPiBzaW1wbHkgbmVlZCB0byBhZGQgdGhlICJlbmFibGUtYWN0aXZlLWhpZ2giIHBy
b3BlcnR5IHRvIG1ha2UgaXQKPiBhY3R1YWxseSB3b3JrIGFzIGV4cGVjdGVkLgo+CgpXaGVscCBJ
IGRpZCBhIHdob2xlIGJ1bmNoIG9mIHRyYWNpbmcgYW5kIGRlYnVnZ2luZyBvbmx5IHRvIHJlYWxp
emUgdGhhdApJIGRpZG4ndCBoYXZlIENPTkZJR19HUElPX1NZU0NPTiBlbmFibGVkLCBzbyBiaWcg
c3VwcmlzZSB0aGUgZ3Bpby1zeXNjb24KZHJpdmVyIG5lZWRlZCBmb3IgZ3JmLWdwaW8gbmV2ZXIg
Y2FtZSBvbmxpbmUuwqAgQWZ0ZXIgdHVybmluZyB0aGF0IG9uIEkgZ2V0CgpbwqDCoMKgIDEuMjc3
MTE1XSBtbWNfaG9zdCBtbWMxOiBCdXMgc3BlZWQgKHNsb3QgMCkgPSA0MDAwMDBIeiAoc2xvdCBy
ZXEKNDAwMDAwSHosIGFjdHVhbCA0MDAwMDBIWiBkaXYgPSAwKQoKaW4gbXkgZG1lc2csIHdoaWNo
IGlzIG1vcmUgdGhhbiBJIHVzZWQgdG8gZ2V0LsKgIEhvd2V2ZXIgaXQgZmFpbHMgdG8KZGV0ZWN0
IHRoZSBTRENhcmQuwqAgSSB0cmllZCB3aXRoIGFuZCB3aXRob3V0IGVuYWJsZS1hY3RpdmUtaGln
aDsgb24gdGhlCnNkbW1jaW8tcmVndWxhdG9yIGVudHJ5LCBuZWl0aGVyIHNlZW1lZCB0byBtYWtl
IGEgZGlmZmVyZW5jZS7CoCBJJ2xsIGRvCnNvbWUgbW9yZSBkZWJ1Z2dpbmcgaW4gYSBiaXQsIGl0
cyBhbHdheXMgcG9zc2libGUgSSBkaWQgc29tZXRoaW5nIHN0dXBpZApsaWtlIHVzZSB0aGUgd3Jv
bmcgLmR0YiBmaWxlIChvciBidWlsZCB3aXRob3V0IENPTkZJR19HUElPX1NZU0NPTikuCgoKVGhh
bmtzIGFnYWluIQoKLUFkYW0KCnwKCnwKCnx8Cgp8Cgp8Cgp8Cgp8fHwKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
