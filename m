Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DE315D21C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 07:27:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HHzPWsGHnLOgSunz5F0nDhqBUu1YyAgwxb3r31atRhY=; b=q7qHco9bR4MnXx
	Zlnvgs6NHpZc41fD88sl2fLm6JR26UUaWz0d+AauTLtadIlFaVGsmVuZJqAsUuV5igXpc+ljE0PFe
	mTNY0gVMpivERyB2YSD3CQVTckp1O8U58VcYZ62AU+sA+tJI2VXV9WEJskjGTYTh/ofQ69uzUb6Dc
	uSxdvvx1pmO1s+mpnpufwpWAe+1gXN6RNtsmhRB9gQ24/qc50jJD0kKZI/n3U8kvYU8idKuAYOwNA
	xhFsIpXC8QXXFx/VWiLnTJR7bHIkIbtGsjos8XwV+gELaBfri+9UwoCBpLi5R12bZXC5ZoDRAqVKP
	rhxRcq5adVPUS+weSEEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2URr-0003BD-DC; Fri, 14 Feb 2020 06:27:35 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2URR-0002x7-Ni
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 06:27:13 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 22:27:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,439,1574150400"; d="scan'208";a="313972320"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga001.jf.intel.com with ESMTP; 13 Feb 2020 22:27:07 -0800
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 13 Feb 2020 22:27:07 -0800
Received: from bgsmsx103.gar.corp.intel.com (10.223.4.130) by
 fmsmsx156.amr.corp.intel.com (10.18.116.74) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 13 Feb 2020 22:27:06 -0800
Received: from bgsmsx101.gar.corp.intel.com ([169.254.1.159]) by
 BGSMSX103.gar.corp.intel.com ([169.254.4.133]) with mapi id 14.03.0439.000;
 Fri, 14 Feb 2020 11:56:43 +0530
From: "Srivastava, Shobhit" <shobhit.srivastava@intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: RE: Re: [PATCH] spi: pxa2xx: Add CS control clock quirk
Thread-Topic: Re: [PATCH] spi: pxa2xx: Add CS control clock quirk
Thread-Index: AdXijjRJ6+7qPvvhRvGfTavxCinpyv//qqQA//7IthA=
Date: Fri, 14 Feb 2020 06:26:42 +0000
Message-ID: <CB4ED07B85D6BB40B8B44F6D5442E4F6572C38D7@BGSMSX101.gar.corp.intel.com>
References: <CB4ED07B85D6BB40B8B44F6D5442E4F6572C1523@BGSMSX101.gar.corp.intel.com>
 <20200213171836.GD10400@smile.fi.intel.com>
