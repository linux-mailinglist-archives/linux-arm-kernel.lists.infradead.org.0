Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 605181E6D5E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 23:13:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qfmTe9hSX7RBMef8nbhYrYjugz1Shob9w3bL6Bhlh3s=; b=FRsBKWDXq48YUz
	clIHTDhE/Q7i2AERihGyZB0V+DDr/Bj0wB50qcbmPGqB49SEhuq7XYPzfcCAIQ1pDIACgRPt6VUJ+
	h0OL58NI1ZVVj2UT+OM+tJwr17pMx5gfSSrKJnCN3+EoIF8aeELyso435lFKVauUXZgije8rTARu+
	FrkIP9CLQK6px4kaNGOCBrz8LhAW0UIUOkKcDF/dRteysSZkwY4Gc5mNPLR4nOK3WGOFilJZwQUvS
	BVXzV3B0sMMPNTA1j2jGpzLEwU101GqtOsfVpHE/Grd0YU9XDHPqT7UqR8H5Gv5dbZOiASdR2ccdt
	KLz5nXZwKQWIxQENVuFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jePpi-0000r0-PD; Thu, 28 May 2020 21:12:58 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jePpY-0000qF-Lf
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 21:12:50 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 858602A8;
 Thu, 28 May 2020 23:12:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1590700348;
 bh=mBPwghkxCn/U41zxI9xPuO+7LoQVh7Lh56biCkGXlQg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CLz8ATsR9sYMn576TdhXMznzLqdtPWMRJV9YwBHepqQT+e4Nm2JQBViTVVPJ8tjhc
 pedNkvB8zTtsi2pRAOgWBA/vC6ZWlBh/94N6Za9W2Vhe7GYEM2c+Wpr0zb7oowJugC
 rNucBfzOAdbsTAwI8Kjl18NZJVXA7EC6gQrJWk+Y=
Date: Fri, 29 May 2020 00:12:14 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 1/4] ARM: dts: dove: Make the DT compliant with the
 ti,tfp410 binding
Message-ID: <20200528211214.GA14756@pendragon.ideasonboard.com>
References: <20200514143612.2094-1-ricardo.canuelo@collabora.com>
 <20200514143612.2094-2-ricardo.canuelo@collabora.com>
 <20200528173755.GA113289@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528173755.GA113289@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_141248_854662_83E38257 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net, airlied@linux.ie,
 shawnguo@kernel.org, dri-devel@lists.freedesktop.org, tomi.valkeinen@ti.com,
 kernel@collabora.com,
 Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLAoKT24gVGh1LCBNYXkgMjgsIDIwMjAgYXQgMTE6Mzc6NTVBTSAtMDYwMCwgUm9iIEhl
cnJpbmcgd3JvdGU6Cj4gT24gVGh1LCBNYXkgMTQsIDIwMjAgYXQgMDQ6MzY6MDlQTSArMDIwMCwg
UmljYXJkbyBDYcOxdWVsbyB3cm90ZToKPiA+IERlZmluZSBhICdwb3J0cycgbm9kZSBmb3IgJ2R2
aTogdmlkZW9AMzknIGFuZCB1c2UgdGhlIHByb3BlciBuYW1pbmcgZm9yCj4gPiB0aGUgcG93ZXJk
b3duLWdwaW9zIHByb3BlcnR5IHRvIG1ha2UgaXQgY29tcGxpYW50IHdpdGggdGhlIHRpLHRmcDQx
MAo+ID4gYmluZGluZy4KPiA+IAo+ID4gVGhpcyBmaWxscyB0aGUgbWluaW11bSByZXF1aXJlbWVu
dHMgdG8gbWVldCB0aGUgYmluZGluZyByZXF1aXJlbWVudHMsCj4gPiBwb3J0IGVuZHBvaW50cyBh
cmUgbm90IGRlZmluZWQuCj4gCj4gSnVzdCBtYWtlICdwb3J0cycgb3B0aW9uYWwuIFRoaXMgaXNu
J3QgcmVhbGx5IGFueSBiZXR0ZXIgdW5sZXNzIHlvdSBhZGQgCj4gZW5kcG9pbnRzIHRvby4KCkkg
d29uZGVyIGhvdyB0aGlzIGlzIHN1cHBvc2VkIHRvIHdvcmsgdGhvdWdoLiBUaGUgdGktdGZwNDEw
IGRyaXZlciB3aWxsCmZhaWwgdG8gcHJvYmUgaWYgdGhlcmUncyBubyBlbmRwb2ludC4gSSdkIHJh
dGhlciBhbHJlYWR5IGFkZCBhIG5vZGUgZm9yCnRoZSBEVkkgY29ubmVjdG9yIGFuZCBjb25uZWN0
IGl0IHRvIHBvcnRAMSBvZiB0aGUgVEZQNDEwLgoKPiA+IFNpZ25lZC1vZmYtYnk6IFJpY2FyZG8g
Q2HDsXVlbG8gPHJpY2FyZG8uY2FudWVsb0Bjb2xsYWJvcmEuY29tPgo+ID4gLS0tCj4gPiAgYXJj
aC9hcm0vYm9vdC9kdHMvZG92ZS1zYmMtYTUxMC5kdHMgfCAxMyArKysrKysrKysrKystCj4gPiAg
MSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+IAo+ID4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2RvdmUtc2JjLWE1MTAuZHRzIGIvYXJjaC9h
cm0vYm9vdC9kdHMvZG92ZS1zYmMtYTUxMC5kdHMKPiA+IGluZGV4IDJiYjg1YTliNzYxNC4uMzI4
MDRjOTgxNjI1IDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvZG92ZS1zYmMtYTUx
MC5kdHMKPiA+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2RvdmUtc2JjLWE1MTAuZHRzCj4gPiBA
QCAtMTMyLDcgKzEzMiwxOCBAQAo+ID4gIAlkdmk6IHZpZGVvQDM5IHsKPiA+ICAJCWNvbXBhdGli
bGUgPSAidGksdGZwNDEwIjsKPiA+ICAJCXJlZyA9IDwweDM5PjsKPiA+IC0JCXBvd2VyZG93bi1n
cGlvID0gPCZncGlvX2V4dCAzIEdQSU9fQUNUSVZFX0xPVz47Cj4gPiArCQlwb3dlcmRvd24tZ3Bp
b3MgPSA8JmdwaW9fZXh0IDMgR1BJT19BQ1RJVkVfTE9XPjsKPiA+ICsKPiA+ICsJCXBvcnRzIHsK
PiA+ICsJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiA+ICsJCQkjc2l6ZS1jZWxscyA9IDwwPjsK
PiA+ICsJCQlwb3J0QDAgewo+ID4gKwkJCQlyZWcgPSA8MD47Cj4gPiArCQkJfTsKPiA+ICsJCQlw
b3J0QDEgewo+ID4gKwkJCQlyZWcgPSA8MT47Cj4gPiArCQkJfTsKPiA+ICsJCX07Cj4gPiAgCX07
Cj4gPiAgfTsKPiA+ICAKCi0tIApSZWdhcmRzLAoKTGF1cmVudCBQaW5jaGFydAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
