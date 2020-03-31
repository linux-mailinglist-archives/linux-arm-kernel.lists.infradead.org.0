Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27992198BC2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 07:37:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HKLuIGob5ZG0Vz8f0iBQHfcCaAaAWHz/xJ+CXMHrU+4=; b=V8F7jKVfO+SmLY
	xEwH8dQL9NdAyYxvlMPCIYgchx24A3gCBwcVt2sFyJazWW9JAhjlve3ElZudPzRGljOa+nyxcJpuv
	d3uPj6BSGEYN6brkna56y4oghGFaVD+6igW6R6k4nEo2s3RAosTzEI20PydNPXMVTsVqIs8dASk+a
	F/8e56NQ25hYEhpIiP7USR0H88HeEio7q8QFQmmDxs7qvsI7TyyEz4JVcR0v9mHDpzUv1px6dgN20
	g7tKs5KUFaxvURgFen1RexpaSsUK+W7cbrd2yxyvpzyiWIVwApY9lPnStL0xwtMbJfA9wt15jkTqd
	Tacliil1q8WAtVNbeeXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ9a6-00055D-1R; Tue, 31 Mar 2020 05:36:58 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ9Zw-00053v-4O
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 05:36:50 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200331053642euoutp02c7eec27c6025549cab9724c52fcf3e35~BTNCg1TXk1690016900euoutp02B
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 05:36:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200331053642euoutp02c7eec27c6025549cab9724c52fcf3e35~BTNCg1TXk1690016900euoutp02B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1585633002;
 bh=BborsbrEshHe2Rc0bJAjGGKeyQdcyjyJSDh2GBoOQTg=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=K7EEWQFSCYWoWFa9NqlCJVH/n5zFsO4jukOXTgJWh4m0kbQxl7CodchZT4hHzuXfV
 TIVH0/ssM8ZiW0Xs7Kr8U2dXL0tpK4Ts6l4MlJVqiSs6hGsXLGoYFgyYMSg2OzHGeB
 12OrwJVq+nbzpPajWF2agfkJ2Maxs1vjdmg2eVCU=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200331053642eucas1p11652b7fc88dd370d61f32d6e325adc60~BTNCUw5QU2605026050eucas1p1E;
 Tue, 31 Mar 2020 05:36:42 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 31.4E.60679.AE6D28E5; Tue, 31
 Mar 2020 06:36:42 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200331053642eucas1p195aa5bdef38639d877278494003abfd8~BTNB-7Dep0811408114eucas1p1l;
 Tue, 31 Mar 2020 05:36:42 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200331053642eusmtrp1dce61997d1e2c2b797a2c6593b025a9b~BTNB-QtTD1690716907eusmtrp1N;
 Tue, 31 Mar 2020 05:36:42 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-c9-5e82d6ea4f07
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 78.88.07950.AE6D28E5; Tue, 31
 Mar 2020 06:36:42 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200331053641eusmtip2b065b823f6a40381f00957d61277d241~BTNBbxNE71887318873eusmtip2E;
 Tue, 31 Mar 2020 05:36:41 +0000 (GMT)
