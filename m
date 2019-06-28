Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFB159E17
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 16:43:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EcnIu7VfeDprYcZINWSusMa/juQYPtx+tEWYuxEt9Rs=; b=ell8zcAYLuLNeq7CiDO2pKGAF
	V/OHBM2Z/C0YDvpnPsRFr7VIFeUzonUfIDC088F2aRogNJbDan482AN2zReRmM38YqsKSGDIimn8U
	8tNkP5HJGGx1A6YlxijCtnmbqKTv35QdKbKLHaxEH5NPBnMB0AJYq77zM1y395YvAIZGEMMpc9c38
	JafZoNENls1weMGHh98mKCSD8T+pQYoe5c75R31qNjTdF6nlitKHv6Q8U/uEV3EhanlbIRhht/5sD
	2xN2q0dfhoXV14pstWRkmLoLE11y3xloQ5VKZ2Fiki3PU+gVbfvgPBy1w2NIpFfM8rMJdY9zAqFM3
	ivxWd/2BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgs5w-0007Md-B4; Fri, 28 Jun 2019 14:43:20 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgs5k-0007Lc-LU
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 14:43:09 +0000
Received: by node.akkea.ca (Postfix, from userid 33)
 id 7298A4E204B; Fri, 28 Jun 2019 14:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1561732985; bh=1J+88cDkQYmjFNN7dYPO1sEt46KjdzHoKASn60xcMgM=;
 h=To:Subject:Date:From:Cc:In-Reply-To:References;
 b=Q+xzq109+3E6O8FugUx4bb9RjMArxdxHonnZRqtFmv3kNDPin90nQEGywk4aV5765
 YMAoWl/uplP0dMGX6vlCtGu+6R4S3CMslXFqgdNBxm438OHnmLmSX8HlBp9TnE2kBm
 AzAWgfCOBvNx9sCOwTEPw/QCvM76E3MCPuxtFTHk=
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH 1/2] arm64: dts: imx8mq: Add MIPI D-PHY
X-PHP-Originating-Script: 1000:rcube.php
MIME-Version: 1.0
Date: Fri, 28 Jun 2019 08:43:05 -0600
From: Angus Ainslie <angus@akkea.ca>
In-Reply-To: <613eef8ee6fd427a2fb5eb91865e71f3ee6bded6.1561451144.git.agx@sigxcpu.org>
References: <cover.1561451144.git.agx@sigxcpu.org>
 <613eef8ee6fd427a2fb5eb91865e71f3ee6bded6.1561451144.git.agx@sigxcpu.org>
Message-ID: <dd48a5d849c8ddffa3c980a22777833f@www.akkea.ca>
X-Sender: angus@akkea.ca
User-Agent: Roundcube Webmail/1.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_074308_714272_44F0E08A 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Pavel Machek <pavel@ucw.cz>, Anson Huang <Anson.Huang@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0wNi0yNSAwMjoyNywgR3VpZG8gR8O8bnRoZXIgd3JvdGU6Cj4gQWRkIGEgbm9kZSBm
b3IgdGhlIE1peGVsIE1JUEkgRC1QSFksICJkaXNhYmxlZCIgYnkgZGVmYXVsdC4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPgoKQWNrZWQtYnk6IEFu
Z3VzIEFpbnNsaWUgKFB1cmlzbSkgPGFuZ3VzQGFra2VhLmNhPgoKPiAtLS0KPiAgYXJjaC9hcm02
NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kgfCAxMyArKysrKysrKysrKysrCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpCj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L2ZyZWVzY2FsZS9pbXg4bXEuZHRzaQo+IGluZGV4IGQwOWI4MDhlZmY4Ny4uODkxZWU3NTc4YzJk
IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNp
Cj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kKPiBAQCAt
NzI4LDYgKzcyOCwxOSBAQAo+ICAJCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAgCQkJfTsKPiAK
PiArCQkJZHBoeTogZHBoeUAzMGEwMDMwMCB7Cj4gKwkJCQljb21wYXRpYmxlID0gImZzbCxpbXg4
bXEtbWlwaS1kcGh5IjsKPiArCQkJCXJlZyA9IDwweDMwYTAwMzAwIDB4MTAwPjsKPiArCQkJCWNs
b2NrcyA9IDwmY2xrIElNWDhNUV9DTEtfRFNJX1BIWV9SRUY+Owo+ICsJCQkJY2xvY2stbmFtZXMg
PSAicGh5X3JlZiI7Cj4gKwkJCQlhc3NpZ25lZC1jbG9ja3MgPSA8JmNsayBJTVg4TVFfQ0xLX0RT
SV9QSFlfUkVGPjsKPiArCQkJCWFzc2lnbmVkLWNsb2NrLXBhcmVudHMgPSA8JmNsayBJTVg4TVFf
VklERU9fUExMMV9PVVQ+Owo+ICsJCQkJYXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8MjQwMDAwMDA+
Owo+ICsJCQkJI3BoeS1jZWxscyA9IDwwPjsKPiArCQkJCXBvd2VyLWRvbWFpbnMgPSA8JnBnY19t
aXBpPjsKPiArCQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gKwkJCX07Cj4gKwo+ICAJCQlpMmMx
OiBpMmNAMzBhMjAwMDAgewo+ICAJCQkJY29tcGF0aWJsZSA9ICJmc2wsaW14OG1xLWkyYyIsICJm
c2wsaW14MjEtaTJjIjsKPiAgCQkJCXJlZyA9IDwweDMwYTIwMDAwIDB4MTAwMDA+OwoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
