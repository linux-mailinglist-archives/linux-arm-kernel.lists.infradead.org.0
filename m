Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 148153CE57
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 16:17:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mRjKkehh/kZzcmRySstFz0qM1SlN8JZRimA6Fmu6mwg=; b=amSDcu7w5BaJ7xhgs57pJ1ZsG
	XRUG3efTAGaxf5ERbJjdO0glkzKzt95p2ige9/Eo/bq/zpyNRA3O7W+bZ8O5U6R3SEJLPy9MmlVkf
	WsbmifVWpr52uFzqLiZQ7EljH6KJY1BVHZsxDuUpDHErI9tZS3wga/x0McqfpJj2i22VDFIJJiLbu
	bHFAlq+t+dyzxY3iZurOJsmbRS/fa13V2FI4oewMJksN1auvZwmxCvTXgcLZv1lwY0fTszTI4aOJm
	FecnWEI4CXlIVovfWGTMERsAa7wHT3ZihbhKlfSGtG8p79cxgce9z6WkAA/EkwUQLUpYXT+3LwEDL
	cKxiD/+bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hahac-0000gv-Ng; Tue, 11 Jun 2019 14:17:30 +0000
Received: from office2.cesnet.cz ([195.113.144.244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hahZ3-0007vq-AP
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 14:15:56 +0000
Received: from localhost (ip-78-45-211-99.net.upcbroadband.cz [78.45.211.99])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by office2.cesnet.cz (Postfix) with ESMTPSA id AFDDA400064;
 Tue, 11 Jun 2019 16:15:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cesnet.cz;
 s=office2; t=1560262544;
 bh=om1dinshOnBEo0tJfqRT3Y4BTDuvtCTwxcYWoELCSVI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=kK210l1i7Zi9T54rko+ViM3kMb7DGps/MrTp5l1TGiOCrAfNyths86xoyfMNEv6Lc
 4C5ZvoJXqXSLp5M6xn/2DiXJzKeruuymFWEBvheSVjn53z7IyIzvYUWPuvbk5MHtQ3
 rD1u0iERO8KlF8emGw5MQWXk/vlgeXpzkJzbFDpM=
From: =?iso-8859-1?Q?Jan_Kundr=E1t?= <jan.kundrat@cesnet.cz>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH] ARM:
 =?iso-8859-1?Q?mvebu=5Fv7=5Fdefconfig:_fix_Ethernet_on_Clearfog?=
Date: Tue, 11 Jun 2019 16:15:40 +0200
MIME-Version: 1.0
Message-ID: <4e5d4880-32ef-4f46-b970-dccd100d1a7b@cesnet.cz>
In-Reply-To: <87wohspdi7.fsf@FE-laptop>
References: <8f2f4c517f1664f362badc2a0f9af8e3531cba87.1558105715.git.jan.kundrat@cesnet.cz>
 <87pnogzxmy.fsf@FE-laptop> <871fc85b-5f0a-40a4-ade2-0701796bcd9a@cesnet.cz>
 <87mujkzwkr.fsf@FE-laptop> <0609d750-de5e-49cb-97b5-43772c5bbe0d@cesnet.cz>
 <0f5e7886-f722-44ac-b64f-1f372a52938d@cesnet.cz> <87wohspdi7.fsf@FE-laptop>
Organization: CESNET
User-Agent: Trojita/v0.7-402-g68ee77c9; Qt/5.13.0; xcb; Linux;
 Gentoo Base System release 2.4.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_071553_692398_B7A0A501 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.144.244 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Baruch Siach <baruch@tkos.co.il>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gw7p0ZXLDvSAxMS4gxI1lcnZuYSAyMDE5IDEzOjI4OjMyIENFU1QsIEdyZWdvcnkgQ0xFTUVO
VCB3cm90ZToKPiBKYW4gS3VuZHLDoXQgPGphbi5rdW5kcmF0QGNlc25ldC5jej4gd3JpdGVzOgo+
Cj4+IE9uIHNvYm90YSAxOC4ga3bEm3RuYSAyMDE5IDA6NTA6MjggQ0VTVCwgSmFuIEt1bmRyw6F0
IHdyb3RlOiAuLi4KPgo+IEZpbmFsbHkgSSBtb3ZlZCB0aGUgY29tbWl0IGZyb20gbXZlYnUvYXJt
IHRvIG12ZWJ1L2ZpeGVzLiBJIHN0aWxsIHRoaW5rCj4gdGhlIHByb2JsZW0gaXMgYXQgZHJpdmVy
IGxldmVsLCBidXQgSSBkaWRuJ3QgdGFrZSBlbm91Z2ggdGltZSB0byBmaW5kCj4gd2hlcmUgYW5k
IHdlIGRpZG4ndCBoYXZlIGFueSBmZWVkYmFjayBmcm9tIHRoZSBhdXRob3Igb2YgdGhlIGluaXRp
bGEKPiBwYXRjaC4KPgo+IFNvIGxldCdzIHRyeSB0byBwdXNoIGl0IHRvIGZpeGVzLCBJIHdpbGwg
ZG8gdGhlIHB1bGwgcmVxdWVzdCBmb3IgYXJtLXNvYwo+IGJlZm9yZSBlbmQgb2YgdGhlIHdlZWsu
CgpUaGFua3MhCgpKYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
