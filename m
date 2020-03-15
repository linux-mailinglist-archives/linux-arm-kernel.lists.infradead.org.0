Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B76E2185D96
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 15:31:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZKwhjpsjFo4vDPG9KeWLPJLL7coX2GScVv8dMmOkhtU=; b=POVGpIejCUEA7A
	ya9B6FPb1mr9pMCKPk2h5FOAh2ssMRujKSqcW4EAwVSfss9+AGJjbMCkScWTxBYKwpx954aTL9ahN
	YzFx0NefFuYyNq/UXtBuweIIQ+OrxIKdawdt33OSMMcd81hlOZnndjx2CZT6qqIZgMIL3BYSG9slk
	w1OoS7QTTLj+n1aHF2PmG60YTKgb0BYnSZEf2nBXvDvZ8xDABC+RMNvKj6345T0v9oH9USSIukrEq
	SEWuj5bBCKkUpgP/DmW6nSWkzm1ocoLM16quncO42LTEdfQg+FG1rKODHMpGSwvYbeL9uJ+l+tsnz
	OYQNZg5ZgbU1JVWO2pag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDUIV-0005IG-RO; Sun, 15 Mar 2020 14:31:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDUIM-0005HV-Js; Sun, 15 Mar 2020 14:31:16 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B26720637;
 Sun, 15 Mar 2020 14:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584282673;
 bh=VG1H2hK8Z+Tq6QUiuOXTEyN4DkZAx/5eFNMyDpjsQmU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=mzbxtbpMAoJ/LQoVF7t8Tn/h/YFZG8GqCSFXewiyj3agXU0MJplie5lon9ACw5tBf
 9+k04ZgzM2Vn+ukWvtOdVG3y8t0LRJ+SxnzW0eytW2/4ZIT+nDDh1VEIe/P4aw1cRx
 1N+pXuLbjgaEXyzPv3PACHUPBZ9NwSW7mEm9v960=
Date: Sun, 15 Mar 2020 14:31:09 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
Subject: Re: [PATCH v1 1/3] dt-bindings: iio: adc: convert rockchip saradc
 bindings to yaml
Message-ID: <20200315143109.5474434b@archlinux>
In-Reply-To: <1892398.6xOoJH07Ba@diego>
References: <20200313132926.10543-1-jbx6244@gmail.com>
 <20200315112223.07dd863b@archlinux> <1892398.6xOoJH07Ba@diego>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_073114_696296_AA302D07 
