Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B68628D426
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 15:03:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fckj15bz2UCbiA72CA9ZTEb+WRQ+DasORuKnQbstmgc=; b=AWz46xXVXh9vpD
	bsUOq7OrUppUM46RXJbox5WWPap9F7yPeIPadZ2jQVyGRdXZyp18lJs+deixLtp3yQvhszYRsQ585
	nVKFWIz6lymVHkR9EW/ycgT4LOyNIwLf+KgXYQXwl6pxsyVOAYTRcwtP01/oZqgI0ll6/LZqfPLN8
	4RNG8tsa8c+rJRFQul2yKbCy/V2y0wFIqxSWnOGjfVzAqkK4QMH9sGfr1eSd4tLQv+TIPs/DVSs/B
	1tWSIvczzpKWmTcE46LNDXAllTLa8fM6tlI1XtrjCQkYeHIavmdTQcJ1YQpQdPUVf86OV40rn3PYT
	f5M2CiqD/iiy8zP+UEAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxswC-0002hV-0F; Wed, 14 Aug 2019 13:03:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxsvy-0002hC-2T
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 13:03:23 +0000
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 690DC20679
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 13:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565787801;
 bh=3OUlSHJn0lTrnJ5fKTpkrRdkhD4r845rbCuZ5nFCWHQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=EDCnd1iWrMYY5eTCyl2C4OcbbG7hwyR/yBNNl1DEgM7rxl2JhllcRp+qc1n1e3wQn
 5m9Cif0BRl33bPWPSpZjlT1ETGRv6XhqJe/99+FqhpGmSNPd3P9/Fkl2Pv/6NY/aJ+
 36HbweNwXt3W5499mCcC2xN0FGArisPikhNobVWE=
Received: by mail-lf1-f51.google.com with SMTP id x3so25503939lfn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 06:03:21 -0700 (PDT)
X-Gm-Message-State: APjAAAXY/4Vk+ZFVHhSTxoOYHn1l9/I2Pb0kWN2aLHXBGxRwh3vWTyWc
 LDdSseUA4QhyGEgz57Us7hDokH/BLkNTE+3qJKc=
X-Google-Smtp-Source: APXvYqz10vuC20rP+LQQhwdjZM0MrWzEZ/evwZm1M1ZsrA4lt+zFV303rcMeni4yzkxrQ0voupVR/up/rPG64KZGaEE=
X-Received: by 2002:a19:f512:: with SMTP id j18mr21053059lfb.159.1565787799622; 
 Wed, 14 Aug 2019 06:03:19 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190813150842eucas1p2c248537d9cd593073e12abeac2cacab5@eucas1p2.samsung.com>
 <20190813150827.31972-1-s.nawrocki@samsung.com>
