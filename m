Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6175B1D3E16
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 21:56:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hLykP69KsClYnS3FjB3hLhDII0JzhAsIt1PjgLd7BF0=; b=hme7sr8Ze5s2h1
	H/skZn9QH/euDAGhHSC4uZ3PSvkbSOVwMKzReOe3oahf1XiCKs/oUrVesh1SL4dxeOlBW+eOlHigP
	kY9+pnhjcNtjn6he64ZGntAYa8aSJYug7sFH+OmefTY8Z5topJghwiUwlNZHlxACoWc2AhecQqYxX
	LJiFD74tFP8+rrOlknrxU07QKmPg8xKbYAjzI6Rliaj1D2YdHDQ8vEAc4BWWkSFIqqlNxghswVCJ8
	eQCCiBC6lw2gI916w4aMnaooF4GTe4OIXUGmUBI1r0Ut6xA/XIzPnzfbRWJezkL7PYjtzar7JJR49
	i55Q0Q4PduEEQCSy4qwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZJyH-00080E-JS; Thu, 14 May 2020 19:56:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZJy6-0007zU-GR
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 19:56:35 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 582422065C;
 Thu, 14 May 2020 19:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589486193;
 bh=xVjSJtCrXrJZNhmEOcXSCASVEABirO3N/aoA9LEc/Zg=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=HP78RNTMVn/5visapTd3rZTrAsZKcdK1NEdMtZtMXVzMuOpskDTp4d5NSi6WvajwZ
 R8/POlAlFIBJWf9TUVoo3e6jsBHwvGeUeU9fRhbWJ0db/mIW4WtsHPxevLPzwU3cJt
 72omBV9O/DKE6CEGL3SWD+qsBQTaeAuERoPBxofo=
MIME-Version: 1.0
In-Reply-To: <20200409064416.83340-2-sboyd@kernel.org>
References: <20200409064416.83340-1-sboyd@kernel.org>
 <20200409064416.83340-2-sboyd@kernel.org>
Subject: Re: [PATCH v2 01/10] ARM: Remove redundant COMMON_CLK selects
From: Stephen Boyd <sboyd@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Date: Thu, 14 May 2020 12:56:32 -0700
Message-ID: <158948619259.215346.17594962580629533303@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_125634_565002_2FA6359F 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, Alexander Shiyan <shc_work@mail.ru>, linux-clk@vger.kernel.org, Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org, Lubomir Rintel <lkundrak@v3.sk>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Andreas Färber <afaerber@suse.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UXVvdGluZyBTdGVwaGVuIEJveWQgKDIwMjAtMDQtMDggMjM6NDQ6MDcpCj4gVGhlIG11bGl0cGxh
dGZvcm0gY29uZmlnIGFscmVhZHkgc2VsZWN0cyBDT01NT05fQ0xLLCBzbyBzZWxlY3RpbmcgaXQK
PiBhZ2FpbiBpcyBub3QgdXNlZnVsLiBSZW1vdmUgdGhlc2Ugc2VsZWN0cyBmcm9tIEFSTSBwbGF0
Zm9ybXMgdGhhdCBhcmUKPiBwYXJ0IG9mIHRoZSBtdWx0aXBsYXRmb3JtIGJ1aWxkLgo+IAo+IFJl
dmlld2VkLWJ5OiAiQW5kcmVhcyBGw6RyYmVyIiA8YWZhZXJiZXJAc3VzZS5kZT4gIyBhY3Rpb25z
Cj4gQWNrZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFt
QGxpbmFyby5vcmc+ICMgYWN0aW9ucwo+IENjOiBSdXNzZWxsIEtpbmcgPGxpbnV4QGFybWxpbnV4
Lm9yZy51az4KPiBDYzogQWxleGFuZGVyIFNoaXlhbiA8c2hjX3dvcmtAbWFpbC5ydT4KPiBDYzog
THVib21pciBSaW50ZWwgPGxrdW5kcmFrQHYzLnNrPgo+IENjOiA8bGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnPgo+IENjOiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPgo+
IFNpZ25lZC1vZmYtYnk6IFN0ZXBoZW4gQm95ZCA8c2JveWRAa2VybmVsLm9yZz4KPiAtLS0KCkFw
cGxpZWQgdG8gY2xrLW5leHQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
