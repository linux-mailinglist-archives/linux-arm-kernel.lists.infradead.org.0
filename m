Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3841815B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 11:23:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oWRaHwmduatJp76w5ure7msfWn90AVIagGm9xs0xwGc=; b=pFUG76jahghKfYj0c1Gh581fC
	FuYxSBsYTrvJE4qA+gd1ZUR5tnFRdW9AKp6iuUPo7N3epprNKw/ggrm3z20cUo7YlqW/sPvqQBs7D
	Fe6lgklAZs8TpLCMcd4Cj43R5aBqpH+PogtUPiX2Z+Un/0xZ38Adr5X5Pvj5Prce5j+pizpQN1ITa
	9HG8zU6UlUZhTHBD9ZimiXBsbrrns5krvKtep9RvE7sFQq0G7qc5s97f1Zjgu3r1GEN6U/SH+GuBY
	FAeeRn/9rduHyvCO7ymWnhXCXcxPVyRgS77WVuo6ZlNDVRfc2BuwDcz91t0FuAI3Zc+kH25xbjVJd
	9L7Vcc06g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jByWf-0004J3-5t; Wed, 11 Mar 2020 10:23:45 +0000
Received: from web0081.zxcs.nl ([2a06:2ec0:1::81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jByWW-0004IQ-4P
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 10:23:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=pascalroeleven.nl; s=x; h=Message-ID:References:In-Reply-To:Subject:Cc:To:
 From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KUYFXWlpQlmFH24r8Wc5r2V9DxU5tyqeUGSEwgUr8+Q=; b=fVlYSUL8RtKiaLK+JCly783CUT
 bQDL7isowG8X1gOXi2I85W5/gMHUHIC4FSzD8OW1/o61mz0vWnRudp/zGM5c3t0qzaa7i8ETgfqqf
 a8KVpjSFwT4VR0KeXhB2LxdDqpCRIe2GiAaceLOEOBIKLgIFfn9EW6JNzqEGo2dGrOdgCB+pfzAit
 b9pMpMjFeD0QwAipMjZGS5alpouqBRrbGS/0cSEtx3bWL9YL50o+Sr0WDooGTSiQSLWiv3UtAE4Us
 Nkfae1FhXs5St/J1DAjVMf1MA/eKiVIAtcNOr56M10d7vcZ6VBQDIIc2jadGIvKUBlGU51V+6fQf2
 3/DMnvhQ==;
Received: from spamrelay.zxcs.nl ([185.104.28.12]:33546
 helo=mail-slave01.zxcs.nl)
 by web0081.zxcs.nl with esmtp (Exim 4.92.3)
 (envelope-from <dev@pascalroeleven.nl>)
 id 1jByWN-000AQ6-8k; Wed, 11 Mar 2020 11:23:27 +0100
MIME-Version: 1.0
Date: Wed, 11 Mar 2020 11:23:27 +0100
From: Pascal Roeleven <dev@pascalroeleven.nl>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH 1/2] drm/panel: Add Starry KR070PE2T
In-Reply-To: <20200310185422.GA22095@ravnborg.org>
References: <20200310102725.14591-1-dev@pascalroeleven.nl>
 <20200310102725.14591-2-dev@pascalroeleven.nl>
 <20200310185422.GA22095@ravnborg.org>
User-Agent: Roundcube Webmail/1.4.2
Message-ID: <280a128711458950b55b070dbf6f07a1@pascalroeleven.nl>
X-Sender: dev@pascalroeleven.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_032336_316996_D4610A03 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wMy0xMCAxOTo1NCwgU2FtIFJhdm5ib3JnIHdyb3RlOgo+IEEgZmV3IHRoaW5ncyB0
byBpbXByb3ZlLgo+IAo+IFRoZSBiaW5kaW5nIHNob3VsZCBiZSBhIHNlcGFyYXRlIHBhdGNoLgo+
IHN1YmplY3QgLSBzaGFsbCBzdGFydCB3aXRoIGR0LWJpbmRpbmdzOgo+IFNoYWxsIGJlIHNlbnQg
dG8gZGV2ZWljZXRyZWUgbWFpbGluZyBsaXN0LgoKSGkgU2FtLAoKVGhhbmsgeW91IHZlcnkgbXVj
aCBmb3IgeW91ciByZXZpZXcuCkkgZGlkIGNvbnNpZGVyIHRoaXMuIFRoZSByZWFzb24gSSBjb21i
aW5lZCB0aGUgcGF0Y2hlcywgaXMgdGhhdCB0aGUgCmJpbmRpbmcgZGVwZW5kcyBvbiB0aGUgZGlz
cGxheSBzbyBJIHRob3VnaHQgdGhleSB3ZXJlIHJlbGF0ZWQgaW4gc29tZSAKd2F5LiBEaWRuJ3Qg
a25vdyB0aGUgY29ycmVjdCBwcm9jZWR1cmUgdG8gaGFuZGxlIHRoaXMuIEkgd2lsbCBzcGxpdCB0
aGVtIAphcGFydCBpbiB2Mi4KCj4+IC0tLQo+PiAgLi4uL2Rpc3BsYXkvcGFuZWwvc3RhcnJ5LGty
MDcwcGUydC50eHQgICAgICAgIHwgIDcgKysrKysKPj4gIGRyaXZlcnMvZ3B1L2RybS9wYW5lbC9w
YW5lbC1zaW1wbGUuYyAgICAgICAgICB8IDI2IAo+PiArKysrKysrKysrKysrKysrKysrCj4+ICAy
IGZpbGVzIGNoYW5nZWQsIDMzIGluc2VydGlvbnMoKykKPj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCAK
Pj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcGFuZWwvc3RhcnJ5
LGtyMDcwcGUydC50eHQKPj4gCj4+IGRpZmYgLS1naXQgCj4+IGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcGFuZWwvc3RhcnJ5LGtyMDcwcGUydC50eHQgCj4+IGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcGFuZWwvc3RhcnJ5LGty
MDcwcGUydC50eHQKPj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4gaW5kZXggMDAwMDAwMDAwLi42
OTlhZDVlYjIKPj4gLS0tIC9kZXYvbnVsbAo+PiArKysgCj4+IGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcGFuZWwvc3RhcnJ5LGtyMDcwcGUydC50eHQKPj4gQEAg
LTAsMCArMSw3IEBACj4+ICtTdGFycnkgNyIgKDgwMHg0ODAgcGl4ZWxzKSBMQ0QgcGFuZWwKPj4g
Kwo+PiArUmVxdWlyZWQgcHJvcGVydGllczoKPj4gKy0gY29tcGF0aWJsZTogc2hvdWxkIGJlICJz
dGFycnksa3IwNzBwZTJ0Igo+PiArCj4+ICtUaGlzIGJpbmRpbmcgaXMgY29tcGF0aWJsZSB3aXRo
IHRoZSBzaW1wbGUtcGFuZWwgYmluZGluZywgd2hpY2ggaXMgCj4+IHNwZWNpZmllZAo+PiAraW4g
c2ltcGxlLXBhbmVsLnR4dCBpbiB0aGlzIGRpcmVjdG9yeS4KPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9wYW5lbC9wYW5lbC1zaW1wbGUuYyAKPj4gYi9kcml2ZXJzL2dwdS9kcm0vcGFu
ZWwvcGFuZWwtc2ltcGxlLmMKPj4gaW5kZXggZTE0YzE0YWM2Li4wMjdhMjYxMmIgMTAwNjQ0Cj4+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9wYW5lbC9wYW5lbC1zaW1wbGUuYwo+PiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vcGFuZWwvcGFuZWwtc2ltcGxlLmMKPj4gQEAgLTI4NDIsNiArMjg0MiwyOSBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IHBhbmVsX2Rlc2MgCj4+IHNoZWxseV9zY2EwNzAxMF9iZm5f
bG5uID0gewo+PiAgCS5idXNfZm9ybWF0ID0gTUVESUFfQlVTX0ZNVF9SR0I2NjZfMVgxOCwKPj4g
IH07Cj4+IAo+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlIHN0YXJyeV9r
cjA3MHBlMnRfbW9kZSA9IHsKPj4gKwkuY2xvY2sgPSAzMzAwMCwKPj4gKwkuaGRpc3BsYXkgPSA4
MDAsCj4+ICsJLmhzeW5jX3N0YXJ0ID0gODAwICsgMjA5LAo+PiArCS5oc3luY19lbmQgPSA4MDAg
KyAyMDkgKyAxLAo+PiArCS5odG90YWwgPSA4MDAgKyAyMDkgKyAxICsgNDUsCj4+ICsJLnZkaXNw
bGF5ID0gNDgwLAo+PiArCS52c3luY19zdGFydCA9IDQ4MCArIDIyLAo+PiArCS52c3luY19lbmQg
PSA0ODAgKyAyMiArIDEsCj4+ICsJLnZ0b3RhbCA9IDQ4MCArIDIyICsgMSArIDIyLAo+PiArCS52
cmVmcmVzaCA9IDYwLAo+PiArfTsKPiAKPiBQbGVhc2UgYWRqdXN0IHNvOgo+IHZyZWZyZXNoICog
aHRvdGFsICogdnRvdGFsID09IGNsb2NrLgo+IEkgY2Fubm90IHNheSB3aGF0IG5lZWRzIHRvIGJl
IGFkanVzdGVkLgo+IEJ1dCB3ZSBhcmUgbW92aW5nIGF3YXkgZnJvbSBzcGVjaWZ5aW5nIHZyZWZy
ZXNoIGFuZCB3YW50IHRoZQo+IGRhdGEgdG8gYmUgT0suCgpKdXN0IGxpa2UgVmlsbGUgU3lyasOk
bMOkLCBJIHJhbiB0aGUgbnVtYmVycyBhbmQgdnJlZnJlc2ggaW5kZWVkIApjYWxjdWxhdGVzIHRv
IDU5LjU4LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
