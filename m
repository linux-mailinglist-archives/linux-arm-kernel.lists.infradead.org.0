Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7431F93A7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:38:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wuw8UJdyXzOb6bs5n2e9vn0dhqtOmX6XRmEqwW2WZzY=; b=MbmoknTxLYlf+6
	K8e7NiPpou2T7pXKAQ3WB9OjbwXcxJVBfIt9AH+0nDDJOY75BRQ9KU7KW0NoLAdAVZqxzy9eIN1Uz
	5Cs0fV9M24EzacR+t++w93iANqTWxv/xSezkQ3mU55V5nBNE6Y8wT6DK3Qg7tddTiWn7teMyQMiBK
	BSPCRtBU6LVlXTXSLL3LRfHHoj87yC/ISYUcUV5yvHueusTj8teaBCJ+vgaUqXHy5oE0bXWsHN4PC
	otjoXAwqDQKOHFi9gBcCIhnjn/MXyqSezEBbedzbi9nzVqKy6PMQNyLSYx6Jfgj7S+GW0M8CCtmtB
	4uzH9Iubl+9oP++tTqdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklZT-0002tt-5k; Mon, 15 Jun 2020 09:38:27 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jklZI-0002tF-7y
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:38:17 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id 531BF2A2050
Message-ID: <8ad9a397a5fa6cebd2a4e0170dfa96ad73907faf.camel@collabora.com>
Subject: Re: [PATCH v3 5/5] dt-bindings: display: ti,tfp410.yaml: make the
 ports node optional
From: Ricardo =?ISO-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Date: Mon, 15 Jun 2020 11:38:07 +0200
In-Reply-To: <20200611160817.GA6031@pendragon.ideasonboard.com>
References: <20200611102356.31563-1-ricardo.canuelo@collabora.com>
 <20200611102356.31563-6-ricardo.canuelo@collabora.com>
 <20200611160817.GA6031@pendragon.ideasonboard.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_023816_412746_5CEA95A8 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net, airlied@linux.ie,
 robh+dt@kernel.org, tomi.valkeinen@ti.com, dri-devel@lists.freedesktop.org,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTGF1cmVudCwKClRoYW5rcyBmb3IgcmV2aWV3aW5nIHRoZSBwYXRjaAoKT24gVGh1LCAyMDIw
LTA2LTExIGF0IDE5OjA4ICswMzAwLCBMYXVyZW50IFBpbmNoYXJ0IHdyb3RlOgo+IEhpIFJpY2Fy
ZG8sCj4gCj4gVGhhbmsgeW91IGZvciB0aGUgcGF0Y2guCj4gCj4gT24gVGh1LCBKdW4gMTEsIDIw
MjAgYXQgMTI6MjM6NTZQTSArMDIwMCwgUmljYXJkbyBDYcOxdWVsbyB3cm90ZToKPiA+IE1ha2Ug
dGhlIHBvcnRzIG5vZGUgb3B0aW9uYWwsIHNpbmNlIHRoZXJlIGFyZSBzb21lIERUcyB0aGF0IGRv
bid0IGRlZmluZQo+ID4gYW55IHBvcnRzIGZvciB0aSx0ZnA0MTAuCj4gPiAKPiA+IFNpZ25lZC1v
ZmYtYnk6IFJpY2FyZG8gQ2HDsXVlbG8gPHJpY2FyZG8uY2FudWVsb0Bjb2xsYWJvcmEuY29tPgo+
IAo+IFNob3VsZG4ndCB3ZSBmaXggdGhvc2UgRFRzIGluc3RlYWQgPyBXaGF0J3MgdGhlIHBvaW50
IG9mIGEgVEZQNDEwCj4gd2l0aG91dCBwb3J0cyBpbiBEVCA/CgpUaGlzIGNvbWVzIGZyb20gdGhl
IGRpc2N1c3Npb24gaW4gdGhlIHByZXZpb3VzIHZlcnNpb24gb2YgdGhpcyBzZXJpZXMuCgpJbiB0
aGUgRFRzIHRoYXQgZG9uJ3QgZGVmaW5lIGFueSBwb3J0cyAoaXQncyBkb3ZlLXNiYy1hNTEwLmR0
cyBvbmx5LCBhY3R1YWxseSkKaXQncyBub3QgY2xlYXIgaG93IHRvIGRlZmluZSB0aGUgcG9ydHMg
KEknbSBub3QgZmFtaWxpYXIgd2l0aCB0aGlzIGJvYXJkKS4KSW5pdGlhbGx5IEkgZGVmaW5lZCBh
IHNldCBvZiBlbXB0eSBwb3J0cyBqdXN0IHRvIGNvbXBseSB3aXRoIHRoZSBiaW5kaW5nCnJlcXVp
cmVtZW50cywgYnV0IFJvYiBzdWdnZXN0ZWQgdGhhdCB3ZSBtaWdodCBhcyB3ZWxsIGRlY2xhcmUg
dGhlbSBhcyBvcHRpb25hbCwKc2luY2UgaGF2aW5nIGFuIGVtcHR5IHBvcnQgZGVmaW5pdGlvbiB3
aXRoIG5vIHJlbW90ZSBlbmRwb2ludHMgaXMgbm8gYmV0dGVyIHRoYW4KaGF2aW5nIG5vIHBvcnRz
IGF0IGFsbC4KCkkgdW5kZXJzdGFuZCBib3RoIG9waW5pb25zIGJ1dCBJIGp1c3QgZG9uJ3Qga25v
dyB3aGljaCBpcyB0aGUgYmVzdCBvcHRpb24gYXQKdGhpcyBwb2ludC4KCkNoZWVycywKUmljYXJk
bwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
