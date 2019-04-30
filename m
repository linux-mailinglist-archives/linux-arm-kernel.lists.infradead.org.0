Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 244D6FFA6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 20:17:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7o4pFmRd+2NaPGzq82zi65Rj09w/2i+xAixcTKnVvoQ=; b=trGxFBeriOVCDn
	262FmuGi6IR8k8Icc1bxyjll48bSjBUIrfZsB0iAXiz9h+m3XP3GBe8PAvhITJzGqCfejIWAUNko5
	AgKCfcrKQ7sYbtZLzZGB8m5MFYIgpyzV7NJfks8ONwR4IgRi5t4rEwsdgJjtzcio+/NW/0NDL6Pyb
	zCEzPITj6qJIYtpy8sMg0isShXVUutAvOUa0wvif5oezojP6HqF/ohSijw3GTbBCbCEHg68aPwa0b
	17RA7EYi8chfLA1peM7VjtTdvGuQMHAUtNDCyPu018A+5NFglyY0aEGP7toNvQ6/clyUGpapt6Xv7
	UUk5R/OgAsVwrBbv7/kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLXJk-0000Uq-4m; Tue, 30 Apr 2019 18:17:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLXJb-0000UC-Pl
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 18:17:16 +0000
Received: from localhost (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 395DA20854;
 Tue, 30 Apr 2019 18:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556648235;
 bh=RWMVFlZoo1dWgyPx3jxS9nsFQLj+1+W4WSOKZtiVOgU=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=Vrvoc0gjT8TOfrAfASm4xAX5FqcV5zw+G4oijozFOjmnnkSyIwRL4K8gEknb7CgVn
 bGWIeAVOvQQx++4EgtAyk8HENVyGWAAtPo4i/uzXkoZr5qsTZkNIHtjk1tiPU++3Cb
 R8XnyE4Yanjn7Sbin0p2IfE8GwAqQ9axVve5gR04=
MIME-Version: 1.0
In-Reply-To: <8d0d12ae-ce67-5480-49be-893fbdbb6998@embeddedor.com>
References: <20190430143206.GA4035@embeddedor>
 <155664492283.168659.5604495418413396919@swboyd.mtv.corp.google.com>
 <8d0d12ae-ce67-5480-49be-893fbdbb6998@embeddedor.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: imx: clk-pllv3: mark expected switch fall-throughs
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Fabio Estevam <festevam@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Message-ID: <155664823446.168659.9382397723332081174@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Tue, 30 Apr 2019 11:17:14 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_111715_848829_00B25D6E 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UXVvdGluZyBHdXN0YXZvIEEuIFIuIFNpbHZhICgyMDE5LTA0LTMwIDEwOjI4OjMyKQo+IAo+IAo+
IE9uIDQvMzAvMTkgMTI6MjIgUE0sIFN0ZXBoZW4gQm95ZCB3cm90ZToKPiA+IFF1b3RpbmcgR3Vz
dGF2byBBLiBSLiBTaWx2YSAoMjAxOS0wNC0zMCAwNzozMjowNikKPiA+PiBJbiBwcmVwYXJhdGlv
biB0byBlbmFibGluZyAtV2ltcGxpY2l0LWZhbGx0aHJvdWdoLCBtYXJrIHN3aXRjaAo+ID4+IGNh
c2VzIHdoZXJlIHdlIGFyZSBleHBlY3RpbmcgdG8gZmFsbCB0aHJvdWdoLgo+ID4+Cj4gPj4gVGhp
cyBwYXRjaCBmaXhlcyB0aGUgZm9sbG93aW5nIHdhcm5pbmdzOgo+ID4+Cj4gPj4gZHJpdmVycy9j
bGsvaW14L2Nsay1wbGx2My5jOiBJbiBmdW5jdGlvbiDigJhpbXhfY2xrX3BsbHYz4oCZOgo+ID4+
IGRyaXZlcnMvY2xrL2lteC9jbGstcGxsdjMuYzo0NDY6MTg6IHdhcm5pbmc6IHRoaXMgc3RhdGVt
ZW50IG1heSBmYWxsIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQo+ID4+ICAgIHBs
bC0+ZGl2X3NoaWZ0ID0gMTsKPiA+PiAgICB+fn5+fn5+fn5+fn5+fn5efn4KPiA+PiBkcml2ZXJz
L2Nsay9pbXgvY2xrLXBsbHYzLmM6NDQ3OjI6IG5vdGU6IGhlcmUKPiA+PiAgIGNhc2UgSU1YX1BM
TFYzX1VTQjoKPiA+PiAgIF5+fn4KPiA+PiBkcml2ZXJzL2Nsay9pbXgvY2xrLXBsbHYzLmM6NDUz
OjIxOiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbCB0aHJvdWdoIFstV2ltcGxpY2l0
LWZhbGx0aHJvdWdoPV0KPiA+PiAgICBwbGwtPmRlbm9tX29mZnNldCA9IFBMTF9JTVg3X0RFTk9N
X09GRlNFVDsKPiA+PiAgICAgICAgICAgICAgICAgICAgICBeCj4gPj4gZHJpdmVycy9jbGsvaW14
L2Nsay1wbGx2My5jOjQ1NDoyOiBub3RlOiBoZXJlCj4gPj4gICBjYXNlIElNWF9QTExWM19BVjoK
PiA+PiAgIF5+fn4KPiA+Pgo+ID4+IFdhcm5pbmcgbGV2ZWwgMyB3YXMgdXNlZDogLVdpbXBsaWNp
dC1mYWxsdGhyb3VnaD0zCj4gPj4KPiA+PiBUaGlzIHBhdGNoIGlzIHBhcnQgb2YgdGhlIG9uZ29p
bmcgZWZmb3J0cyB0byBlbmFibGUKPiA+PiAtV2ltcGxpY2l0LWZhbGx0aHJvdWdoLgo+ID4+Cj4g
Pj4gU2lnbmVkLW9mZi1ieTogR3VzdGF2byBBLiBSLiBTaWx2YSA8Z3VzdGF2b0BlbWJlZGRlZG9y
LmNvbT4KPiA+IAo+ID4gSXQgd2FzIHNlbnQgYnkgQW5zb24gYWxyZWFkeS4KPiA+IAo+IAo+IERp
ZCBoZSBhZGRyZXNzIGJvdGggd2FybmluZ3M/Cj4gCgpOby4gSSBhZGRlZCB5b3UgdG8gdGhlIHRo
cmVhZC4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
