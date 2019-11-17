Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B28AFFAD4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 18:08:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Zyh6jheHColqx9fgdj1bol5LyRoEz73SzB3eIYTu74=; b=M1Fcn6Lv9tz+kw
	PC4YthXJpxYOgEoB6VNq9tBuq8OxigpGwOlJNIeogNxVFGRIPqvNhLxLqxgnHe0JfXhE/OyZyiYcX
	ArJFvAWPwVzbURWLGAhz4kkSh+0j4g3BffwyRnBv43YOiyrYG7B0EkE6ipSf+cvix7WNDizgEBUQd
	QKkLAqxXOhuNwuXUrJOGdrnGOIjHi7VlciHi085uDYxzaXoNbBLTfOvrWlHB4oFjGe8QFAMQSXXoW
	SgxqkO1WYIHXIDEXilS6cMpzxbB7yoXzaDo9nN/ONTIeezrbRU7pUFaYrHN8W82o7ajE2jkcIkO6W
	Gn48MwyQKVYuxZ9eeWfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWO2A-0003dR-Mu; Sun, 17 Nov 2019 17:08:22 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWO21-0003cq-NU; Sun, 17 Nov 2019 17:08:17 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id AA5C3AC11;
 Sun, 17 Nov 2019 17:08:11 +0000 (UTC)
Subject: Re: [PATCH v3 8/8] ARM: realtek: Enable RTD1195 arch timer
To: Marc Zyngier <maz@kernel.org>
References: <20191117072109.20402-1-afaerber@suse.de>
 <20191117072109.20402-9-afaerber@suse.de> <20191117110214.6b160b2e@why>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <7015e4c4-f999-d2e8-fd1f-e15e74a0d092@suse.de>
