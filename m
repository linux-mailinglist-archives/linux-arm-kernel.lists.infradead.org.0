Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D099264E6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 15:41:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l5XX2y98le+s2yLpsoX8EYHLsb05V7FOGaPsCjLBR4M=; b=kzvHOHhOFDA87k
	zuItkBOGljduPbav0sVA30ZC8s3dPTTiILdk2eDIg67HVtJRYEgE4q5IKcEhcao3L+ee1gXTYAaEY
	XprMjFID/37srRtKE5JiQGvF7nBAQ8rnyHzOHKqsWn9fOA3qFGBp63J64Wv8DxWpNuK/lyKf2/NwL
	43D0dVhQpjYngN/0yoXZCuyciCH+HpzTeFN7RnF8EG96aQqntiDZZTH7VCRh9dcDM+MDDg4PHhHMr
	6elkj31Qf8VNzGApigx22Zja0gbyxNQlSwuJXwaJZHxDDSGdHzIB2DHnjsULOjcJpIbwSO9B0X57g
	H+cvbLWuLGF7FeoZ/YbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTRUP-00053Q-6B; Wed, 22 May 2019 13:41:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTRUH-00052L-DH
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 13:40:59 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>)
 id 1hTRUB-0002PK-69; Wed, 22 May 2019 15:40:51 +0200
Message-ID: <1558532450.2624.44.camel@pengutronix.de>
Subject: Re: [RFC PATCH] soc: imx: Try harder to get imq8mq SoC revisions
From: Lucas Stach <l.stach@pengutronix.de>
To: Leonard Crestez <leonard.crestez@nxp.com>, Guido =?ISO-8859-1?Q?G=FCnther?=
 <agx@sigxcpu.org>, Abel Vesa <abel.vesa@nxp.com>
