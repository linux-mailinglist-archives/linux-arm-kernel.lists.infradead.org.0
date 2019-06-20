Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 973424C9D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 10:50:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+1lvLmVyTRlh1ETjn2EEA+Hu8gZi9IIOHu742KAwQQ=; b=bAa0luJOlxFih/
	UK3r9AOxqBQ0cbhQTH6lgMyBPSDdgzltvpJApA7Ii2VAQqCt4juHmSBHV/UACrnW+NjOdNO1YmM2W
	KexrY2Ex5FbeKmtjr8gGGmZNuGb5bBl8o4n/rklgIyXlZ9ATFzby+BF6DbrnuALO2NP+HlFyd26Qv
	WH1T8nfWwUce+CNIh7CIUyjhUk0TeIetbcffYe54IBBaVOvDZIW+QUpSVcYgiyASbcRzY9n61UNZL
	6Pyx38d05JUcKCqnHLP72qiHl7w63XsnC68CZYzD4Y4lnVO7WclILIeNSPA3zLhmYGiGDb0w78Gfa
	i6vJYZwaByhtavAnO1Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdsmT-0005hy-0p; Thu, 20 Jun 2019 08:50:53 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdsm9-0005hf-N0
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 08:50:35 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5K8oPWT013042;
 Thu, 20 Jun 2019 03:50:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561020625;
 bh=ZvdTayQSZVxrbxnmLhuudH8+x8XODmTbZSOFAYzkOH0=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=yQcQxeYXgas589nX61LGHgsETt9+I5jlLjqKaFQO/0cV80Umo8zpuMb9/74EeQj+W
 pvcqdtOdUQsiPDP7w3uwKlyIXJzO7jrnZSRr+749ZIwZW5UpiNi2dr+dy5UG6528JU
 YkxAWMVgKoblEXhXllSZe43sV0TPyezzuTVh1UXc=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5K8oPQN092929
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 20 Jun 2019 03:50:25 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 20
 Jun 2019 03:50:25 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 20 Jun 2019 03:50:25 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5K8oIqb044496;
 Thu, 20 Jun 2019 03:50:19 -0500
Subject: Re: [PATCH v11 2/2] phy: Add driver for mixel mipi dphy found on
 NXP's i.MX8 SoCs
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Fabio Estevam <festevam@gmail.com>, =?UTF-8?Q?Guido_G=c3=bcnther?=
 <agx@sigxcpu.org>
References: <cover.1557657814.git.agx@sigxcpu.org>
 <2000bc4564175abd7966207a5e9fbb9bb7d82059.1557657814.git.agx@sigxcpu.org>
 <CAOMZO5BaFYJxh1v46n2mdPyc+-jg6LgvoGR1rTE+yHZg_0Z8PA@mail.gmail.com>
 <69fcb327-8b51-df9e-12d9-d75751974bce@ti.com>
Message-ID: <9a872f5b-1544-32a0-bd93-1d6333468114@ti.com>
Date: Thu, 20 Jun 2019 14:18:53 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <69fcb327-8b51-df9e-12d9-d75751974bce@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_015033_885789_34B3376B 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE
 TREE BINDINGS" <devicetree@vger.kernel.org>, Li Jun <jun.li@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>, Sam Ravnborg <sam@ravnborg.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Johan Hovold <johan@kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Abel Vesa <abel.vesa@nxp.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Robert Chiras <robert.chiras@nxp.com>, Thierry Reding <treding@nvidia.com>,
 Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>,
 "moderated list:ARM/FREESCALE
 IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAyNC8wNS8xOSA5OjMxIFBNLCBLaXNob24gVmlqYXkgQWJyYWhhbSBJIHdyb3RlOgo+
