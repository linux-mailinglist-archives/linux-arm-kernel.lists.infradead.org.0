Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF4118BBF2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 17:10:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=05XGRVbXnNt3PUmKwId/2LM3zmj6oF4emRoddyhV1Ro=; b=mMxsH/ma02LJsB
	Wm/5cuE+ZWWe6SOiFD+EDPv5ObiQrY9lCcDy83AZqaGbMw7lTKLLPJkGWjv245lZwe1LIPkEo5W3f
	TcDC97Wvq1p02qa9pTg0rZ4antYnxRIYPk+Y1Y2s3rdidZSKI/fDsYA8SdLMNl7pcspCrVH/J7FVI
	ocQKcVDDxfJ+6it+N3XURNU0P7A5EQL9gbba7M5nwF+Yh0Hiwi6dgW8MZCkKFkEZFclM6Y4c6ozIL
	prtsClqaGmhBYNIsgOFSMBmNYfUVo76R3jMMLcwxdYGJ7eQn5zlet00GryxdDNUx0WNHeJFS7rud8
	8tQSvFpbXIvrXPQExtLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jExkR-0007Ri-Jd; Thu, 19 Mar 2020 16:10:19 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jExkG-0006I8-4p
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 16:10:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1584634202; bh=JE6As6CIZS8cuj7+7+rzHQMv4MweXNHp5Nj8F2f/1sA=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=m00v60jzWPKSy4jXWtAUn2BxQ5ECTDL76y74ZABR/+zsxyxNzOa9abxC1yecgnHjx
 KyWqFQ4mWOj4PlpaJGOWIf7n5O1LgS0Mx1dDT4j3JRi//FLpLhUvc7wcVlo8MsbAN0
 kGfArbhAbc0qZa9JaF5PXOh0PrQ1KuPwEaZS+Odk=
Date: Thu, 19 Mar 2020 17:10:02 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [linux-sunxi] [PATCH v2 5/5] arm64: allwinner: dts: a64: add
 LCD-related device nodes for PinePhone
Message-ID: <20200319161002.kmivhr3ouhoyn4bt@core.my.home>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 Icenowy Zheng <icenowy@aosc.io>,
 Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@googlegroups.com
References: <20200316133503.144650-1-icenowy@aosc.io>
 <20200316133503.144650-6-icenowy@aosc.io>
 <d32e59aeb8395af1ae7ac2daa1ce985c56c14acc.camel@aosc.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d32e59aeb8395af1ae7ac2daa1ce985c56c14acc.camel@aosc.io>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_091008_463691_0BB43045 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>, Maxime Ripard <mripard@kernel.org>,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXIgMTksIDIwMjAgYXQgMTA6NTE6MzZQTSArMDgwMCwgSWNlbm93eSBaaGVuZyB3
