Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A6D19F8BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 17:21:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:MIME-Version:Subject:
	References:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xXxXEGCo9xZ9uOIgajyuwrBwH4uvb8Koqim4blQerGM=; b=Ry6j7gn0HUtFK3
	5ykKT0cm3PExEf5S0rKyADzxW0N1Abu8ePPnDE5nRS6r5/NuzQY8bedhTwzbiE96s1piXNyfCTUgB
	hJmEnBBIefxKjSf/0JxgQeo3Qtmi8OOceMq/PwZfn10nhtf/+ZJqOUkWEtzLKSHz9lb7IOT25l/RG
	RyuPEgrPgJzXoE3xQy/nKv+HJnLceLvmF/00PMTVsMJL7xHnReyGHtJ0LFE5onaVi72SoEvtj8jAm
	y7hZzb60ZKUFcBBEbvIah569mS7E8vVAv0HjgfHAF84t2DZkw4NRDubNT/YI8caC/GedQ7x8rA/2e
	Lo5s2AaQ/D0NdN1eMtzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLTZ6-0000pG-Sl; Mon, 06 Apr 2020 15:21:32 +0000
Received: from forward501j.mail.yandex.net ([2a02:6b8:0:801:2::111])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLTYz-0000n8-Pd; Mon, 06 Apr 2020 15:21:28 +0000
Received: from mxback6j.mail.yandex.net (mxback6j.mail.yandex.net
 [IPv6:2a02:6b8:0:1619::10f])
 by forward501j.mail.yandex.net (Yandex) with ESMTP id DE2783380468;
 Mon,  6 Apr 2020 18:21:20 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback6j.mail.yandex.net (mxback/Yandex) with ESMTP id OzbyaIb4Ls-LIAivFVM; 
 Mon, 06 Apr 2020 18:21:20 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1586186480; bh=hFG2UijyKPqo20hUOizY7T4Nc94PdinHDzgqa+EFXZ0=;
 h=Message-Id:Cc:Subject:In-Reply-To:Date:References:To:From;
 b=sZxBLYbnkxaNFTnlpz5cDxZd+UT2tvNmQm4AwYNzXD2dm+Vv+SnYT9CfUjVevWPQ0
 2TrWht3aFGnbDVNjGq+RIEsXRUl1PjxohIPS65jGI7Llcmnfu7Lpo2UsFkxIu64mUa
 j4z5TQKneCLEZdGPpXKKQe2rGcpvi/vYPA8kW69Q=
Authentication-Results: mxback6j.mail.yandex.net; dkim=pass header.i=@yandex.ru
Received: by myt5-5e0e3f348369.qloud-c.yandex.net with HTTP;
 Mon, 06 Apr 2020 18:21:18 +0300
From: Alexander Lobakin <bloodyreaper@yandex.ru>
Envelope-From: bloodyreaper@yandex.ru
To: Andrew Lunn <andrew@lunn.ch>
In-Reply-To: <20200406144758.GC301483@lunn.ch>
References: <20200406105910.32339-1-79537434260@yandex.com>
 <20200406144758.GC301483@lunn.ch>
Subject: Re: [PATCH net-next] net: dsa: add GRO support via gro_cells
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Mon, 06 Apr 2020 18:21:18 +0300
Message-Id: <20241586185765@iva8-5e86d95f65ab.qloud-c.yandex.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_082126_328548_39B63ACC 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a02:6b8:0:801:2:0:0:111 listed in] [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bloodyreaper[at]yandex.ru]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Woojung Huh <woojung.huh@microchip.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Hauke Mehrtens <hauke@hauke-m.de>, Linus Walleij <linus.walleij@linaro.org>,
 Sean Wang <sean.wang@mediatek.com>, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Microchip Linux Driver Support <unglinuxdriver@microchip.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Oleksij Rempel <linux@rempel-privat.de>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Mao Wenan <maowenan@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDYuMDQuMjAyMCwgMTc6NDgsICJBbmRyZXcgTHVubiIgPGFuZHJld0BsdW5uLmNoPjoKPiBPbiBN