Date: Sun, 17 Nov 2019 18:08:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191117110214.6b160b2e@why>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_090815_733814_0C57ADA5 
X-CRM114-Status: GOOD (  20.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, James Tai <james.tai@realtek.com>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-realtek-soc@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMTcuMTEuMTkgdW0gMTI6MDIgc2NocmllYiBNYXJjIFp5bmdpZXI6Cj4gT24gU3VuLCAxNyBO
b3YgMjAxOSAwODoyMTowOSArMDEwMAo+IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5k
ZT4gd3JvdGU6Cj4gCj4+IFdpdGhvdXQgdGhpcyBtYWdpYyB3cml0ZSB0aGUgdGltZXIgZG9lc24n
dCB3b3JrIGFuZCBib290IGdldHMgc3R1Y2suCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEFuZHJlYXMg
RsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KPj4gLS0tCj4+ICBXaGF0IGlzIHRoZSBuYW1lIG9m
IHRoZSByZWdpc3RlciAweGZmMDE4MDAwPwo+PiAgSXMgMHgxIGEgQklUKDApIHdyaXRlLCBvciBo
b3cgYXJlIHRoZSByZWdpc3RlciBiaXRzIGRlZmluZWQ/Cj4+ICBJcyB0aGlzIGEgcmVzZXQgb3Ig
YSBjbG9jayBnYXRlPyBIb3cgc2hvdWxkIHdlIG1vZGVsIGl0IGluIERUPwoKICAgIF5eXl5eXl5e
Xl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eCgo+
PiAgCj4+ICB2MiAtPiB2MzogVW5jaGFuZ2VkCj4+ICAKPj4gIHYyOiBOZXcKPj4gIAo+PiAgYXJj
aC9hcm0vbWFjaC1yZWFsdGVrL3J0ZDExOTUuYyB8IDE2ICsrKysrKysrKysrKysrKysKPj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bS9tYWNoLXJlYWx0ZWsvcnRkMTE5NS5jIGIvYXJjaC9hcm0vbWFjaC1yZWFsdGVrL3J0ZDExOTUu
Ywo+PiBpbmRleCBiMzFhNDA2NmJlODcuLjA1MzIzNzljNzRmNSAxMDA2NDQKPj4gLS0tIGEvYXJj
aC9hcm0vbWFjaC1yZWFsdGVrL3J0ZDExOTUuYwo+PiArKysgYi9hcmNoL2FybS9tYWNoLXJlYWx0
ZWsvcnRkMTE5NS5jCj4+IEBAIC01LDYgKzUsOSBAQAo+PiAgICogQ29weXJpZ2h0IChjKSAyMDE3
LTIwMTkgQW5kcmVhcyBGw6RyYmVyCj4+ICAgKi8KPj4gIAo+PiArI2luY2x1ZGUgPGxpbnV4L2Ns
ay1wcm92aWRlci5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L2Nsb2Nrc291cmNlLmg+Cj4+ICsjaW5j
bHVkZSA8bGludXgvaW8uaD4KPj4gICNpbmNsdWRlIDxsaW51eC9tZW1ibG9jay5oPgo+PiAgI2lu
Y2x1ZGUgPGFzbS9tYWNoL2FyY2guaD4KPj4gIAo+PiBAQCAtMjQsNiArMjcsMTggQEAgc3RhdGlj
IHZvaWQgX19pbml0IHJ0ZDExOTVfcmVzZXJ2ZSh2b2lkKQo+PiAgCXJ0ZDExOTVfbWVtYmxvY2tf
cmVtb3ZlKDB4MTgxMDAwMDAsIDB4MDEwMDAwMDApOwo+PiAgfQo+PiAgCj4+ICtzdGF0aWMgdm9p
ZCBfX2luaXQgcnRkMTE5NV9pbml0X3RpbWUodm9pZCkKPj4gK3sKPj4gKwl2b2lkIF9faW9tZW0g
KmJhc2U7Cj4+ICsKPj4gKwliYXNlID0gaW9yZW1hcCgweGZmMDE4MDAwLCA0KTsKPj4gKwl3cml0
ZWwoMHgxLCBiYXNlKTsKPj4gKwlpb3VubWFwKGJhc2UpOwo+PiArCj4+ICsJb2ZfY2xrX2luaXQo
TlVMTCk7Cj4+ICsJdGltZXJfcHJvYmUoKTsKPj4gK30KPiAKPiBHYXdkLi4uIFdoeSBpc24ndCB0
aGlzIHNldCBmcm9tIHRoZSBib290bG9hZGVyPyBCeSB0aGUgdGltZSB0aGUga2VybmVsCj4gc3Rh
cnRzLCBldmVyeXRoaW5nIHNob3VsZCBiZSB1cCBhbmQgcnVubmluZy4gV2hhdCBpcyBpdCBnb2lu
ZyB0byBkbwo+IHdoZW4geW91IGtleGVjPyBTaG91bGRuJ3QgdGhpcyBiZSBhIHJlYWQvbW9kaWZ5
L3dyaXRlIHNlcXVlbmNlPwoKQWdhaW4sIEkgY2FuJ3QgY29tbWVudCBvbiB3aHkgdGhlaXIgQlNQ
IGJvb3Rsb2FkZXJzIGRvbid0IGRvIHRoaW5ncyB0aGUKZXhwZWN0ZWQgd2F5LiBUaGUgbGlzdCBv
ZiBpc3N1ZXMgaXMgbG9uZywgYW5kIHRoZSBuZXdlc3QgVS1Cb290IEkndmUKc2VlbiBmb3IgUlRE
MTM5NSB3YXMgdjIwMTUuMDcgYmFzZWQsIHN0aWxsIGRvd25zdHJlYW0gYW5kIHByZS1FQkJSLgpB
bmQgYmVmb3JlIHdlIGdldCBhIC5kdHMgbWVyZ2VkIGludG8gdGhlIGtlcm5lbCB3aXRoIGFsbCBu
ZWVkZWQgbm9kZXMKKG5ldHdvcmssIGVNTUMsIGV0Yy4pLCB0aGVyZSBpcyB6ZXJvIGNoYW5jZSBv
ZiBhIG1haW5saW5lIFUtQm9vdCBhbnl3YXkuCgp2MiBkaWQgbm90IGdldCBhbnkgcmV2aWV3IGZy
b20gUmVhbHRlaywgc28gZm9yIHRoaXMgdjMgSSBleHBsaWNpdGx5CnNwZWxsZWQgb3V0IG15IHJl
Z2lzdGVyIHF1ZXN0aW9ucyBhYm92ZSwgaW4gY2FzZSB0aGUgdGVybSAibWFnaWMiIHdhcwpub3Qg
ZW5vdWdoIHRvIHByb21wdCBhbiBhY3R1YWwgZXhwbGFuYXRpb24gb2Ygd2hhdCB0aGlzIGlzIGRv
aW5nLi4uCgpPbmx5IGNoYW5nZSB0aGF0IEkgY2FuIGFwcGx5IHJpZ2h0IG5vdyB3aWxsIGJlIHRv
IHR1cm4gdGhpcyB3cml0ZWwoKQppbnRvIGEgd3JpdGVsX3JlbGF4ZWQoKS4gVGVzdGVkIE9LLgoK
T3JpZ2luYWwgb25lLWxpbmUgQlNQIGNvZGU6Cmh0dHBzOi8vZ2l0aHViLmNvbS9CUEktU0lOT1ZP
SVAvQlBJLU00LWJzcC9ibG9iL21hc3Rlci9saW51eC1ydGsvYXJjaC9hcm0vbWFjaC1ydGQxMTl4
L3J0ZDExOXguYyNMMTA1CgpJbiBteSB0ZXN0aW5nLCBhbGwgSSBjYW4gdGVsbCBpcyB0aGF0IG9u
IGJvdGggWDEwMDAgYW5kIEhvcnNlcmFkaXNoIHRoZQpyZWdpc3RlciB2YWx1ZSBpcyAweDAgYmVm
b3JlIGFib3ZlIEJTUC1pbnNwaXJlZCB3cml0ZSBvZiAweDEuClNvIEJJVCgwKSBtaWdodCBiZSBh
IGNsb2NrIGdhdGUgZW5hYmxlIG9yIGEgcmVzZXQgZGVhc3NlcnQsIG9yIGl0IG1pZ2h0CmJlIGEg
bGFyZ2VyIGZpZWxkIG1lYW5pbmcgc29tZXRoaW5nIGVsc2UuCgpGb3Igbm93LCBteSBzbWFsbCBC
dXN5Ym94IGluaXRyZCBpcyBub3QgY2FwYWJsZSBvZiB0ZXN0aW5nIGtleGVjLCBidXQgSQpkb24n
dCBmb3Jlc2VlIGEgcHJvYmxlbSBoZXJlLCBnaXZlbiB0aGUgb2JzZXJ2ZWQgcmVnaXN0ZXIgdmFs
dWVzLgooVW5saWtlIFJURDEyOTUsIFJURDExOTUgZG9lcyBub3QgaGF2ZSBuYXRpdmUgQUhDSSBz
dXBwb3J0IGZvciByb290ZnMuKQoKR2l2ZW4gdGhlIG9kZCBsb2NhdGlvbiBvZiB0aGlzIHJlZ2lz
dGVyIHJpZ2h0IGFmdGVyIEdJQ1YgcmF0aGVyIHRoYW4gb24KdGhlaXIgci1idXMsIGNhbiB5b3Ug
cnVsZSBvdXQgdGhhdCB0aGlzIGlzIHNvbWUgc3RhbmRhcmQgQXJtIHJlZ2lzdGVyPwoKTm90ZSB0
aGF0IHRoaXMgcGF0Y2ggaXMgaW50ZW50aW9uYWxseSBzZXBhcmF0ZSBhbmQgbGFzdCBpbiB0aGlz
IHNlcmllcywKcHJlY2lzZWx5IGR1ZSB0byB0aGlzIGV4cGVjdGVkIGNvbnRlbnRpb3VzIGRpc2N1
c3Npb24uIDopIEJ1dCBhcyB0aGVyZQpzZWVtcyBubyByZWFsaXN0aWMgY2hhbmNlIG9mIGFueW9u
ZSBpbXBsZW1lbnRpbmcgYSBuZXcgVS1Cb290IGFueXRpbWUKc29vbiwgd2UnbGwgaGF2ZSB0byBs
aXZlIHdpdGggc29tZSBzdWNoIHVnbHkgc29sdXRpb24gdG8gdW5ibG9jayBib290LgoKClNsaWdo
dGx5IHJlbGF0ZWQgdG8gdGhpcyAuaW5pdF90aW1lIGhvb2ssIEkgYW0gZmFjaW5nIGFuIGlzc3Vl
IGZvciBTTVAKd2hlcmUgbXkgaW9yZW1hcCgpIGZhaWxzIGluIC5zbXBfaW5pdF9jcHVzIGlmIEkg
ZG9uJ3QgaW1wbGVtZW50IGEKLm1hcF9pbyBob29rIGhlcmUsIHByb3ZpZGluZyBhbiBvbGQtc3R5
bGUgZml4ZWQgbWFwcGluZyBmb3Igci1idXMuIExhdGVyCmlvcmVtYXAoKXMgaW4gYWN0dWFsIGRy
aXZlcnMgaW4gdGhhdCBzYW1lIHItYnVzIHNwYWNlIGRvIHN1Y2NlZWQuCgpBbmQgZm9yIHRoZSBy
ZWNvcmQsIFJURDEyOTUgYW5kIFJURDEzOTUgc3RpbGwgZG9uJ3QgaGF2ZSBTTVAgaW4gbWFpbmxp
bmUKZWl0aGVyIGJlY2F1c2UgdGhleSdyZSBub3QgaW1wbGVtZW50aW5nIGl0IHZpYSBQU0NJOyBS
VEQxNjE5IGFwcGVhcnMgdG8KYmUgdGhlIGZpcnN0IHRvIGRvIHRoYXQgaW4gQkwzMS4gTm8gcHVi
bGljIEJMMzEgY29kZSBbMV0gdGhhdCB3ZSBtaWdodApmaXgsIG5vciBhbnkgcHVibGljIGRvY3Vt
ZW50YXRpb24gb24gaG93IHdlIG1pZ2h0IGV4cGVyaW1lbnRhbGx5IHJlcGxhY2UKQkwzMSB3aXRo
IG9uZSB3cml0dGVuIGZyb20gc2NyYXRjaCwgc28gSSdtIGNhcnJ5aW5nIG5vbi11cHN0cmVhbWFi
bGUKcGF0Y2hlcyAobWFya2VkICJIQUNLOiIpIGhhY2tpbmcgdXAgYXJtNjQgc3Bpbi10YWJsZSB0
byB1c2UgZGlmZmVyZW50CmFkZHJlc3NlcyBhbmQgd2lkdGhzIHRvIGJyaW5nIHRoZW0gdXAuIDov
CgpSZWdhcmRzLApBbmRyZWFzCgpbMV0gaHR0cHM6Ly9naXRodWIuY29tL0FSTS1zb2Z0d2FyZS9h
cm0tdHJ1c3RlZC1maXJtd2FyZS90cmVlL21hc3Rlci9wbGF0CgotLSAKU1VTRSBTb2Z0d2FyZSBT
b2x1dGlvbnMgR2VybWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2Vy
bWFueQpHRjogRmVsaXggSW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5iZXJnKQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
