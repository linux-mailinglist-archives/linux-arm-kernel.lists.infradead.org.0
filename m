Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D9B2DA17
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:11:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z7k1YuIjQ1eWAFROoprKW0cKTDeX4txeWIP8SH6Sw5E=; b=Q3Eza8UhtUDsi9
	LNwYzLbe9xUlo8JaFVkjMb+5H+HgAVmQUUft+rC1Tp10WanTZUwcIqqgck2xYZB4EISk5TzGcPqL2
	JltufPWiRgJl/azKvJUXvuGznut8G0KP+jqbwpMnZdH1Dkbfpcufsme9kMrokRohMeL0n+0gSDHWh
	U8I7GlELbhRTjJhSyhs16x+K4c0ZGUr7q5FeddJPLs08qanh/K+OzMiQMc5hQqGGbJsQZocYPnqCj
	t07IbqAvpU5aer3SeCSssP1vXIE8X05WPcUQF0FGc/YB+RriUoei30YvJ8RC6Ofc9VEBm13aDvAI3
	oqa6Zb2ouepwOz6WR+UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvYc-0000CX-AT; Wed, 29 May 2019 10:11:42 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvYV-0000Bg-7U
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 10:11:36 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 03:11:30 -0700
X-ExtLoop1: 1
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga001.fm.intel.com with ESMTP; 29 May 2019 03:11:28 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id D0EB52091F; Wed, 29 May 2019 13:11:27 +0300 (EEST)
Date: Wed, 29 May 2019 13:11:27 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH v2 0/3] ARM: sun8i: a83t: Support Camera Sensor Interface
 controller
Message-ID: <20190529101127.oykszcj7q4ikji47@paasikivi.fi.intel.com>
References: <20190520150637.23557-1-megous@megous.com>
 <20190520151003.uklhhak5clxi5zpf@core.my.home>
 <CAGb2v64NDYo-yOvUQDpqzRB_A3NUgF3dXJeYbz_57uwB7mXwqQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v64NDYo-yOvUQDpqzRB_A3NUgF3dXJeYbz_57uwB7mXwqQ@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_031135_320111_8F9FF6D0 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Yong Deng <yong.deng@magewell.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2hlbi1ZdSwKCk9uIFR1ZSwgTWF5IDI4LCAyMDE5IGF0IDA5OjAzOjA2UE0gKzA4MDAsIENo
ZW4tWXUgVHNhaSB3cm90ZToKPiBPbiBNb24sIE1heSAyMCwgMjAxOSBhdCAxMToxMCBQTSBPbmTF
mWVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+IHdyb3RlOgo+ID4KPiA+IE9uIE1vbiwgTWF5
IDIwLCAyMDE5IGF0IDA1OjA2OjM0UE0gKzAyMDAsIHZlcmVqbmEgd3JvdGU6Cj4gPiA+IEZyb206
IE9uZHJlaiBKaXJtYW4gPG1lZ291c0BtZWdvdXMuY29tPgo+ID4gPgo+ID4gPiBUaGlzIGlzIGEg
cmUtc2VuZCBvZiBDaGVuLVl1J3MgQTgzVCBDU0kgcGF0Y2ggc2VyaWVzIHdpdGggcmV2aWV3IHRh
Z3MKPiA+ID4gYXBwbGllZCBhbmQgcmVtb3ZlZCBhZGRyZXNzL3NpemUgY2VsbHMgZnJvbSBjc2lf
aW4gcG9ydC4gQWxyZWFkeSBhcHBsaWVkCj4gPiA+IHBhdGNoZXMgZnJvbSB2MSAgd2VyZSBkcm9w
cGVkLgo+ID4gPgo+ID4gPiBUaGUgc2VyaWVzIGlzIHJlYWR5IHRvIGJlIG1lcmdlZDoKPiA+ID4K
PiA+ID4gICBQYXRjaCAxIGFuZCAyIHZpYSBzdW54aSB0cmVlCj4gPiA+ICAgUGF0Y2ggMyB2aWEg
bWVkaWEgdHJlZQo+ID4KPiA+IFNvcnJ5LCB3cm9uZyBudW1iZXJzLiAyIGlzIGZvciBtZWRpYSB0
cmVlLCAzIGlzIGZvciBzdW54aSwgMSBpcyBhIGR0LWJpbmRpbmdzCj4gPiBwYXRjaCwgd2hlcmUg
SSdtIG5vdCBzdXJlLgo+IAo+IEJpbmRpbmdzIHR5cGljYWxseSBnbyB3aXRoIHRoZSBkcml2ZXIu
Cj4gCj4gU2FrYXJpLCB0aGlzIHNlcmllcyBpcyBhbmQgaGFzIGJlZW4gcmVhZHkgZm9yIHNvbWUg
dGltZSBzaW5jZSBiZWZvcmUgdGhlIG1lcmdlCj4gd2luZG93LiBDb3VsZCB5b3UgcGxlYXNlIG1l
cmdlIHBhdGNoZXMgMSBhbmQgMi4KCkRvbid0IHdhaXQsIGluc3RlYWQgY2Mgb3IgcGluZyBtZTsg
dGhhdCBoZWxwcy4gOi0pCgpUaGUgdHdvIHBhdGNoZXMgYXJlIGZpbmU7IEknbGwgbWVyZ2UgdGhl
bS4KCi0tIApLaW5kIHJlZ2FyZHMsCgpTYWthcmkgQWlsdXMKc2FrYXJpLmFpbHVzQGxpbnV4Lmlu
dGVsLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
