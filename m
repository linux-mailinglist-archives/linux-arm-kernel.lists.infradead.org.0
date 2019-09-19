Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D41A0B7548
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 10:39:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uDioOwKfB2jKAC9xrwepYyGmeIuZgK3tgVrh0fZ8t+M=; b=few5g83s/BRFrh
	M3Pr2293pYs7phh30xyo9Yd+XMFjtFMeh6qmRaxFXp3kq4QBQoywEi6hy0qwgJGeLnHy5NasMP73C
	OgNpr4TIC5Eado4MkC1fOdkTnwWDvmdCyHn7aFdo39eGSDcobcMK9zWhhdTPDIF5ObLY7bdwhw7Vt
	oMtyyatGBaxxb/DBIq3g3gfEzB7C+VZ38pi5h8ZEMTgYOKeqfNl0jv3DnPTz9UuoKKfJVmSg1K2Ig
	udoY6eyj99aNX43wo4Y0mGk/Vt4rAv7h3oSNoV/eY+Fu/lJl3bqBTXUq1QZ00pzRrWwR82VS6MrPn
	cvNiLPnqhB76YSthwYmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iArxu-0002rf-1d; Thu, 19 Sep 2019 08:39:02 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iArxF-0002qx-LS
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 08:38:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H470QmtT42YmIjogAwKAdDemx0o9SL04xgAco7MNweY=; b=DfrqAszCvhsjOsgJvZ9j9xxjX
 AARD6swyFsDNGpCPjU3mdvKkqbvFaMXefBKb+4lQES+rogEvEI1V7mLSSXLDOmQ0r28fBrhNDWUcI
 5qv3zcqOCrQAfUKcnID82ARLrxVHlAwTRt0v8VxnBtLiHs1OsEcO647VmDi956lXEUOJp1wNIvea6
 sLfsbiyDbSiS4yZOkJglXZ0guNIPASN5NA3cPdUrYQnlAWGHYEZgDhBe89wbEAwkutkTCRFlvmiIW
 UUXYPyR4sRzFpFya9gkoweWfQArknihihblvK4jVuRX3uCk6mQxWN4kq8VmqJeI2dTVRgUY+AoPoQ
 43Yjp4SfA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:45518)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iArx2-0004zu-I6; Thu, 19 Sep 2019 09:38:08 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iArwy-00036m-1n; Thu, 19 Sep 2019 09:38:04 +0100
Date: Thu, 19 Sep 2019 09:38:04 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: "Y.b. Lu" <yangbo.lu@nxp.com>
Subject: Re: [REGRESSION] sdhci no longer detects SD cards on LX2160A
Message-ID: <20190919083803.GG25745@shell.armlinux.org.uk>
References: <20190917130759.GO25745@shell.armlinux.org.uk>
 <CAOMZO5DXv8g5qTGdvobDdLWim+tW=vK4+K=P-VqJK23KERMhJw@mail.gmail.com>
 <20190917133317.GQ25745@shell.armlinux.org.uk>
 <CAOMZO5DS_1Uc9TMc29e+8tCg-srvMjf3uth_9P3cnro6det+7A@mail.gmail.com>
 <20190917135157.GT25745@shell.armlinux.org.uk>
 <CAOMZO5BDirX0Fwo716v1ddYaaO+OL8Woht63mw8OEhDuMBTb8Q@mail.gmail.com>
 <CADRPPNQ-WTY0QC7_bX=N0QeueKve=k0SaMvbjOrByyvzFojz2g@mail.gmail.com>
 <VI1PR0401MB22376A0EA85123B2AEB72EDEF8890@VI1PR0401MB2237.eurprd04.prod.outlook.com>
 <20190919070435.GF25745@shell.armlinux.org.uk>
 <VI1PR0401MB2237E1B46D540B4362417AEEF8890@VI1PR0401MB2237.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR0401MB2237E1B46D540B4362417AEEF8890@VI1PR0401MB2237.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_013822_124968_A285DDA5 
