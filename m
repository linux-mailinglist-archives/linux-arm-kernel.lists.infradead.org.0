Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 557DC1008C6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 16:56:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AYbPjKzkPKjk18MzvuGyzbVk7DDcC/hUdCyfQQmpiEE=; b=q2ASDRJi+k7Taw
	lWE0e54kNo5ODYHXkwITWzymIWcyKsln/wRkD/NpaCQgPM4T1rGOgYtB9EcgxD1nPb+DosIiL3MUM
	9rT3jopUgD3uq7BL47y9oL49GUiszIQINIgrzYCwr5l4NDW7qZjy7eotbQ73Wq/Oaukmc3O2tvYp0
	eHJKfqAFd+Ghwbc31oYEYFfdNYkpFrjauq5qTxrPp7x8S9mIM53tqu0z4uKq7HvLospg7QnOjj+bP
	l8bCluzIsjdYnB9EonZuII+a8IQzcKY2FY1a1ecFJyVXLTcH1fG/Lvp6ErjGyFnqBCCMfsYbUyZEb
	7ziS7cMPUKh37sG8mDrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWjNh-0001Eb-U9; Mon, 18 Nov 2019 15:56:01 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWjNU-0001DC-J4; Mon, 18 Nov 2019 15:55:50 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id AC87E80BF;
 Mon, 18 Nov 2019 15:56:19 +0000 (UTC)
Date: Mon, 18 Nov 2019 07:55:39 -0800
From: Tony Lindgren <tony@atomide.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: Sense of soc bus? (was: [PATCH] base: soc: Export
 soc_device_to_device() helper)
Message-ID: <20191118155539.GB35479@atomide.com>
References: <586fa37c-6292-aca4-fa7c-73064858afaf@suse.de>
 <20191111064040.GA3502217@kroah.com>
 <a88442df-dc6b-07e5-8dee-9e308bdda450@suse.de>
 <20191112052347.GA1197504@kroah.com>
 <20191112072926.isjxfa4ci6akhx56@pengutronix.de>
 <aff81b8e-f041-73a5-6a95-d308fa07842c@suse.de>
 <c8572f70-5550-8cee-4381-fd7de7ae5af0@baylibre.com>
 <CAMuHMdWOWWQoJh5=07VMRhtrFR_Gc_qNhjTV4tCsvwvMn0kYfA@mail.gmail.com>
 <a0a6d71f-4fb7-51ce-fe33-74f9e588b791@suse.de>
 <CAMuHMdU7EYHWRAR+s3ee4Wy6+6_MZON5xARszO7TDXZGyw8d5w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdU7EYHWRAR+s3ee4Wy6+6_MZON5xARszO7TDXZGyw8d5w@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_075548_672972_798FC7FD 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 linux-realtek-soc@lists.infradead.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 Rob Herring <robh@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Michal Simek <michal.simek@xilinx.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 boot-architecture@lists.linaro.org, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Lee Jones <lee.jones@linaro.org>,
 "open list:TI ETHERNET SWITCH DRIVER \(CPSW\)" <linux-omap@vger.kernel.org>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Andreas =?utf-8?Q?F=C3=A4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0QGxpbnV4LW02OGsub3JnPiBbMTkxMTE1IDE1OjUx
XToKPiBPbiBGcmksIE5vdiAxNSwgMjAxOSBhdCAxOjAxIFBNIEFuZHJlYXMgRsOkcmJlciA8YWZh
ZXJiZXJAc3VzZS5kZT4gd3JvdGU6Cj4gPiBBbSAxNS4xMS4xOSB1bSAwOTo1OCBzY2hyaWViIEdl
ZXJ0IFV5dHRlcmhvZXZlbjoKPiA+ID4gV2UgZG8gb3VyIGJlc3QgdG8gdXNlIGl0IHNvbGVseSBm
b3IgZGV0ZWN0aW5nIHF1aXJrcyBpbiBlYXJseSBTb0MgcmV2aXNpb25zLgo+ID4KPiA+IEdvdCBh
IHBvaW50ZXI/IEkgZmFpbCB0byBpbW1lZGlhdGVseSB1bmRlcnN0YW5kIGhvdyBzeXNmcyB3b3Vs
ZCBoZWxwCj4gPiBkcml2ZXJzIChhcyBvcHBvc2VkIHRvIHVzZXJzcGFjZSkgZGV0ZWN0IHF1aXJr
czogUGFyc2luZyBzdHJpbmdzIGJhY2sKPiA+IGRvZXNuJ3Qgc291bmQgZWZmaWNpZW50LCBhbmQg
SSBkb24ndCBzZWUgeW91IGV4cG9ydGluZyBhbnkgY3VzdG9tIEFQSXMKPiA+IGluIGRyaXZlcnMv
c29jL3JlbmVzYXMvcmVuZXNhcy1zb2MuYz8KPiAKPiBXZSB1c2Ugc29jX2RldmljZV9tYXRjaCgp
LCBpbnNpZGUga2VybmVsIGRyaXZlcnMuCj4gRXhwb3N1cmUgdGhyb3VnaCBzeXNmcyBpcyBhIHNp
ZGUtZWZmZWN0IG9mIHVzaW5nIHNvY19kZXZpY2VfcmVnaXN0ZXIoKSwKPiBhbmQgd2VsY29tZWQs
IGFzIGl0IGFsbG93cyB0aGUgdXNlciB0byBmaW5kIG91dCBxdWlja2x5IHdoaWNoIFNvQyBhbmQK
PiByZXZpc2lvbiBpcyBiZWluZyB1c2VkLgoKRm9yIHRoZSBvbWFwIHZhcmlhbnRzIHRvbywgd2Un
dmUgc28gZmFyIGdvdHRlbiBhd2F5IHdpdGggZWFybHkgU29DCmRldGVjdGlvbiBmb3IgcGxhdGZv
cm0gY29kZSwgYW5kIHRoZW4gdXNlIHNvY19kZXZpY2VfbWF0Y2goKSBpbiBmZXcKY2FzZXMgZm9y
IGRyaXZlcnMgYXQgcHJvYmUgdGltZSBpZiBuZWVkZWQuCgpSZWdhcmRzLAoKVG9ueQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