Subject: Re: [PATCH 2/2] ARM: DTS: Add devicetree file for the Galaxy S2
To: Paul Cercueil <paul@crapouillou.net>, Krzysztof Kozlowski <krzk@kernel.org>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <6c549058-00f9-8526-a272-48c538166ccf@samsung.com>
Date: Tue, 31 Mar 2020 07:36:39 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <D6.31.03891.A6F227E5@epmailinsp8.samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrDKsWRmVeSWpSXmKPExsWy7djP87qvrjXFGdyfL2sx/8g5Vov+x6+Z
 Lc6f38BusenxNVaLy7vmsFnMOL+PyWLp9YtMFv2LL7FYtO49wm4xZclMdgcujzXz1jB6rL7U
 zuaxc9Zddo9NqzrZPDYvqff4vEkugC2KyyYlNSezLLVI3y6BK2Ne+0e2gt2cFffmfmRqYPzM
 3sXIySEhYCKxt3M6axcjF4eQwApGiY/TPrBDOF8YJZ7v3M0E4XxmlNh/czYTTMvReXugqpYz
 Srxun84I4bxnlGi6cJ+ti5GDQ1jAQ2L/82SQBhGBQInTE16zgtjMAnOZJK5vMwGx2QQMJbre
 drGB2LwCdhI3jnWA3cQioCrx/NwXsLioQIzExcP9rBA1ghInZz5hARnPKWAtceg8P8RIeYnm
 rbOZIWxxiVtP5oMdLSFwjl3i+dHjLBBHu0hMbv3ACmELS7w6vgXqfxmJ05N7WCAamhklHp5b
 yw7h9DBKXG6awQhRZS1x59wvsMeYBTQl1u/SBzElBBwl3t6UgDD5JG68FYS4gU9i0rbpzBBh
 XomONiGIGWoSs46vg9t68MIl5gmMSrOQPDYLyTezkHwzC2HtAkaWVYziqaXFuempxUZ5qeV6
 xYm5xaV56XrJ+bmbGIFp6vS/4192MO76k3SIUYCDUYmH98HVxjgh1sSy4srcQ4wSHMxKIrxs
 /g1xQrwpiZVVqUX58UWlOanFhxilOViUxHmNF72MFRJITyxJzU5NLUgtgskycXBKNTCqnD5x
 49wH9pCoCewszjJOTwxfzE+Wl3rzWdTS1MPRMP00+/t9KZLvhdtm/7w4bWul0+bFct/+RYfM
 2eHbdTjkx/8rcZMCujp9vvLKrAme4q+n7qYtkJYpmewdEvj9wMv/wo2fil6d9Vc/NFt/t4ee
 orFise8i/ht8ob/lZgvm9lWemnPimbgSS3FGoqEWc1FxIgCAEmwGTwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrPIsWRmVeSWpSXmKPExsVy+t/xe7qvrjXFGexez24x/8g5Vov+x6+Z
 Lc6f38BusenxNVaLy7vmsFnMOL+PyWLp9YtMFv2LL7FYtO49wm4xZclMdgcujzXz1jB6rL7U
 zuaxc9Zddo9NqzrZPDYvqff4vEkugC1Kz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng8
 1srIVEnfziYlNSezLLVI3y5BL2Ne+0e2gt2cFffmfmRqYPzM3sXIySEhYCJxdN4eMFtIYCmj
 RNtlWYi4jMTJaQ2sELawxJ9rXWxdjFxANW8ZJe7t2czSxcjBISzgIbH/eTJIjYhAoMSW/5vA
 apgF5jNJTHr1jhmioYtJov3/ZbBJbAKGEl1vQSZxcvAK2EncONYBtplFQFXi+bkvYHFRgRiJ
 n3u6WCBqBCVOznwCtoxTwFri0Hl+kDCzgJnEvM0PmSFseYnmrbOhbHGJW0/mM01gFJqFpHsW
 kpZZSFpmIWlZwMiyilEktbQ4Nz232EivODG3uDQvXS85P3cTIzAytx37uWUHY9e74EOMAhyM
 Sjy8D642xgmxJpYVV+YeYpTgYFYS4WXzb4gT4k1JrKxKLcqPLyrNSS0+xGgK9NtEZinR5Hxg
 0sgriTc0NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cBYu01h/pRHVqLP
 NiqosJ+7tjshv9TKLciz9Xf/5YZna/6vaJj88MLpN8vmTEoy4S7+kKHzb+2a3M/CJ1Zyz97x
 zD6Z43Sfv+QpGYXm92HzllVWLtc7/EP/b3lea/Wyc95u9WbH1jB5Tjz69lTiSt+dH5rKLdQc
 52ptM7A4sb7zue2MT05f+vZ9VWIpzkg01GIuKk4EANAxl6viAgAA
