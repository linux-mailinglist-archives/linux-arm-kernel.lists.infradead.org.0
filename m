Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95288B14A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 21:00:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QKDvIUYICFuEd7Pp9g9U+jckGMb1qGl/fv+KCa1b0/8=; b=knUayQq1BBzF1O
	gkMPZwaSzDN43NX/xpHSyCUhddB9QVRK9Yy2p7uOWfmFAxT7U8KaeaJHkrjE33b/NUgjseSsRuZue
	SxcKz5pKRc6N2IYlXYBz3obQxDtAgFFPpuJvf2u79y+Qi1BxSixxGh/k6zO3G7+ix8n4jJqQZ3Ey8
	hbDsWmmA2MVFQNZ/V0d4ZStDe/GuHR5MIkTOgraoRfJDJ3F34vM0hi6jyqC0yXGDtmP1QYple6FNJ
	8HCEf4DomDYJb9VgT3VUPw4qCXa7wmx8IPvjNhAxpAglhUxf1JR7qbINVWSNhzxW2mjHdYlPglYwm
	ZXC9Rqcxgj0U/OmklmPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8UKD-0003mF-Ad; Thu, 12 Sep 2019 19:00:13 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8UJw-0003lp-Qv
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 18:59:58 +0000
Received: by mail-io1-xd42.google.com with SMTP id k13so42159845ioj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 11:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=LnP3Gm6Jc1lc0jJ7iQHoKu8W9WN/FBB3195mE9f1fRw=;
 b=rDEcd5ZLqvyrmdTAQ1O6QGIKWziSrVcj0EgO/ddU6SlqH6Kaeq860+ilsVDOYQ3fIO
 HP17/1hCYwyyzoCVXrxR+6I8KdhVCNBrp2VDX8+dK7wEi3e5xZ/jhfUA5hme2MBhbw6N
 ihCOMODXF/gfFgePDlYuc3+6bcmsq1AJ85aCSaL64OWUSzg/auGfKg9xdeALQMHle4VW
 6ymIqb6f4fyh5w9fl6ON4IEkeZRo684S0FWO88cSUVYjdQ+6N6ER01iAgyABg6dEKgkH
 cAxicsHKWkxtt1vTzJIDWqoeC9zLhiUBrSACKRaNhykHKIJ0vvYKPEkH0iu6iPUdqaN2
 urNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=LnP3Gm6Jc1lc0jJ7iQHoKu8W9WN/FBB3195mE9f1fRw=;
 b=EwlTBQFm84DEdxWdaGXOhYoFftTpWUIvnhQZqGn0Ck4jcghVGY5k+tUSefRInRpxAT
 Pa35LmsNry67U4iSiZ2pXMVk04XoPHR/EKrcqKQ8SBG819b0kxOpDqXR3MX6jFn90v8O
 cMzGAyzMP0qE+wXBlBa3NVDcX2dBo1OE49gUsM/Zd3yq/22Tb+fsAiewRpdRx/kwmMnd
 9yEcBvk/2A1zqXevI75HZ2F7XiQKn1F9N9/SJOWdrSoq1AYNWbAitcjw7hD6ATlFA7Qn
 THcKVyTg+89PZRLjOCjczEx3fwpirRIIhZXgyHUBcIANnF1XqGkLgDciqL4Znry4Eexr
 u50w==
X-Gm-Message-State: APjAAAWsoZxjE5a+zgbxcBneHkCXubwmsO/LkF5y9wv+PlEhTX4zw2vJ
 m+1EjHTgCJPEWLqgeWpUcxLPikDfagPTfYKDFHU=
X-Google-Smtp-Source: APXvYqzAeRIt8QZ6r1yW9eUgKQ3/JjfpYpyIKGHLbPS+8GyKambAnNyWVTqVl4s9fkaskkJ+Of7YVjtx/cTHYSPmM3g=
X-Received: by 2002:a5e:de47:: with SMTP id e7mr6111800ioq.127.1568314795228; 
 Thu, 12 Sep 2019 11:59:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190801012823.28730-1-neolynx@gmail.com>
 <20190801012823.28730-2-neolynx@gmail.com>