cm90ZToKPiDlnKggMjAyMC0wMy0xNuaYn+acn+S4gOeahCAyMTozNSArMDgwMO+8jEljZW5vd3kg
WmhlbmflhpnpgZPvvJoKPiA+IFBpbmVQaG9uZSB1c2VzIFBXTSBiYWNrbGlnaHQgYW5kIGEgWEJE
NTk5IExDRCBwYW5lbCBvdmVyIERTSSBmb3IKPiA+IGRpc3BsYXkuCj4gPiAKPiA+IEFkZCBpdHMg
ZGV2aWNlIG5vZGVzLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBJY2Vub3d5IFpoZW5nIDxpY2Vu
b3d5QGFvc2MuaW8+Cj4gPiAtLS0KPiA+IE5vIGNoYW5nZXMgaW4gdjIuCj4gPiAKPiA+ICAuLi4v
ZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LXBpbmVwaG9uZS5kdHNpICAgfCAzNwo+ID4gKysrKysr
KysrKysrKysrKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzNyBpbnNlcnRpb25zKCspCj4gPiAK
PiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktYTY0
LXBpbmVwaG9uZS5kdHNpCj4gPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUw
aS1hNjQtcGluZXBob25lLmR0c2kKPiA+IGluZGV4IGNlZmRhMTQ1YzNjOS4uOTZkOTE1MDQyM2Uw
IDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2
NC1waW5lcGhvbmUuZHRzaQo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIv
c3VuNTBpLWE2NC1waW5lcGhvbmUuZHRzaQo+ID4gQEAgLTE2LDYgKzE2LDE1IEBAIGFsaWFzZXMg
ewo+ID4gIAkJc2VyaWFsMCA9ICZ1YXJ0MDsKPiA+ICAJfTsKPiA+ICAKPiA+ICsJYmFja2xpZ2h0
OiBiYWNrbGlnaHQgewo+ID4gKwkJY29tcGF0aWJsZSA9ICJwd20tYmFja2xpZ2h0IjsKPiA+ICsJ
CXB3bXMgPSA8JnJfcHdtIDAgNTAwMDAgUFdNX1BPTEFSSVRZX0lOVkVSVEVEPjsKPiA+ICsJCWJy
aWdodG5lc3MtbGV2ZWxzID0gPDAgMTYgMTggMjAgMjIgMjQgMjYgMjkgMzIgMzUgMzggNDIKPiA+
IDQ2IDUxIDU2IDYyIDY4IDc1IDgzIDkxIDEwMD47Cj4gCj4gU2hvdWxkIEkgZHJvcCB0aGUgMCBo
ZXJlIGFuZCByZXBsYWNlIGl0IHdpdGggMTQ/CgpBbG1vc3QgYWxsIGJvYXJkcyBpbiBhcm0vYm9v
dC9kdHMgc3RhcnQgYXQgMC4KCj4gSSBoYXZlIGhlYXJkIGNvbW11bml0eSBjb21wbGFpbmluZyBh
Ym91dCBzZXR0aW5nIDAgdG8gYnJpZ2h0bmVzcyBtYWtlCj4gdGhlIHNjcmVlbiBibGFjay4KCkxl
dmVsIDAgKGZpcnN0IHZhbHVlIGluIHRoZSBsaXN0KSBpcyBzcGVjaWFsLCBhbmQgdHVybnMgb2Zm
IHRoZSBiYWNrbGlnaHQ6CgoxMjMgICAgICAgICBpZiAoYnJpZ2h0bmVzcyA+IDApIHsKMTI0ICAg
ICAgICAgICAgICAgICBwd21fZ2V0X3N0YXRlKHBiLT5wd20sICZzdGF0ZSk7CjEyNSAgICAgICAg
ICAgICAgICAgc3RhdGUuZHV0eV9jeWNsZSA9IGNvbXB1dGVfZHV0eV9jeWNsZShwYiwgYnJpZ2h0
bmVzcyk7CjEyNiAgICAgICAgICAgICAgICAgcHdtX2FwcGx5X3N0YXRlKHBiLT5wd20sICZzdGF0
ZSk7CjEyNyAgICAgICAgICAgICAgICAgcHdtX2JhY2tsaWdodF9wb3dlcl9vbihwYik7CjEyOCAg
ICAgICAgIH0gZWxzZSB7CjEyOSAgICAgICAgICAgICAgICAgcHdtX2JhY2tsaWdodF9wb3dlcl9v
ZmYocGIpOwoxMzAgICAgICAgICB9CgoJby4KCj4gKEkgdGhpbmsgaW4gdGhpcyBzaXR1YXRpb24g
YmxfcG93ZXIgb3IgYmxhbmsgdGhlIERTSSBwYW5lbCBjYW4gc3RpbGwKPiB0b3RhbGx5IHNodXQg
ZG93biB0aGUgYmFja2xpZ2h0KS4KPiAKPiA+ICsJCWRlZmF1bHQtYnJpZ2h0bmVzcy1sZXZlbCA9
IDwxNT47Cj4gPiArCQllbmFibGUtZ3Bpb3MgPSA8JnBpbyA3IDEwIEdQSU9fQUNUSVZFX0hJR0g+
OyAvKiBQSDEwICovCj4gPiArCQlwb3dlci1zdXBwbHkgPSA8JnJlZ19sZG9faW8wPjsKPiA+ICsJ
fTsKPiA+ICsKPiA+ICAJY2hvc2VuIHsKPiA+ICAJCXN0ZG91dC1wYXRoID0gInNlcmlhbDA6MTE1
MjAwbjgiOwo+ID4gIAl9Owo+ID4gQEAgLTg0LDYgKzkzLDMwIEBAICZkYWkgewo+ID4gIAlzdGF0
dXMgPSAib2theSI7Cj4gPiAgfTsKPiA+ICAKPiA+ICsmZGUgewo+ID4gKwlzdGF0dXMgPSAib2th
eSI7Cj4gPiArfTsKPiA+ICsKPiA+ICsmZHBoeSB7Cj4gPiArCXN0YXR1cyA9ICJva2F5IjsKPiA+
ICt9Owo+ID4gKwo+ID4gKyZkc2kgewo+ID4gKwl2Y2MtZHNpLXN1cHBseSA9IDwmcmVnX2RsZG8x
PjsKPiA+ICsJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gPiArCSNzaXplLWNlbGxzID0gPDA+Owo+
ID4gKwlzdGF0dXMgPSAib2theSI7Cj4gPiArCj4gPiArCXBhbmVsQDAgewo+ID4gKwkJY29tcGF0
aWJsZSA9ICJ4aW5nYmFuZ2RhLHhiZDU5OSI7Cj4gPiArCQlyZWcgPSA8MD47Cj4gPiArCQlyZXNl
dC1ncGlvcyA9IDwmcGlvIDMgMjMgR1BJT19BQ1RJVkVfTE9XPjsgLyogUEQyMyAqLwo+ID4gKwkJ
aW92Y2Mtc3VwcGx5ID0gPCZyZWdfZGxkbzI+Owo+ID4gKwkJdmNjLXN1cHBseSA9IDwmcmVnX2xk
b19pbzA+Owo+ID4gKwkJYmFja2xpZ2h0ID0gPCZiYWNrbGlnaHQ+Owo+ID4gKwl9Owo+ID4gK307
Cj4gPiArCj4gPiAgJmVoY2kwIHsKPiA+ICAJc3RhdHVzID0gIm9rYXkiOwo+ID4gIH07Cj4gPiBA
QCAtMTg4LDYgKzIyMSwxMCBAQCAmcl9waW8gewo+ID4gIAkgKi8KPiA+ICB9Owo+ID4gIAo+ID4g
KyZyX3B3bSB7Cj4gPiArCXN0YXR1cyA9ICJva2F5IjsKPiA+ICt9Owo+ID4gKwo+ID4gICZyX3Jz
YiB7Cj4gPiAgCXN0YXR1cyA9ICJva2F5IjsKPiA+ICAKPiA+IC0tIAo+ID4gMi4yNC4xCj4gPiAK
PiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
