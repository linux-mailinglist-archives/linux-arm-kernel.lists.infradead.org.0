Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CBCBBA0F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 18:59:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tmkl+/XRcknVqf9SW7pNYYApL6I9k6zMZp2j4Z1eUKY=; b=G89uvjUBtkL9Vy
	Ua0C9C8iENAVpLvqlHiM4A4CvvImqBFF5qhX8vwkILEd5guF9eLTnsHUinH5XvXwQGHMuUaAQJU6F
	FHxANYYjCmc6ucDfhHSiYS6frT8GPKH800VmdCXVSWtpJ8wyyVKhxYK3UKpeyckIuGtG0l17X9OZ5
	D7FSKqwV6wZ5jyV+7as87YEq1aPtBdDHO2ltXtzat1jDXh+qSgLg8LqSvaNAb5rQyI1zzvKFlusXL
	r5zVlDrsvJPgEneOe9XgBVM5qJA7gnfNiUqAj4FgZeE2FamDxKR5i9lBOro4WcZuwGhvja+1cswQ5
	qhyGAoSO2gevkl/El7kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCRfw-0003kj-9v; Mon, 23 Sep 2019 16:59:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCRfk-0003kH-J8
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 16:58:50 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3108A20882;
 Mon, 23 Sep 2019 16:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569257928;
 bh=6gBQ7evWxUnQAjE4LnejUIeFNjWc40aXwInkVoD3GN8=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=mz45B+ZlhYZ8MLwOENGu02lQPt3tWca5h/8MSI2M2QIm9qT1lNCGeRfDMmXEyi832
 /2ylmJYkuMIp4QJhyumZmyl9E1NW2Io2Lhc7uCJ5H4W9rveRMggU124f7kQn7CmyKw
 kKlW/lyxj2cPFIQTLDYrnMcIQFqusTQC+7XLkLKA=
MIME-Version: 1.0
In-Reply-To: <20190920153906.20887-1-alexandre.belloni@bootlin.com>
References: <20190920153906.20887-1-alexandre.belloni@bootlin.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: at91: avoid sleeping early
User-Agent: alot/0.8.1
Date: Mon, 23 Sep 2019 09:58:47 -0700
Message-Id: <20190923165848.3108A20882@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_095848_654078_737550AE 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org, Uwe Kleine-König <u.kleine-koenig@pengutronix.de>, Claudiu Beznea <claudiu.beznea@microchip.com>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UXVvdGluZyBBbGV4YW5kcmUgQmVsbG9uaSAoMjAxOS0wOS0yMCAwODozOTowNikKPiBJdCBpcyBu
b3QgYWxsb3dlZCB0byBzbGVlcCB0byBlYXJseSBpbiB0aGUgYm9vdCBwcm9jZXNzIGFuZCB0aGlz
IG1heSBsZWFkCj4gdG8ga2VybmVsIGlzc3VlcyBpZiB0aGUgYm9vdGxvYWRlciBkaWRuJ3QgcHJl
cGFyZSB0aGUgc2xvdyBjbG9jayBhbmQgbWFpbgo+IGNsb2NrLgo+IAo+IFRoaXMgcmVzdWx0cyBp
biB0aGUgZm9sbG93aW5nIGVycm9yIGFuZCBkdW1wIHN0YWNrIG9uIHRoZSBBcmlldHRhRzI1Ogo+
ICAgIGJhZDogc2NoZWR1bGluZyBmcm9tIHRoZSBpZGxlIHRocmVhZCEKPiAKPiBFbnN1cmUgaXQg
aXMgcG9zc2libGUgdG8gc2xlZXAsIGVsc2Ugc2ltcGx5IGhhdmUgYSBkZWxheS4KPiAKPiBSZXBv
cnRlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5k
ZT4KPiBTaWduZWQtb2ZmLWJ5OiBBbGV4YW5kcmUgQmVsbG9uaSA8YWxleGFuZHJlLmJlbGxvbmlA
Ym9vdGxpbi5jb20+Cj4gLS0tCj4gCj4gTm90ZSB0aGF0IHRoaXMgd2FzIGFscmVhZHkgZGlzY3Vz
c2VkIGEgd2hpbGUgYWdvIGFuZCBBcm5kIHNhaWQgdGhpcyBhcHByb2FjaCB3YXMKPiByZWFzb25h
YmxlOgo+ICAgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC82MTIwODE4Lk15ZUpaNzRoWWFA
d3VlcmZlbC8KCkRvZXMgdGhpcyBuZWVkIGEgRml4ZXM6IHRhZz8KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
