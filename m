Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76760BDB4D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 11:42:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s/gmIpSRcQOGfGROc/Spn88XJPRS3gDXkvToFJPloOo=; b=fM0cUQ8gMeJoB7cuwABC0HfCc
	6/1l/PHYX0FrGtAHe1AhmutVbnHg9Tk7j16hwYks0Ssj4KpFTluoyzrQEyOWfBLP+zdWOCiLnyX2z
	Wn5EVUJ3eJLkERdaCVM1nkCmHyTtomn6NFk+8i6/2UdNRAx/M0TAAnYj2cUDgfx2C2FkbcmtJHarf
	Dz+nEpuRTFQynH7iBla2gLhFj5q8l1aWriu4eqOysGgqPK6Cbzvtk1BXnPd1GkO0cByjkeNx3fPI5
	Eg64vuMVJZ6sD2Arj5d5v4hEmq4feoO+l7AyQxplRn2K0s261gHUVGyPKNHwCf45UGF4K1gC6xA/r
	kZhzGXVhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD3oo-0004mG-Qp; Wed, 25 Sep 2019 09:42:42 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD3oZ-0004lN-10; Wed, 25 Sep 2019 09:42:28 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 32CE828E2F3
Subject: Re: [PATCH] drm/rockchip: Add AFBC support
To: Brian Starkey <Brian.Starkey@arm.com>
References: <20190923122014.18229-1-andrzej.p@collabora.com>
 <20190925093913.z4vduybwcokn3awi@DESKTOP-E1NTVVP.localdomain>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <e5fdc7ff-6171-6190-1bca-9f517f69b03c@collabora.com>
Date: Wed, 25 Sep 2019 11:42:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190925093913.z4vduybwcokn3awi@DESKTOP-E1NTVVP.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_024227_197586_037F4706 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: nd <nd@arm.com>, "kernel@collabora.com" <kernel@collabora.com>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Maxime Ripard <mripard@kernel.org>, Ayan Halder <Ayan.Halder@arm.com>,
 Sean Paul <sean@poorly.run>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQnJpYW4sCgpXIGRuaXUgMjUuMDkuMjAxOSBvwqAxMTozOSwgQnJpYW4gU3RhcmtleSBwaXN6
ZToKPiBIaSBBbmRyemVqLAo+IAo+IFRoYW5rcyBmb3IgdGhlIHBhdGNoLCBpdCdzIG5pY2UgdG8g
c2VlIGFub3RoZXIgQUZCQyBpbXBsZW1lbnRhdGlvbgo+IGNvbWluZyBpbi4KPiAKCkkgZGlkIGEg
ZmFsc2Ugc3RhcnQsIHRob3VnaC4gQnV0IHRoZSB3b3JrIGlzIGluIHByb2dyZXNzLiBUaGFua3Mg
Zm9yIHRoZSByZXZpZXcsIAphbnl3YXkuCgo+IEZvciBmdXR1cmUgdmVyc2lvbnMsIGNvdWxkIHlv
dSBwbGVhc2UgQ2MgYXlhbi5oYWxkZXJAYXJtLmNvbT8gSXQgd291bGQKPiBoYXZlIGJlZW4gbmlj
ZSB0byBoYXZlIHNvbWVvbmUgQGFybS5jb20gb24gcGF0Y2hlcyB3aGljaCB1c2UvaW1wYWN0Cj4g
QXJtIG1vZGlmaWVycy4gU2FkbHkgSSBkb24ndCBrbm93IGhvdyB0byBtYWtlIGdldF9tYWludGFp
bmVyLnBsIGhlbHAKCk9mIGNvdXJzZS4KCkFuZHJ6ZWoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
