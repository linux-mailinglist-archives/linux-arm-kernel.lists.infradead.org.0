Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0125120330
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 12:04:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T+T/NubRKBkB4vSXXKpZhHAQA5ROhvBk95Ru3Wd0uoQ=; b=feyLDA4OzxjsgH
	l8y1zlg6OltsCmlUUIDiXYQvA6kFJ2qAj8fJkGC3TRKB1etJNBMlJY5B+4hQJVc6ar8Pj0brOjGDE
	WCYmWXdkJUyu09lE5Wupsolt8WPIIfWWY5YyC/V62TCYIoBH2QYVQeY8OdWoHJFATOv3THytCdAqp
	xp+Fvtrj/JslW+t7Hk93OYO3lt1EPJ5l2qHcpGcV8cXPDGB+s3SJ2QeolvKUREAUOML8mNjm6QCit
	dfn7bBC3k/zGFsQbCOT+4Vy1rObJYzlUIEksKntbzMCgO6gt8m7SlZiKk0/LXeTBszRusunHD1cRY
	D3D9vQGSVlk2Vcm1m52g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igoAw-0004zE-54; Mon, 16 Dec 2019 11:04:30 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igoAS-0004oT-Jb; Mon, 16 Dec 2019 11:04:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T5jUwhG5VPmfwvGWXVkOBlrlF0PHl4vRCrBbuHZot1M=; b=XKw+sRGVYjEDBdN5nwlV26J+02
 CL4nTT9lm/HVg/dUmbYd6SxucA7C5skV/vAczck52JW9HDevLUy5SWrT0eulsDL+j8Ob6UrdhnYSc
 XOuVR6mbUj9cWrk9mBF1OzPcNFfreU4BODNHUFuptfD6AtNYBVO3SpTD6JIpE0Fe9DKCdwattr4k2
 mZ/1v0G4WCEJ43clMqVPpaLg0/TDO49Wldcefi7Ez6T6K/FSedwc405lNE8xgJCFg/GN54Q37l5Zy
 WDDQd94u8w6X5vCA5SLVOMyuivYcSLyrOD5kkayn5q466MxkJbaMQUrkXdIl4mkF3mCg1JLsGoHFw
 0oV92IXA==;
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igoAP-0004dS-FS; Mon, 16 Dec 2019 11:03:58 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id DB96C24001C;
 Mon, 16 Dec 2019 11:03:13 +0000 (UTC)
Date: Mon, 16 Dec 2019 12:03:12 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 09/12] drm/rockchip: lvds: Add PX30 support
Message-ID: <20191216120312.4aa478da@xps13>
In-Reply-To: <20191216105827.rxkfbwemkqw446jx@gilmour.lan>
References: <20191213181051.25983-1-miquel.raynal@bootlin.com>
 <20191213181051.25983-10-miquel.raynal@bootlin.com>
 <20191216105827.rxkfbwemkqw446jx@gilmour.lan>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKTWF4aW1lIFJpcGFyZCA8bWF4aW1lQGNlcm5vLnRlY2g+IHdyb3RlIG9uIE1v
