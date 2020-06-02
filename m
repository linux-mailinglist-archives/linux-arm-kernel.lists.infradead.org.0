Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E50C1EC521
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 00:36:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B5Gg7vkFbtegCDzHZLtoLLD64GF3TU0/bC1FH31JV6s=; b=BvBb9zr9mHJ004
	MgUbDa8enT8wmhwvcEBnUMH1j5UrYm0/yKA2lkwcs78SOkpHqJj2UNVkPXaLeufeMvhfKjvVniInW
	O2MbiFIDxMbYquSCu+GGa3oxRleJUNZo1dQDnoFT1AO46jgVHMwD7yoMwbSozgqHEq9rDklwRkqnv
	31IFc9A6ZR9SRui28QF0QJjqye5OE3hWYPYrzLsHDAs8ADLcPrWzGMRiaIJG81raZeSF4izYs1DUf
	gvSgLi/sRHoq5ElEW4yVij5cjjlCTGUX5ENhAVJRU2v5aKSfTY3cr2s5s59BxqpMKuPm9Zv7EUb51
	UbOqLH9iAwzI05WSzF6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgFWL-0007x7-Vy; Tue, 02 Jun 2020 22:36:33 +0000
Received: from alexa-out-sd-02.qualcomm.com ([199.106.114.39])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgFWB-0007wJ-RK
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 22:36:25 +0000
Received: from unknown (HELO ironmsg03-sd.qualcomm.com) ([10.53.140.143])
 by alexa-out-sd-02.qualcomm.com with ESMTP; 02 Jun 2020 15:36:23 -0700
Received: from gurus-linux.qualcomm.com ([10.46.162.81])
 by ironmsg03-sd.qualcomm.com with ESMTP; 02 Jun 2020 15:36:22 -0700
Received: by gurus-linux.qualcomm.com (Postfix, from userid 383780)
 id F3B494D82; Tue,  2 Jun 2020 15:36:22 -0700 (PDT)
Date: Tue, 2 Jun 2020 15:36:22 -0700
From: Guru Das Srinagesh <gurus@codeaurora.org>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH] pwm: imx27: Fix rounding behavior
Message-ID: <20200602223622.GB470@codeaurora.org>
References: <20200416080245.3203-1-u.kleine-koenig@pengutronix.de>
 <20200602124835.GF3360525@ulmo>
 <20200602204211.GA1693@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200602204211.GA1693@codeaurora.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_153623_913037_3FF1E06C 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [199.106.114.39 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: linux-pwm@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdW4gMDIsIDIwMjAgYXQgMDE6NDI6MTJQTSAtMDcwMCwgR3VydSBEYXMgU3JpbmFn
ZXNoIHdyb3RlOgo+IE9uIFR1ZSwgSnVuIDAyLCAyMDIwIGF0IDAyOjQ4OjM1UE0gKzAyMDAsIFRo
aWVycnkgUmVkaW5nIHdyb3RlOgo+ID4gT24gVGh1LCBBcHIgMTYsIDIwMjAgYXQgMTA6MDI6NDVB
TSArMDIwMCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gPiA+IFRvIG5vdCB0cmlnZ2VyIHRo
ZSB3YXJuaW5ncyBwcm92aWRlZCBieSBDT05GSUdfUFdNX0RFQlVHCj4gPiA+IAo+ID4gPiAgLSB1
c2UgdXAtcm91bmRpbmcgaW4gLmdldF9zdGF0ZSgpCj4gPiA+ICAtIGRvbid0IGRpdmlkZSBieSB0
aGUgcmVzdWx0IG9mIGEgZGl2aXNpb24KPiA+ID4gIC0gZG9uJ3QgdXNlIHRoZSByb3VuZGVkIGNv
dW50ZXIgdmFsdWUgZm9yIHRoZSBwZXJpb2QgbGVuZ3RoIHRvIGNhbGN1bGF0ZQo+ID4gPiAgICB0
aGUgY291bnRlciB2YWx1ZSBmb3IgdGhlIGR1dHkgY3ljbGUKPiA+ID4gCj4gPiA+IFNpZ25lZC1v
ZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+
Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy9wd20vcHdtLWlteDI3LmMgfCAyMCArKysrKysrKysr
LS0tLS0tLS0tLQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDEwIGRl
bGV0aW9ucygtKQo+ID4gCj4gPiBBcHBsaWVkLCB0aGFua3MuCj4gPiAKPiA+IFRoaWVycnkKPiAK
PiBIaSBUaGllcnJ5LAo+IAo+IEp1c3QgRllJLCBUaGlzIGNoYW5nZSBjb25mbGljdHMgd2l0aCBv
bmUgb2YgbXkgcGF0Y2hlcyBbMV0gaW4gdGhlICJDb252ZXJ0Cj4gUFdNIHBlcmlvZCBhbmQgZHV0
eSBjeWNsZSB0byB1NjQiIHNlcmllcy4KPiAKPiBbMV06IGh0dHBzOi8vcGF0Y2h3b3JrLm96bGFi
cy5vcmcvcHJvamVjdC9saW51eC1wd20vcGF0Y2gvODQ4NDk0NzI1ZmQxMjQwZWQ4NzdkMGExNDcx
ZGQxMWNjZWEwMWZmNS4xNTkwNTE0MzMxLmdpdC5ndXJ1c0Bjb2RlYXVyb3JhLm9yZy8KClVwbG9h
ZGVkIHYxNiB0aGF0IHJlc29sdmVzIHRoaXMgaXNzdWUuCgpUaGFuayB5b3UuCgpHdXJ1IERhcy4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
