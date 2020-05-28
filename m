Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EBE1E579F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 08:36:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PyYnY75p4PEACvXa5hVbMGC8I+qBr0aEZWktFm0tFVM=; b=uFTSs6hvZxsfoD
	VhftfHJZTa1NnA/ieM7wAx5d6aKM2Nou8HwSm6vpYMOIC1Ur6p2yku3b5fhTbR7WXUvFR4G25/rqC
	ds7skcdSqnRJ7BgFjGI3XKCEt7d2fhSYowTAUVfUVLuxIIlpfMkDobQvJ991fxDvrFlEHkrBi97Sq
	u2Z1Su5w+NOFEoe6m6v/qD7KAYjuEzF5jXVeiNV9XxmpxUsfdcG2/frjIPnnDAMNdzdYKj+z8I5HZ
	0qJEOGKzE5uvzuOm1jHxanVOmaaMY6Rl6YUnVs5cCHjnuE8Eb3HPfc2dAbLQuk9Phjwu1oScpUiGp
	Yl04DkjgWUQnb9nowc/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeC9Z-0007Up-RG; Thu, 28 May 2020 06:36:33 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeC9P-0007Tm-Dc
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 06:36:24 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id 445512A3C63
Date: Thu, 28 May 2020 08:36:16 +0200
From: Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v2 6/6] dt-bindings: drm: bridge: adi,adv7511.txt:
 convert to yaml
Message-ID: <20200528063616.e2na5lcnxzl34sc3@rcn-XPS-13-9360>
Mail-Followup-To: Geert Uytterhoeven <geert@linux-m68k.org>,
 Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Wei Xu <xuwei5@hisilicon.com>, michal.simek@xilinx.com
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
 <20200511110611.3142-7-ricardo.canuelo@collabora.com>
 <20200514015412.GF7425@pendragon.ideasonboard.com>
 <20200514093617.dwhmqaasc3z5ixy6@rcn-XPS-13-9360>
 <20200514152239.GG5955@pendragon.ideasonboard.com>
 <20200525074335.grnjvdjnipq5g3kf@rcn-XPS-13-9360>
 <20200526014444.GB6179@pendragon.ideasonboard.com>
 <CAMuHMdXinhY13us9rt9h7EvrT_8zhnQg6tmOBtA0nEQ=1G1O7Q@mail.gmail.com>
 <CAL_JsqJgQajnKdQ1Bt6YFX04fX0VGz44Q3kBdLLR04OzhWrH5A@mail.gmail.com>
 <CAMuHMdXQQXOcVuq7Zhfp4qGH0vmLtxp3fdCJ+7VSAMQYSdjsTg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdXQQXOcVuq7Zhfp4qGH0vmLtxp3fdCJ+7VSAMQYSdjsTg@mail.gmail.com>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_233623_589635_EB7FAB14 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 michal.simek@xilinx.com, Wei Xu <xuwei5@hisilicon.com>,
 Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgYWxsLAoKT24gbWnDqSAyNy0wNS0yMDIwIDIwOjE4OjA3LCBHZWVydCBVeXR0ZXJob2V2ZW4g
d3JvdGU6Cj4gPiBUaGVyZSdzIGN1cnJlbnRseSBubyByZXF1aXJlbWVudCB0aGF0IGJpbmRpbmcg
c2NoZW1hIGRvbid0IGludHJvZHVjZQo+ID4gd2FybmluZ3MgaW4gZHRzIGZpbGVzLiBUaGF0IHNo
b3VsZCBjaGFuZ2Ugd2hlbi9pZiB3ZSBnZXQgdG8gYSB3YXJuaW5nCj4gPiBmcmVlIHN0YXRlIChw
cm9iYWJseSBwZXIgcGxhdGZvcm0vZmFtaWx5KS4gSSBkb24ndCB0aGluayB3ZSdyZSBjbG9zZQo+
ID4gb24gYW55IHBsYXRmb3JtPyAoSWYgd2UgYXJlLCBJJ2QgbGlrZSB0byBzdGFydCB0cmFja2lu
ZyB0aGF0KS4gSXQgaXMKPiA+IGdvb2QgdG8gcGF5IGF0dGVudGlvbiB0byB0aGUgd2FybmluZ3Mg
eW91IGdldCB0aG91Z2ggYXMgdGhlIHNjaGVtYSBtYXkKPiA+IG5vdCBiZSBkb2luZyB3aGF0IHlv
dSBleHBlY3Qgb3IgdGhlIGJpbmRpbmcgcmVhbGx5IGRvZXNuJ3QgbWF0Y2gKPiA+IHJlYWxpdHku
Cj4gCj4gT0suCj4gCj4gPiA+IEkgZG8gbXkgYmVzdCB0byBhdm9pZCBpbnRyb2R1Y2luZyByZWdy
ZXNzaW9ucyB3aGVuIHRoZSBiaW5kaW5nIGNvbnZlcnNpb25zCj4gPiA+IGdvIHVwc3RyZWFtLgo+
ID4KPiA+IE1lYW5pbmcgeW91IGZpeCB0aGUgZHRzIGZpbGVzIG9yIG1hc3NhZ2UgdGhlIHNjaGVt
YSB0byBtYXRjaD8gSWYgd2UKPiA+IGp1c3QgYWRqdXN0IHNjaGVtYSB0byBtYXRjaCwgd2hhdCdz
IHRoZSBwb2ludCBpbiB0aGlzIGVmZm9ydD8gV2UKPiA+IHNob3VsZCBmaW5kIHRoaW5ncyB3cm9u
ZyBvciBpbGwgZGVmaW5lZC4KPiAKPiBJIGZpeCB1cCBEVFMgZmlsZXMsIGFuZCBmYXN0LXRyYWNr
IHRob3NlIGZpeGVzLCBzbyB0aGV5IGFwcGVhciB1cHN0cmVhbSBiZWZvcmUKPiB0aGUgRFQgYmlu
ZGluZyBjb252ZXJzaW9uLCB3aGVyZSBwb3NzaWJsZS4KClRoYW5rIHlvdSBldmVyeW9uZSBmb3Ig
cGl0Y2hpbmcgaW4gYW5kIGZvciBjbGFyaWZ5aW5nIHRoZSBwcm9jZWR1cmUsCkknbGwgcHJlcGFy
ZSBhIG5ldyBzZXJpZXMgd2l0aCB0aGUgY2hhbmdlcyB0aGF0IExhdXJlbnQgcHJvcG9zZWQKKHdp
dGhvdXQgdGhlIHBhdGNoZXMgdGhhdCBHZWVydCBhbHJlYWR5IG1lcmdlZCkuCgpDaGVlcnMsClJp
Y2FyZG8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
