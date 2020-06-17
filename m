Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FE11FCF02
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 16:00:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=68mq0RkroTrNXcJgGqCc3n2u8h/HZeK6tgTEgr/L5EI=; b=eiyh35uWrpy7Az
	y/ghXIyAbvf0p4yE+UF70u74lO2HS6U97t0B2DRPbf+CM4WqkojQtsyTCFbCt8+4X8qTt2pfpDnUm
	Juv2+bpgPg+W2GLLC/igffOML3WY5knir+6gkeiqdce9gqABiVXGIVgV8bzXyNxPHVbwDdZtrzl+w
	+0mnuMPWKl1IpVqEfHs5ZHb2WtfN1FE+GnpWLxzqj+pUyZ7wFidpTRMCBh2sv59EhCIgIeebAnhyM
	9T0f/aUgz82paHhjO/jpmAkdlo2U84BYWDqApKIc9VrB6dWMDtoXO1v8Qc0Vt/hJDXJRmzoNB6EyB
	KVTWa1pcFkSBoLMzfIoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlYc3-0007RT-Jg; Wed, 17 Jun 2020 14:00:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlYbR-0007Gu-LF
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 13:59:47 +0000
Received: from localhost (unknown [171.61.66.58])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E1A4E20776;
 Wed, 17 Jun 2020 13:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592402384;
 bh=0Lz6TFQhfGp4bkoSVLTJgIT/broxuaK6TXcJSsj1HDM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LMOFazE11y2j35ElYwUhFG1c7RveWXp6JEzTsPUId8PCinClymu6lifqi+kjEA+7N
 ROrH8zIGYsAXahTZqkbHkC2tTE3RRK/NU6u4KzYYp8wNMheVO4SJyvikQNeLSb7Czv
 ZpkSIhit1bCec9vwK1O92LKaEcWlRVt/o5J2bQl0=
Date: Wed, 17 Jun 2020 19:29:40 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Navid Emamdoost <navid.emamdoost@gmail.com>
Subject: Re: [PATCH] dmaengine: stm32-mdma: call pm_runtime_put if
 pm_runtime_get_sync fails
Message-ID: <20200617135940.GU2324254@vkoul-mobl>
References: <873bfb31-52d8-7c9b-5480-4a94dc945307@web.de>
 <CAEkB2ET_gfNUAuoZHxiGWZX7d3CQaJYJJqS2Fspif5mFq4-xfA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEkB2ET_gfNUAuoZHxiGWZX7d3CQaJYJJqS2Fspif5mFq4-xfA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_065945_743505_CFC48874 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, kernel-janitors@vger.kernel.org,
 Kangjie Lu <kjlu@umn.edu>, LKML <linux-kernel@vger.kernel.org>,
 Navid Emamdoost <emamd001@umn.edu>, Markus Elfring <Markus.Elfring@web.de>,
 Qiushi Wu <wu000273@umn.edu>, Stephen McCamant <smccaman@umn.edu>,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDMtMDYtMjAsIDE0OjE3LCBOYXZpZCBFbWFtZG9vc3Qgd3JvdGU6Cj4gT24gV2VkLCBKdW4g
MywgMjAyMCBhdCAxOjUyIFBNIE1hcmt1cyBFbGZyaW5nIDxNYXJrdXMuRWxmcmluZ0B3ZWIuZGU+
IHdyb3RlOgo+ID4KPiA+ID4gQ2FsbGluZyBwbV9ydW50aW1lX2dldF9zeW5jIGluY3JlbWVudHMg
dGhlIGNvdW50ZXIgZXZlbiBpbiBjYXNlIG9mCj4gPiA+IGZhaWx1cmUsIGNhdXNpbmcgaW5jb3Jy
ZWN0IHJlZiBjb3VudC4gQ2FsbCBwbV9ydW50aW1lX3B1dCBpZgo+ID4gPiBwbV9ydW50aW1lX2dl
dF9zeW5jIGZhaWxzLgo+ID4KPiA+IElzIGl0IGFwcHJvcHJpYXRlIHRvIGNvcHkgYSBzZW50ZW5j
ZSBmcm9tIHRoZSBjaGFuZ2UgZGVzY3JpcHRpb24KPiA+IGludG8gdGhlIHBhdGNoIHN1YmplY3Q/
Cj4gPgo+ID4gSG93IGRvIHlvdSB0aGluayBhYm91dCBhIHdvcmRpbmcgdmFyaWFudCBsaWtlIHRo
ZSBmb2xsb3dpbmc/Cj4gUGxlYXNlIHN0b3AgcHJvcG9zaW5nIHJld29yZGluZyBvbiBteSBwYXRj
aGVzIQo+IAo+IEkgd2lsbCBjb25zaWRlciB1cGRhdGluZyBteSBwYXRjaGVzIG9ubHkgaWYgYSBt
YWludGFpbmVyIGFza3MgZm9yIGl0LgoKWWVhaCBpZ25vcmUgdGhlc2UgOikgbm8gb25lIHRha2Vz
IHRoaXMgJ2JvdCcgc2VyaW91c2x5LCBpdCBpcyBhbm5veWluZwp5ZXMgOigKCj4gPgo+ID4gICAg
VGhlIFBNIHJ1bnRpbWUgcmVmZXJlbmNlIGNvdW50ZXIgaXMgZ2VuZXJhbGx5IGluY3JlbWVudGVk
IGJ5IGEgY2FsbCBvZgo+ID4gICAgdGhlIGZ1bmN0aW9uIOKAnHBtX3J1bnRpbWVfZ2V0X3N5bmPi
gJ0uCj4gPiAgICBUaHVzIGNhbGwgdGhlIGZ1bmN0aW9uIOKAnHBtX3J1bnRpbWVfcHV04oCdIGFs
c28gaW4gdHdvIGVycm9yIGNhc2VzCj4gPiAgICB0byBrZWVwIHRoZSByZWZlcmVuY2UgY291bnRp
bmcgY29uc2lzdGVudC4KPiA+Cj4gPgo+ID4gV291bGQgeW91IGxpa2UgdG8gYWRkIHRoZSB0YWcg
4oCcRml4ZXPigJ0gdG8gdGhlIGNvbW1pdCBtZXNzYWdlPwo+ID4KPiA+IFJlZ2FyZHMsCj4gPiBN
YXJrdXMKPiAKPiAKPiAKPiAtLSAKPiBOYXZpZC4KCi0tIAp+Vmlub2QKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
