Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39365DCD26
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 19:56:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l3VzlHeaCsVRqF3EBY8MypblfPYMQeetcKk7dDJx13o=; b=Xfw8jJakLUHbpf
	LE7csbeFKr1PEsNwloGqJECOqzTsflxjgb4tXDILJi2q2dunAM43QVrePwxPE7cm9HebFxKTWyLFN
	tvfW6VOGEu9850uRfhEmp2aF4oc9Y+jPRXfw6zbwEeB959KfahI/Pkpky40ZKzCO8IKVqmlw8HSz2
	cMLiPBst0ihGWGztXLsi7F1przOEEhHlpiLZvl911rRKOvJaCvrf/MjaUgvBzxUenIwAQl9XKq24I
	WOr0x5/aPacIHpKhEKIMEb9TMihV3jNy4uqPR+R1ZQeE4CNJoEZoe3+MeyBtBIkiF6jm0GcWiQZRA
	ig8+sAh3qVKXamFN/jZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLWUY-0003hD-Sp; Fri, 18 Oct 2019 17:56:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLWUF-0003aT-4w
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 17:56:28 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1iLWTo-00062R-Up; Fri, 18 Oct 2019 19:56:00 +0200
Message-ID: <07f370bfd62425c5472c1e423ae0b21b0789e5f5.camel@pengutronix.de>
Subject: Re: [PATCH v2 2/2] dt-bindings: etnaviv: Add #cooling-cells
From: Lucas Stach <l.stach@pengutronix.de>
To: Guido =?ISO-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>, Russell King
 <linux+etnaviv@armlinux.org.uk>, Christian Gmeiner
 <christian.gmeiner@gmail.com>,  David Airlie <airlied@linux.ie>, Daniel
 Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>, Carlo
 Caione <ccaione@baylibre.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>,  etnaviv@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org,  devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,  linux-arm-kernel@lists.infradead.org
Date: Fri, 18 Oct 2019 19:55:56 +0200
In-Reply-To: <20191018135022.GA6728@bogon.m.sigxcpu.org>
References: <cover.1568255903.git.agx@sigxcpu.org>
 <6e9d761598b2361532146f43161fd05f3eee6545.1568255903.git.agx@sigxcpu.org>
 <20191018135022.GA6728@bogon.m.sigxcpu.org>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_105627_202324_F199743B 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnIsIDIwMTktMTAtMTggYXQgMTU6NTAgKzAyMDAsIEd1aWRvIEfDvG50aGVyIHdyb3RlOgo+
IEhpLAo+IE9uIFdlZCwgU2VwIDExLCAyMDE5IGF0IDA3OjQwOjM2UE0gLTA3MDAsIEd1aWRvIEfD
vG50aGVyIHdyb3RlOgo+ID4gQWRkICNjb29saW5nLWNlbGxzIGZvciB3aGVuIHRoZSBncHUgYWN0
cyBhcyBhIGNvb2xpbmcgZGV2aWNlLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBHdWlkbyBHw7xu
dGhlciA8YWd4QHNpZ3hjcHUub3JnPgo+ID4gLS0tCj4gPiAgLi4uL2RldmljZXRyZWUvYmluZGlu
Z3MvZGlzcGxheS9ldG5hdml2L2V0bmF2aXYtZHJtLnR4dCAgICAgICAgICB8IDEgKwo+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvZXRuYXZpdi9ldG5hdml2LWRybS50
eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9ldG5hdml2L2V0
bmF2aXYtZHJtLnR4dAo+ID4gaW5kZXggOGRlZjExYjE2YTI0Li42NDA1OTJlOGFiMmUgMTAwNjQ0
Cj4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9ldG5h
dml2L2V0bmF2aXYtZHJtLnR4dAo+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2Rpc3BsYXkvZXRuYXZpdi9ldG5hdml2LWRybS50eHQKPiA+IEBAIC0yMSw2ICsyMSw3
IEBAIFJlcXVpcmVkIHByb3BlcnRpZXM6Cj4gPiAgT3B0aW9uYWwgcHJvcGVydGllczoKPiA+ICAt
IHBvd2VyLWRvbWFpbnM6IGEgcG93ZXIgZG9tYWluIGNvbnN1bWVyIHNwZWNpZmllciBhY2NvcmRp
bmcgdG8KPiA+ICAgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wb3dlci9wb3dl
cl9kb21haW4udHh0Cj4gPiArLSAjY29vbGluZy1jZWxsczogOiBJZiB1c2VkIGFzIGEgY29vbGlu
ZyBkZXZpY2UsIG11c3QgYmUgPDI+Cj4gCj4gVGhlIG90aGVyIHBhdGNoIG9mIHRoZSBzZXJpZXMg
bWFkZSBpdCBpbnRvIGxpbnV4LW5leHQgYWxyZWFkeSBidXQgdGhpcwo+IGRvY3VtZW50YXRpb24g
Zml4dXAgZGlkbid0LiBBbnl0aGluZyBpIGNhbiBkbyB0byBnZXQgdGhpcyBhcHBsaWVkIGFzCj4g
d2VsbCBzbyBkb2N1bWVudGF0aW9uIHN0YXlzIGluIHN5bmM/CgpJJ3ZlIGFwcGxpZWQgYW5kIHB1
c2hlZCB0aGlzIHRvIG15IGV0bmF2aXYvbmV4dCBicmFuY2gganVzdCBub3csIHNvIGl0CnNob3Vs
ZCBzaG93IHVwIGluIGxpbnV4LW5leHQgcHJldHR5IHNvb24uCgpSZWdhcmRzLApMdWNhcwoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
