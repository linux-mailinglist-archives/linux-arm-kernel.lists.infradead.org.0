Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F21941D10B7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 13:10:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Y602L8BO7w9Dn70klqcC1dSK+62ebt88wqjboImj/w=; b=N7aM2RdpbFbAfb
	2OyM/Dz6/chhntffp78ppb8v6WQNGHLVeotMTqQfKW076djl+Rl+pDMhO9SbDLDWMZ6MtoTyrQxh5
	VbBo55MnhLtL+z5LG5HYtp4EAyUZkS4haD95ehUIssLIEW7/1xlZwrd7PJoeJraipuYXBlxIp0Zdt
	VLl8pv7Pdmq7XZ8i8gv0gGeUfdfO9X87Is1o23DFSrjn1f0cwmw5q6tjMPEaFFcKfxbjBikIe/td8
	TEDQ805kbi9kyhHj+aRpgrcaX6O4o7aSCaL0pEOQ6kx0RwldoekrT56nLIqwjx7A6Im5KFsnOtm62
	LyaoHs3mxqbXR+OF4GVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYpHJ-00034L-EV; Wed, 13 May 2020 11:10:21 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYpH2-0001m0-9D
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 11:10:06 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id 1B6D92A0521
Date: Wed, 13 May 2020 13:09:57 +0200
From: Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [RFC PATCH] dt-bindings: display: ti,tfp410.txt: convert to yaml
Message-ID: <20200513110957.dgb3axle24pmqp3a@rcn-XPS-13-9360>
Mail-Followup-To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, robh+dt@kernel.org,
 kernel@collabora.com, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, jason@lakedaemon.net
References: <20200428092048.14939-1-ricardo.canuelo@collabora.com>
 <3e377c73-25a3-a7b3-0604-41c54d70039e@ti.com>
 <20200506155320.GC15206@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506155320.GC15206@pendragon.ideasonboard.com>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_041004_462521_10859B90 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net,
 dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTGF1cmVudCwKCk9uIG1pw6kgMDYtMDUtMjAyMCAxODo1MzoyMCwgTGF1cmVudCBQaW5jaGFy
dCB3cm90ZToKPiBJIGRpZG4ndCBpZiBJIHJlbWVtYmVyIGNvcnJlY3RseSwgSSBqdXN0IG1hcHBl
ZCBpdCB0byB0aGUgaGFyZHdhcmUKPiBmZWF0dXJlcy4gVGhlIGhhcmR3YXJlIHJlZ2lzdGVyIGlu
ZGVlZCB0YWtlcyBhIHZhbHVlIGJldHdlZW4gMCBhbmQgNywKPiBhbmQgdGhhdCBpcyBtYXBwZWQg
dG8gWy00LDNdIHggdChTVEVQKS4gSSBkb24ndCBtaW5kIGVpdGhlciBvcHRpb24uCgpJIHdhcyB0
YWtpbmcgYSBsb29rIGF0IHRoZSB0aS10ZnA0MTAuYyBkcml2ZXIgdG8gc2VlIGlmIGl0IG5lZWRz
IGFueQpjaGFuZ2VzIHRvIHN1cHBvcnQgdGhlIHVwZGF0ZWQgZGVza2V3IHByb3BlcnR5IHJhbmdl
cyBbMC03XSwgYnV0IEkgZG9uJ3QKZnVsbHkgdW5kZXJzdGFuZCB3aGF0IHRoaXMgZG9lcyAobGlu
ZSAyNzYpOgoKCS8qIEdldCB0aGUgc2V0dXAgYW5kIGhvbGQgdGltZSBmcm9tIHZlbmRvci1zcGVj
aWZpYyBwcm9wZXJ0aWVzLiAqLwoJb2ZfcHJvcGVydHlfcmVhZF91MzIoZHZpLT5kZXYtPm9mX25v
ZGUsICJ0aSxkZXNrZXciLCAodTMyICopJmRlc2tldyk7CglpZiAoZGVza2V3IDwgLTQgfHwgZGVz
a2V3ID4gMykKCQlyZXR1cm4gLUVJTlZBTDsKCgl0aW1pbmdzLT5zZXR1cF90aW1lX3BzID0gbWlu
KDAsIDEyMDAgLSAzNTAgKiBkZXNrZXcpOwoJdGltaW5ncy0+aG9sZF90aW1lX3BzID0gbWluKDAs
IDEzMDAgKyAzNTAgKiBkZXNrZXcpOwoKSXQgbG9va3MgbGlrZSB0aGF0IHRoZSBkcml2ZXIgZG9l
c24ndCByZWFsbHkgYXBwbHkgdGhlIGRlc2tldyBzZXR0aW5ncwp0byB0aGUgZGV2aWNlIGFuZCB0
aGF0IHRoaXMgaGFzIG5vdCBiZWVuIHJlYWxseSB0ZXN0ZWQsIHNvIGl0J3MgcHJvYmFibHkKbm90
IGEgYmlnIGRlYWwuCgpJIGd1ZXNzIHdoYXQgeW91IHdhbnRlZCB0byBkbyB3YXMgdG8gYWRqdXN0
IHRoZSBzZXR1cCBhbmQgaG9sZCB0aW1lcwphcm91bmQgMTIwMCBhbmQgMTMwMCBwcyByZXNwZWN0
aXZlbHkgaW4gaW5jcmVtZW50cy9kZWNyZW1lbnRzIG9mIDM1MCBwcwpkZXBlbmRpbmcgb24gdGhl
IGRlc2tldyB2YWx1ZSwgYXMgdGhlIGRhdGFzaGVldCBkZXNjcmliZXMuIEJ1dCB0aGlzIGNvZGUK
d291bGQgc2V0IHRpbWluZ3MtPnNldHVwX3RpbWVfcHMgdG8gMCByZWdhcmRsZXNzIG9mIHRoZSBk
ZXNrZXcgdmFsdWUsCmFuZCB0aW1pbmdzLT5ob2xkX3RpbWVfcHMgd291bGQgYmUgZWl0aGVyIDAg
b3IgYSB2ZXJ5IGJpZyBpbnRlZ2VyIHZhbHVlCmlmIGRlc2tldyBpcyAtNCAoYm90aCBzZXR1cF90
aW1lX3BzIGFuZCBob2xkX3RpbWVfcHMgYXJlIHUzMikuCgpBbSBJIG1pc3Npbmcgc29tZXRoaW5n
PyBXYXMgdGhpcyBpbnRlbnRpb25hbD8KClRoYW5rcywKUmljYXJkbwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