X-CRM114-Status: GOOD (  23.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, lars@metafoo.de, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCAxNSBNYXIgMjAyMCAxNTowOTo1NiArMDEwMApIZWlrbyBTdMO8Ym5lciA8aGVpa29A
c250ZWNoLmRlPiB3cm90ZToKCj4gSGkgSm9uYXRoYW4sCj4gCj4gQW0gU29ubnRhZywgMTUuIE3D
pHJ6IDIwMjAsIDEyOjIyOjIzIENFVCBzY2hyaWViIEpvbmF0aGFuIENhbWVyb246Cj4gPiBPbiBG
cmksIDEzIE1hciAyMDIwIDE0OjI5OjI0ICswMTAwCj4gPiBKb2hhbiBKb25rZXIgPGpieDYyNDRA
Z21haWwuY29tPiB3cm90ZToKPiA+IAo+ID4gPiBDdXJyZW50IGR0cyBmaWxlcyB3aXRoICdzYXJh
ZGMnIG5vZGVzIGFyZSBtYW51YWxseSB2ZXJpZmllZC4KPiA+ID4gSW4gb3JkZXIgdG8gYXV0b21h
dGUgdGhpcyBwcm9jZXNzIHJvY2tjaGlwLXNhcmFkYy50eHQKPiA+ID4gaGFzIHRvIGJlIGNvbnZl
cnRlZCB0byB5YW1sLgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogSm9oYW4gSm9ua2VyIDxq
Yng2MjQ0QGdtYWlsLmNvbT4KPiA+IAo+ID4gSGkgSm9oYW4sCj4gPiAKPiA+IEEgcXVlc3Rpb24g
aW5saW5lIHdoaWNoIG1heSBqdXN0IGJlIG15IGxhY2sgb2YgeWFtbCBrbm93bGVkZ2UKPiA+IHNo
b3dpbmcgaXRzZWxmIQo+ID4gCj4gPiBKb25hdGhhbgo+ID4gCj4gPiA+IC0tLQo+ID4gPiAgLi4u
L2JpbmRpbmdzL2lpby9hZGMvcm9ja2NoaXAtc2FyYWRjLnR4dCAgICAgICAgICAgfCAzNyAtLS0t
LS0tLS0tCj4gPiA+ICAuLi4vYmluZGluZ3MvaWlvL2FkYy9yb2NrY2hpcC1zYXJhZGMueWFtbCAg
ICAgICAgICB8IDc5ICsrKysrKysrKysrKysrKysrKysrKysKPiA+ID4gIDIgZmlsZXMgY2hhbmdl
ZCwgNzkgaW5zZXJ0aW9ucygrKSwgMzcgZGVsZXRpb25zKC0pCj4gPiA+ICBkZWxldGUgbW9kZSAx
MDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lpby9hZGMvcm9ja2NoaXAt
c2FyYWRjLnR4dAo+ID4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9paW8vYWRjL3JvY2tjaGlwLXNhcmFkYy55YW1sCj4gPiA+IAo+ID4gPiBk
aWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lpby9hZGMvcm9j
a2NoaXAtc2FyYWRjLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9paW8v
YWRjL3JvY2tjaGlwLXNhcmFkYy50eHQKPiA+ID4gZGVsZXRlZCBmaWxlIG1vZGUgMTAwNjQ0Cj4g
PiA+IGluZGV4IGMyYzUwYjU5OC4uMDAwMDAwMDAwCj4gPiA+IC0tLSBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9paW8vYWRjL3JvY2tjaGlwLXNhcmFkYy50eHQKPiA+ID4gKysr
IC9kZXYvbnVsbAo+ID4gPiBAQCAtMSwzNyArMCwwIEBACj4gPiA+IC1Sb2NrY2hpcCBTdWNjZXNz
aXZlIEFwcHJveGltYXRpb24gUmVnaXN0ZXIgKFNBUikgQS9EIENvbnZlcnRlciBiaW5kaW5ncwo+
ID4gPiAtCj4gPiA+IC1SZXF1aXJlZCBwcm9wZXJ0aWVzOgo+ID4gPiAtLSBjb21wYXRpYmxlOiBz
aG91bGQgYmUgInJvY2tjaGlwLDxuYW1lPi1zYXJhZGMiIG9yICJyb2NrY2hpcCxyazMwNjYtdHNh
ZGMiCj4gPiA+IC0gICAtICJyb2NrY2hpcCxzYXJhZGMiOiBmb3IgcmszMTg4LCByazMyODgKPiA+
ID4gLSAgIC0gInJvY2tjaGlwLHJrMzA2Ni10c2FkYyI6IGZvciByazMwMzYKPiA+ID4gLSAgIC0g
InJvY2tjaGlwLHJrMzMyOC1zYXJhZGMiLCAicm9ja2NoaXAscmszMzk5LXNhcmFkYyI6IGZvciBy
azMzMjgKPiA+ID4gLSAgIC0gInJvY2tjaGlwLHJrMzM5OS1zYXJhZGMiOiBmb3IgcmszMzk5Cj4g
PiA+IC0gICAtICJyb2NrY2hpcCxydjExMDgtc2FyYWRjIiwgInJvY2tjaGlwLHJrMzM5OS1zYXJh
ZGMiOiBmb3IgcnYxMTA4Cj4gPiA+IC0KPiA+ID4gLS0gcmVnOiBwaHlzaWNhbCBiYXNlIGFkZHJl
c3Mgb2YgdGhlIGNvbnRyb2xsZXIgYW5kIGxlbmd0aCBvZiBtZW1vcnkgbWFwcGVkCj4gPiA+IC0g
ICAgICAgcmVnaW9uLgo+ID4gPiAtLSBpbnRlcnJ1cHRzOiBUaGUgaW50ZXJydXB0IG51bWJlciB0
byB0aGUgY3B1LiBUaGUgaW50ZXJydXB0IHNwZWNpZmllciBmb3JtYXQKPiA+ID4gLSAgICAgICAg
ICAgICAgZGVwZW5kcyBvbiB0aGUgaW50ZXJydXB0IGNvbnRyb2xsZXIuCj4gPiA+IC0tIGNsb2Nr
czogTXVzdCBjb250YWluIGFuIGVudHJ5IGZvciBlYWNoIGVudHJ5IGluIGNsb2NrLW5hbWVzLgo+
ID4gPiAtLSBjbG9jay1uYW1lczogU2hhbGwgYmUgInNhcmFkYyIgZm9yIHRoZSBjb252ZXJ0ZXIt
Y2xvY2ssIGFuZCAiYXBiX3BjbGsiIGZvcgo+ID4gPiAtICAgICAgICAgICAgICAgdGhlIHBlcmlw
aGVyYWwgY2xvY2suCj4gPiA+IC0tIHZyZWYtc3VwcGx5OiBUaGUgcmVndWxhdG9yIHN1cHBseSBB
REMgcmVmZXJlbmNlIHZvbHRhZ2UuCj4gPiA+IC0tICNpby1jaGFubmVsLWNlbGxzOiBTaG91bGQg
YmUgMSwgc2VlIC4uL2lpby1iaW5kaW5ncy50eHQKPiA+ID4gLQo+ID4gPiAtT3B0aW9uYWwgcHJv
cGVydGllczoKPiA+ID4gLS0gcmVzZXRzOiBNdXN0IGNvbnRhaW4gYW4gZW50cnkgZm9yIGVhY2gg
ZW50cnkgaW4gcmVzZXQtbmFtZXMgaWYgbmVlZCBzdXBwb3J0Cj4gPiA+IC0JICB0aGlzIG9wdGlv
bi4gU2VlIC4uL3Jlc2V0L3Jlc2V0LnR4dCBmb3IgZGV0YWlscy4KPiA+ID4gLS0gcmVzZXQtbmFt
ZXM6IE11c3QgaW5jbHVkZSB0aGUgbmFtZSAic2FyYWRjLWFwYiIuCj4gPiA+IC0KPiA+ID4gLUV4
YW1wbGU6Cj4gPiA+IC0Jc2FyYWRjOiBzYXJhZGNAMjAwNmMwMDAgewo+ID4gPiAtCQljb21wYXRp
YmxlID0gInJvY2tjaGlwLHNhcmFkYyI7Cj4gPiA+IC0JCXJlZyA9IDwweDIwMDZjMDAwIDB4MTAw
PjsKPiA+ID4gLQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDI2IElSUV9UWVBFX0xFVkVMX0hJR0g+
Owo+ID4gPiAtCQljbG9ja3MgPSA8JmNydSBTQ0xLX1NBUkFEQz4sIDwmY3J1IFBDTEtfU0FSQURD
PjsKPiA+ID4gLQkJY2xvY2stbmFtZXMgPSAic2FyYWRjIiwgImFwYl9wY2xrIjsKPiA+ID4gLQkJ
cmVzZXRzID0gPCZjcnUgU1JTVF9TQVJBREM+Owo+ID4gPiAtCQlyZXNldC1uYW1lcyA9ICJzYXJh
ZGMtYXBiIjsKPiA+ID4gLQkJI2lvLWNoYW5uZWwtY2VsbHMgPSA8MT47Cj4gPiA+IC0JCXZyZWYt
c3VwcGx5ID0gPCZ2Y2MxOD47Cj4gPiA+IC0JfTsKPiA+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9paW8vYWRjL3JvY2tjaGlwLXNhcmFkYy55YW1sIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lpby9hZGMvcm9ja2NoaXAtc2FyYWRj
LnlhbWwKPiA+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+ID4gaW5kZXggMDAwMDAwMDAwLi4y
OTA4Nzg4YjMKPiA+ID4gLS0tIC9kZXYvbnVsbAo+ID4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvaWlvL2FkYy9yb2NrY2hpcC1zYXJhZGMueWFtbAo+ID4gPiBAQCAt
MCwwICsxLDc5IEBACj4gPiA+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4g
PiA+ICslWUFNTCAxLjIKPiA+ID4gKy0tLQo+ID4gPiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5v
cmcvc2NoZW1hcy9paW8vYWRjL3JvY2tjaGlwLXNhcmFkYy55YW1sIwo+ID4gPiArJHNjaGVtYTog
aHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4gPiA+ICsKPiA+
ID4gK3RpdGxlOiBSb2NrY2hpcCBTdWNjZXNzaXZlIEFwcHJveGltYXRpb24gUmVnaXN0ZXIgKFNB
UikgQS9EIENvbnZlcnRlcgo+ID4gPiArCj4gPiA+ICttYWludGFpbmVyczoKPiA+ID4gKyAgLSBI
ZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+ID4gPiArCj4gPiA+ICtwcm9wZXJ0aWVz
Ogo+ID4gPiArICBjb21wYXRpYmxlOgo+ID4gPiArICAgIG9uZU9mOgo+ID4gPiArICAgICAgLSBj
b25zdDogcm9ja2NoaXAsc2FyYWRjCj4gPiA+ICsgICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazMw
NjYtdHNhZGMKPiA+ID4gKyAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzM5OS1zYXJhZGMKPiA+
ID4gKyAgICAgIC0gaXRlbXM6Cj4gPiA+ICsgICAgICAgICAgLSBlbnVtOgo+ID4gPiArICAgICAg
ICAgICAgLSByb2NrY2hpcCxyazMzMjgtc2FyYWRjCj4gPiA+ICsgICAgICAgICAgICAtIHJvY2tj
aGlwLHJ2MTEwOC1zYXJhZGMKPiA+ID4gKyAgICAgICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazMz
OTktc2FyYWRjCj4gPiAKPiA+IE15IHlhbWwga25vd2xlZGdlIGlzbid0IGdyZWF0LiAgV2h5IGRv
IHdlIGhhdmUgdGhpcyBuZXN0ZWQKPiA+IHN0cnVjdHVyZSByYXRoZXIgdGhhbiBhIHN0cmFpZ2h0
IGZvcndhcmQgbGlzdD8KPiAKPiBUaGF0IHNob3VsZCBiZSB0aGUKPiAtIG9uZSBvZiByazMzMjgt
c2FyYWRjIC8gcnYxMTA4LXNhcmFkYwo+IC0gcGx1cyBhbHdheXMgcmszMzk5LXNhcmFkYwo+IAo+
IGkuZS4gYm90aCByazMzMjggYW5kIHJ2MTEwOCBhcmUgY29tcGF0aWJsZSB3aXRoIHRoZSByazMz
OTktc2FyYWRjIHZhcmlhbnQKPiAoYXQgbGVhc3QgaWYgbm8gZmxhd3MgZ2V0IGZvdW5kIGF0IHNv
bWUgcG9pbnQpIHNvIGhhdmUgdGhlIGRvdWJsZSBjb21wYXRpYmxlCj4gCj4gY29tcGF0aWJsZSA9
ICJyb2NrY2hpcCxyazMzMjgtc2FyYWRjIiwgInJvY2tjaGlwLHJrMzM5OS1zYXJhZGMiCj4gY29t
cGF0aWJsZSA9ICJyb2NrY2hpcCxydjExMDgtc2FyYWRjIiwgInJvY2tjaGlwLHJrMzM5OS1zYXJh
ZGMiCkFoLiBUaGF0IG1ha2VzIHNlbnNlLiAgVGhhbmtzIHRvIEpvaGFuIGFzIHdlbGwgZm9yIHRo
ZSBleHBsYW5hdGlvbiBoZSBzZW50CgpUaGFua3MsCgpKb25hdGhhbgoKPiAKPiAKPiBIZWlrbwo+
IAo+IAo+ID4gPiArCj4gPiA+ICsgIHJlZzoKPiA+ID4gKyAgICBtYXhJdGVtczogMQo+ID4gPiAr
Cj4gPiA+ICsgIGludGVycnVwdHM6Cj4gPiA+ICsgICAgbWF4SXRlbXM6IDEKPiA+ID4gKwo+ID4g
PiArICBjbG9ja3M6Cj4gPiA+ICsgICAgaXRlbXM6Cj4gPiA+ICsgICAgICAtIGRlc2NyaXB0aW9u
OiBjb252ZXJ0ZXIgY2xvY2sKPiA+ID4gKyAgICAgIC0gZGVzY3JpcHRpb246IHBlcmlwaGVyYWwg
Y2xvY2sKPiA+ID4gKwo+ID4gPiArICBjbG9jay1uYW1lczoKPiA+ID4gKyAgICBpdGVtczoKPiA+
ID4gKyAgICAgIC0gY29uc3Q6IHNhcmFkYwo+ID4gPiArICAgICAgLSBjb25zdDogYXBiX3BjbGsK
PiA+ID4gKwo+ID4gPiArICByZXNldHM6Cj4gPiA+ICsgICAgbWF4SXRlbXM6IDEKPiA+ID4gKwo+
ID4gPiArICByZXNldC1uYW1lczoKPiA+ID4gKyAgICBjb25zdDogc2FyYWRjLWFwYgo+ID4gPiAr
Cj4gPiA+ICsgIHZyZWYtc3VwcGx5Ogo+ID4gPiArICAgIGRlc2NyaXB0aW9uOgo+ID4gPiArICAg
ICAgVGhlIHJlZ3VsYXRvciBzdXBwbHkgZm9yIHRoZSBBREMgcmVmZXJlbmNlIHZvbHRhZ2UuCj4g
PiA+ICsKPiA+ID4gKyAgIiNpby1jaGFubmVsLWNlbGxzIjoKPiA+ID4gKyAgICBjb25zdDogMQo+
ID4gPiArCj4gPiA+ICtyZXF1aXJlZDoKPiA+ID4gKyAgLSBjb21wYXRpYmxlCj4gPiA+ICsgIC0g
cmVnCj4gPiA+ICsgIC0gaW50ZXJydXB0cwo+ID4gPiArICAtIGNsb2Nrcwo+ID4gPiArICAtIGNs
b2NrLW5hbWVzCj4gPiA+ICsgIC0gdnJlZi1zdXBwbHkKPiA+ID4gKyAgLSAiI2lvLWNoYW5uZWwt
Y2VsbHMiCj4gPiA+ICsKPiA+ID4gK2FkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQo+ID4gPiAr
Cj4gPiA+ICtleGFtcGxlczoKPiA+ID4gKyAgLSB8Cj4gPiA+ICsgICAgI2luY2x1ZGUgPGR0LWJp
bmRpbmdzL2Nsb2NrL3JrMzI4OC1jcnUuaD4KPiA+ID4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGlu
Z3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvYXJtLWdpYy5oPgo+ID4gPiArICAgICNpbmNsdWRlIDxk
dC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9pcnEuaD4KPiA+ID4gKyAgICBzYXJhZGM6
IHNhcmFkY0AyMDA2YzAwMCB7Cj4gPiA+ICsgICAgICBjb21wYXRpYmxlID0gInJvY2tjaGlwLHNh
cmFkYyI7Cj4gPiA+ICsgICAgICByZWcgPSA8MHgyMDA2YzAwMCAweDEwMD47Cj4gPiA+ICsgICAg
ICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMjYgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gPiA+ICsg
ICAgICBjbG9ja3MgPSA8JmNydSBTQ0xLX1NBUkFEQz4sIDwmY3J1IFBDTEtfU0FSQURDPjsKPiA+
ID4gKyAgICAgIGNsb2NrLW5hbWVzID0gInNhcmFkYyIsICJhcGJfcGNsayI7Cj4gPiA+ICsgICAg
ICByZXNldHMgPSA8JmNydSBTUlNUX1NBUkFEQz47Cj4gPiA+ICsgICAgICByZXNldC1uYW1lcyA9
ICJzYXJhZGMtYXBiIjsKPiA+ID4gKyAgICAgIHZyZWYtc3VwcGx5ID0gPCZ2Y2MxOD47Cj4gPiA+
ICsgICAgICAjaW8tY2hhbm5lbC1jZWxscyA9IDwxPjsKPiA+ID4gKyAgICB9Owo+ID4gCj4gPiAK
PiAKPiAKPiAKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