b24sIEFwciAwNiwgMjAyMCBhdCAwMTo1OToxMFBNICswMzAwLCBBbGV4YW5kZXIgTG9iYWtpbiB3
cm90ZToKPj4gwqBncm9fY2VsbHMgbGliIGlzIHVzZWQgYnkgZGlmZmVyZW50IGVuY2Fwc3VsYXRp
bmcgbmV0ZGV2aWNlcywgc3VjaCBhcwo+PiDCoGdlbmV2ZSwgbWFjc2VjLCB2eGxhbiBldGMuIHRv
IHNwZWVkIHVwIGRlY2Fwc3VsYXRlZCB0cmFmZmljIHByb2Nlc3NpbmcuCj4+IMKgQ1BVIHRhZyBp
cyBhIHNvcnQgb2YgImVuY2Fwc3VsYXRpb24iLCBhbmQgd2UgY2FuIHVzZSB0aGUgc2FtZSBtZWNo
cyB0bwo+PiDCoGdyZWF0bHkgaW1wcm92ZSBvdmVyYWxsIERTQSBwZXJmb3JtYW5jZS4KPj4gwqBz
a2JzIGFyZSBwYXNzZWQgdG8gdGhlIEdSTyBsYXllciBhZnRlciByZW1vdmluZyBDUFUgdGFncywg
c28gd2UgZG9uJ3QKPj4gwqBuZWVkIGFueSBuZXcgcGFja2V0IG9mZmxvYWQgdHlwZXMgYXMgaXQg
d2FzIGZpcnN0bHkgcHJvcG9zZWQgYnkgbWUgaW4KPj4gwqB0aGUgZmlyc3QgR1JPLW92ZXItRFNB
IHZhcmlhbnQgWzFdLgo+Pgo+PiDCoFRoZSBzaXplIG9mIHN0cnVjdCBncm9fY2VsbHMgaXMgc2l6
ZW9mKHZvaWQgKiksIHNvIGhvdCBzdHJ1Y3QKPj4gwqBkc2Ffc2xhdmVfcHJpdiBiZWNvbWVzIG9u
bHkgNC84IGJ5dGVzIGJpZ2dlciwgYW5kIGFsbCBjcml0aWNhbCBmaWVsZHMKPj4gwqByZW1haW4g
aW4gb25lIDMyLWJ5dGUgY2FjaGVsaW5lLgo+PiDCoFRoZSBvdGhlciBwb3NpdGl2ZSBzaWRlIGVm
ZmVjdCBpcyB0aGF0IGRyaXZlcnMgZm9yIG5ldHdvcmsgZGV2aWNlcwo+PiDCoHRoYXQgY2FuIGJl
IHNoaXBwZWQgYXMgQ1BVIHBvcnRzIG9mIERTQS1kcml2ZW4gc3dpdGNoZXMgY2FuIG5vdyB1c2UK
Pj4gwqBuYXBpX2dyb19mcmFncygpIHRvIHBhc3Mgc2ticyB0byBrZXJuZWwuIFBhY2tldHMgYnVp
bHQgdGhhdCB3YXkgYXJlCj4+IMKgY29tcGxldGVseSBub24tbGluZWFyIGFuZCBhcmUgbGlrZWx5
IGJlaW5nIGRyb3BwZWQgd2l0aG91dCBHUk8uCj4+Cj4+IMKgVGhpcyB3YXMgdGVzdGVkIG9uIHRv
LWJlLW1haW5saW5lZC1zb29uIEV0aGVybmV0IGRyaXZlciB0aGF0IHVzZXMKPj4gwqBuYXBpX2dy
b19mcmFncygpLCBhbmQgdGhlIG92ZXJhbGwgcGVyZm9ybWFuY2Ugd2FzIG9uIHBhciB3aXRoIHRo
ZQo+PiDCoHZhcmlhbnQgZnJvbSBbMV0sIHNvbWV0aW1lcyBldmVuIGJldHRlciBkdWUgdG8gbWlu
aW1hbCBvdmVyaGVhZC4KPj4gwqBuZXQuY29yZS5ncm9fbm9ybWFsX2JhdGNoIHR1bmluZyBtYXkg
aGVscCB0byBwdXNoIGl0IHRvIHRoZSBsaW1pdAo+PiDCoG9uIHBhcnRpY3VsYXIgc2V0dXBzIGFu
ZCBwbGF0Zm9ybXMuCj4+Cj4+IMKgWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL25ldGRldi8y
MDE5MTIzMDE0MzAyOC4yNzMxMy0xLWFsb2Jha2luQGRsaW5rLnJ1Lwo+Cj4gSGkgQWxleGFuZGVy
CgpIaSBBbmRyZXchCgo+IG5ldC1uZXh0IGlzIGNsb3NlZCBhdCB0aGUgbW9tZW50LiBTbyB5b3Ug
c2hvdWxkIG9mIHBvc3RlZCB0aGlzIHdpdGggYW4KPiBSRkMgcHJlZml4LgoKSSBzYXcgdGhhdCBp
dCdzIGNsb3NlZCwgYnV0IGRpZG4ndCBrbmV3IGFib3V0ICJSRkMiIHRhZ3MgZm9yIHRoYXQgcGVy
aW9kLApzb3JyeS4KCj4gVGhlIGltcGxlbWVudGF0aW9uIGxvb2tzIG5pY2UgYW5kIHNpbXBsZS4g
QnV0IGl0IHdvdWxkIGJlIG5pY2UgdG8gaGF2ZQo+IHNvbWUgcGVyZm9ybWFuY2UgZmlndXJlcy4K
CkknbGwgZG8sIHN1cmUuIEkgdGhpbmsgSSdsbCBjb2xsZWN0IHRoZSBzdGF0cyB3aXRoIHZhcmlv
dXMgbWFpbiByZWNlaXZpbmcKZnVuY3Rpb25zIGluIEV0aGVybmV0IGRyaXZlciAobmFwaV9ncm9f
ZnJhZ3MoKSwgbmFwaV9ncm9fcmVjZWl2ZSgpLApuZXRpZl9yZWNlaXZlX3NrYigpLCBuZXRpZl9y
ZWNlaXZlX3NrYl9saXN0KCkpLCBhbmQgd2l0aCBhbmQgd2l0aG91dCB0aGlzCnBhdGNoIHRvIG1h
a2UgdGhlbSBhcyBjb21wbGV0ZSBhcyBwb3NzaWJsZS4KCj4gwqDCoMKgwqDCoEFuZHJldwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
