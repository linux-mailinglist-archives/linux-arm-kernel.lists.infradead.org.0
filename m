Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D91E9A55
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 11:47:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=797IbPYO/N9O2PvIP5WSjYeYdVSmXr1NwGa12XYRqWI=; b=ULrJdHPT9cNzMCD4bscPgXHrm
	WAUzrCJHAe5BkzKSiWmZrSEtL7kZtIOkbfiTzhjp9SEldXCM7WUHND8Rx8bp4PXWK6QRpedIQGkg/
	JUQZeXRFIaSroFANsQth60Re9jyZ0xdAQNcf3tdC+SyR59n6/fFhiR26rlLkYWRK4R8K3IEiI9w7/
	71w8eGxytCCXbOd0uOT3EGYv1Kth1UJxfyh23MbnMcMykWQ46KWEDSqySlHGrG1pUWmoKsG9jAE93
	UpzFbcOz4vBVVoNOrmPfu9tQiAa3U4AnxG+GHcoFjo61ldNq9SUbgQRb+e3EKJOFUJ+VC+9jftrzs
	6Lvge9vQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPlVz-00022l-4Z; Wed, 30 Oct 2019 10:47:47 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPlVm-00022K-Ce
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 10:47:36 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 4734sb4Nwyz9vC0x;
 Wed, 30 Oct 2019 11:47:31 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=cf/sRWCL; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id K1eOxTCv4zt3; Wed, 30 Oct 2019 11:47:31 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 4734sb3BvNz9vC0r;
 Wed, 30 Oct 2019 11:47:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1572432451; bh=SGVReNGqqSUpz15YxJR2cgUBOngJFQtsEfn+NoTBckE=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=cf/sRWCLAZ8cBsbgNEc18qSqmsqxsnYWkA0ULkAfRxxrlrHWHYUBivisNIPFS2q4p
 nAp83AXqoauLgS8OT1FPLHrrbjpqFoCZiCwvlCm8pFXQhJmjC0EaIxMwiUc1QPSvNp
 beDe1dQLCIPXzlnHBSPaDZ5lRkzmNqC4A/uIs4Fw=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 0BD878B7C8;
 Wed, 30 Oct 2019 11:47:31 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id f1h9Jfj79tSU; Wed, 30 Oct 2019 11:47:31 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 9F24C8B7C7;
 Wed, 30 Oct 2019 11:47:29 +0100 (CET)
Subject: Re: [PATCH v2 11/23] soc: fsl: qe: rename qe_ic_cascade_low_mpic ->
 qe_ic_cascade_low
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-12-linux@rasmusvillemoes.dk>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <caa85681-71a3-460b-d89d-4b73daac965b@c-s.fr>
Date: Wed, 30 Oct 2019 11:47:28 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191025124058.22580-12-linux@rasmusvillemoes.dk>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_034734_722918_6C54A3CE 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Scott Wood <oss@buserror.net>,
 Valentin Longchamp <valentin.longchamp@keymile.com>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAyNS8xMC8yMDE5IMOgIDE0OjQwLCBSYXNtdXMgVmlsbGVtb2VzIGEgw6ljcml0wqA6Cj4g