In-Reply-To: <20200213171836.GD10400@smile.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYWRhMGY2YjItYmEwYi00NTliLWEzNzMtMTUzNTYyMjdmYTI1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiaFpJSHZqWlhIVHkzVW93MVwvYVNWWUZwWEhDNVlnRFhyMk5HUTV6cUd4QkE1WHlIeHc5bjRRbSt0QUZZd2J4ODgifQ==
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_222709_857300_E5008B22 
X-CRM114-Status: GOOD (  22.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: Evan Green <evgreen@chromium.org>,
 "rajatxjain@gmail.com" <rajatxjain@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>, Mark
 Brown <broonie@kernel.org>, Jarkko Nikula <jarkko.nikula@linux.intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "evgreen@google.com" <evgreen@google.com>, Rajat Jain <rajatja@google.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>,
 "Muthukrishnan, Porselvan" <porselvan.muthukrishnan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiANCj4gT24gVGh1LCBGZWIgMTMsIDIwMjAgYXQgMDQ6NTc6MjRQTSArMDAwMCwgU3JpdmFzdGF2
YSwgU2hvYmhpdCB3cm90ZToNCj4gPiA+IE9uIDIvMTIvMjAgMTI6MzQgQU0sIFJhamF0IEphaW4g
d3JvdGU6DQo+IA0KPiAuLi4NCj4gDQo+ID4gPiBJIHdvbmRlciBpcyBpdCBlbm91Z2ggdG8gaGF2
ZSB0aGlzIHF1aWNrIHRvZ2dsaW5nIG9ubHkgb3IgaXMgdGltZSBvcg0KPiA+ID4gYWN0dWFsbHkg
bnVtYmVyIG9mIGNsb2NrIGN5Y2xlcyBkZXBlbmRlbnQ/IE5vdyB0aGVyZSBpcyBubyBkZWxheQ0K
PiA+ID4gYmV0d2VlbiBidXQgSSdtIHRoaW5raW5nIGlmIGl0IG5lZWRzIGNlcnRhaW4gbnVtYmVy
IGN5Y2xlcyBkb2VzIHRoaXMNCj4gPiA+IHN0aWxsIHdvcmsgd2hlbiB1c2luZyBsb3cgc3NwX2Ns
ayByYXRlcyBzaW1pbGFyIHRoYW4gaW4gY29tbWl0DQo+IGQwMjgzZWIyZGJjMSAoInNwaToNCj4g
PiA+IHB4YTJ4eDogQWRkIG91dHB1dCBjb250cm9sIGZvciBtdWx0aXBsZSBJbnRlbCBMUFNTIGNo
aXAgc2VsZWN0cyIpLg0KPiA+ID4NCj4gPiA+IEknbSB0aGlua2luZyBjYW4gdGhpcyBiZSBkb25l
IG9ubHkgb25jZSBhZnRlciByZXN1bWUgYW5kIG1heSBvdGhlcg0KPiA+ID4gTFBTUyBibG9ja3Mg
bmVlZCB0aGUgc2FtZT8gSS5lLiBzaG91bGQgdGhpcyBiZSBkb25lIGluIGRyaXZlcnMvbWZkL2lu
dGVsLQ0KPiBscHNzLmM/DQo+IA0KPiA+IFRoaXMgYmVoYXZpb3IgaXMgc2VlbiBhZnRlciBTMGl4
IHJlc3VtZSwgYnV0IGl0IGlzIG5vdCBzZWVuIGFmdGVyIFMzIHJlc3VtZS4NCj4gDQo+IEkgYWxy
ZWFkeSBjb21tZW50ZWQgaW4gdGhlIG90aGVyIHRocmVhZCBhYm91dCB0aGlzLg0KPiANCj4gSGF2
ZSB5b3UgY2hlY2tlZCB3aGF0J3MgZ29pbmcgb24gaW4gaW50ZWxfbHBzc19zdXNwZW5kKCkgYW5k
DQo+IGludGVsX2xwc3NfcmVzdW1lKCkgZm9yIHlvdXIgY2FzZT8NClllcywgSSBjaGVja2VkIHRo
b3NlIGZ1bmN0aW9ucyBhbmQgdGhleSBsb29rIGZpbmUuDQpJIGV2ZW4gZHVtcGVkIGFsbCB0aGUg
cmVsZXZhbnQgcmVnaXN0ZXJzIGZvciBib3RoIFMzIHJlc3VtZSAmIFMwaXggcmVzdW1lIGNhc2Uu
DQpBbGwgcmVnaXN0ZXJzIHdlcmUgc2FtZSBleGNlcHQgdGhlIFNTQ1IwLg0KDQo+IElzIGludGVs
X2xwc3NfcHJlcGFyZSgpIGNhbGxlZCBkdXJpbmcgUzBpeCBleGl0Pw0KWWVzLCBpdCBpcyBjYWxs
ZWQgZHVyaW5nIFMwaXggZW50cnksIGJlZm9yZSB0aGUgc3VzcGVuZCBjYWxsYmFjay4NCg0KPiA+
IEkgYW0gdGhpbmtpbmcgdGhhdCBpdCBoYXBwZW5zIGJlY2F1c2Ugd2UgYXJlIG5vdCBlbmFibGlu
ZyB0aGUgU1NQIGFmdGVyDQo+IHJlc3VtZS4NCj4gPiBJdCBpcyBkZWZlcnJlZCB1bnRpbCB3ZSBu
ZWVkIHRvIHNlbmQgZGF0YS4gQnkgZW5hYmxpbmcgdGhlIFNTUCBpbiByZXN1bWUsIEkNCj4gZG9u
4oCZdCBzZWUgdGhlIGlzc3VlLg0KPiA+IEZvciBTMywgSSB0aGluayBCSU9TIHJlLWVuYWJsZXMg
dGhlIFNTUCBpbiByZXN1bWUgZmxvdy4NCj4gDQo+IC0tDQo+IFdpdGggQmVzdCBSZWdhcmRzLA0K
PiBBbmR5IFNoZXZjaGVua28NCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