X-CMS-MailID: 20200331053642eucas1p195aa5bdef38639d877278494003abfd8
X-Msg-Generator: CA
X-RootMTR: 20200318142549eucas1p1793027850923ebad20b4691cba676671
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200318142549eucas1p1793027850923ebad20b4691cba676671
References: <20200312153411.13535-1-paul@crapouillou.net>
 <20200312153411.13535-2-paul@crapouillou.net> <20200313090011.GB7416@pi3>
 <CGME20200318142549eucas1p1793027850923ebad20b4691cba676671@eucas1p1.samsung.com>
 <D6.31.03891.A6F227E5@epmailinsp8.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_223648_483896_83088840 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stenkin Evgeniy <stenkinevgeniy@gmail.com>, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUGF1bCwKCk9uIDIwMjAtMDMtMTggMTU6MjUsIFBhdWwgQ2VyY3VlaWwgd3JvdGU6Cj4+PiDC
oCvCoMKgwqAgfTsKPj4+IMKgKwo+Pj4gwqArwqDCoMKgIHRzcF9yZWc6IHJlZ3VsYXRvci0xIHsK
Pj4+IMKgK8KgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPj4+
IMKgK8KgwqDCoMKgwqDCoMKgIHJlZ3VsYXRvci1uYW1lID0gIlRTUF9GSVhFRF9WT0xUQUdFUyI7
Cj4+PiDCoCvCoMKgwqDCoMKgwqDCoCByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwzMzAwMDAw
PjsKPj4+IMKgK8KgwqDCoMKgwqDCoMKgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDMzMDAw
MDA+Owo+Pj4gwqArwqDCoMKgwqDCoMKgwqAgZ3BpbyA9IDwmZ3BsMCAzIEdQSU9fQUNUSVZFX0hJ
R0g+Owo+Pj4gwqArwqDCoMKgwqDCoMKgwqAgc3RhcnR1cC1kZWxheS11cyA9IDw3MDAwMD47Cj4+
PiDCoCvCoMKgwqDCoMKgwqDCoCBlbmFibGUtYWN0aXZlLWhpZ2g7Cj4+PiDCoCvCoMKgwqDCoMKg
wqDCoCByZWd1bGF0b3ItYm9vdC1vbjsKPj4+IMKgK8KgwqDCoMKgwqDCoMKgIHJlZ3VsYXRvci1h
bHdheXMtb247Cj4+Cj4+IGFsd2F5cy1vbiBhbmQgYm9vdC1vbiBzaG91bGQgbm90IGJlIG5lZWRl
ZC4gWW91IGhhdmUgYSBjb25zdW1lciBmb3IgdGhpcwo+PiByZWd1bGF0b3IuCj4KPiBBYm91dCB0
aGlzOiB0aGUgdG91Y2hzY3JlZW4gZHJpdmVyIGRvZXMgbm90IHVzZSBhIHJlZ3VsYXRvciwgc28g
SSAKPiBiZWxpZXZlIHRoYXQncyB3aHkgdGhlc2UgcHJvcGVydGllcyB3ZXJlIGhlcmUuCj4KPiBJ
IHNlbnQgcGF0Y2hlcyB1cHN0cmVhbSB0byBhZGRyZXNzIHRoZSBpc3N1ZTogCj4gaHR0cHM6Ly9s
a21sLm9yZy9sa21sLzIwMjAvMy8xNS85NAo+Cj4gSSBiZWxpZXZlIHRoaXMgbWVhbnMgSSBjYW5u
b3QgbWVyZ2UgdGhlIGk5MTAwIGRldmljZXRyZWUgdW50aWwgaXQgaXMgCj4gYWNrZWQuCgpPbmUg
bW9yZSBpbmZvcm1hdGlvbiAtIHNpbWlsYXIgY2hhbmdlIGhhcyBiZWVuIGFscmVhZHkgcG9zdGVk
LCBidXQgaXQgCmxvb2tzIGl0IGdvdCBsb3N0IHRoZW46IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5l
bC5vcmcvcGF0Y2gvMTA1NTA5MDMvCgpCZXN0IHJlZ2FyZHMKLS0gCk1hcmVrIFN6eXByb3dza2ks
IFBoRApTYW1zdW5nIFImRCBJbnN0aXR1dGUgUG9sYW5kCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
