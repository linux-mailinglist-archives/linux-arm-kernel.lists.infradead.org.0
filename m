Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4A01FA5C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 03:52:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bgCv+loxJ22RHGlEOHQrORofGdvfhmODgfQaLDY4d14=; b=hy54phJ7R+iaCM
	2E7L8WunGgH+FWRDifNi1l43WWImD29U6nDxJMsPkjAYkXKhpNglPI2Nqa/puGBRBA9T+xV1LuWtU
	N2L2bZ3C5kPihWtpE9aNQzyIotmSZnXPvc//2qJ3Ia32RKClGYv9sV8kxEOibC2wnjpFqpEoGf2ih
	0XZAFsHo3WPQaeQQmTmiLS3vCpnd0AAea3UX2a4IyCHocQEEwnSHZrk9OSwQ97ReyEDf+42ptNo4V
	UkGqqvX1rf3WOc8TJBSoJqoK1BQpqmC8pIyfmnEoAW5qATnmkMMnPGdhTtGaFAdaAN3KlLKH7hfvk
	2ImdgTMEL5b+vLsolruQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl0lk-0000E5-8j; Tue, 16 Jun 2020 01:52:08 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl0la-0000Db-Br
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 01:52:00 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id B4763F9;
 Tue, 16 Jun 2020 03:51:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1592272301;
 bh=peS4/uh5rv4eTufOqf33S/epmbRDzQUT067NfhNk4Dg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qhD/lWgk8GRGpn0jQBo39ZH0IPDl9X7KKSAmNtTy78Rm7iG4AIYGQtjCyK3e0ym/+
 d3pxV7r/+jUFiu5TSKPOGAnmOjv/TxGX20OIvBXxR/E5LyuJ6It99h5lghpyao/Lr7
 0M7f5YRhZi0gc5fHakResb6lQC3l+t85cgo+9pk4=
Date: Tue, 16 Jun 2020 04:51:19 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
Subject: Re: [PATCH v3 5/5] dt-bindings: display: ti,tfp410.yaml: make the
 ports node optional
Message-ID: <20200616015119.GI1629@pendragon.ideasonboard.com>
References: <20200611102356.31563-1-ricardo.canuelo@collabora.com>
 <20200611102356.31563-6-ricardo.canuelo@collabora.com>
 <20200611160817.GA6031@pendragon.ideasonboard.com>
 <8ad9a397a5fa6cebd2a4e0170dfa96ad73907faf.camel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8ad9a397a5fa6cebd2a4e0170dfa96ad73907faf.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_185158_557448_097B1A14 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net, airlied@linux.ie,
 robh+dt@kernel.org, tomi.valkeinen@ti.com, dri-devel@lists.freedesktop.org,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUmljYXJkbywKCk9uIE1vbiwgSnVuIDE1LCAyMDIwIGF0IDExOjM4OjA3QU0gKzAyMDAsIFJp
Y2FyZG8gQ2HDsXVlbG8gd3JvdGU6Cj4gT24gVGh1LCAyMDIwLTA2LTExIGF0IDE5OjA4ICswMzAw
LCBMYXVyZW50IFBpbmNoYXJ0IHdyb3RlOgo+ID4gT24gVGh1LCBKdW4gMTEsIDIwMjAgYXQgMTI6
MjM6NTZQTSArMDIwMCwgUmljYXJkbyBDYcOxdWVsbyB3cm90ZToKPiA+ID4gTWFrZSB0aGUgcG9y
dHMgbm9kZSBvcHRpb25hbCwgc2luY2UgdGhlcmUgYXJlIHNvbWUgRFRzIHRoYXQgZG9uJ3QgZGVm
aW5lCj4gPiA+IGFueSBwb3J0cyBmb3IgdGksdGZwNDEwLgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9m
Zi1ieTogUmljYXJkbyBDYcOxdWVsbyA8cmljYXJkby5jYW51ZWxvQGNvbGxhYm9yYS5jb20+Cj4g
PiAKPiA+IFNob3VsZG4ndCB3ZSBmaXggdGhvc2UgRFRzIGluc3RlYWQgPyBXaGF0J3MgdGhlIHBv
aW50IG9mIGEgVEZQNDEwCj4gPiB3aXRob3V0IHBvcnRzIGluIERUID8KPiAKPiBUaGlzIGNvbWVz
IGZyb20gdGhlIGRpc2N1c3Npb24gaW4gdGhlIHByZXZpb3VzIHZlcnNpb24gb2YgdGhpcyBzZXJp
ZXMuCj4gCj4gSW4gdGhlIERUcyB0aGF0IGRvbid0IGRlZmluZSBhbnkgcG9ydHMgKGl0J3MgZG92
ZS1zYmMtYTUxMC5kdHMgb25seSwgYWN0dWFsbHkpCj4gaXQncyBub3QgY2xlYXIgaG93IHRvIGRl
ZmluZSB0aGUgcG9ydHMgKEknbSBub3QgZmFtaWxpYXIgd2l0aCB0aGlzIGJvYXJkKS4KPiBJbml0
aWFsbHkgSSBkZWZpbmVkIGEgc2V0IG9mIGVtcHR5IHBvcnRzIGp1c3QgdG8gY29tcGx5IHdpdGgg
dGhlIGJpbmRpbmcKPiByZXF1aXJlbWVudHMsIGJ1dCBSb2Igc3VnZ2VzdGVkIHRoYXQgd2UgbWln
aHQgYXMgd2VsbCBkZWNsYXJlIHRoZW0gYXMgb3B0aW9uYWwsCj4gc2luY2UgaGF2aW5nIGFuIGVt
cHR5IHBvcnQgZGVmaW5pdGlvbiB3aXRoIG5vIHJlbW90ZSBlbmRwb2ludHMgaXMgbm8gYmV0dGVy
IHRoYW4KPiBoYXZpbmcgbm8gcG9ydHMgYXQgYWxsLgo+IAo+IEkgdW5kZXJzdGFuZCBib3RoIG9w
aW5pb25zIGJ1dCBJIGp1c3QgZG9uJ3Qga25vdyB3aGljaCBpcyB0aGUgYmVzdCBvcHRpb24gYXQK
PiB0aGlzIHBvaW50LgoKSG93IGFib3V0IGtlZXBpbmcgdGhlIHBvcnRzIG1hbmRhdG9yeSwgYW5k
IGxlYXZpbmcgZG92ZS1zYmMtYTUxMC5kdHMgdG8KYmUgZml4ZWQgbGF0ZXIgPwoKLS0gClJlZ2Fy
ZHMsCgpMYXVyZW50IFBpbmNoYXJ0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
