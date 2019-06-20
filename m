Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EDA4CCB7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 13:16:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aQXdkEDNcVFrGblp8f1nBsQ79Vc6rSsCWmN84w7YEDU=; b=bJ5tQGWn351Tk4
	DIx8MTgAZymJJ8hq7So8O+uP/ZQQ2BWcyXGyKmSJZ3MMNEfjyoDN1Rf3+diUzFaZpGAPaFnjhb3jm
	xlpvrsRR51r67k1q0v8wWC2zh0kNNfZOJtsuJT573WhnyKByfEFbsEg1zAZTk6GpyJpRCxDRnoqA9
	/nNan+oZDKm0ZWXNOr2WezKsW4f/4T+uvJDrLeRtJOB1wCECpE6LCqmLq4WVxAfVfu8dEVTpzTQvr
	z09AxmWFFXlb+lCKrgWk3urFqOA5cEv26jRsuGhpbeMI4ZGCTM5XnWzK5mN3V8y287MjgyHMVv2R+
	obAnx5eW2vAhV6gZjqWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdv3m-0000MN-HG; Thu, 20 Jun 2019 11:16:54 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdv3O-0000Le-QC
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 11:16:32 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5KBGSbG129802;
 Thu, 20 Jun 2019 06:16:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561029388;
 bh=v9evrXewKpz2fT8SoPAv6p7HkWSvXEDeXH5gQdRpMps=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=X3Gv903dNQIEPqSShtFzRp0XOkuj+FUzECzVlRAm680VGGzgO97IejxoUTXt9nEOJ
 U3uqvnvBx9vg6VUjjkKOM4VDCFSk2Urt6ZtDxQNkbS3fh3Go+zbR/7th2sFzgs/GbH
 TyDKywAoxWb/ZV7kNFWap6hvxo7KEwUbPCTZEWhI=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5KBGSq1084784
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 20 Jun 2019 06:16:28 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 20
 Jun 2019 06:16:27 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 20 Jun 2019 06:16:27 -0500
Received: from [172.24.190.172] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5KBGP3T079915;
 Thu, 20 Jun 2019 06:16:26 -0500
Subject: Re: [PATCH] ARM: davinci: Use GPIO lookup table for DA850 LEDs
To: Bartosz Golaszewski <brgl@bgdev.pl>, Linus Walleij
 <linus.walleij@linaro.org>
References: <20190531224333.3335-1-linus.walleij@linaro.org>
 <CAMRc=MdHUhZNuDKKdTnUGVm8h1rPoJYiei+WMvTVCXVHjmTRng@mail.gmail.com>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <96ad5ca0-5072-b070-deff-e2e47f081397@ti.com>
