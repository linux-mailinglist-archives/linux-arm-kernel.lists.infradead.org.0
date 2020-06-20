Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9204F201EF2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 02:07:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oXALCCTD3q4mv1QOQ+GDxGbtbjlFSVQZ7E+m5joDvL8=; b=H19crGCI/SlonP
	rrTrVA8rl3zF0dRy1S7kDyvh8Q3k5Gty7tF1yE58Nvj4/3yydY+Avm090WTbr+8X/kQv6M+KTVUCj
	WbEH/bO+qB45HHeHNBlmij4KO0nm0Y79Ff8NF8QxoqbmfCkPU/jxHzww9MduNxDg2UUQ4YcL6hgp5
	BySmA63FngNiB7/+WiNC+C+9e+wOq3yJwSNT1thBmh3jgt9CbYdH9A3/DttCOWWI+0IhEY8jDTbJD
	NIM8fKqP8sxox8OPr+ROaaoeclEDl7xALdHRV0OIQuZeydfk6HSZQxeVDHxmAk6NZG60JFo89Jj2U
	XtrXRvdgRdwFgtw9U99Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmR2J-0002zo-It; Sat, 20 Jun 2020 00:07:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmR0X-000169-HA
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jun 2020 00:05:20 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC83820734;
 Sat, 20 Jun 2020 00:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592611516;
 bh=9q2eGnElr0JM+/kCeiLllDRWEat4noUu0E+PN93cFjk=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=qf3zTWLDu2C1O3bR3yP3J311e5szxF47G+lA7BG+dgPl4zK6yDBmGM70xVK+r89ag
 jRlByuTEFp3W7zl3vi5zjARIsXNeEwYrhoa9lf4FiZbytp8TsyHeWzRmEE+j4yDvJN
 0QjxD1h8/oS14kh/2ZQOCiUVG86I5Ds+iJuExoT0=
MIME-Version: 1.0
In-Reply-To: <20200615090231.2932696-8-noltari@gmail.com>
References: <20200615090231.2932696-1-noltari@gmail.com>
 <20200615090231.2932696-8-noltari@gmail.com>
Subject: Re: [PATCH 7/8] mips: bmips: add BCM63268 clock definitions
From: Stephen Boyd <sboyd@kernel.org>
To: bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com, julia.lawall@lip6.fr, linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, lkp@intel.com, mturquette@baylibre.com, robh+dt@kernel.org, Álvaro Fernández Rojas <noltari@gmail.com>
Date: Fri, 19 Jun 2020 17:05:16 -0700
Message-ID: <159261151618.62212.15104688751799764167@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_170517_769719_975D3ABD 
X-CRM114-Status: UNSURE (   5.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Álvaro Fernández Rojas <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UXVvdGluZyDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgKDIwMjAtMDYtMTUgMDI6MDI6MzApCj4g
QWRkIGhlYWRlciB3aXRoIEJDTTYzMjY4IGRlZmluaXRpb25zIGluIG9yZGVyIHRvIGJlIGFibGUg
dG8gaW5jbHVkZSBpdCBmcm9tCj4gZGV2aWNlIHRyZWUgZmlsZXMuCj4gCj4gU2lnbmVkLW9mZi1i
eTogw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KPiAtLS0KCkFw
cGxpZWQgdG8gY2xrLW5leHQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
