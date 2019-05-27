Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A76F2B8A4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 17:57:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hfyuQ7hF8Vlw6W/qKzy/Ia69O1RiiVWNkjlxcqespBI=; b=cfyX/WaEBrPnGsFHuLRmzH2g+
	Tr6HEK66Do7GsJGno7aTVq8SSptLWMsPd0E71IhbMUImVXiCz8K2vVoRsbRi2JPLzJozUFjJdt515
	3Ysf/7s63U7MfAKLroxSxYXBeRtFuAn7eeq/vfNgLNfPyhKGw9c5LPQ4I9/HOUPSTOkn5GOKgfCg9
	sQ8bx+BuKAcAxYOcQOKksZBJMz6AanuRI9Y81evvCHJsw2zoYeU8sKKdehYv3WpPq1HUK7nouJPXW
	/WlPHV7qjHfVkT59DKVil5DjNtNZNjvjI6MC/NGlC4sSKpsp3SACeL9fETr+15Y002c946KhaVThJ
	oW0s28ePQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVI07-0001SN-44; Mon, 27 May 2019 15:57:27 +0000
Received: from office2.cesnet.cz ([2001:718:1:101::144:244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVHzz-0001Rq-QW
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 15:57:21 +0000
Received: from localhost (unknown [IPv6:2001:718:1:2c:b857:3b01:efce:a0f4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by office2.cesnet.cz (Postfix) with ESMTPSA id 77532400065;
 Mon, 27 May 2019 17:57:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cesnet.cz;
 s=office2; t=1558972628;
 bh=2YkKqU+wzF4by5EvmLLJuqxdA8OLR7poYHPC5tMQyI4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=SYek/3cgDLGCP/JswN1Ca5uVK9732R2kEcMHNtgfIDBwv0f3wjunEmTN/JrFSKxbD
 F7f1V23zgwsZ8LZFUi/hs6eojIsly4Q/kX4WEB6mtFM8YLPhXyKZlVsBnbjjIg6bjE
 emCgd+V7FWCr35SX9I0Qw2DQHpsZhu1oYsI8+6/o=
From: =?iso-8859-1?Q?Jan_Kundr=E1t?= <jan.kundrat@cesnet.cz>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH] ARM:
 =?iso-8859-1?Q?mvebu=5Fv7=5Fdefconfig:_fix_Ethernet_on_Clearfog?=
Date: Mon, 27 May 2019 17:57:02 +0200
MIME-Version: 1.0
Message-ID: <0f5e7886-f722-44ac-b64f-1f372a52938d@cesnet.cz>
In-Reply-To: <0609d750-de5e-49cb-97b5-43772c5bbe0d@cesnet.cz>
References: <8f2f4c517f1664f362badc2a0f9af8e3531cba87.1558105715.git.jan.kundrat@cesnet.cz>
 <87pnogzxmy.fsf@FE-laptop> <871fc85b-5f0a-40a4-ade2-0701796bcd9a@cesnet.cz>
 <87mujkzwkr.fsf@FE-laptop> <0609d750-de5e-49cb-97b5-43772c5bbe0d@cesnet.cz>
Organization: CESNET
User-Agent: Trojita/v0.7-402-g68ee77c9; Qt/5.13.0; xcb; Linux;
 Gentoo Base System release 2.4.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_085720_160264_CC422659 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:718:1:101:0:0:144:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Baruch Siach <baruch@tkos.co.il>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gc29ib3RhIDE4LiBrdsSbdG5hIDIwMTkgMDo1MDoyOCBDRVNULCBKYW4gS3VuZHLDoXQgd3Jv
dGU6Cj4+IFdlbGwsIHRoaXMgaXMganVzdCBhYm91dCBjb25maWd1cmF0aW9uLCBJIGRvbid0IGNv
bnNpZGVyIHRoaXMgaXMKPj4gc29tZXRoaW5nIHRoYXQgaXMgYSBjYW5kaWRhdGUgZm9yIGEgZml4
Lgo+PiAKPj4gSWYgdGhlcmUgaXMgYSByZWdyZXNzaW9uLCB0aGVuLCBpdCBpcyBtYXliZSBsb2Nh
dGVkIGluIHRoZSBLY29uZmlnCj4+IGRlcGVuZGVuY3kuCj4+IAo+PiBPZiBjb3Vyc2UgSSBjYW4g
Y2hhbmdlIG15IG1pbmQgd2l0aCBnb29kIGFyZ3VtZW50cyA6KQo+Cj4gSGkgR3JlZ29yeSwKPiBJ
IGFncmVlIHRoYXQgaXQncyBqdXN0IGEgY29uZmlnIGJ1ZywgYnV0IGl0J3MgYWxzbyBzb21ldGhp
bmcgCj4gd2hpY2ggY2FuIHNpbGVudGx5IHByb2R1Y2UgYnJva2VuIHN5c3RlbXMuIElmIHRoaXMg
aXMgbm90IGZpeGVkLCAKPiBwZW9wbGUgYnVpbGRpbmcgdGhlaXIgNS4yIGtlcm5lbHMgd2lsbCBu
b3QgaGF2ZSB3b3JraW5nIG5ldHdvcmsgCj4gb24gQ2xlYXJmb2cgdW5sZXNzIHRoZXkgdGFrZSBh
biBleHRyYSBhY3Rpb24uIEZvciBleGFtcGxlLCBhIAo+IEJ1aWxkcm9vdCBkZWZjb25maWcgdGhh
dCdzIGJlZW4gYXZhaWxhYmxlIGZvciBxdWl0ZSBzb21lIHRpbWUgCj4gKGFuZCB3aGljaCB1c2Vz
IGp1c3QgYG12ZWJ1X3Y3X2RlZmNvbmZpZ2AgZm9yIGtlcm5lbCkgc3VkZGVubHkgCj4gYmVjb21l
cyBicm9rZW4uCj4KPiBJc24ndCB0aGUgd2hvbGUgcG9pbnQgb2YgdGhlIC1yYyByZWxlYXNlIHRv
IGZpbmQgKmFuZCogZml4IGJ1Z3MgCj4gZWFybHk/IFRoaXMgdHJpdmlhbCBwYXRjaCBkb2VzIG5v
dCBpbnRyb2R1Y2UgYW55IG5ldyBvciB1bnRlc3RlZCAKPiBjb2RlLiBJIG1hZGUgYSBjaG9pY2Ug
dG8gdGVzdCBhIHByZS1yZWxlYXNlIGtlcm5lbCwgSSBoaXQgYSBidWcgCj4gLS0gbm8gYmlnIGRl
YWwuIEkgZm91bmQgdGhlIHJvb3QgY2F1c2UsIEkgc2VudCBhIHRyaXZpYWwgZml4IAo+IHVwc3Ry
ZWFtLCBhbmQgbm93IEknbSB0b2xkIGJ5IGEgbWFpbnRhaW5lciB0aGF0IHRoZXkgd2lsbCBsZXQg
Cj4gdGhlIG5leHQga2VybmVsIHZlcnNpb24sIHdoaWNoIGlzIGFib3V0IHNldmVuIC1yYyByZWxl
YXNlcyBhd2F5LCAKPiBiZSByZWxlYXNlZCB3aXRob3V0IGEgZnVsbHkgZnVuY3Rpb25pbmcgbmV0
d29yaywgSSBhbSBzdXJwcmlzZWQgCj4gYnkgdGhhdC4gSSB3b3VsZCBoYXZlIHVuZGVyc3Rvb2Qg
dGhpcyBiZXR0ZXIgaWYgd2Ugd2VyZSBhdCB0aGUgCj4gZmluYWwgLXJjIHN0YWdlLCBidXQgZHVy
aW5nIHRoZSBtZXJnZSB3aW5kb3c/IE9yIGlzIHRoYXQgcGVyaGFwcyAKPiBhIG1pc3VuZGVyc3Rh
bmRpbmcgYW5kIHlvdSdyZSBwbGFubmluZyB0byBzZW5kIHRoaXMgaW4gdGltZSAKPiBhZnRlciAt
cmMxPwoKSGkgR3JlZ29yeSwKd2FzIEkgc3VjY2Vzc2Z1bCBpbiBwZXJzdWFkaW5nIHlvdSB0aGF0
IHRoaXMgcGF0Y2ggc2hvdWxkIGJlIGluY2x1ZGVkIGluIAp0aGUgNS4yIHRyZWUsIHNvIHRoYXQg
Q2xlYXJmb2cgQmFzZSBoYXMgYWxsIHRocmVlIEV0aGVybmV0IGludGVyZmFjZXM/CgpXaXRoIGtp
bmQgcmVnYXJkcywKSmFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