VGhlIHFlX2ljX2Nhc2NhZGVfe2xvdyxoaWdofV9tcGljIGZ1bmN0aW9ucyBhcmUgbm93IHVzZWQg
YXMgaGFuZGxlcnMKPiBib3RoIHdoZW4gdGhlIGludGVycnVwdCBwYXJlbnQgaXMgbXBpYyBhcyB3
ZWxsIGFzIGlwaWMsIHNvIHJlbW92ZSB0aGUKPiBfbXBpYyBzdWZmaXguCgpIZXJlIHlvdSBhcmUg
bW9kaWZ5aW5nIGNvZGUgdGhhdCB5b3UgZHJvcCBpbiBwYXRjaCAxNC4gVGhhdCdzIHBvaW50bGVz
cy4gCllvdSBzaG91bGQgcGVyZm9ybSBuYW1lIGNoYW5nZSBhZnRlciBwYXRjaCAxNC4KCkNocmlz
dG9waGUKCj4gCj4gU2lnbmVkLW9mZi1ieTogUmFzbXVzIFZpbGxlbW9lcyA8bGludXhAcmFzbXVz
dmlsbGVtb2VzLmRrPgo+IC0tLQo+ICAgYXJjaC9wb3dlcnBjL3BsYXRmb3Jtcy84M3h4L21pc2Mu
YyAgICAgICAgICAgIHwgMiArLQo+ICAgYXJjaC9wb3dlcnBjL3BsYXRmb3Jtcy84NXh4L2NvcmVu
ZXRfZ2VuZXJpYy5jIHwgNCArKy0tCj4gICBhcmNoL3Bvd2VycGMvcGxhdGZvcm1zLzg1eHgvbXBj
ODV4eF9tZHMuYyAgICAgfCA0ICsrLS0KPiAgIGFyY2gvcG93ZXJwYy9wbGF0Zm9ybXMvODV4eC9t
cGM4NXh4X3JkYi5jICAgICB8IDQgKystLQo+ICAgYXJjaC9wb3dlcnBjL3BsYXRmb3Jtcy84NXh4
L3R3cl9wMTAyeC5jICAgICAgIHwgNCArKy0tCj4gICBkcml2ZXJzL3NvYy9mc2wvcWUvcWVfaWMu
YyAgICAgICAgICAgICAgICAgICAgfCA0ICsrLS0KPiAgIGluY2x1ZGUvc29jL2ZzbC9xZS9xZV9p
Yy5oICAgICAgICAgICAgICAgICAgICB8IDQgKystLQo+ICAgNyBmaWxlcyBjaGFuZ2VkLCAxMyBp
bnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9wb3dl
cnBjL3BsYXRmb3Jtcy84M3h4L21pc2MuYyBiL2FyY2gvcG93ZXJwYy9wbGF0Zm9ybXMvODN4eC9t
aXNjLmMKPiBpbmRleCA3Nzk3OTFjMDU3MGYuLjgzNWQwODIyMThhZSAxMDA2NDQKPiAtLS0gYS9h
cmNoL3Bvd2VycGMvcGxhdGZvcm1zLzgzeHgvbWlzYy5jCj4gKysrIGIvYXJjaC9wb3dlcnBjL3Bs
YXRmb3Jtcy84M3h4L21pc2MuYwo+IEBAIC0xMDAsNyArMTAwLDcgQEAgdm9pZCBfX2luaXQgbXBj
ODN4eF9xZV9pbml0X0lSUSh2b2lkKQo+ICAgCQlpZiAoIW5wKQo+ICAgCQkJcmV0dXJuOwo+ICAg
CX0KPiAtCXFlX2ljX2luaXQobnAsIDAsIHFlX2ljX2Nhc2NhZGVfbG93X21waWMsIHFlX2ljX2Nh
c2NhZGVfaGlnaF9tcGljKTsKPiArCXFlX2ljX2luaXQobnAsIDAsIHFlX2ljX2Nhc2NhZGVfbG93
LCBxZV9pY19jYXNjYWRlX2hpZ2gpOwo+ICAgCW9mX25vZGVfcHV0KG5wKTsKPiAgIH0KPiAgIAo+
IGRpZmYgLS1naXQgYS9hcmNoL3Bvd2VycGMvcGxhdGZvcm1zLzg1eHgvY29yZW5ldF9nZW5lcmlj
LmMgYi9hcmNoL3Bvd2VycGMvcGxhdGZvcm1zLzg1eHgvY29yZW5ldF9nZW5lcmljLmMKPiBpbmRl
eCA3ZWUyYzY2MjhmNjQuLjJlZDllODRjYTAzYSAxMDA2NDQKPiAtLS0gYS9hcmNoL3Bvd2VycGMv
cGxhdGZvcm1zLzg1eHgvY29yZW5ldF9nZW5lcmljLmMKPiArKysgYi9hcmNoL3Bvd2VycGMvcGxh
dGZvcm1zLzg1eHgvY29yZW5ldF9nZW5lcmljLmMKPiBAQCAtNTAsOCArNTAsOCBAQCB2b2lkIF9f
aW5pdCBjb3JlbmV0X2dlbl9waWNfaW5pdCh2b2lkKQo+ICAgCj4gICAJbnAgPSBvZl9maW5kX2Nv
bXBhdGlibGVfbm9kZShOVUxMLCBOVUxMLCAiZnNsLHFlLWljIik7Cj4gICAJaWYgKG5wKSB7Cj4g
LQkJcWVfaWNfaW5pdChucCwgMCwgcWVfaWNfY2FzY2FkZV9sb3dfbXBpYywKPiAtCQkJCXFlX2lj
X2Nhc2NhZGVfaGlnaF9tcGljKTsKPiArCQlxZV9pY19pbml0KG5wLCAwLCBxZV9pY19jYXNjYWRl
X2xvdywKPiArCQkJCXFlX2ljX2Nhc2NhZGVfaGlnaCk7Cj4gICAJCW9mX25vZGVfcHV0KG5wKTsK
PiAgIAl9Cj4gICB9Cj4gZGlmZiAtLWdpdCBhL2FyY2gvcG93ZXJwYy9wbGF0Zm9ybXMvODV4eC9t
cGM4NXh4X21kcy5jIGIvYXJjaC9wb3dlcnBjL3BsYXRmb3Jtcy84NXh4L21wYzg1eHhfbWRzLmMK
PiBpbmRleCA1Y2EyNTQyNTZjNDcuLjI0MjExYTE3ODdiMiAxMDA2NDQKPiAtLS0gYS9hcmNoL3Bv
d2VycGMvcGxhdGZvcm1zLzg1eHgvbXBjODV4eF9tZHMuYwo+ICsrKyBiL2FyY2gvcG93ZXJwYy9w
bGF0Zm9ybXMvODV4eC9tcGM4NXh4X21kcy5jCj4gQEAgLTI4OCw4ICsyODgsOCBAQCBzdGF0aWMg
dm9pZCBfX2luaXQgbXBjODV4eF9tZHNfcWVpY19pbml0KHZvaWQpCj4gICAJfQo+ICAgCj4gICAJ
aWYgKG1hY2hpbmVfaXMocDEwMjFfbWRzKSkKPiAtCQlxZV9pY19pbml0KG5wLCAwLCBxZV9pY19j
YXNjYWRlX2xvd19tcGljLAo+IC0JCQkJcWVfaWNfY2FzY2FkZV9oaWdoX21waWMpOwo+ICsJCXFl
X2ljX2luaXQobnAsIDAsIHFlX2ljX2Nhc2NhZGVfbG93LAo+ICsJCQkJcWVfaWNfY2FzY2FkZV9o
aWdoKTsKPiAgIAllbHNlCj4gICAJCXFlX2ljX2luaXQobnAsIDAsIHFlX2ljX2Nhc2NhZGVfbXV4
ZWRfbXBpYywgTlVMTCk7Cj4gICAJb2Zfbm9kZV9wdXQobnApOwo+IGRpZmYgLS1naXQgYS9hcmNo
L3Bvd2VycGMvcGxhdGZvcm1zLzg1eHgvbXBjODV4eF9yZGIuYyBiL2FyY2gvcG93ZXJwYy9wbGF0
Zm9ybXMvODV4eC9tcGM4NXh4X3JkYi5jCj4gaW5kZXggZDNjNTQwZWU1NThmLi4wOTM4Njc4Nzkw
ODEgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9wb3dlcnBjL3BsYXRmb3Jtcy84NXh4L21wYzg1eHhfcmRi
LmMKPiArKysgYi9hcmNoL3Bvd2VycGMvcGxhdGZvcm1zLzg1eHgvbXBjODV4eF9yZGIuYwo+IEBA
IC02Niw4ICs2Niw4IEBAIHZvaWQgX19pbml0IG1wYzg1eHhfcmRiX3BpY19pbml0KHZvaWQpCj4g
ICAjaWZkZWYgQ09ORklHX1FVSUNDX0VOR0lORQo+ICAgCW5wID0gb2ZfZmluZF9jb21wYXRpYmxl
X25vZGUoTlVMTCwgTlVMTCwgImZzbCxxZS1pYyIpOwo+ICAgCWlmIChucCkgewo+IC0JCXFlX2lj
X2luaXQobnAsIDAsIHFlX2ljX2Nhc2NhZGVfbG93X21waWMsCj4gLQkJCQlxZV9pY19jYXNjYWRl
X2hpZ2hfbXBpYyk7Cj4gKwkJcWVfaWNfaW5pdChucCwgMCwgcWVfaWNfY2FzY2FkZV9sb3csCj4g
KwkJCQlxZV9pY19jYXNjYWRlX2hpZ2gpOwo+ICAgCQlvZl9ub2RlX3B1dChucCk7Cj4gICAKPiAg
IAl9IGVsc2UKPiBkaWZmIC0tZ2l0IGEvYXJjaC9wb3dlcnBjL3BsYXRmb3Jtcy84NXh4L3R3cl9w
MTAyeC5jIGIvYXJjaC9wb3dlcnBjL3BsYXRmb3Jtcy84NXh4L3R3cl9wMTAyeC5jCj4gaW5kZXgg
NzIwYjBjMGYwM2JhLi4yZTBmYjIzODU0YzAgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9wb3dlcnBjL3Bs
YXRmb3Jtcy84NXh4L3R3cl9wMTAyeC5jCj4gKysrIGIvYXJjaC9wb3dlcnBjL3BsYXRmb3Jtcy84
NXh4L3R3cl9wMTAyeC5jCj4gQEAgLTQ1LDggKzQ1LDggQEAgc3RhdGljIHZvaWQgX19pbml0IHR3
cl9wMTAyNV9waWNfaW5pdCh2b2lkKQo+ICAgI2lmZGVmIENPTkZJR19RVUlDQ19FTkdJTkUKPiAg
IAlucCA9IG9mX2ZpbmRfY29tcGF0aWJsZV9ub2RlKE5VTEwsIE5VTEwsICJmc2wscWUtaWMiKTsK
PiAgIAlpZiAobnApIHsKPiAtCQlxZV9pY19pbml0KG5wLCAwLCBxZV9pY19jYXNjYWRlX2xvd19t
cGljLAo+IC0JCQkJcWVfaWNfY2FzY2FkZV9oaWdoX21waWMpOwo+ICsJCXFlX2ljX2luaXQobnAs
IDAsIHFlX2ljX2Nhc2NhZGVfbG93LAo+ICsJCQkJcWVfaWNfY2FzY2FkZV9oaWdoKTsKPiAgIAkJ
b2Zfbm9kZV9wdXQobnApOwo+ICAgCX0gZWxzZQo+ICAgCQlwcl9lcnIoIkNvdWxkIG5vdCBmaW5k
IHFlLWljIG5vZGVcbiIpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9mc2wvcWUvcWVfaWMu
YyBiL2RyaXZlcnMvc29jL2ZzbC9xZS9xZV9pYy5jCj4gaW5kZXggMGZmODAyODE2YzBjLi5mMzY1
OWMzMTJlMTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zb2MvZnNsL3FlL3FlX2ljLmMKPiArKysg
Yi9kcml2ZXJzL3NvYy9mc2wvcWUvcWVfaWMuYwo+IEBAIC00MDIsNyArNDAyLDcgQEAgdW5zaWdu
ZWQgaW50IHFlX2ljX2dldF9oaWdoX2lycShzdHJ1Y3QgcWVfaWMgKnFlX2ljKQo+ICAgCXJldHVy
biBpcnFfbGluZWFyX3Jldm1hcChxZV9pYy0+aXJxaG9zdCwgaXJxKTsKPiAgIH0KPiAgIAo+IC12
b2lkIHFlX2ljX2Nhc2NhZGVfbG93X21waWMoc3RydWN0IGlycV9kZXNjICpkZXNjKQo+ICt2b2lk
IHFlX2ljX2Nhc2NhZGVfbG93KHN0cnVjdCBpcnFfZGVzYyAqZGVzYykKPiAgIHsKPiAgIAlzdHJ1
Y3QgcWVfaWMgKnFlX2ljID0gaXJxX2Rlc2NfZ2V0X2hhbmRsZXJfZGF0YShkZXNjKTsKPiAgIAl1
bnNpZ25lZCBpbnQgY2FzY2FkZV9pcnEgPSBxZV9pY19nZXRfbG93X2lycShxZV9pYyk7Cj4gQEAg
LTQxNSw3ICs0MTUsNyBAQCB2b2lkIHFlX2ljX2Nhc2NhZGVfbG93X21waWMoc3RydWN0IGlycV9k
ZXNjICpkZXNjKQo+ICAgCQljaGlwLT5pcnFfZW9pKCZkZXNjLT5pcnFfZGF0YSk7Cj4gICB9Cj4g
ICAKPiAtdm9pZCBxZV9pY19jYXNjYWRlX2hpZ2hfbXBpYyhzdHJ1Y3QgaXJxX2Rlc2MgKmRlc2Mp
Cj4gK3ZvaWQgcWVfaWNfY2FzY2FkZV9oaWdoKHN0cnVjdCBpcnFfZGVzYyAqZGVzYykKPiAgIHsK
PiAgIAlzdHJ1Y3QgcWVfaWMgKnFlX2ljID0gaXJxX2Rlc2NfZ2V0X2hhbmRsZXJfZGF0YShkZXNj
KTsKPiAgIAl1bnNpZ25lZCBpbnQgY2FzY2FkZV9pcnEgPSBxZV9pY19nZXRfaGlnaF9pcnEocWVf
aWMpOwo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3NvYy9mc2wvcWUvcWVfaWMuaCBiL2luY2x1ZGUv
c29jL2ZzbC9xZS9xZV9pYy5oCj4gaW5kZXggZmIxMGE3NjA2YWNjLi4zYzgyMjBjZWRkOWEgMTAw
NjQ0Cj4gLS0tIGEvaW5jbHVkZS9zb2MvZnNsL3FlL3FlX2ljLmgKPiArKysgYi9pbmNsdWRlL3Nv
Yy9mc2wvcWUvcWVfaWMuaAo+IEBAIC03NCw4ICs3NCw4IEBAIHZvaWQgcWVfaWNfc2V0X2hpZ2hl
c3RfcHJpb3JpdHkodW5zaWduZWQgaW50IHZpcnEsIGludCBoaWdoKTsKPiAgIGludCBxZV9pY19z
ZXRfcHJpb3JpdHkodW5zaWduZWQgaW50IHZpcnEsIHVuc2lnbmVkIGludCBwcmlvcml0eSk7Cj4g
ICBpbnQgcWVfaWNfc2V0X2hpZ2hfcHJpb3JpdHkodW5zaWduZWQgaW50IHZpcnEsIHVuc2lnbmVk
IGludCBwcmlvcml0eSwgaW50IGhpZ2gpOwo+ICAgCj4gLXZvaWQgcWVfaWNfY2FzY2FkZV9sb3df
bXBpYyhzdHJ1Y3QgaXJxX2Rlc2MgKmRlc2MpOwo+IC12b2lkIHFlX2ljX2Nhc2NhZGVfaGlnaF9t
cGljKHN0cnVjdCBpcnFfZGVzYyAqZGVzYyk7Cj4gK3ZvaWQgcWVfaWNfY2FzY2FkZV9sb3coc3Ry
dWN0IGlycV9kZXNjICpkZXNjKTsKPiArdm9pZCBxZV9pY19jYXNjYWRlX2hpZ2goc3RydWN0IGly
cV9kZXNjICpkZXNjKTsKPiAgIHZvaWQgcWVfaWNfY2FzY2FkZV9tdXhlZF9tcGljKHN0cnVjdCBp
cnFfZGVzYyAqZGVzYyk7Cj4gICAKPiAgICNlbmRpZiAvKiBfQVNNX1BPV0VSUENfUUVfSUNfSCAq
Lwo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
