Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5932BFDC17
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 12:16:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yEU6ql/P1ghV5VTHwJiFdHi1NqoEAEuTnFIrwUZmDN4=; b=HxCI1JgRx2uqXR
	l3NN4bBaCDuTFpjkF9TZxO5H2vH2qENPWt4vkCdrmmxvlKVGSjUoDTXGQr2Nhqb7p0RFniCVSKNZO
	MQyK2iNO/a1muZksx2ZP+/5sD6bXqLnDdDOj625inyfFZy6AGppTDVywSkLbQTYj/Z2nL04/Kwn1n
	niTdopL7HtTC5fgIL3GGhDuG1RmryT9pQ6QHOVta+DgMLNRIHTtxKWJrDpxAiFtuaEglBXZSgYUcA
	tAl7u2oOw51KMzuqZknMC2CFDtII+K7xHmgHiiur5imuFOLyGDWBKLoXtvIjSLZfqjDqwzW67P0XI
	E+lSZioc4HQCiS6O88jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVZaD-0007eK-FM; Fri, 15 Nov 2019 11:16:09 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVZa2-0007dD-QC; Fri, 15 Nov 2019 11:16:00 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 61B3EACEC;
 Fri, 15 Nov 2019 11:15:56 +0000 (UTC)
Subject: Re: Sense of soc bus? (was: [PATCH] base: soc: Export
 soc_device_to_device() helper)
To: Rob Herring <robh@kernel.org>
References: <20191103013645.9856-3-afaerber@suse.de>
 <20191111045609.7026-1-afaerber@suse.de> <20191111052741.GB3176397@kroah.com>
 <586fa37c-6292-aca4-fa7c-73064858afaf@suse.de>
 <20191111064040.GA3502217@kroah.com>
 <a88442df-dc6b-07e5-8dee-9e308bdda450@suse.de>
 <20191112052347.GA1197504@kroah.com>
 <20191112072926.isjxfa4ci6akhx56@pengutronix.de>
 <aff81b8e-f041-73a5-6a95-d308fa07842c@suse.de>
 <CAL_JsqLr=fw6zxa=69rtgZ4oxzdw=cVDr3km5ya0pRGsNT1xLw@mail.gmail.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <faa9924a-1c61-349c-9c35-da83fd0b3547@suse.de>
