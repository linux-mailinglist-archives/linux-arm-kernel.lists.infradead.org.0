Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D84F5C9A34
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 10:45:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=afmhUQ/duRfXcIil+X6YXshAiiRfCO5kAPeiyQZu31o=; b=LRoc3qLQh5rGC8
	cS6HybiLbyKF1w2k3yaSnF/qFOqmIHDjbEUhA+ySMZ88c9GWbyW3XX4wZnsaxDPRW8B7mzBATbVq/
	4LD/Wul3ghE1AaE7y4IBdoD7dqrZYqby03KBOEBH+/X6JsfFuG9ooOS4WpFKlrBpdUGZt3ok7CDdK
	zbdkl4YJw3t4VH1gNlnPPMM97yochuQNF1Dqy5iSybIIcz3aEmsQXiX6+PRSFLHBs9sMeYyS/k1i+
	UW3ahk6OOep9RMojdKlLSrYO683SAlJliUF2io8qLZGFs4f/4BOiQ3MHyyrrw6bFYaEtsQ/3H2drb
	mhr+nUdbf2U6j0s7joGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFwjb-0000uF-1q; Thu, 03 Oct 2019 08:45:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFwjT-0000bE-QM
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 08:45:09 +0000
Received: from X250 (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9638F2133F;
 Thu,  3 Oct 2019 08:44:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570092307;
 bh=mCXGpj7WUx1zpUig4d9GBPTN3mh9KYKoc3jEyRS/aSQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=l9ENMG7k45sF1sGBU5HHbYVGKpAuQFOR4YHFwEOBjQzSzVJvtBTv227bwvItXDLtr
 3YVL4LG0GM4Je9MWCKBozpcn0u7LYq33q8sZq6CdvpnC8Sq4JHa0CncJHWnPxXseaU
 CheiWmMoXsJfM3eYG+sdBWns78jV6wGGLhGPYNCo=
Date: Thu, 3 Oct 2019 16:44:47 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Andy Tang <andy.tang@nxp.com>
Subject: Re: [EXT] Re: [PATCH] arm64: dts: ls1028a: fix a compatible issue
Message-ID: <20191003084443.GA22491@X250>
References: <20190829073439.13069-1-andy.tang@nxp.com>
 <20190914024231.GB3425@dragon>
 <VI1PR04MB4333F1CF5DF521678575D61EF3840@VI1PR04MB4333.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB4333F1CF5DF521678575D61EF3840@VI1PR04MB4333.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_014507_881233_8D77DA7C 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Leo Li <leoyang.li@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBTZXAgMjQsIDIwMTkgYXQgMDg6MDA6MjlBTSArMDAwMCwgQW5keSBUYW5nIHdyb3Rl
Ogo+IEhpIFNoYXduLAo+IAo+IAo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+IEZy
b206IFNoYXduIEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz4KPiA+IFNlbnQ6IDIwMTnlubQ55pyI
MTTml6UgMTA6NDMKPiA+IFRvOiBBbmR5IFRhbmcgPGFuZHkudGFuZ0BueHAuY29tPgo+ID4gQ2M6
IExlbyBMaSA8bGVveWFuZy5saUBueHAuY29tPjsgcm9iaCtkdEBrZXJuZWwub3JnOwo+ID4gbWFy
ay5ydXRsYW5kQGFybS5jb207IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsK
PiA+IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnCj4gPiBTdWJqZWN0OiBbRVhUXSBSZTogW1BB
VENIXSBhcm02NDogZHRzOiBsczEwMjhhOiBmaXggYSBjb21wYXRpYmxlIGlzc3VlCj4gPiAKPiA+
IENhdXRpb246IEVYVCBFbWFpbAo+ID4gCj4gPiBPbiBUaHUsIEF1ZyAyOSwgMjAxOSBhdCAwMzoz
NDozOVBNICswODAwLCBZdWFudGlhbiBUYW5nIHdyb3RlOgo+ID4gPiBUaGUgSTJDIG11bHRpcGxl
eGVyIHVzZWQgb24gbHMxMDI4YXFkcyBpcyBQQ0E5NTQ3LCBub3QgUENBOTg0Ny4KPiA+ID4gU28g
Y29ycmVjdCBpdC4KPiA+IAo+ID4gQ2FuIGVsYWJvcmF0ZSB0aGUgZml4IGEgbGl0dGxlIGJpdCwg
c2F5aW5nIHdoYXQncyB0aGUgaXNzdWUgZXhhY3RseSB3aXRoIHVzaW5nCj4gPiB0aGF0IGluY29y
cmVjdCBjb21wYXRpYmxlPwo+IE9rLgo+IAo+ID4gCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6
IFl1YW50aWFuIFRhbmcgPGFuZHkudGFuZ0BueHAuY29tPgo+ID4gCj4gPiBEbyB3ZSBuZWVkIGEg
Zml4IHRhZz8KPiBXaGF0IGRvZXMgImZpeCB0YWciIG1lYW4/IAoKUGxlYXNlIHNlYXJjaCAnRml4
ZXMnIGluIERvY3VtZW50YXRpb24vcHJvY2Vzcy9zdWJtaXR0aW5nLXBhdGNoZXMucnN0LgoKU2hh
d24KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
