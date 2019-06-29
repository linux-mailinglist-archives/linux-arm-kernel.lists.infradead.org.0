Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB015A9DC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 11:31:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9WBmCD0gexTpTi5UxydE0xOC5Ybd8znn9sHKJuK27c=; b=DtwV9MiUtXdhG1
	GvfPKSHPdlM1PXTGN5mgIWmvwMNrOKleUUMV82Y97mtUq/gO56IyHN1D0mqNctg6MyY7JEWDsyV3c
	fe8u3LMO31hBMyR7JOTmNQ8rIngud6Lx7lpYV/jNVzCH5FrxAHgnjMfbe56ixHdbrAjkRhOS/f1l0
	QzoZ2bgRxc0qKEmfy46ZHAZTb3trXAmQTjm/6csEhQp9gdaQvrnaj3QRVNCNbBSxJ0k3XEld91rDB
	bVp4/uzVC1yepY52LsCT5TKrC3ZivT70qwyQSQm6tKHgKBYUQXovfPhXRRHaxh4N98UUmXRyETGy3
	pVNJfdfzliolh5kG1Nkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh9h8-0006tA-Li; Sat, 29 Jun 2019 09:30:54 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh9gc-0006nd-F7; Sat, 29 Jun 2019 09:30:25 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 11326240006;
 Sat, 29 Jun 2019 09:30:03 +0000 (UTC)
Date: Sat, 29 Jun 2019 11:29:56 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: mtd: sunxi-nand: Drop 'maxItems' from
 child 'reg' property
Message-ID: <20190629112956.0349705b@xps13>
In-Reply-To: <20190628193525.7785-1-robh@kernel.org>
References: <20190628193525.7785-1-robh@kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_023022_664302_E89AF144 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Richard Weinberger <richard@nod.at>,
 Marek Vasut <marek.vasut@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-mtd@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLAoKUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4gd3JvdGUgb24gRnJpLCAyOCBK
dW4gMjAxOSAxMzozNToyNSAtMDYwMDoKCj4gTWl4aW5nICdtYXhJdGVtcycgYW5kIHNjYWxhciBw
cm9wZXJ0aWVzIGRvZXNuJ3QgbWFrZSBtdWNoIHNlbnNlLCBzbyBkcm9wCj4gJ21heEl0ZW1zJyBh
cyBhIHNpbmdsZSBpdGVtIGlzIGltcGxpZWQuCj4gCj4gQ2M6IERhdmlkIFdvb2Rob3VzZSA8ZHdt
dzJAaW5mcmFkZWFkLm9yZz4KPiBDYzogQnJpYW4gTm9ycmlzIDxjb21wdXRlcnNmb3JwZWFjZUBn
bWFpbC5jb20+Cj4gQ2M6IE1hcmVrIFZhc3V0IDxtYXJlay52YXN1dEBnbWFpbC5jb20+Cj4gQ2M6
IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+Cj4gQ2M6IFJpY2hhcmQg
V2VpbmJlcmdlciA8cmljaGFyZEBub2QuYXQ+Cj4gQ2M6IFZpZ25lc2ggUmFnaGF2ZW5kcmEgPHZp
Z25lc2hyQHRpLmNvbT4KPiBDYzogTWF4aW1lIFJpcGFyZCA8bWF4aW1lLnJpcGFyZEBib290bGlu
LmNvbT4KPiBDYzogQ2hlbi1ZdSBUc2FpIDx3ZW5zQGNzaWUub3JnPgo+IENjOiBsaW51eC1tdGRA
bGlzdHMuaW5mcmFkZWFkLm9yZwo+IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+IC0t
LQo+IEknbGwgdGFrZSB0aGlzIGluIHRoZSBEVCB0cmVlIGlmIHRoYXQncyBva2F5LgoKTm8gcHJv
YmxlbSEKCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