biwgMTYgRGVjIDIwMTkgMTE6NTg6MjcKKzAxMDA6Cgo+IEhpLAo+IAo+IE9uIEZyaSwgRGVjIDEz
LCAyMDE5IGF0IDA3OjEwOjQ4UE0gKzAxMDAsIE1pcXVlbCBSYXluYWwgd3JvdGU6Cj4gPiArc3Rh
dGljIGludCBweDMwX2x2ZHNfZ3JmX2NvbmZpZyhzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIs
Cj4gPiArCQkJCXN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlKQo+ID4gK3sKPiA+ICsJc3Ry
dWN0IHJvY2tjaGlwX2x2ZHMgKmx2ZHMgPSBlbmNvZGVyX3RvX2x2ZHMoZW5jb2Rlcik7Cj4gPiAr
CXU4IG5oc3luYyA9ICEobW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX1BIU1lOQyk7Cj4gPiAr
CXU4IG52c3luYyA9ICEobW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX1BWU1lOQyk7Cj4gPiAr
CXU4IG5kY2xrID0gIShtb2RlLT5mbGFncyAmIERSTV9NT0RFX0ZMQUdfUENTWU5DKTsKPiA+ICsJ
aW50IHJldDsKPiA+ICsKPiA+ICsJaWYgKGx2ZHMtPm91dHB1dCAhPSBESVNQTEFZX09VVFBVVF9M
VkRTKSB7Cj4gPiArCQlEUk1fREVWX0VSUk9SKGx2ZHMtPmRldiwgIlVuc3VwcG9ydGVkIGRpc3Bs
YXkgb3V0cHV0ICVkXG4iLAo+ID4gKwkJCSAgICAgIGx2ZHMtPm91dHB1dCk7Cj4gPiArCQlyZXR1
cm4gLUVJTlZBTDsKPiA+ICsJfQo+ID4gKwo+ID4gKwlpZiAobmhzeW5jIF4gbnZzeW5jKSB7Cj4g
PiArCQlEUk1fREVWX0VSUk9SKGx2ZHMtPmRldiwgIlVuc3VwcG9ydGVkIEhzeW5jL1ZzeW5jIHBv
bGFyaXR5XG4iKTsKPiA+ICsJCXJldHVybiAtRUlOVkFMOwo+ID4gKwl9Cj4gPiArCj4gPiArCS8q
IFNldCBmb3JtYXQgKi8KPiA+ICsJcmV0ID0gcmVnbWFwX3VwZGF0ZV9iaXRzKGx2ZHMtPmdyZiwg
UFgzMF9MVkRTX0dSRl9QRF9WT19DT04xLAo+ID4gKwkJCQkgUFgzMF9MVkRTX0ZPUk1BVChsdmRz
LT5mb3JtYXQpLAo+ID4gKwkJCQkgUFgzMF9MVkRTX0ZPUk1BVChsdmRzLT5mb3JtYXQpKTsKPiA+
ICsJaWYgKHJldCkKPiA+ICsJCXJldHVybiByZXQ7Cj4gPiArCj4gPiArCS8qIENvbnRyb2wgSHN5
bmMvVnN5bmMgcG9sYXJpdHkgKi8KPiA+ICsJcmV0ID0gcmVnbWFwX3VwZGF0ZV9iaXRzKGx2ZHMt
PmdyZiwgUFgzMF9MVkRTX0dSRl9QRF9WT19DT04wLAo+ID4gKwkJCQkgUFgzMF9MVkRTX1RJRV9D
TEtTKDEpLAo+ID4gKwkJCQkgUFgzMF9MVkRTX1RJRV9DTEtTKDEpKTsKPiA+ICsJaWYgKHJldCkK
PiA+ICsJCXJldHVybiByZXQ7Cj4gPiArCj4gPiArCS8qIFNldCBIc3luYy9Wc3luYyBwb2xhcml0
eSAqLwo+ID4gKwlyZXQgPSByZWdtYXBfdXBkYXRlX2JpdHMobHZkcy0+Z3JmLCBQWDMwX0xWRFNf
R1JGX1BEX1ZPX0NPTjAsCj4gPiArCQkJCSBQWDMwX0xWRFNfSU5WRVJUX0NMS1MoMSksCj4gPiAr
CQkJCSBQWDMwX0xWRFNfSU5WRVJUX0NMS1MobmhzeW5jKSk7Cj4gPiArCWlmIChyZXQpCj4gPiAr
CQlyZXR1cm4gcmV0OyAgCj4gCj4gSSBkb24ndCBrbm93IHRoZSBoYXJkd2FyZSBidXQgaXQgc2Vl
bXMgcHJldHR5IHdlaXJkIHRvIG1lLiBoc3luYyBhbmQKPiB2c3luYyBpbiBMVkRTIGFyZSBub3Qg
Y2xvY2tzIChvciBldmVuIHNpZ25hbHMpLCB0aGV5J3JlIGEgYml0IGluIHRoZQo+IHBheWxvYWQu
IElzIHRoZXJlIGFueSBleHBsYW5hdGlvbiBpbiB0aGUgZGF0YXNoZWV0IChvciBldmVuIGEKPiBk
YXRhc2hlZXQgaW4gdGhlIGZpcnN0IHBsYWNlKT8KClRoZXJlIGlzIG5vIGV4cGxhbmF0aW9uIGFi
b3V0IHRoaXMgaW4gdGhlIFBYMzAgVFJNIHBhcnQgMSAocHVibGljKS4gQnV0CnlvdSBhcmUgcmln
aHQgdGhlIG5hbWluZyBpcyB3ZWlyZC4gQ291bGQgdGhlICJ0aWUgY2xvY2tzIiB0aGluZyBhYm92
ZQptZWFuIHNvbWV0aGluZyB0byB5b3UvcGVvcGxlIGtub3dpbmcgdGhlIExWRFMgd29ybGQ/CgpD
aGVlcnMsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
