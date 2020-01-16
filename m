Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4074E13D50B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 08:30:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IuciEk9FtqW//UeaVEO1/xWqLtx4V6T9io3CiX785cI=; b=o5FlPgCu7zPV8p
	Gp4eH9stIwyt2M1Lds0CqQU5WHKENw4vktidc3B6RjG+ey2/HNhG88N3N902a+XrXzCW1yLU+Vvn4
	eskRorV6ssXvnjh+fNVhfOgv1sHe4O1z/2tHpl86xqTuq6nknRS8UVosL2xVV+MKiWvzixaHVKiqi
	xCXLMFNBsY1VifrAno9LmzGu8yVzwor52lx2Q1+V7a76JcE3VhVEqJHzdgELN4ffe50nXgHN1Ep0q
	Tsir+z0RShgGvTejOCchHrXKDxksgqVdDt9uUwiytAR5iOfrV93uE0Q3g6VYilOoFtOvkCZVqQC4F
	gCIWQAYL1JSaBEaKi/Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irzbJ-00058i-AJ; Thu, 16 Jan 2020 07:29:57 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irzaI-0004Rl-6f
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 07:28:56 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1irzaA-0005XF-Nt; Thu, 16 Jan 2020 15:28:46 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1irza8-0000ma-LU; Thu, 16 Jan 2020 15:28:44 +0800
Date: Thu, 16 Jan 2020 15:28:44 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Horia =?utf-8?Q?Geant=C4=83?= <horia.geanta@nxp.com>
Subject: Re: [PATCH 1/2] crypto: caam - add support for i.MX8M Nano
Message-ID: <20200116072844.5n6o47fnio7q534v@gondor.apana.org.au>
References: <20200106200154.30643-1-horia.geanta@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106200154.30643-1-horia.geanta@nxp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_232854_533762_0A010A3F 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, Aymen Sghaier <aymen.sghaier@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKYW4gMDYsIDIwMjAgYXQgMTA6MDE6NTNQTSArMDIwMCwgSG9yaWEgR2VhbnTEgyB3
cm90ZToKPiBBZGQgc3VwcG9ydCBmb3IgdGhlIGNyeXB0byBlbmdpbmUgdXNlZCBpbiBpLm14OG1u
IChpLk1YIDhNICJOYW5vIiksCj4gd2hpY2ggaXMgdmVyeSBzaW1pbGFyIHRvIHRoZSBvbmUgdXNl
ZCBpbiBpLm14OG1xLCBpLm14OG1tLgo+IAo+IFNpbmNlIHRoZSBjbG9ja3MgYXJlIGlkZW50aWNh
bCBmb3IgYWxsIG1lbWJlcnMgb2YgaS5NWCA4TSBmYW1pbHksCj4gc2ltcGxpZnkgdGhlIFNvQyA8
LS0+IGNsb2NrIGFycmF5IG1hcHBpbmcgdGFibGUuCj4gCj4gU2lnbmVkLW9mZi1ieTogSG9yaWEg
R2VhbnTEgyA8aG9yaWEuZ2VhbnRhQG54cC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvY3J5cHRvL2Nh
YW0vY3RybC5jIHwgOCArKysrLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
LCA0IGRlbGV0aW9ucygtKQoKUGF0Y2ggYXBwbGllZC4gIFRoYW5rcy4KLS0gCkVtYWlsOiBIZXJi
ZXJ0IFh1IDxoZXJiZXJ0QGdvbmRvci5hcGFuYS5vcmcuYXU+CkhvbWUgUGFnZTogaHR0cDovL2dv
bmRvci5hcGFuYS5vcmcuYXUvfmhlcmJlcnQvClBHUCBLZXk6IGh0dHA6Ly9nb25kb3IuYXBhbmEu
b3JnLmF1L35oZXJiZXJ0L3B1YmtleS50eHQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
