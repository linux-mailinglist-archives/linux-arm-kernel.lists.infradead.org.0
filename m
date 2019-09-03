Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CECA62C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 09:38:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fkwIiHfFT+79AlABnNhiQI3E0SDhfAgtK3YJ1ozuqHQ=; b=BpkVGolzH3pqs/
	RSsRIs6r7ijdVsdvKyZaib6uGMZi5w+yPff4o+Jx11IHrNBbiuLNzFUulZdE0ozJcGwWlruD2Q0vF
	iT8AJP6oIex7PzGY2O73YcWBdLtcjsdQRLIRqr0vuvLh1kJJ1ggwIF1KISCIq905C/mIVPfDqSKL/
	Z9cRyS7rGgwQbmMyeiHSQLjVboCnwMl+dLIN6ufDQ9zwyI50fHCOGF0cQdUcoTNRtc5XNKIe5lVQs
	1aaze6ZP4ZUge4MPDr7sPSTXU1cgz6UJ7zB2kGPNss+vAtNd/tbmY+ATiOmRPAXF+jp/qHeOGbK1l
	agVUdwTDCufR19bYHl3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i53Oj-0002G2-UT; Tue, 03 Sep 2019 07:38:42 +0000
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i53OV-0002Eh-MU
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 07:38:29 +0000
Received: from player756.ha.ovh.net (unknown [10.108.57.183])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id C6567225DAF
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  3 Sep 2019 09:38:22 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player756.ha.ovh.net (Postfix) with ESMTPSA id 4880088D8887;
 Tue,  3 Sep 2019 07:38:12 +0000 (UTC)
Subject: Re: [PATCH v2 1/2] ARM: dts: opos6ul/opos6uldev: rework device tree
 to support i.MX6ULL
To: Shawn Guo <shawnguo@kernel.org>
References: <20190724120623.2385-1-sebastien.szymanski@armadeus.com>
From: =?UTF-8?Q?S=c3=a9bastien_Szymanski?= <sebastien.szymanski@armadeus.com>
Openpgp: preference=signencrypt
Message-ID: <194bd606-e4bf-d8fd-ece2-cbec1f5e025f@armadeus.com>
Date: Tue, 3 Sep 2019 09:38:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190724120623.2385-1-sebastien.szymanski@armadeus.com>
Content-Language: en-US
X-Ovh-Tracer-Id: 1760344505444685052
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrudejuddguddvudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_003827_884236_AA0669B2 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [87.98.178.58 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpPbiA3LzI0LzE5IDI6MDYgUE0sIFPDqWJhc3RpZW4gU3p5bWFuc2tpIHdyb3RlOgo+
IFJld29yayB0aGUgZGV2aWNlIHRyZWVzIG9mIHRoZSBPUE9TNlVMIGFuZCBPUE9TNlVMRGV2IGJv
YXJkcyB0byBzdXBwb3J0Cj4gdGhlIE9QT1M2VUwgU29NIHdpdGggYW4gaS5NWDZVTEwgU29DLiAg
VGhlIGRldmljZSB0cmVlcyBhcmUgbm93IGFzCj4gZm9sbG93aW5nOgo+IAo+IC0gaW14NnVsLWlt
eDZ1bGwtb3BvczZ1bC5kdHNpCj4gICBjb21tb24gZm9yIGJvdGggaS5NWDZVTCBhbmQgaS5NWDZV
TEwgT1BPUzZVTCBTb00uCj4gLSBpbXg2dWwtb3BvczZ1bC5kdHNpCj4gICBmb3IgaS5NWDZVTCBP
UE9TNlVMIFNvTS4gSXQgaW5jbHVkZXMgaW14NnVsLmR0c2kgYW5kCj4gICBpbXg2dWwtaW14NnVs
bC1vcG9zNnVsLmR0c2kuCj4gLSBpbXg2dWxsLW9wb3M2dWwuZHRzaQo+ICAgZm9yIGkuTVg2VUxM
IE9QT1M2VUwgU29NLiBJdCBpbmNsdWRlcyBpbXg2dWxsLmR0c2kgYW5kCj4gICBpbXg2dWwtaW14
NnVsbC1vcG9zNnVsLmR0c2kuCj4gCj4gLSBpbXg2dWwtaW14NnVsbC1vcG9zNnVsZGV2LmR0c2kK
PiAgIE9QT1M2VUxEZXYgYmFzZSBkZXZpY2UgdHJlZS4KPiAtIGlteDZ1bC1vcG9zNnVsZGV2LmR0
cwo+ICAgT1BPUzZVTERldiBib2FyZCB3aXRoIGFuIGkuTVg2VUwgT1BPUzZVTCBTb00uIEl0IGlu
Y2x1ZGVzCj4gICBpbXg2dWwtb3BvczZ1bC5kdHNpIGFuZCBpbXg2dWwtaW14NnVsbC1vcG9zNnVs
ZGV2ZHRzaS4KPiAtIGlteDZ1bGwtb3BvczZ1bGRldi5kdHMKPiAgIE9QT1M2VUxEZXYgYm9hcmQg
d2l0aCBhbiBpLk1YNlVMTCBPUE9TNlVMIFNvTS4gSXQgaW5jbHVkZXMKPiAgIGlteDZ1bGwtb3Bv
czZ1bC5kdHNpIGFuZCBpbXg2dWwtaW14NnVsbC1vcG9zNnVsZGV2ZHRzaS4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBTw6liYXN0aWVuIFN6eW1hbnNraSA8c2ViYXN0aWVuLnN6eW1hbnNraUBhcm1hZGV1
cy5jb20+Cj4gLS0tCj4gCj4gQ2hhbmdlcyBmb3IgdjI6Cj4gLSBleHBsYWluIHRoZSBmaWxlIGhp
ZXJhcmNoeSBpbiB0aGUgY29tbWl0IGxvZwo+IC0gdXNlIE1JVCBsaWNlbnNlIGluc3RlYWQgb2Yg
WDExCj4gLSBDaGFuZ2UgY29tcGF0aWJsZSBwcm9wZXJ0aWVzIHRvICJhcm1hZGV1cyxpbXg2e3Vs
LHVsbH0tb3BvczZ1bCIgYW5kCj4gICAiYXJtYWRldXMsaW14Nnt1bCx1bGx9LW9wb3M2dWxkZXYi
IHRvIGZvbGxvdyB0aGUgYmluZGluZ3Mgb2YgdGhlCj4gICBBcm1hZGV1cyBib2FyZHMgYWxyZWFk
eSBzdXBwb3J0ZWQuCgpnZW50bGUgcGluZy4uLgoKUmVnYXJkcywKClPDqWJhc3RpZW4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