In-Reply-To: <20190801012823.28730-2-neolynx@gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Thu, 12 Sep 2019 13:59:43 -0500
Message-ID: <CAHCN7x+Vd+ECoa4fmUfoX47znag+NxKSzRt3iouQCZ2CQ2T--A@mail.gmail.com>
Subject: Re: [PATCH 1/3] OMAP3: PM: Set/clear T2 bit for Smartreflex on TWL
To: =?UTF-8?Q?Andr=C3=A9_Roth?= <neolynx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_115956_893791_1629A4CD 
X-CRM114-Status: GOOD (  25.35  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nishanth Menon <nm@ti.com>, Kevin Hilman <khilman@ti.com>,
 Tony Lindgren <tony@atomide.com>, "H. Nikolaus Schaller" <hns@goldelico.com>,
 Shweta Gulati <shweta.gulati@ti.com>, Thara Gopinath <thara@ti.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdWwgMzEsIDIwMTkgYXQgODoyOSBQTSBBbmRyw6kgUm90aCA8bmVvbHlueEBnbWFp
bC5jb20+IHdyb3RlOgo+Cj4gRnJvbTogVGhhcmEgR29waW5hdGggPHRoYXJhQHRpLmNvbT4KPgo+
IFZvbHRhZ2UgY29udHJvbCBvbiBUV0wgY2FuIGJlIGRvbmUgdXNpbmcgVk1PREUvSTJDMS9JMkNf
U1IuCj4gU2luY2UgYWxtb3N0IGFsbCBwbGF0Zm9ybXMgdXNlIEkyQ19TUiBvbiBvbWFwMywgb21h
cDNfdHdsX2luaXQgYnkKPiBkZWZhdWx0IGV4cGVjdHMgdGhhdCBPTUFQJ3MgSTJDX1NSIGlzIHBs
dWdnZWQgaW4gdG8gVFdMJ3MgSTJDCj4gYW5kIGNhbGxzIG9tYXAzX3R3bF9zZXRfc3JfYml0LiBP
biBwbGF0Zm9ybXMgd2hlcmUgSTJDX1NSIGlzIG5vdCBjb25uZWN0ZWQsCj4gdGhlIGJvYXJkIGZp
bGVzIGFyZSBleHBlY3RlZCB0byBjYWxsIG9tYXAzX3R3bF9zZXRfc3JfYml0KGZhbHNlKSB0bwo+
IGVuc3VyZSB0aGF0IEkyQ19TUiBwYXRoIGlzIG5vdCBzZXQgZm9yIHZvbHRhZ2UgY29udHJvbCBh
bmQgcHJldmVudAo+IHRoZSBkZWZhdWx0IGJlaGF2aW9yIG9mIG9tYXAzX3R3bF9pbml0Lgo+Cj4g
U2lnbmVkLW9mZi1ieTogTmlzaGFudGggTWVub24gPG5tQHRpLmNvbT4KPiBTaWduZWQtb2ZmLWJ5
OiBUaGFyYSBHb3BpbmF0aCA8dGhhcmFAdGkuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFNod2V0YSBH
dWxhdGkgPHNod2V0YS5ndWxhdGlAdGkuY29tPgo+IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBLZXZpbiBIaWxtYW4gPGtoaWxtYW5AdGku
Y29tPgoKVG9ueSwKCklzIHRoZXJlIGEgc3RhdHVzIHVwZGF0ZSBvbiB0aGlzIHNlcmllcz8gIEl0
J3MgYmVlbiBzZXZlcmFsIG1vbnRocywKYW5kIEkgaGF2ZW4ndCBzZWVuIGFueSBmZWVkYmFjayBv
biBpdCwgbm9yIGRvZXMgaXQgYXBwZWFyIHRvIGJlIGluIGFueQpvZiB5b3VyIGJyYW5jaGVzIHRo
YXQgSSBjYW4gc2VlLgoKYWRhbQo+IC0tLQo+ICBhcmNoL2FybS9tYWNoLW9tYXAyL29tYXBfdHds
LmMgfCA2MCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFu
Z2VkLCA2MCBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1vbWFw
Mi9vbWFwX3R3bC5jIGIvYXJjaC9hcm0vbWFjaC1vbWFwMi9vbWFwX3R3bC5jCj4gaW5kZXggNjc4
N2YxZTcyYzZiLi4xZGFlOTA2MTI4YzIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vbWFjaC1vbWFw
Mi9vbWFwX3R3bC5jCj4gKysrIGIvYXJjaC9hcm0vbWFjaC1vbWFwMi9vbWFwX3R3bC5jCj4gQEAg
LTQzLDggKzQzLDE1IEBACj4KPiAgc3RhdGljIGJvb2wgaXNfb2Zmc2V0X3ZhbGlkOwo+ICBzdGF0
aWMgdTggc21wc19vZmZzZXQ7Cj4gKy8qCj4gKyAqIEZsYWcgdG8gZW5zdXJlIFNtYXJ0cmVmbGV4
IGJpdCBpbiBUV0wKPiArICogYmVpbmcgY2xlYXJlZCBpbiBib2FyZCBmaWxlIGlzIG5vdCBvdmVy
d3JpdHRlbi4KPiArICovCj4gK3N0YXRpYyBib29sIF9faW5pdGRhdGEgdHdsX3NyX2VuYWJsZV9h
dXRvaW5pdDsKPgo+ICsjZGVmaW5lIFRXTDQwMzBfRENEQ19HTE9CQUxfQ0ZHICAgICAgICAweDA2
Cj4gICNkZWZpbmUgUkVHX1NNUFNfT0ZGU0VUICAgICAgICAgMHhFMAo+ICsjZGVmaW5lIFNNQVJU
UkVGTEVYX0VOQUJMRSAgICAgQklUKDMpCj4KPiAgc3RhdGljIHVuc2lnbmVkIGxvbmcgdHdsNDAz
MF92c2VsX3RvX3V2KGNvbnN0IHU4IHZzZWwpCj4gIHsKPiBAQCAtMjQxLDYgKzI0OCwxOCBAQCBp
bnQgX19pbml0IG9tYXAzX3R3bF9pbml0KHZvaWQpCj4gICAgICAgICBpZiAoIWNwdV9pc19vbWFw
MzR4eCgpKQo+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKPgo+ICsgICAgICAgLyoK
PiArICAgICAgICAqIFRoZSBzbWFydHJlZmxleCBiaXQgb24gdHdsNDAzMCBzcGVjaWZpZXMgaWYg
dGhlIHNldHRpbmcgb2Ygdm9sdGFnZQo+ICsgICAgICAgICogaXMgZG9uZSBvdmVyIHRoZSBJMkNf
U1IgcGF0aC4gU2luY2UgdGhpcyBzZXR0aW5nIGlzIGluZGVwZW5kZW50IG9mCj4gKyAgICAgICAg
KiB0aGUgYWN0dWFsIHVzYWdlIG9mIHNtYXJ0cmVmbGV4IEFWUyBtb2R1bGUsIHdlIGVuYWJsZSBU
V0wgU1IgYml0Cj4gKyAgICAgICAgKiBieSBkZWZhdWx0IGlycmVzcGVjdGl2ZSBvZiB3aGV0aGVy
IHNtYXJ0cmVmbGV4IEFWUyBtb2R1bGUgaXMgZW5hYmxlZAo+ICsgICAgICAgICogb24gdGhlIE9N
QVAgc2lkZSBvciBub3QuIFRoaXMgaXMgYmVjYXVzZSB3aXRob3V0IHRoaXMgYml0IGVuYWJsZWQs
Cj4gKyAgICAgICAgKiB0aGUgdm9sdGFnZSBzY2FsaW5nIHRocm91Z2ggdnAgZm9yY2V1cGRhdGUv
YnlwYXNzIG1lY2hhbmlzbSBvZgo+ICsgICAgICAgICogdm9sdGFnZSBzY2FsaW5nIHdpbGwgbm90
IGZ1bmN0aW9uIG9uIFRXTCBvdmVyIEkyQ19TUi4KPiArICAgICAgICAqLwo+ICsgICAgICAgaWYg
KCF0d2xfc3JfZW5hYmxlX2F1dG9pbml0KQo+ICsgICAgICAgICAgICAgICBvbWFwM190d2xfc2V0
X3NyX2JpdCh0cnVlKTsKPiArCj4gICAgICAgICB2b2x0ZG0gPSB2b2x0ZG1fbG9va3VwKCJtcHVf
aXZhIik7Cj4gICAgICAgICBvbWFwX3ZvbHRhZ2VfcmVnaXN0ZXJfcG1pYyh2b2x0ZG0sICZvbWFw
M19tcHVfcG1pYyk7Cj4KPiBAQCAtMjQ5LDMgKzI2OCw0NCBAQCBpbnQgX19pbml0IG9tYXAzX3R3
bF9pbml0KHZvaWQpCj4KPiAgICAgICAgIHJldHVybiAwOwo+ICB9Cj4gKwo+ICsvKioKPiArICog
b21hcDNfdHdsX3NldF9zcl9iaXQoKSAtIFNldC9DbGVhciBTUiBiaXQgb24gVFdMCj4gKyAqIEBl
bmFibGU6IGVuYWJsZSBTUiBtb2RlIGluIHR3bCBvciBub3QKPiArICoKPiArICogSWYgJ2VuYWJs
ZScgaXMgdHJ1ZSwgZW5hYmxlcyBTbWFydHJlZmxleCBiaXQgb24gVFdMIDQwMzAgdG8gbWFrZSBz
dXJlCj4gKyAqIHZvbHRhZ2Ugc2NhbGluZyB0aHJvdWdoIE9NQVAgU1Igd29ya3MuIEVsc2UsIHRo
ZSBzbWFydHJlZmxleCBiaXQKPiArICogb24gdHdsNDAzMCBpcyBjbGVhcmVkIGFzIHRoZXJlIGFy
ZSBwbGF0Zm9ybXMgd2hpY2ggdXNlIE9NQVAzIGFuZCBUMiBidXQKPiArICogdXNlIFN5bmNocm9u
aXplZCBTY2FsaW5nIEhhcmR3YXJlIFN0cmF0ZWd5IChFTkFCTEVfVk1PREU9MSkgYW5kIERpcmVj
dAo+ICsgKiBTdHJhdGVneSBTb2Z0d2FyZSBTY2FsaW5nIE1vZGUgKEVOQUJMRV9WTU9ERT0wKSwg
Zm9yIHNldHRpbmcgdGhlIHZvbHRhZ2VzLAo+ICsgKiBpbiB0aG9zZSBzY2VuYXJpb3MgdGhpcyBi
aXQgaXMgdG8gYmUgY2xlYXJlZCAoZW5hYmxlID0gZmFsc2UpLgo+ICsgKgo+ICsgKiBSZXR1cm5z
IDAgb24gc3VjZXNzLCBlcnJvciBpcyByZXR1cm5lZCBpZiBJMkMgcmVhZC93cml0ZSBmYWlscy4K
PiArICovCj4gK2ludCBfX2luaXQgb21hcDNfdHdsX3NldF9zcl9iaXQoYm9vbCBlbmFibGUpCj4g
K3sKPiArICAgICAgIHU4IHRlbXA7Cj4gKyAgICAgICBpbnQgcmV0Owo+ICsgICAgICAgaWYgKHR3
bF9zcl9lbmFibGVfYXV0b2luaXQpCj4gKyAgICAgICAgICAgICAgIHByX3dhcm5pbmcoIiVzOiB1
bmV4cGVjdGVkIG11bHRpcGxlIGNhbGxzXG4iLCBfX2Z1bmNfXyk7Cj4gKwo+ICsgICAgICAgcmV0
ID0gdHdsX2kyY19yZWFkX3U4KFRXTF9NT0RVTEVfUE1fUkVDRUlWRVIsICZ0ZW1wLAo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBUV0w0MDMwX0RDRENfR0xPQkFMX0NG
Ryk7Cj4gKyAgICAgICBpZiAocmV0KQo+ICsgICAgICAgICAgICAgICBnb3RvIGVycjsKPiArCj4g
KyAgICAgICBpZiAoZW5hYmxlKQo+ICsgICAgICAgICAgICAgICB0ZW1wIHw9IFNNQVJUUkVGTEVY
X0VOQUJMRTsKPiArICAgICAgIGVsc2UKPiArICAgICAgICAgICAgICAgdGVtcCAmPSB+U01BUlRS
RUZMRVhfRU5BQkxFOwo+ICsKPiArICAgICAgIHJldCA9IHR3bF9pMmNfd3JpdGVfdTgoVFdMX01P
RFVMRV9QTV9SRUNFSVZFUiwgdGVtcCwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IFRXTDQwMzBfRENEQ19HTE9CQUxfQ0ZHKTsKPiArICAgICAgIGlmICghcmV0KSB7Cj4gKyAgICAg
ICAgICAgICAgIHR3bF9zcl9lbmFibGVfYXV0b2luaXQgPSB0cnVlOwo+ICsgICAgICAgICAgICAg
ICByZXR1cm4gMDsKPiArICAgICAgIH0KPiArZXJyOgo+ICsgICAgICAgcHJfZXJyKCIlczogRXJy
b3IgYWNjZXNzIHRvIFRXTDQwMzAgKCVkKVxuIiwgX19mdW5jX18sIHJldCk7Cj4gKyAgICAgICBy
ZXR1cm4gcmV0Owo+ICt9Cj4gLS0KPiAyLjE3LjEKPgo+Cj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dAo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
