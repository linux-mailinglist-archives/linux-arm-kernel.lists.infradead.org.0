Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51547A550D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 13:39:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KKKXLhscm+GGFaioARye2agKSaQdYsMdVenyHgD0T78=; b=DQdouRFNAHjgHZ
	SsoZ0Kvmcz4n2Q9g+Va8Lm9qvQeXiX6dS2TQfmny+ef4gXlZKKciboy2l1vi4Pjut1k/SGH0aUwlY
	ZTmlFDiYXd2q3msVOC8BvGiL2ricBxCm12wZROZ8seSo7ZZDGGMgPUt7kAEVNuWY0tictLTs41yXr
	OA8WMkAtE7Z8kfvL36dklOQSEXxzE1nEbNfVAhrA0AfwUyE5ERsvOkBUeRON52+7/9q4ZaVO73jyo
	bzhdui2ziDJMR8qhVgx9KczXa4iQt8WiBHpGFA7fAIADIfMvDdCWuIgJFUDWuENvvOZPCe8ZMT2ms
	ovs9eSoi50fynnURAoGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4kfz-00027F-SP; Mon, 02 Sep 2019 11:39:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4kfa-0001xO-HN
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 11:38:52 +0000
Received: from localhost (smbhubinfra01.hotspot.hub-one.net [213.174.99.146])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 01F0A217F4;
 Mon,  2 Sep 2019 11:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567424329;
 bh=OpXxr+BU7p7KY33dk2QGMbECJ2xkRL8tD6em4euS+OI=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=khYckrjHLYrPNF+DLRGhNBfCjgMQqqQsWK1NB5KuaWlopBlWjd5X8T5z04GamgAQV
 R51kwjGe2B1t45Vbg1E53IvO8NaEf4VreaDhzYn2gmdvytiRmD6KW9ohqmZsF6MIlk
 prJ2BS0EdCXdFPirFpAfjg639HJgdJD56kA0givg=
Date: Mon, 2 Sep 2019 13:38:46 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>, wens@csie.org,
 robh+dt@kernel.org, mark.rutland@arm.com,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH] arm64: dts: allwinner: a64: pine64-plus: Add PHY
 regulator delay
Message-ID: <20190902113846.752jdgr3czywuieh@flea>
References: <20190825130336.14154-1-jernej.skrabec@siol.net>
 <20190827133443.fdxl5wjmgkerc3uh@flea>
 <20190827134806.5l7dxyvzjrvabh7o@core.my.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827134806.5l7dxyvzjrvabh7o@core.my.home>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_043850_740249_F9E29849 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBBdWcgMjcsIDIwMTkgYXQgMDM6NDg6MDZQTSArMDIwMCwgT25kxZllaiBKaXJtYW4g
d3JvdGU6Cj4gSGksCj4KPiBPbiBUdWUsIEF1ZyAyNywgMjAxOSBhdCAwMzozNDo0M1BNICswMjAw
LCBNYXhpbWUgUmlwYXJkIHdyb3RlOgo+ID4gT24gU3VuLCBBdWcgMjUsIDIwMTkgYXQgMDM6MDM6
MzZQTSArMDIwMCwgSmVybmVqIFNrcmFiZWMgd3JvdGU6Cj4gPiA+IERlcGVuZGluZyBvbiBrZXJu
ZWwgYW5kIGJvb3Rsb2FkZXIgY29uZmlndXJhdGlvbiwgaXQncyBwb3NzaWJsZSB0aGF0Cj4gPiA+
IFJlYWx0ZWsgZXRoZXJuZXQgUEhZIGlzbid0IHBvd2VyZWQgb24gcHJvcGVybHkuIEl0IG5lZWRz
IHNvbWUgdGltZQo+ID4gPiBiZWZvcmUgaXQgY2FuIGJlIHVzZWQuCj4gPiA+Cj4gPiA+IEZpeCB0
aGF0IGJ5IGFkZGluZyAxMDBtcyByYW1wIGRlbGF5IHRvIHJlZ3VsYXRvciByZXNwb25zaWJsZSBm
b3IKPiA+ID4gcG93ZXJpbmcgUEhZLgo+ID4gPgo+ID4gPiBGaXhlczogOTRkY2ZkYzc3ZmM1ICgi
YXJtNjQ6IGFsbHdpbm5lcjogcGluZTY0LXBsdXM6IEVuYWJsZSBkd21hYy1zdW44aSIpCj4gPiA+
IFN1Z2dlc3RlZC1ieTogT25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+Cj4gPiA+IFNp
Z25lZC1vZmYtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KPiA+
Cj4gPiBIb3cgd2FzIHRoYXQgZGVsYXkgZm91bmQ/Cj4KPiBJIHN1Z2dlc3RlZCBpdC4gVGhlcmUn
cyBubyBkZWxheSBpbiB0aGUgZHdtYWMtc3VuOGkgZHJpdmVyLCBzbyBhZnRlciBlbmFibGluZwo+
IHRoZSBwaHkgcG93ZXIsIGl0IHdpbGwgc3RhcnQgYWNjZXNzaW5nIGl0IG92ZXIgTURJTyByaWdo
dCBhd2F5LCB3aGljaCBpcyBub3QKPiBnb29kLgo+Cj4gSSBzdWdnZXN0ZWQgdGhlIHZhbHVlIGJh
c2VkIG9uIHBvc3QtcmVzZXQgZGVsYXkgaW4gdGhlIFBIWSdzIGRhdGFzaGVldCAoMzBtcykuCj4g
TXVsdGlwbGllZCB+M3ggKGlmIEkgcmVtZW1iZXIgY29ycmVjdGx5KSB0byBnZXQgc29tZSBzYWZl
dHkgbWFyZ2luLiBDaGlwIGhhcwo+IG1vcmUgdG8gZG8gdGhlbiBhZnRlciB0aGUgSFcgcmVzZXQs
IGFuZCByZWd1bGF0b3IgYWxzbyBuZWVkcyBzb21lIHRpbWUgdG8KPiByYW1wLXVwLgoKVGhhdCBz
b3VuZHMgcmVhc29uYWJsZSwgY2FuIHlvdSBhZGQgdGhhdCBhcyBhIGNvbW1lbnQ/CgpUaGFua3Mh
Ck1heGltZQoKLS0KTWF4aW1lIFJpcGFyZCwgQm9vdGxpbgpFbWJlZGRlZCBMaW51eCBhbmQgS2Vy
bmVsIGVuZ2luZWVyaW5nCmh0dHBzOi8vYm9vdGxpbi5jb20KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