Date: Fri, 15 Nov 2019 12:15:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CAL_JsqLr=fw6zxa=69rtgZ4oxzdw=cVDr3km5ya0pRGsNT1xLw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_031559_141078_5D32D66B 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-realtek-soc@lists.infradead.org, Tony Lindgren <tony@atomide.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, U-Boot <u-boot@lists.denx.de>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Architecture Mailman List <boot-architecture@lists.linaro.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 linux-omap <linux-omap@vger.kernel.org>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 LAKML <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMTQuMTEuMTkgdW0gMjM6MDkgc2NocmllYiBSb2IgSGVycmluZzoKPiBPbiBUdWUsIE5vdiAx
MiwgMjAxOSBhdCA0OjQ3IEFNIEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4gd3Jv
dGU6Cj4+IE9uIHRoZSBvdGhlciBoYW5kLCBvbmUgbWlnaHQgYXJndWUgdGhhdCBzdWNoIGluZm9y
bWF0aW9uIHNob3VsZCBqdXN0IGJlCj4+IHBhcnNlZCBieSBFQkJSLWNvbmZvcm1hbnQgYm9vdGxv
YWRlcnMgYW5kIGJlIHBhc3NlZCB0byB0aGUga2VybmVsIHZpYQo+PiBzdGFuZGFyZCBVRUZJIGlu
dGVyZmFjZXMgYW5kIERNSSB0YWJsZXMuIEJ1dCBJJ20gbm90IGF3YXJlIG9mIEJhcmVib3gKPj4g
aGF2aW5nIGltcGxlbWVudGVkIGFueSBvZiB0aGF0IHlldCwgYW5kIGV2ZW4gZm9yIFUtQm9vdCAo
ZS5nLiwgUmVhbHRlawo+PiBiYXNlZCBjb25zdW1lciBkZXZpY2VzLi4uKSBub3QgZXZlcnlvbmUg
aGFzIHRoZSBHUEwgc291cmNlcyBvciB0b29scyB0bwo+PiB1cGRhdGUgdGhlaXIgYm9vdGxvYWRl
ci4gU28sIGhhdmluZyB0aGUga2VybmVsIHdlIGNvbnRyb2wgZ2F0aGVyCj4+IGluZm9ybWF0aW9u
IHJlbGV2YW50IHRvIGtlcm5lbCBkZXZlbG9wZXJzIGRvZXMgbWFrZSBzb21lIHNlbnNlIHRvIG1l
Lgo+IAo+IFVFRkkgYW5kIERNSSBhcmUgb3J0aG9nb25hbCwgcmlnaHQuIFlvdSBjYW4ndCBleHBl
Y3QgRE1JIG9uIGEgVUVGSStEVCBzeXN0ZW0uCgpOb3Qgc3VyZSwgdGhhdCdzIHdoeSBJIENDJ2Vk
IHRoZSBFQkJSIGZvbGtzIGZvciBpbnB1dC4gSWYgaXQncyBub3QKbWFuZGF0b3J5IHRvZGF5LCB0
aGUgbmV4dCByZXZpc2lvbiBvZiBFQkJSIGNvdWxkIGp1c3QgcmVxdWlyZSBpdCAtIGlmCnRoYXQn
cyB0aGUgdW5pZmllZCB3YXkgYmV0d2VlbiBTQkJSIGFuZCBFQkJSLiBMaXR0bGUgcG9pbnQgaW4g
ZG9pbmcgaXQKb25seSBmb3IgRUJCUi4KCk9uIG15IFVFRkkrRFQgYmFzZWQgUmFzcGJlcnJ5IFBp
IDMgTW9kZWwgQiBJIGRvIHNlZSBpdCwgbm90ZSB0aGUKbm9uLWZpbGxlZCBQcm9jZXNzb3IgSW5m
b3JtYXRpb24gZGVsaXZlcmVkIGJ5IFUtQm9vdDoKCnJhc3BpMzp+ICMgZG1pZGVjb2RlCiMgZG1p
ZGVjb2RlIDMuMgpHZXR0aW5nIFNNQklPUyBkYXRhIGZyb20gc3lzZnMuClNNQklPUyAzLjAgcHJl
c2VudC4KNyBzdHJ1Y3R1cmVzIG9jY3VweWluZyAyNTMgYnl0ZXMuClRhYmxlIGF0IDB4M0NCM0Uw
MjAuCgpIYW5kbGUgMHgwMDAwLCBETUkgdHlwZSAwLCAyNCBieXRlcwpCSU9TIEluZm9ybWF0aW9u
CglWZW5kb3I6IFUtQm9vdAoJVmVyc2lvbjogMjAxOS4xMAoJUmVsZWFzZSBEYXRlOiAxMC8yNi8y
MDE5CglST00gU2l6ZTogNjQga0IKCUNoYXJhY3RlcmlzdGljczoKCQlQQ0kgaXMgc3VwcG9ydGVk
CgkJQklPUyBpcyB1cGdyYWRlYWJsZQoJCVNlbGVjdGFibGUgYm9vdCBpcyBzdXBwb3J0ZWQKCQlJ
Mk8gYm9vdCBpcyBzdXBwb3J0ZWQKCQlUYXJnZXRlZCBjb250ZW50IGRpc3RyaWJ1dGlvbiBpcyBz
dXBwb3J0ZWQKCkhhbmRsZSAweDAwMDEsIERNSSB0eXBlIDEsIDI3IGJ5dGVzClN5c3RlbSBJbmZv
cm1hdGlvbgoJTWFudWZhY3R1cmVyOiByYXNwYmVycnlwaQoJUHJvZHVjdCBOYW1lOiBycGkKCVZl
cnNpb246IE5vdCBTcGVjaWZpZWQKCVNlcmlhbCBOdW1iZXI6IDAwMDAwMDAwKioqKioqKioKCVVV
SUQ6IDMwMzAzMDMwLTMwMzAtMzAzMC02NDM3LTYyMzQ2MTMzNjY2NgoJV2FrZS11cCBUeXBlOiBS
ZXNlcnZlZAoJU0tVIE51bWJlcjogTm90IFNwZWNpZmllZAoJRmFtaWx5OiBOb3QgU3BlY2lmaWVk
CgpIYW5kbGUgMHgwMDAyLCBETUkgdHlwZSAyLCAxNCBieXRlcwpCYXNlIEJvYXJkIEluZm9ybWF0
aW9uCglNYW51ZmFjdHVyZXI6IHJhc3BiZXJyeXBpCglQcm9kdWN0IE5hbWU6IHJwaQoJVmVyc2lv
bjogTm90IFNwZWNpZmllZAoJU2VyaWFsIE51bWJlcjogTm90IFNwZWNpZmllZAoJQXNzZXQgVGFn
OiBOb3QgU3BlY2lmaWVkCglGZWF0dXJlczoKCQlCb2FyZCBpcyBhIGhvc3RpbmcgYm9hcmQKCUxv
Y2F0aW9uIEluIENoYXNzaXM6IE5vdCBTcGVjaWZpZWQKCUNoYXNzaXMgSGFuZGxlOiAweDAwMDAK
CVR5cGU6IE1vdGhlcmJvYXJkCgpIYW5kbGUgMHgwMDAzLCBETUkgdHlwZSAzLCAyMSBieXRlcwpD
aGFzc2lzIEluZm9ybWF0aW9uCglNYW51ZmFjdHVyZXI6IHJhc3BiZXJyeXBpCglUeXBlOiBEZXNr
dG9wCglMb2NrOiBOb3QgUHJlc2VudAoJVmVyc2lvbjogTm90IFNwZWNpZmllZAoJU2VyaWFsIE51
bWJlcjogTm90IFNwZWNpZmllZAoJQXNzZXQgVGFnOiBOb3QgU3BlY2lmaWVkCglCb290LXVwIFN0
YXRlOiBTYWZlCglQb3dlciBTdXBwbHkgU3RhdGU6IFNhZmUKCVRoZXJtYWwgU3RhdGU6IFNhZmUK
CVNlY3VyaXR5IFN0YXR1czogTm9uZQoJT0VNIEluZm9ybWF0aW9uOiAweDAwMDAwMDAwCglIZWln
aHQ6IFVuc3BlY2lmaWVkCglOdW1iZXIgT2YgUG93ZXIgQ29yZHM6IFVuc3BlY2lmaWVkCglDb250
YWluZWQgRWxlbWVudHM6IDAKCkhhbmRsZSAweDAwMDQsIERNSSB0eXBlIDQsIDQ4IGJ5dGVzClBy
b2Nlc3NvciBJbmZvcm1hdGlvbgoJU29ja2V0IERlc2lnbmF0aW9uOiBOb3QgU3BlY2lmaWVkCglU
eXBlOiBDZW50cmFsIFByb2Nlc3NvcgoJRmFtaWx5OiBVbmtub3duCglNYW51ZmFjdHVyZXI6IFVu
a25vd24KCUlEOiAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMAoJVmVyc2lvbjogVW5rbm93bgoJVm9s
dGFnZTogVW5rbm93bgoJRXh0ZXJuYWwgQ2xvY2s6IFVua25vd24KCU1heCBTcGVlZDogVW5rbm93
bgoJQ3VycmVudCBTcGVlZDogVW5rbm93bgoJU3RhdHVzOiBVbnBvcHVsYXRlZAoJVXBncmFkZTog
Tm9uZQoJTDEgQ2FjaGUgSGFuZGxlOiBOb3QgUHJvdmlkZWQKCUwyIENhY2hlIEhhbmRsZTogTm90
IFByb3ZpZGVkCglMMyBDYWNoZSBIYW5kbGU6IE5vdCBQcm92aWRlZAoJU2VyaWFsIE51bWJlcjog
Tm90IFNwZWNpZmllZAoJQXNzZXQgVGFnOiBOb3QgU3BlY2lmaWVkCglQYXJ0IE51bWJlcjogTm90
IFNwZWNpZmllZAoJQ2hhcmFjdGVyaXN0aWNzOiBOb25lCgpIYW5kbGUgMHgwMDA1LCBETUkgdHlw
ZSAzMiwgMTEgYnl0ZXMKU3lzdGVtIEJvb3QgSW5mb3JtYXRpb24KCVN0YXR1czogTm8gZXJyb3Jz
IGRldGVjdGVkCgpIYW5kbGUgMHgwMDA2LCBETUkgdHlwZSAxMjcsIDQgYnl0ZXMKRW5kIE9mIFRh
YmxlCgoKUmVnYXJkcywKQW5kcmVhcwoKLS0gClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1h
bnkgR21iSApNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkKR0Y6IEZlbGl4
IEltZW5kw7ZyZmZlcgpIUkIgMzY4MDkgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
