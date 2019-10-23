Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6710E1CF3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 15:40:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b7GkaRXyqWSdmQT5UMml6npCfUB0qzjDesNUZpIsofI=; b=kCfdldsxD4PR6U
	kf/tfpFeeMWR+Dk9a5rPqYu9+MSLmZ30jGzqCKd8kSFUKlE4MftP3GP7Ae6RCvYtzQhKXZ/f5vrLQ
	LvQos7tFmBXjxCAXvHfeQpUQ14GXSphjYnv7IOotp3TPYOqMkXxUGLiPCAlWrLTQuN4bR/pO8Ea/p
	KjfvJeltvAXmwNJN79WIllSCHkh1hjNMWCibUabVh6LxDrjL5QkJT0aamYnKehfsDDi3dg9ItwBnG
	We0FDqCplvjD5iGN4A3H3cGofB8SBSYhFQMc+8MAVMyIzGBAmDqzGBXhd8LToJlSX7FerElSkjMha
	1mFdJjvaAFieq8azTvWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNGs2-00085A-TL; Wed, 23 Oct 2019 13:40:14 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNGrh-0007yB-E1
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 13:39:55 +0000
Received: from mail-qt1-f171.google.com ([209.85.160.171]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MjSwu-1hiBoK0XsI-00kx1x for <linux-arm-kernel@lists.infradead.org>; Wed,
 23 Oct 2019 15:39:50 +0200
Received: by mail-qt1-f171.google.com with SMTP id z22so11786311qtq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 06:39:49 -0700 (PDT)
X-Gm-Message-State: APjAAAU0yCEIDhOgWoF2v4TN8brzOWP5ppCno0NJlBMiUE3fvTkHhDGf
 BPTJOqYSJbdY9v+aH0RPVNStxImscZw4gi6+L/0=
X-Google-Smtp-Source: APXvYqyt7m8OnGbGOfKvN6UapNf8Y0PixnD+b/5MFVO15QeK4AzpoE5xCHBxjuJT4OWklHgs4L5FWsrmt4sucJ53v+g=
X-Received: by 2002:ac8:18eb:: with SMTP id o40mr9289234qtk.304.1571837989082; 
 Wed, 23 Oct 2019 06:39:49 -0700 (PDT)
MIME-Version: 1.0
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191023131049.GG11048@pi3>
In-Reply-To: <20191023131049.GG11048@pi3>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 23 Oct 2019 15:39:32 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1v2-+geD+JbNP-t418ZjntQNSte4rt8c7N6sJdpb3+DQ@mail.gmail.com>
Message-ID: <CAK8P3a1v2-+geD+JbNP-t418ZjntQNSte4rt8c7N6sJdpb3+DQ@mail.gmail.com>
Subject: Re: [PATCH 00/36] ARM: samsung platform cleanup
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Provags-ID: V03:K1:z5umYM1OO/6xocZWq1UzihzNNT4SCZ7U4EX5YeVohTVTxYOGNkq
 LjRNx5MbVyyjiO/YcyXYUmVKUSSWed4F+qgJD132jCIuRDdRzu46RMEYZ8EGh8W1Gclu6v9
 XYLwXtHGpA97yNWlPf5ntIiBZWXBJ0ysAROlfoebrlQylKHRIztA9uR14Hwk0iB97mVHKB9
 ZFBK/YeFbQQUwjCrNoeMQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:T4aSi+x49XI=:Hu5PaVLYHfrnXE4e3zZhGK
 nAl1bLSSM8W3Gzfrc7iEVNtzgA00nFXx7w038BO188IE1APpBBksgy3FOFn7xPiVWIKDvFkEy
 /qSxtc72S/cW+L7u8AGKBP1Ez7yQjiVlpLMjatkMaT5yPayVRi/9OL/xwH5dIIxjqZ9gW1u7N
 4ahvuWD7bz+V4V/GRCmuIfzIKPqIi+gRA1B11dZ/RVmeMLeA7k9QaHS8NsL+//K9HNqanOyGn
 QDeS+Z8r7SHANh8gOIvdAvHbMjyHQPH10elEQSMJt53k3EygywmyyLPykdXA4KIMfKGOyLV4h
 +cg7VFWeqJKSNvDfCSbwS9Aib/pQbH69osH5r2GvbxsP8PKIsZEZK+eps8xhT6Hw9enZXNVu9
 oO9sSLakngFCtltW79rG/2zmz2qBtuUONQVdZIlbaZfQAP+F45Pvxg8rS/AIAWleudcB4Kzhn
 fNl22+Q9HZVq6tUEs8Qm4FqOYF467YZFOzKEbRTqhl9V+B3pLPyuc/MNiJvtICIsXstajbO3i
 FHOmo7mt7aRyPBpePdQkQgXdfWGu62ic/Toatdsioak8SZK+/yNL0rOG68WM8/nqZZ1KvIEOV
 R33+721LuxIGu4FtoPS09S4Nde2YLWHlKVKt5T1XW7dleOK51oldEtwAOLxLOO/pMsK3O4nLS
 nLMOmu8/aylyI6r4yO/h+JJTryCyLJL/bijqLf5m8GOXy/XZWLXd0YMYPJ7KwEGwWo3z7o7mU
 +JynhTdN6mmTLlNI+ZCRRL/cLwfxmd93zKxKxCuLXSE9JzbILwHUxSByUNyPIVRqRA0zmyUHp
 XfDEE7QRH0PspKlLQQ7VBePjnH1byvVa5bQP4aKC4xuNlfTaRWmjuNSX6uId7lbW+NDJnpj0z
 XPMLfk7CACuHIQc5YfMA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_063953_765954_1D3EE9B4 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
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
Cc: Linux Fbdev development list <linux-fbdev@vger.kernel.org>,
 ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-leds@vger.kernel.org,
 "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 Lihua Yao <ylhuajnu@outlook.com>, Kukjin Kim <kgene@kernel.org>,
 linux-serial@vger.kernel.org,
 "open list:HID CORE LAYER" <linux-input@vger.kernel.org>,
 =?UTF-8?Q?Pawe=C5=82_Chmiel?= <pawel.mikolaj.chmiel@gmail.com>,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 Sergio Prado <sergio.prado@e-labworks.com>,
 Linux PM list <linux-pm@vger.kernel.org>, Lihua Yao <ylhuajnu@163.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org,
 patches@opensource.cirrus.com, USB list <linux-usb@vger.kernel.org>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBPY3QgMjMsIDIwMTkgYXQgMzoxMSBQTSBLcnp5c3p0b2YgS296bG93c2tpIDxrcnpr
QGtlcm5lbC5vcmc+IHdyb3RlOgo+IE9uIFRodSwgT2N0IDEwLCAyMDE5IGF0IDEwOjI4OjAyUE0g
KzAyMDAsIEFybmQgQmVyZ21hbm4gd3JvdGU6Cj4gPiBUaGUgY29udGVudHMgYXJlIGF2YWlsYWJs
ZSBmb3IgdGVzdGluZyBpbgo+ID4KPiA+IGdpdDovL2tlcm5lbC5vcmc6L3B1Yi9zY20vbGludXgv
a2VybmVsL2dpdC9hcm5kL3BsYXlncm91bmQuZ2l0IHMzYy1tdWx0aXBsYXRmb3JtCj4KPiBXaGVu
IHNlbmRpbmcgdjIsIGNhbiB5b3UgQ2M6Cj4KPiBQYXdlxYIgQ2htaWVsIDxwYXdlbC5taWtvbGFq
LmNobWllbEBnbWFpbC5jb20+Cj4gTGlodWEgWWFvIDx5bGh1YWpudUBvdXRsb29rLmNvbT4KPiAo
b3IgTGlodWEgWWFvIDx5bGh1YWpudUAxNjMuY29tPiBpZiBvdXRsb29rLmNvbSBib3VuY2VzKQo+
IFNlcmdpbyBQcmFkbyA8c2VyZ2lvLnByYWRvQGUtbGFid29ya3MuY29tPgo+IFN5bHdlc3RlciBO
YXdyb2NraSA8cy5uYXdyb2NraUBzYW1zdW5nLmNvbT4KPgo+IFRoZXNlIGFyZSBmb2xrcyB3aGlj
aCB0byBteSBrbm93bGVkZ2UgaGFkIHdvcmtpbmcgUzNDIGFuZCBTNVAgYm9hcmRzCj4gc28gbWF5
YmUgdGhleSBjb3VsZCBwcm92aWRlIHRlc3RpbmcuCgpPaywgd2lsbCBkby4gSSd2ZSB1cGxvYWRl
ZCB0aGUgbW9kaWZpZWQgdmVyc2lvbiBiYXNlZCBvbiB5b3VyIGNvbW1lbnRzIHRvCnRoZSBhYm92
ZSBVUkwgZm9yIG5vdy4KCkknbGwgcHJvYmFibHkgZ2l2ZSBpdCBhIGxpdHRsZSBtb3JlIHRpbWUg
YmVmb3JlIHJlc2VuZGluZywgYnV0IHRoZXkKY291bGQgYWxyZWFkeQpzdGFydCB0ZXN0aW5nIHRo
YXQgdmVyc2lvbi4KClRoYW5rcyBhIGxvdCBmb3IgdGhlIHJldmlldyEKCiAgICAgIEFybmQKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