Date: Thu, 20 Jun 2019 16:46:25 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAMRc=MdHUhZNuDKKdTnUGVm8h1rPoJYiei+WMvTVCXVHjmTRng@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_041630_945159_7379591A 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDcvMDYvMTkgMjozNCBQTSwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPiBzb2IuLCAx
IGN6ZSAyMDE5IG8gMDA6NDMgTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3Jn
PiBuYXBpc2HFgihhKToKPj4KPj4gVGhpcyBzd2l0Y2hlcyB0aGUgREE4NTAgYm9hcmQgdG8gdXNl
IGEgR1BJTyBsb29rdXAgdGFibGUgdG8KPj4gbG9vayB1cCB0aGUgR1BJTyBMRURzLiBUaGFua3Mg
dG8gdGhlIG9mZnNldCBoYW5kbGluZyB3aGVuCj4+IHdlIGRlZmluZSBHUElPcyBhcyBhbiBvZmZz
ZXQgaW50byB0aGUgY2hpcCwgd2UgY2FuIGRyb3AKPj4gc29tZSBjb21wbGV4IGNvZGUuCj4+Cj4+
IFNpZ25lZC1vZmYtYnk6IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4K
Pj4gLS0tCj4+IFNla2hhciwgQmFydG9zejogSSBoYWQgdGhpcyBwYXRjaCBzaXR0aW5nIGFyb3Vu
ZCBpbiBteQo+PiB0cmVlLCBjYW4gYW55IG9mIHlvdSB0ZXN0IGl0IGFuZC9vciBhcHBseSBpdD8g
VGhlCj4+IHByZXJlcXVpc2l0ZSBwYXRjaCBuYW1pbmcgdGhlIEdQSU8gZXhwYW5kZXIgcHJvcGVy
bHkKPj4gYWZ0ZXIgLmRldl9uYW1lIHdhcyBjb21taXRlZCBhIHdoaWxlIGJhY2suCj4+IC0tLQo+
PiAgYXJjaC9hcm0vbWFjaC1kYXZpbmNpL2JvYXJkLWRhODUwLWV2bS5jIHwgNDMgKysrKysrKysr
KysrKy0tLS0tLS0tLS0tLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKyksIDIx
IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1kYXZpbmNpL2Jv
YXJkLWRhODUwLWV2bS5jIGIvYXJjaC9hcm0vbWFjaC1kYXZpbmNpL2JvYXJkLWRhODUwLWV2bS5j
Cj4+IGluZGV4IDRlZTY1YThhM2I4MC4uYWNmMzAxM2Y0YWU1IDEwMDY0NAo+PiAtLS0gYS9hcmNo
L2FybS9tYWNoLWRhdmluY2kvYm9hcmQtZGE4NTAtZXZtLmMKPj4gKysrIGIvYXJjaC9hcm0vbWFj
aC1kYXZpbmNpL2JvYXJkLWRhODUwLWV2bS5jCj4+IEBAIC02MzEsMTMgKzYzMSwxMiBAQCBzdGF0
aWMgdm9pZCBkYTg1MF9ldm1fYmJfa2V5c19pbml0KHVuc2lnbmVkIGdwaW8pCj4+ICAgICAgICAg
fQo+PiAgfQo+Pgo+PiAtI2RlZmluZSBEQTg1MF9OX0JCX1VTRVJfTEVEICAgIDIKPj4gLQo+PiAg
c3RhdGljIHN0cnVjdCBncGlvX2xlZCBkYTg1MF9ldm1fYmJfbGVkc1tdID0gewo+PiAtICAgICAg
IFswIC4uLiBEQTg1MF9OX0JCX1VTRVJfTEVEIC0gMV0gPSB7Cj4+IC0gICAgICAgICAgICAgICAu
YWN0aXZlX2xvdyA9IDEsCj4+IC0gICAgICAgICAgICAgICAuZ3BpbyA9IC0xLCAvKiBhc3NpZ25l
ZCBhdCBydW50aW1lICovCj4+IC0gICAgICAgICAgICAgICAubmFtZSA9IE5VTEwsIC8qIGFzc2ln
bmVkIGF0IHJ1bnRpbWUgKi8KPj4gKyAgICAgICB7Cj4+ICsgICAgICAgICAgICAgICAubmFtZSA9
ICJ1c2VyX2xlZDIiLAo+PiArICAgICAgIH0sCj4+ICsgICAgICAgewo+PiArICAgICAgICAgICAg
ICAgLm5hbWUgPSAidXNlcl9sZWQxIiwKPj4gICAgICAgICB9LAo+PiAgfTsKPj4KPj4gQEAgLTY0
Niw2ICs2NDUsMjAgQEAgc3RhdGljIHN0cnVjdCBncGlvX2xlZF9wbGF0Zm9ybV9kYXRhIGRhODUw
X2V2bV9iYl9sZWRzX3BkYXRhID0gewo+PiAgICAgICAgIC5udW1fbGVkcyA9IEFSUkFZX1NJWkUo
ZGE4NTBfZXZtX2JiX2xlZHMpLAo+PiAgfTsKPj4KPj4gK3N0YXRpYyBzdHJ1Y3QgZ3Bpb2RfbG9v
a3VwX3RhYmxlIGRhODUwX2V2bV9iYl9sZWRzX2dwaW9fdGFibGUgPSB7Cj4+ICsgICAgICAgLmRl
dl9pZCA9ICJsZWRzLWdwaW8iLAo+PiArICAgICAgIC50YWJsZSA9IHsKPj4gKyAgICAgICAgICAg
ICAgIEdQSU9fTE9PS1VQX0lEWCgiaTJjLWJiLWV4cGFuZGVyIiwKPj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBEQTg1MF9FVk1fQkJfRVhQX1VTRVJfTEVEMiwgTlVMTCwKPj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAwLCBHUElPX0FDVElWRV9MT1cpLAo+PiArICAg
ICAgICAgICAgICAgR1BJT19MT09LVVBfSURYKCJpMmMtYmItZXhwYW5kZXIiLAo+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIERBODUwX0VWTV9CQl9FWFBfVVNFUl9MRUQyICsgMSwg
TlVMTCwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAxLCBHUElPX0FDVElWRV9M
T1cpLAo+PiArCj4+ICsgICAgICAgICAgICAgICB7IH0sCj4+ICsgICAgICAgfSwKPj4gK307Cj4+
ICsKPj4gIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlIGRhODUwX2V2bV9iYl9sZWRzX2Rl
dmljZSA9IHsKPj4gICAgICAgICAubmFtZSAgICAgICAgICAgPSAibGVkcy1ncGlvIiwKPj4gICAg
ICAgICAuaWQgICAgICAgICAgICAgPSAtMSwKPj4gQEAgLTY1NCwyMCArNjY3LDYgQEAgc3RhdGlj
IHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgZGE4NTBfZXZtX2JiX2xlZHNfZGV2aWNlID0gewo+PiAg
ICAgICAgIH0KPj4gIH07Cj4+Cj4+IC1zdGF0aWMgdm9pZCBkYTg1MF9ldm1fYmJfbGVkc19pbml0
KHVuc2lnbmVkIGdwaW8pCj4+IC17Cj4+IC0gICAgICAgaW50IGk7Cj4+IC0gICAgICAgc3RydWN0
IGdwaW9fbGVkICpsZWQ7Cj4+IC0KPj4gLSAgICAgICBmb3IgKGkgPSAwOyBpIDwgREE4NTBfTl9C
Ql9VU0VSX0xFRDsgaSsrKSB7Cj4+IC0gICAgICAgICAgICAgICBsZWQgPSAmZGE4NTBfZXZtX2Ji
X2xlZHNbaV07Cj4+IC0KPj4gLSAgICAgICAgICAgICAgIGxlZC0+Z3BpbyA9IGdwaW8gKyBEQTg1
MF9FVk1fQkJfRVhQX1VTRVJfTEVEMiArIGk7Cj4+IC0gICAgICAgICAgICAgICBsZWQtPm5hbWUg
PQo+PiAtICAgICAgICAgICAgICAgICAgICAgICBkYTg1MF9ldm1fYmJfZXhwW0RBODUwX0VWTV9C
Ql9FWFBfVVNFUl9MRUQyICsgaV07Cj4+IC0gICAgICAgfQo+PiAtfQo+PiAtCj4+ICBzdGF0aWMg
aW50IGRhODUwX2V2bV9iYl9leHBhbmRlcl9zZXR1cChzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50
LAo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNp
Z25lZCBncGlvLCB1bnNpZ25lZCBuZ3BpbywKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgdm9pZCAqYykKPj4gQEAgLTY4NSw3ICs2ODQsNyBAQCBzdGF0
aWMgaW50IGRhODUwX2V2bV9iYl9leHBhbmRlcl9zZXR1cChzdHJ1Y3QgaTJjX2NsaWVudCAqY2xp
ZW50LAo+PiAgICAgICAgICAgICAgICAgZ290byBpb19leHBfc2V0dXBfc3dfZmFpbDsKPj4gICAg
ICAgICB9Cj4+Cj4+IC0gICAgICAgZGE4NTBfZXZtX2JiX2xlZHNfaW5pdChncGlvKTsKPj4gKyAg
ICAgICBncGlvZF9hZGRfbG9va3VwX3RhYmxlKCZkYTg1MF9ldm1fYmJfbGVkc19ncGlvX3RhYmxl
KTsKPj4gICAgICAgICByZXQgPSBwbGF0Zm9ybV9kZXZpY2VfcmVnaXN0ZXIoJmRhODUwX2V2bV9i
Yl9sZWRzX2RldmljZSk7Cj4+ICAgICAgICAgaWYgKHJldCkgewo+PiAgICAgICAgICAgICAgICAg
cHJfd2FybigiQ291bGQgbm90IHJlZ2lzdGVyIGJhc2Vib2FyZCBHUElPIGV4cGFuZGVyIExFRHMi
KTsKPj4gQEAgLTcyOSwxMCArNzI4LDEyIEBAIHN0YXRpYyBzdHJ1Y3QgaTJjX2JvYXJkX2luZm8g
X19pbml0ZGF0YSBkYTg1MF9ldm1faTJjX2RldmljZXNbXSA9IHsKPj4gICAgICAgICB9LAo+PiAg
ICAgICAgIHsKPj4gICAgICAgICAgICAgICAgIEkyQ19CT0FSRF9JTkZPKCJ0Y2E2NDE2IiwgMHgy
MCksCj4+ICsgICAgICAgICAgICAgICAuZGV2X25hbWUgPSAidWktZXhwYW5kZXIiLAo+PiAgICAg
ICAgICAgICAgICAgLnBsYXRmb3JtX2RhdGEgPSAmZGE4NTBfZXZtX3VpX2V4cGFuZGVyX2luZm8s
Cj4+ICAgICAgICAgfSwKPj4gICAgICAgICB7Cj4+ICAgICAgICAgICAgICAgICBJMkNfQk9BUkRf
SU5GTygidGNhNjQxNiIsIDB4MjEpLAo+PiArICAgICAgICAgICAgICAgLmRldl9uYW1lID0gImJi
LWV4cGFuZGVyIiwKPj4gICAgICAgICAgICAgICAgIC5wbGF0Zm9ybV9kYXRhID0gJmRhODUwX2V2
bV9iYl9leHBhbmRlcl9pbmZvLAo+PiAgICAgICAgIH0sCj4+ICB9Owo+PiAtLQo+PiAyLjIwLjEK
Pj4KPj4KPiAKPiBFeHBhbmRlciBub3cgcHJvYmVzIHdpdGggbXkgcGF0Y2hbMV0gYXBwbGllZC4K
PiAKPiBUaGlzIHBhdGNoIGxvb2tzIGdvb2QgYW5kIExFRHMgc3RpbGwgd29yay4KPiAKPiBUZXN0
ZWQtYnk6IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJnb2xhc3pld3NraUBiYXlsaWJyZS5jb20+Cj4g
UmV2aWV3ZWQtYnk6IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJnb2xhc3pld3NraUBiYXlsaWJyZS5j
b20+Cj4gCj4gWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTA5ODEwOTMv
CgpQYXRjaCBhcHBsaWVkIGFuZCBwdWxsIHJlcXVlc3QgZm9yIHY1LjMgc2VudC4KClRoYW5rcywK
U2VraGFyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