IEhpLAo+IAo+IE9uIDI0LzA1LzE5IDU6NTMgUE0sIEZhYmlvIEVzdGV2YW0gd3JvdGU6Cj4+IEhp
IEtpc2hvbiwKPj4KPj4gT24gU3VuLCBNYXkgMTIsIDIwMTkgYXQgNzo0OSBBTSBHdWlkbyBHw7xu
dGhlciA8YWd4QHNpZ3hjcHUub3JnPiB3cm90ZToKPj4+Cj4+PiBUaGlzIGFkZHMgc3VwcG9ydCBm
b3IgdGhlIE1peGVsIERQSFkgYXMgZm91bmQgb24gaS5NWDggQ1BVcyBidXQgc2luY2UKPj4+IHRo
aXMgaXMgYW4gSVAgY29yZSBpdCB3aWxsIGxpa2VseSBiZSBmb3VuZCBvbiBvdGhlcnMgaW4gdGhl
IGZ1dHVyZS4gU28KPj4+IGluc3RlYWQgb2YgYWRkaW5nIHRoaXMgdG8gdGhlIG53bCBob3N0IGRy
aXZlciBtYWtlIGl0IGEgZ2VuZXJpYyBQSFkKPj4+IGRyaXZlci4KPj4+Cj4+PiBUaGUgZHJpdmVy
IHN1cHBvcnRzIHRoZSBpLk1YOE1RLiBTdXBwb3J0IGZvciBpLk1YOFFNIGFuZCBpLk1YOFFYUCBj
YW4gYmUKPj4+IGFkZGVkIG9uY2UgdGhlIG5lY2Vzc2FyeSBzeXN0ZW0gY29udHJvbGxlciBiaXRz
IGFyZSBpbiB2aWEKPj4+IG1peGVsX2RwaHlfZGV2ZGF0YS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5
OiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPgo+Pj4gQ28tZGV2ZWxvcGVkLWJ5OiBS
b2JlcnQgQ2hpcmFzIDxyb2JlcnQuY2hpcmFzQG54cC5jb20+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBS
b2JlcnQgQ2hpcmFzIDxyb2JlcnQuY2hpcmFzQG54cC5jb20+Cj4+PiBSZXZpZXdlZC1ieTogRmFi
aW8gRXN0ZXZhbSA8ZmVzdGV2YW1AZ21haWwuY29tPgo+Pj4gUmV2aWV3ZWQtYnk6IFNhbSBSYXZu
Ym9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KPj4KPj4gV291bGQgeW91IGhhdmUgYW55IGNvbW1lbnRz
IG9uIHRoaXMgc2VyaWVzLCBwbGVhc2U/Cj4gCj4gSSBkb24ndCBoYXZlIGFueSBjb21tZW50cy4g
SSdsbCBxdWV1ZSB0aGlzIG9uY2UgSSBzdGFydCBxdWV1aW5nIHBhdGNoZXMgZm9yIHRoZQo+IG5l
eHQgbWVyZ2Ugd2luZG93LgoKQ2FuIHlvdSBmaXggdGhlIGZvbGxvd2luZyBjaGVja3BhdGNoIHdh
cm5pbmcgYW5kIHJlcG9zdD8KV0FSTklORzogcXVvdGVkIHN0cmluZyBzcGxpdCBhY3Jvc3MgbGlu
ZXMKIzQyMDogRklMRTogZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OC1taXBpLWRw
aHkuYzoyODA6CisJZGV2X2RiZygmcGh5LT5kZXYsICJoc19wcmVwYXJlOiAldSwgY2xrX3ByZXBh
cmU6ICV1LCAiCisJCSJoc196ZXJvOiAldSwgY2xrX3plcm86ICV1LCAiCgpXQVJOSU5HOiBxdW90
ZWQgc3RyaW5nIHNwbGl0IGFjcm9zcyBsaW5lcwojNDIxOiBGSUxFOiBkcml2ZXJzL3BoeS9mcmVl
c2NhbGUvcGh5LWZzbC1pbXg4LW1pcGktZHBoeS5jOjI4MToKKwkJImhzX3plcm86ICV1LCBjbGtf
emVybzogJXUsICIKKwkJImhzX3RyYWlsOiAldSwgY2xrX3RyYWlsOiAldSwgIgoKV0FSTklORzog
cXVvdGVkIHN0cmluZyBzcGxpdCBhY3Jvc3MgbGluZXMKIzQyMjogRklMRTogZHJpdmVycy9waHkv
ZnJlZXNjYWxlL3BoeS1mc2wtaW14OC1taXBpLWRwaHkuYzoyODI6CisJCSJoc190cmFpbDogJXUs
IGNsa190cmFpbDogJXUsICIKKwkJInJ4aHNfc2V0dGxlOiAldVxuIiwKClRoYW5rcwpLaXNob24K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