Date: Wed, 22 May 2019 15:40:50 +0200
In-Reply-To: <AM0PR04MB6434B72679CD26C22FFB420BEE000@AM0PR04MB6434.eurprd04.prod.outlook.com>
References: <20190522131304.GA5692@bogon.m.sigxcpu.org>
 <AM0PR04MB6434B72679CD26C22FFB420BEE000@AM0PR04MB6434.eurprd04.prod.outlook.com>
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_064057_607634_611B7718 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gTWl0dHdvY2gsIGRlbiAyMi4wNS4yMDE5LCAxMzozMCArMDAwMCBzY2hyaWViIExlb25hcmQg
Q3Jlc3RlejoKPiBPbiAyMi4wNS4yMDE5IDE2OjEzLCBHdWlkbyBHw7xudGhlciB3cm90ZToKPiA+
IFN1YmplY3Q6IFJlOiBbUkZDIFBBVENIXSBzb2M6IGlteDogVHJ5IGhhcmRlciB0byBnZXQgaW1x
OG1xIFNvQyByZXZpc2lvbnMKPiAKPiBGaXhlZCBzdWJqZWN0Cj4gCj4gPiBPbiBXZWQsIE1heSAw
OCwgMjAxOSBhdCAwMjo0MDoxOFBNICswMjAwLCBHdWlkbyBHw7xudGhlciB3cm90ZToKPiA+ID4g
VGhhbmtzIGZvciB5b3VyIGNvbW1lbnRzLiBMZXQncyB0cnkgcy50aC4gZGlmZmVyZW50IHRoZW46
IGlkZW50aWZ5IGJ5Cj4gPiA+IGJvb3Ryb20sIG9jb3RvcCBhbmQgYW5hdG9wIGFuZCBmYWxsIGJh
Y2sgdG8gQVRGIGFmdGVyd2FyZHMgKEknbGwgc3BsaXQKPiA+ID4gb3V0IHRoZSBEVCBwYXJ0IGFu
ZCBhZGQgYmluZGluZyBkb2NzIGlmIHRoaXMgbWFrZXMgc2Vuc2UpLiBJJ20gYWxzbwo+ID4gPiBo
YXBweSB0byBkcm9wIHRoZSB3aG9sZSBBVEYgbG9naWMgdW50aWwgbWFpbGluZSBBVEYgY2F0Y2hl
ZCB1cDoKPiA+ID4gCj4gPiA+IFRoZSBtYWlubGluZSBBVEYgZG9lc24ndCBjdXJyZW50bHkgc3Vw
cG9ydCB0aGUgRlNMX1NJUF9HRVRfU09DX0lORk8gY2FsbAo+ID4gPiBub3IgZG9lcyBpdCBoYXZl
IHRoZSBjb2RlIHRvIGlkZW50aWZ5IGRpZmZlcmVudCBpbXg4bXEgU09DIHJldmlzaW9ucyBzbwo+
ID4gPiBtaW1pYyB3aGF0IE5YUHMgQVRGIGRvZXMgaGVyZS4KPiA+IAo+ID4gRG9lcyB0aGlzIG1h
a2VzIHNlbnNlPyBJZiBzbyBJJ2xsIHNlbmQgdGhpcyBvdXQgYXMgYSBzZXJpZXMuCj4gCj4gTWFp
bmxpbmUgQVRGIGhhcyByZWNlbnRseSBjYXVnaHQgdXA6Cj4gCj4gaHR0cHM6Ly9naXQudHJ1c3Rl
ZGZpcm13YXJlLm9yZy9URi1BL3RydXN0ZWQtZmlybXdhcmUtYS5naXQvdHJlZS9wbGF0L2lteC9p
bXg4bS9pbXg4bXEvaW14OG1xX2JsMzFfc2V0dXAuYyNuNTIKPiAKPiA+ID4gQXMgYSBmYWxsYmFj
ayB1c2UgQVRGIHNvIHdlIGNhbiBpZGVudGlmeSBuZXcgcmV2aXNpb25zIG9uY2UgaXQgZ2FpbnMK
PiA+ID4gc3VwcG9ydCBvciB3aGVuIHVzaW5nIE5YUHMgQVRGLgo+ID4gCj4gPiBJJ20gYWxzbyBm
aW5lIHdpdGggZHJvcHBpbmcgdGhlIEFURiBwYXJ0IGlmIHdlIGRvbid0IHdhbnQgdG8gZGVwZW5k
IG9uCj4gPiBpdCBpbiBtYWlubGluZS4KPiAKPiBMaW51eCBhcm02NCBkZXBlbmRzIG9uIEFURiB0
byBpbXBsZW1lbnQgcG93ZXIgbWFuYWdlbWVudCB2aWEgUFNDSTrCoAo+IGhvdHBsdWcgY3B1aWRs
ZSBhbmQgc3VzcGVuZC4KPiAKPiBJdCBpcyBub3QgY2xlYXIgd2h5IExpbnV4IHdvdWxkIGF2b2lk
IG90aGVyIHNlcnZpY2VzIGFuZCBpbnNpc3Qgb27CoAo+IHJlaW1wbGVtZW50aW5nIGhhcmR3YXJl
IHdvcmthcm91bmRzLgoKSSBmdWxseSBhZ3JlZS4gV2Ugc2hvdWxkIG5vdCBkdXBsaWNhdGUgZnVu
Y3Rpb25hbGl0eSBiZXR3ZWVuIEFURiBhbmQKTGludXgga2VybmVsLiBJZiB0aGUgbWFpbmxpbmUg
QVRGIHByb3ZpZGVzIHRoZSBmYWNpbGl0aWVzIHRvIGRvIHRoZSBTb0MKaWRlbnRpZmljYXRpb24g
dGhlIGtlcm5lbCBzaG91bGQgdXNlIHRoZW0gYXMgdGhlIHNvbGUgc291cmNlIHRvIGdldAp0aGlz
IGluZm9ybWF0aW9uLgoKUmVnYXJkcywKTHVjYXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