X-CRM114-Status: GOOD (  30.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dann frazier <dann.frazier@canonical.com>,
 Will Deacon <will.deacon@arm.com>, Adrian Hunter <adrian.hunter@intel.com>,
 Leo Li <leoyang.li@nxp.com>, Nicolin Chen <nicoleotsuka@gmail.com>,
 linux-mmc <linux-mmc@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpUaGFua3MgZm9yIHRoZSByZXBseS4KCkkgc2VlIHRoYXQgdGhpcyBiaXQgaXMgbWFya2Vk
ICJyZXNlcnZlZCIgaW4gdGhlIExYMjE2MEEgcmVmZXJlbmNlCm1hbnVhbC4KClRoaXMgYnJpbmdz
IHVwIHNvbWUgZnVydGhlciBxdWVzdGlvbnMuCgpUaGUgRFQgcHJvcGVydHkgImRtYS1jb2hlcmVu
dCIgaXMgdXNlZCB0byB0ZWxsIHRoZSBPUyB3aGV0aGVyIHRoZQpkZXZpY2UgaXMgRE1BIGNvaGVy
ZW50IG9yIG5vdC4gIElmIHRoaXMgcHJvcGVydHkgaXMgbWlzc2luZywgYnV0IHRoZQpkZXZpY2Ug
aXMgc2V0IGFzIERNQSBjb2hlcmVudCwgYW5kIHRoZSBPUyB1c2VzICJub3JtYWwsIG5vbi1jYWNo
ZWFibGUiCm1lbW9yeSBmb3IgdGhlIEFETUEgdGFibGUsIHRoZW4gZXJyb3JzIGNhbiBvY2N1ciBp
ZiB0aGVyZSBhcmUgc3RhbGUKY2FjaGUgbGluZXMgY29ycmVzcG9uZGluZyB0byB0aGUgbWVtb3J5
IHVzZWQuICBUaGUgZVNESEMgY29udHJvbGxlcgp3aWxsIHNlZSB0aGUgc3RhbGUgY2FjaGUgbGlu
ZXMsIGJ1dCB0aGUgQ1BVIHdpbGwgbm90LgoKQWRkaW5nICJkbWEtY29oZXJlbnQiIHRvIHRoZSBE
VCBkZWNsYXJhdGlvbnMgYWxvbmUgZG9lcyBub3Qgc2VlbSB0bwpiZSB0aGUgcmlnaHQgc29sdXRp
b24gLSBpZiB3ZSBoYXZlIGFuIE9TIHRoYXQgZG9lcyBub3Qgc2V0IHRoZQpFU0RIQ19ETUFfU05P
T1AgYml0LCB0aGVuIHdlIGhhdmUgYSBzaW1pbGFyIGlzc3VlLgoKU2hvdWxkbid0IEVTREhDX0RN
QV9TTk9PUCBiZSBzZXQgZGVwZW5kaW5nIG9uIHdoZXRoZXIgdGhlIGRldmljZSBpcwpETUEgY29o
ZXJlbnQgb3Igbm90PwoKTm90ZSB0aGF0IHRoZSBkZXZpY2UgaXMgX25vdF8gbWFya2VkIGFzICJk
bWEtY29oZXJlbnQiIGluIGVpdGhlcgptYWlubGluZSBub3IgaW4gdGhlIExTREstMTkuMDYtVjQu
MTkgYnJhbmNoIG9mCmh0dHBzOi8vc291cmNlLmNvZGVhdXJvcmEub3JnL2V4dGVybmFsL3Fvcmlx
L3FvcmlxLWNvbXBvbmVudHMvbGludXgKdG8gYXZvaWQgQURNQSBkZXNjcmlwdG9yIGZldGNoIGVy
cm9ycywgd2hpY2ggbGVhZHMgdG8gdGhpcyBlcnJvciB0aGF0CmhhcyBub3cgYmVlbiBvYnNlcnZl
ZCB3aXRoIHY1LjMga2VybmVscyAtIGNhdXNlZCBwcmVjaXNlbHkgYXMgSQpkZXNjcmliZSBhYm92
ZS4KClRoYW5rcy4KCk9uIFRodSwgU2VwIDE5LCAyMDE5IGF0IDA4OjE1OjAwQU0gKzAwMDAsIFku
Yi4gTHUgd3JvdGU6Cj4gSGkgUnVzc2VsbCwKPiAKPiBUaGUgRVNESENfRE1BX1NOT09QIGJpdCBp
cyBhbHdheXMgc2V0IGluIGVTREhDIGRyaXZlciBmb3IgRE1BLgo+IAo+IDFiIC0gRE1BIHRyYW5z
YWN0aW9ucyBhcmUgc25vb3BlZCBieSB0aGUgQ1BVIGRhdGEgY2FjaGUuCj4gMGIgLSBETUEgdHJh
bnNhY3Rpb25zIGFyZSBub3Qgc25vb3BlZCBieSB0aGUgQ1BVIGRhdGEgY2FjaGUuCj4gCj4gVGhh
bmtzIGEgbG90Lgo+IAo+IEJlc3QgcmVnYXJkcywKPiBZYW5nYm8gTHUKPiAKPiA+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBSdXNzZWxsIEtpbmcgLSBBUk0gTGludXggYWRt
aW4gPGxpbnV4QGFybWxpbnV4Lm9yZy51az4KPiA+IFNlbnQ6IFRodXJzZGF5LCBTZXB0ZW1iZXIg
MTksIDIwMTkgMzowNSBQTQo+ID4gVG86IFkuYi4gTHUgPHlhbmdiby5sdUBueHAuY29tPgo+ID4g
Q2M6IExlbyBMaSA8bGVveWFuZy5saUBueHAuY29tPjsgRmFiaW8gRXN0ZXZhbSA8ZmVzdGV2YW1A
Z21haWwuY29tPjsKPiA+IEFkcmlhbiBIdW50ZXIgPGFkcmlhbi5odW50ZXJAaW50ZWwuY29tPjsg
Q2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+Owo+ID4gTGludXggQVJNIDxsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc+OyBOaWNvbGluIENoZW4KPiA+IDxuaWNvbGVvdHN1
a2FAZ21haWwuY29tPjsgV2lsbCBEZWFjb24gPHdpbGwuZGVhY29uQGFybS5jb20+OyBkYW5uCj4g
PiBmcmF6aWVyIDxkYW5uLmZyYXppZXJAY2Fub25pY2FsLmNvbT47IGxpbnV4LW1tYwo+ID4gPGxp
bnV4LW1tY0B2Z2VyLmtlcm5lbC5vcmc+Cj4gPiBTdWJqZWN0OiBSZTogW1JFR1JFU1NJT05dIHNk
aGNpIG5vIGxvbmdlciBkZXRlY3RzIFNEIGNhcmRzIG9uIExYMjE2MEEKPiA+IAo+ID4gSGksCj4g
PiAKPiA+IFRoaXMgaXMgbm90IHRoZSBpc3N1ZSwgc2luY2UgdGhlIHByb2JsZW0gaGFzIGJlZW4g
b2JzZXJ2ZWQgd2l0aCBlTU1DIHRvbywKPiA+IGFuZCBpcyBzcG9yYWRpYyBpbiBuYXR1cmUuCj4g
PiAKPiA+IFBsZWFzZSBjb3VsZCB5b3UgYW5zd2VyIHRoZSBxdWVzdGlvbiBwb3NlZDogYXJlIHRo
ZSBlU0RIQyBjb250cm9sbGVycyBETUEKPiA+IGNvaGVyZW50IG9yIGFyZSB0aGV5IG5vdCBjb2hl
cmVudD8KPiA+IAo+ID4gVGhhbmtzLgo+ID4gCj4gPiBPbiBUaHUsIFNlcCAxOSwgMjAxOSBhdCAw
NDoxMzoyMEFNICswMDAwLCBZLmIuIEx1IHdyb3RlOgo+ID4gPiBTb3JyeS4gTXkgZW1haWwgd2Fz
IHJlamVjdGVkIGJ5IG1haWxpbmcgbGlzdHMuIExldCBtZSByZS1zZW5kLgo+ID4gPgo+ID4gPiBI
aSBSdXNzZWxsLAo+ID4gPgo+ID4gPiBJ4oCZbSBub3Qgc3VyZSB3aGF0IGJvYXJkIHlvdSB3ZXJl
IHVzaW5nIGZvciBMWDIxNjBBLgo+ID4gPiBXZSBoYWQgYW4ga25vd24gaXNzdWUgZm9yIGVTREhD
IGNvbnRyb2xsZXIgYW5kIGFsbCBOWFAgTGF5ZXJzY2FwZSBSREIKPiA+IGJvYXJkcy4KPiA+ID4g
ZVNESEMgY291bGRu4oCZdCBwcm92aWRlIHBvd2VyLWN5Y2xlIHRvIFNEIGNhcmQsIGFuZCBldmVu
IHdvcnNlLCBib2FyZAo+ID4gcmVzZXQgY291bGRu4oCZdCBwcm92aWRlIHBvd2VyLWN5Y2xlIHRv
IFNEIGNhcmQgZWl0aGVyLgo+ID4gPiBCdXQgZm9yIFVIUy1JIFNEIGNhcmQsIGl04oCZcyByZXF1
aXJlZCB0byBoYXZlIGEgcG93ZXItY3ljbGUgdG8gcmVzZXQgY2FyZCBpZiBpdAo+ID4gZ29lcyBp
bnRvIFVIUy1JIG1vZGUuIE90aGVyd2lzZSwgd2UgZG9u4oCZdCBrbm93IHdoYXQgd2lsbCBoYXBw
ZW4gd2hlbgo+ID4ga2VybmVsIGluaXRpYWxpemVzIFNEIGNhcmQgYWZ0ZXIgYSByZWJvb3QvcmVz
ZXQuCj4gPiA+Cj4gPiA+IEkgY291bGQgcmVwcm9kdWNlIHRoYXQgaXNzdWUgd2l0aCBiZWxvdyBz
dGVwcyBvbiBsYXRlc3QgbWFpbmxpbmUga2VybmVsLgo+ID4gPiAxLiBQb3dlciBvZmYgYm9hcmQs
IGFuZCBwb3dlciBvbiBib2FyZC4KPiA+ID4gMi4gU3RhcnQgdXAga2VybmVsLCB0aGUgU0QgY2Fy
ZCB3b3JrcyBmaW5lIGluIFVIUy1JIG1vZGUuCj4gPiA+IDMuIFJlYm9vdC9yZXNldCBib2FyZC4g
KFRoaXMgY291bGRu4oCZdCBwcm92aWRlIHBvd2VyLWN5Y2xlIHRvIFNEIGNhcmQpCj4gPiA+IDQu
IFN0YXJ0IHVwIGtlcm5lbCwgdGhlIFNEIGNhcmQgZ2V0cyB0aGF0IEFETUEgZXJyb3IgaXNzdWUu
Cj4gPiA+Cj4gPiA+IFNvIGNvdWxkIHlvdSBoYXZlIGEgdHJ5IHRvIHBvd2VyIG9mZi9wb3dlciBv
biB0aGUgYm9hcmQsIGFuZCB0aGVuIHN0YXJ0IHVwCj4gPiBrZXJuZWwuIERvbuKAmXQgdXNlIHJl
Ym9vdCwgb3IgYm9hcmQgcmVzZXQgYnV0dG9uLgo+ID4gPiBPciB5b3UgY2FuIHJlbW92ZSBTRCBj
YXJkIGFuZCBzdGFydCB1cCBrZXJuZWwsIGFuZCBpbnNlcnQgU0QgY2FyZCB3aGVuCj4gPiBrZXJu
ZWwgaGFzIGJlZW4gc3RhcnRlZCB1cC4KPiA+ID4gVGhhbmtzIGEgbG90Lgo+ID4gPgo+ID4gPiBC
ZXN0IHJlZ2FyZHMsCj4gPiA+IFlhbmdibyBMdQo+ID4gPgo+ID4gPgo+ID4gPiBGcm9tOiBMaSBZ
YW5nIDxsZW95YW5nLmxpQG54cC5jb20+Cj4gPiA+IFNlbnQ6IFdlZG5lc2RheSwgU2VwdGVtYmVy
IDE4LCAyMDE5IDE6NDggQU0KPiA+ID4gVG86IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdtYWls
LmNvbT47IFkuYi4gTHUgPHlhbmdiby5sdUBueHAuY29tPgo+ID4gPiBDYzogQWRyaWFuIEh1bnRl
ciA8YWRyaWFuLmh1bnRlckBpbnRlbC5jb20+OyBDaHJpc3RvcGggSGVsbHdpZwo+ID4gPiA8aGNo
QGxzdC5kZT47IExpbnV4IEFSTSA8bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
PjsKPiA+ID4gTmljb2xpbiBDaGVuIDxuaWNvbGVvdHN1a2FAZ21haWwuY29tPjsgUnVzc2VsbCBL
aW5nIC0gQVJNIExpbnV4IGFkbWluCj4gPiA+IDxsaW51eEBhcm1saW51eC5vcmcudWs+OyBXaWxs
IERlYWNvbiA8d2lsbC5kZWFjb25AYXJtLmNvbT47IGRhbm4KPiA+ID4gZnJhemllciA8ZGFubi5m
cmF6aWVyQGNhbm9uaWNhbC5jb20+OyBsaW51eC1tbWMKPiA+ID4gPGxpbnV4LW1tY0B2Z2VyLmtl
cm5lbC5vcmc+Cj4gPiA+IFN1YmplY3Q6IFJlOiBbUkVHUkVTU0lPTl0gc2RoY2kgbm8gbG9uZ2Vy
IGRldGVjdHMgU0QgY2FyZHMgb24gTFgyMTYwQQo+ID4gPgo+ID4gPgo+ID4gPgo+ID4gPiBPbiBU
dWUsIFNlcCAxNywgMjAxOSBhdCA2OjMxIFBNIEZhYmlvIEVzdGV2YW0KPiA+IDxtYWlsdG86ZmVz
dGV2YW1AZ21haWwuY29tPiB3cm90ZToKPiA+ID4gW0FkZGluZyBMaSBZYW5nXQo+ID4gPgo+ID4g
PiBPbiBUdWUsIFNlcCAxNywgMjAxOSBhdCAxMDo1MiBBTSBSdXNzZWxsIEtpbmcgLSBBUk0gTGlu
dXggYWRtaW4KPiA+ID4gPG1haWx0bzpsaW51eEBhcm1saW51eC5vcmcudWs+IHdyb3RlOgo+ID4g
Pgo+ID4gPiA+IFRoZSBwcmVzc2luZyBxdWVzdGlvbiBzZWVtcyB0byBiZSB0aGlzOgo+ID4gPiA+
Cj4gPiA+ID4gQXJlIHRoZSBlU0RIQyBvbiB0aGUgTFgyMTYwQSBETUEgY29oZXJlbnQgb3IgYXJl
IHRoZXkgbm90Pwo+ID4gPiA+Cj4gPiA+ID4gQW55IGNoYW5jZXMgb2YgZmluZGluZyBvdXQgaW50
ZXJuYWxseSB3aGF0IHRoZSB0cnVlIGFuc3dlciB0byB0aGF0LAo+ID4gPiA+IHJhdGhlciB0aGFu
IG1lIHBva2luZyBhYm91dCB0cnlpbmcgc3R1ZmYgZXhwZXJpbWVudGFsbHk/wqAgSGF2aW5nIGEK
PiA+ID4gPiBkZWZpbml0aXZlIGFuc3dlciBmb3IgYSBwb3RlbnRpYWxseSBkYXRhLWNvcnJ1cHRp
bmcgY2hhbmdlIHdvdWxkIGJlCj4gPiA+ID4gcmVhbGx5IGdvb2QuLi4KPiA+ID4KPiA+ID4gTGkg
WWFuZywKPiA+ID4KPiA+ID4gQ291bGQgeW91IHBsZWFzZSBoZWxwIHRvIGNvbmZpcm0gUnVzc2Vs
bCdzIHF1ZXN0aW9uPwo+ID4gPiBBZGRpbmcgWWFuZ2JvIHdobyBpcyB3b3JraW5nIG9uIFNESEMu
Cj4gPiA+Cj4gPiA+IFJlZ2FyZHMsCj4gPiA+IExlbwo+ID4gCj4gPiAtLQo+ID4gUk1LJ3MgUGF0
Y2ggc3lzdGVtOgo+ID4gaHR0cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29r
LmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGd3d3LmFyCj4gPiBtbGludXgub3JnLnVrJTJGZGV2ZWxv
cGVyJTJGcGF0Y2hlcyUyRiZhbXA7ZGF0YT0wMiU3QzAxJTdDeWFuZ2JvLmwKPiA+IHUlNDBueHAu
Y29tJTdDN2VjYTJiOTY1MjEwNGM5NWE1MjAwOGQ3M2NjZmE5OWElN0M2ODZlYTFkM2JjMmI0Cj4g
PiBjNmZhOTJjZDk5YzVjMzAxNjM1JTdDMCU3QzAlN0M2MzcwNDQ3MzQ5MTE0NjUxMDImYW1wO3Nk
YXRhPVFCCj4gPiBTRXpBOUwySEM5OWdtNjVQOTY1RTNvJTJGaE5NMTh1MlNvdU9aeFRFczZzJTNE
JmFtcDtyZXNlcnZlZD0wCj4gPiBGVFRDIGJyb2FkYmFuZCBmb3IgMC44bWlsZSBsaW5lIGluIHN1
YnVyYmlhOiBzeW5jIGF0IDEyLjFNYnBzIGRvd24gNjIya2Jwcwo+ID4gdXAgQWNjb3JkaW5nIHRv
IHNwZWVkdGVzdC5uZXQ6IDExLjlNYnBzIGRvd24gNTAwa2JwcyB1cAoKLS0gClJNSydzIFBhdGNo
IHN5c3RlbTogaHR0cHM6Ly93d3cuYXJtbGludXgub3JnLnVrL2RldmVsb3Blci9wYXRjaGVzLwpG
VFRDIGJyb2FkYmFuZCBmb3IgMC44bWlsZSBsaW5lIGluIHN1YnVyYmlhOiBzeW5jIGF0IDEyLjFN
YnBzIGRvd24gNjIya2JwcyB1cApBY2NvcmRpbmcgdG8gc3BlZWR0ZXN0Lm5ldDogMTEuOU1icHMg
ZG93biA1MDBrYnBzIHVwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