In-Reply-To: <20190813150827.31972-1-s.nawrocki@samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 14 Aug 2019 15:03:08 +0200
X-Gmail-Original-Message-ID: <CAJKOXPdm2qj_GDR4NQriuOjPFyAxf_CdH_hXEsQNDp4qGHaUZA@mail.gmail.com>
Message-ID: <CAJKOXPdm2qj_GDR4NQriuOjPFyAxf_CdH_hXEsQNDp4qGHaUZA@mail.gmail.com>
Subject: Re: [PATCH v3 0/9] Exynos Adaptive Supply Voltage support
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_060322_156455_56A02B15 
X-CRM114-Status: GOOD (  17.84  )
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
Cc: devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-pm@vger.kernel.org, pankaj.dubey@samsung.com,
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 robh+dt@kernel.org, kgene@kernel.org, vireshk@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAxMyBBdWcgMjAxOSBhdCAxNzowOCwgU3lsd2VzdGVyIE5hd3JvY2tpIDxzLm5hd3Jv
Y2tpQHNhbXN1bmcuY29tPiB3cm90ZToKPgo+IFRoaXMgaXMgdGhpcmQgaXRlcmF0aW9uIG9mIG15
IHBhdGNoIHNlcmllcyBhZGRpbmcgQVNWIChBZGFwdGl2ZSBTdXBwbHkKPiBWb2x0YWdlKSBzdXBw
b3J0IGZvciBFeHlub3MgU29Dcy4gVGhlIHByZXZpb3VzIG9uZSBjYW4gYmUgZm91bmQgYXQ6Cj4g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDE5MDcxODE0MzA0NC4yNTA2Ni0xLXMubmF3
cm9ja2lAc2Ftc3VuZy5jb20KPgo+IFRoZXJlIGlzIG5vIG1ham9yIGNoYW5nZXMgaW4gdGhpcyBz
ZXJpZXMgY29tcGFyaW5nIHRvIHYyLCBvbmx5IG1pbm9yCj4gY29ycmVjdGlvbnMgYWRkcmVzc2lu
ZyByZXZpZXcgY29tbWVudHMuCj4KPiBJIHdhcyBub3Qgc3VyZSBpdCB3YXMgYSBnb29kIGlkZWEg
dG8gdHJ5IHRvIGV4dGVuZCB0aGUgT1BQIGJpbmRpbmcKPiBzbyBhcyB0byBpbmNsdWRlIHRoZSBB
U1YgZGF0YSB0YWJsZXMgaW4gRFQsIHNvIHRoZSB0YWJsZXMgYXJlIGxlZnQKPiBpbiB0aGUgZHJp
dmVyLgo+Cj4gVGhpcyBwYXRjaCBzZXQgaW5jbHVkZXMgRXh5bm9zIENISVBJRCBkcml2ZXIgcG9z
dGVkIGJ5IFBhbmthaiBEdWJleSBhbmQKPiBmdXRoZXIgaW1wcm92ZWQgYnkgQmFydMWCb21pZWog
xbtvxYJuaWVya2lld2ljeiBbMV0uCj4KPiBUZXN0ZWQgb24gT2Ryb2lkIFhVMywgWFUzIExpdGUs
IFhVNC4KPgo+IE9uZSBvZiB0aGUgdGhpbmdzIG9uIFRPRE8gbGlzdCBpcyBzdXBwb3J0IGZvciB0
aGUgQWRhcHRpdmUgQm9keSBCaWFzLgo+IFRoaXMgd2lsbCByZXF1aXJlIG1vZGlmaWNhdGlvbnMg
b24gdGhlIGNwdWZyZXEgZHJpdmVyIHNpZGUgaW4gb3JkZXIgdG8KPiBzdXBwb3J0IG11bHRpcGxl
IHZvbHRhZ2UgcmVndWxhdG9ycyBhbmQgY2hhbmdlcyBpbiB0aGUgT1BQIGZyYW1ld29yawo+IHRv
IHN1cHBvcnQgYWRkaW5nIE9QUHMgd2l0aCBtdWx0aXBsZSB2b2x0YWdlcy4KPgo+IFsxXSBodHRw
czovL2xrbWwub3JnL2xrbWwvMjAxOC8xMS8xNS85MDgKPgo+IFBhbmthaiBEdWJleSAoMyk6Cj4g
ICBzb2M6IHNhbXN1bmc6IEFkZCBleHlub3MgY2hpcGlkIGRyaXZlciBzdXBwb3J0Cj4gICBBUk06
IEVYWU5PUzogZW5hYmxlIGV4eW5vc19jaGlwaWQgZm9yIEFSQ0hfRVhZTk9TCj4gICBBUk02NDog
RVhZTk9TOiBlbmFibGUgZXh5bm9zX2NoaXBpZCBmb3IgQVJDSF9FWFlOT1MKPgo+IFN5bHdlc3Rl
ciBOYXdyb2NraSAoNik6Cj4gICBzb2M6IHNhbXN1bmc6IENvbnZlcnQgZXh5bm9zLWNoaXBpZCBk
cml2ZXIgdG8gdXNlIHRoZSByZWdtYXAgQVBJCj4gICBzb2M6IHNhbXN1bmc6IEFkZCBFeHlub3Mg
QWRhcHRpdmUgU3VwcGx5IFZvbHRhZ2UgZHJpdmVyCj4gICBBUk06IEVYWU5PUzogRW5hYmxlIGV4
eW5vcy1hc3YgZHJpdmVyIGZvciBBUkNIX0VYWU5PUwo+ICAgc29jOiBzYW1zdW5nOiBVcGRhdGUg
dGhlIENISVAgSUQgRFQgYmluZGluZyBkb2N1bWVudGF0aW9uCj4gICBBUk06IGR0czogQWRkICJz
eXNjb24iIGNvbXBhdGlibGUgc3RyaW5nIHRvIGNoaXBpZCBub2RlCj4gICBBUk06IGR0czogQWRk
IHNhbXN1bmcsYXN2LWJpbiBwcm9wZXJ0eSBmb3Igb2Ryb2lkeHUzLWxpdGUKCkFsbCBsb29rIGdv
b2QgdG8gbWUgYnV0IEkgbmVlZCBhY2tzIGZvciBiaW5kaW5ncyBiZWZvcmUgYXBwbHlpbmcuCgpC
ZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
