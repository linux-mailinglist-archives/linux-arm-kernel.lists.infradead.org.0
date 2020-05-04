Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D62F1C47A4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 22:04:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rWC/t+SFTF/9H2r6dEJbsmnBNDviUbvSqSStAbOGfgc=; b=TeP/QF5BJioJ/L
	RBS4+bn1yGe2kWrWVe34oR+oKDbn2mcY8UCuBxnoP6hvtzgccHRtDG4xZHqKPZmyutcWes3S/LQGs
	h8HMc59UNNDObVviYqW8VvNTEMteyv44mZnyWvo/1ST4WWNLaEJiuZQDyBE99P+LRj8TIiHt3qfrq
	Q0cY+B+h8GihHcGGqFw0vI6IvSjMMcI2K2yMkrjGMUNxQ11xSnqdbut+Wdu7y92H5geNo5xzZ5RRS
	tku02wplhbUcUB9qD8jiVMBxonQsbeYWWHSDKu1gTlxxpj5sS7zUW0WdZMHvD9SCx6Grdp6WTMO7j
	x6GImnKJGTZ6TUOg7IpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVhKY-0004kr-Kl; Mon, 04 May 2020 20:04:46 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVhKP-0004jR-CM
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 20:04:38 +0000
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id BEBEA200003;
 Mon,  4 May 2020 20:04:31 +0000 (UTC)
Date: Mon, 4 May 2020 22:04:31 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: =?utf-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>
Subject: Re: [PATCH v4 3/3] clk: at91: allow setting all PMC clock parents
 via DT
Message-ID: <20200504200431.GI34497@piout.net>
References: <cover.1588526049.git.mirq-linux@rere.qmqm.pl>
 <ae0c612ce6bc53ea726ddcb25eb36bca78055e33.1588526049.git.mirq-linux@rere.qmqm.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae0c612ce6bc53ea726ddcb25eb36bca78055e33.1588526049.git.mirq-linux@rere.qmqm.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_130437_558037_1EEAB8F3 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [217.70.178.232 listed in bl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAwMy8wNS8yMDIwIDE5OjE5OjI2KzAyMDAsIE1pY2hhxYIgTWlyb3PFgmF3IHdyb3Rl
Ogo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2F0OTEuaCBiL2luY2x1
ZGUvZHQtYmluZGluZ3MvY2xvY2svYXQ5MS5oCj4gaW5kZXggYzNmNGFhNmEyZDI5Li5hZGNmNjA4
YjQxZmEgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9hdDkxLmgKPiAr
KysgYi9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2F0OTEuaAo+IEBAIC0yMSw2ICsyMSw5IEBA
Cj4gICNkZWZpbmUgUE1DX01DSzIJCTQKPiAgI2RlZmluZSBQTUNfSTJTMF9NVVgJCTUKPiAgI2Rl
ZmluZSBQTUNfSTJTMV9NVVgJCTYKPiArI2RlZmluZSBQTUNfUExMQUNLCQk3Cj4gKyNkZWZpbmUg
UE1DX1BMTEJDSwkJOAo+ICsjZGVmaW5lIFBNQ19BVURJT1BMTENLCQk4CQkvKiBTQU1BNUQyLW9u
bHksIG5vIFBMTEIgdGhlcmUgKi8KCkp1c3QgdXNlIDkgaGVyZSBiZWNhdXNlIHdlIGNhbid0IGtu
b3cgZm9yIHN1cmUgdGhhdCBhIGZ1dHVyZSBTb0Mgd29uJ3QKaGF2ZSBib3RoIGEgUExMQiBhbmQg
YXVkaW8gUExMLgoKPiAgCj4gICNpZm5kZWYgQVQ5MV9QTUNfTU9TQ1MKPiAgI2RlZmluZSBBVDkx
X1BNQ19NT1NDUwkJMAkJLyogTU9TQ1MgRmxhZyAqLwo+IC0tIAo+IDIuMjAuMQo+IAoKLS0gCkFs
ZXhhbmRyZSBCZWxsb25pLCBCb290bGluCkVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5l
ZXJpbmcKaHR0cHM6Ly9ib290bGluLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
