Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 002AC5A165
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 18:50:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KK9kmgsYddjpQEi921vydvNBfVa72A5DR8nbcXY6xYU=; b=onxfPQnjunhzsF
	nrztB4dv2u9efrGdKOBlMfZw0N9kXlQOuwc8rckOWC5TgKYFzjrRG5YkHKm3v92GuMS/08VpLmtL/
	bzg2WchA2KakZj86hfwaDWxKTPynps9vZNb74mUxvtuH0TPUCg8YU3ZFFasCgbV7QtrUATvKX8cLM
	tLIOGT+ZKyJLUurNxE9LQSnG1Skg1z7rSPK1oEmhfM6CIDxJK5X33sBsKWXW3FGmal1T6ncuVL6as
	+vS8sCS5r+w60LEvpJDwhtaNEodV3fBpr6tmHTJXPHyLxwOAMKavJoo/k/SLrW9rbomAcGXv4rBhw
	KLCS2Ji42B/OsqCUpbcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgu57-0001ev-HY; Fri, 28 Jun 2019 16:50:37 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgu4u-0001dS-8F
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 16:50:28 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190628165018euoutp011e74560e2e1a2a2786bd656c1be69a32~satF3J96u2830828308euoutp01h
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 16:50:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190628165018euoutp011e74560e2e1a2a2786bd656c1be69a32~satF3J96u2830828308euoutp01h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1561740618;
 bh=FWXP4pNRujl1+9dygeRIOsIYNQFFOrstobtjVi96TA0=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=XO7RX9SR3tBF7Ra6qanxFfQ/5PkXBeDqXQu9RxguzdVTHN9oFuPrYTg/sRwOGempN
 FI8j6JE9jvZfdLAajR0g+ctUKb0TS5zCHsFaaed9sVpEsCXhS2wAvkRbFVuzUcKQca
 SzTE6+wCu75e9qKS0Fh1Hb2le4bLuk1HBtZDAKmY=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190628165017eucas1p1f0f04698117f80224d5c8f00ba920dc0~satET2Xqg2591325913eucas1p17;
 Fri, 28 Jun 2019 16:50:17 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 3D.7A.04325.845461D5; Fri, 28
 Jun 2019 17:50:16 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190628165015eucas1p15a2f228181560f882bb184452ff3a9a5~satDRvW4F3190031900eucas1p1i;
 Fri, 28 Jun 2019 16:50:15 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190628165015eusmtrp1937d2b28d23cd75d8f17b7f4ef31773c~satDDbpPf0190901909eusmtrp1s;
 Fri, 28 Jun 2019 16:50:15 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-a5-5d16454861ef
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id F9.F0.04146.745461D5; Fri, 28
 Jun 2019 17:50:15 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190628165014eusmtip2df0102387418b63f3c96b10b46cae10e~satCMNFmU1768817688eusmtip2i;
 Fri, 28 Jun 2019 16:50:14 +0000 (GMT)
Subject: Re: [PATCH v7 04/25] arm64: Substitute gettimeofday with C
 implementation
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <530cd07e-0da7-1d83-be4e-b14813029424@samsung.com>
Date: Fri, 28 Jun 2019 18:50:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <27386d82-2906-b541-f71d-3c61f5099bdf@arm.com>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sf0xTVxj167t9fVRrHhXhA3UuDSawKY7oH1cxRhaN74+ZmGii0TDt9FEJ
 pZIWHLqoqPgDZG2laqUqq4lOaBSTR2lGAdEKVGMkajP8ASqkzFiZihFMGJuO9rGM/875vnPP
 uefmcoy2nk3h8kxFotmkN+pYNfF1jnYtEFYl5nxTNjif2k+/IrS2ZhToP1WdKvru10qgNR/m
 0OraPwk95h8hVAp3K2nIf46lzt53LC2XGoEGTrUCDbtqWHq1/ZmKWgc7GWrrfcTShy2pdFTq
 B3oyUq+i7rqnhDZIpxja+mmU0Mj722RFkuBr9imFKzVXQAh1P2CEsb+qQBj+/YBCaHI9Uwlu
 qViQPOWs0Nvdwgpvu7pUQkfdVYXQcHG/4Lgwrh9s7yfC/Yp8wer1wNr4Tepl20Vj3i7RvHD5
 VvWOzzd62MJfZpbUD0dIKXjiKyCOQ34xXhoJsxWg5rR8LeDTUJNKJsOAbafblTL5AOhxjikq
 gIsd+WhNlueXARsdpUQmbwDDbSNM1HcGvx69ZedJFCfwmdg0eCSWwfCtLFYdLVVGF+z44ucO
 K0Sxhl+O/X9cV0Qx4eeh9KIlZjST34ghr39CE493qgdipnF8FvY9uh2bM3wSHhyuU8p4Lh5q
 PMtEw5Af4vB5vYORr70SPWGDXHoGvg56VTKejXcdlUTWHwKsbO5RycQO+CLoBlmVhbeCD5RR
 I4ZPx2v+hfI4G4/bbBPPMh0fv4mX7zAdq3zOiVgNHjuildWpOOZxKmScgscHPhM76FyTmrkm
 tXFNauP6P9cNxANJYrGlwCBaFpnEHzMs+gJLscmQsW1ngQTjv/jup+DIb3D97x8CwHOgm6Zx
 qxNztEr9LsvuggAgx+gSNMldCTlazXb97j2ieecWc7FRtARgFkd0SZqfpvRt1vIGfZGYL4qF
 ovm/rYKLSymF73O7l+Vak/fvg6GLWdk3+43f5ZVIzZsPD13L1ZyZbfw2v+xej25VKm868cXX
 tm3Jq7cEXi5tu5NR21GyuMe3pulW9pOp5f7VmY7sl/bQpaVH16XtPfwlFG59lWZP9RYh3Oy7
 HNAYKgdctili8IQzcnDDpiXO9OrEMLvywrwV4fSIjlh26DO/YswW/b/0LPp8wQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02SbUhTURiAO7t3d3fS4m7qPC6jWFkRNLt+7Wgm9SO8BUVRlH0MXXrR0LnY
 3SrDyDJERy2zNJo1V1aoTan5UdkqHWZGMMrKoLQyNbKZUi1xZR+bI/Dfw3ueh5cDL4lJHvBl
 5N48PavLU+fKiSD8yZ9Hb5enrJWqVkzWRqKyyk84qrV4Afpd3iVA49dOAGT5Pg+drx3FUUnb
 DxzZB3v56HnbBQKd6xsnUKm9BSBnxT2ABs0WAjV09guQyd2FoVN9rwjU41iEvPYBgM6ONAqQ
 te41jprsFRi698eLo5Gv3fjqMKb1biufsVlsgHne+wxjfv0sB4zn5VEec8fcL2CsdgNjry8l
 mL5eB8GMuVwC5mFdA49punKEOXPJ57s7B3DmqTGHMTXXg03inYokndagZxdkazn9KvkuGkUr
 6ASkiI5NUNAxSlVidJw8Kjkpk83du5/VRSWnK7L/tr8h9lWHHmz0jOCFoF5sBCQJqVg4YQo3
 AiEpoa4C+LrzQGAsg9XH5f4xpILhVK+RMIIgn+IGsMT4gu9/CKa2wubjF3E/h1A0vOMunpYw
 qoOAt24bBYGigQfHK3sIv0X4rJMPTcDPIioZDgzf5/kZpyKh/Z0D83MolQpNxVVEwBHDx+eH
 pjcIqZXw/avu6RajlsApSw8W4DB4zFPHD/B8WNRShZUBiXlGbp6RmGck5hmJFeD1IIQ1cJos
 DUcrOLWGM+RlKTK0GjvwHU9rl7fpNui5ucUJKBLIZ4usQVKVhK/ez+VrnACSmDxEFO4KUUlE
 mer8Q6xOm6Yz5LKcE8T5Pncak4VmaH2nmKdPo+NoJUqglTHKmHgkDxOVUB27JVSWWs/msOw+
 Vve/45FCWSGIkCw+1/ihck/EZ2V60fDownbHmsnUxtL0mjlHN24YGvtyPQoGf5O6NrcmFb51
 eQ5vLxoO717JW16TcQMLmloEpa510SprQkrc/QYx0l6eUB6zFawvjpnL5eQ/rtDFp3ptmbXb
 duxaIt5M1p2ddSAxpcQs/Mgr8NxVRtDm1Uudf+U4l62ml2E6Tv0PUoU+JFIDAAA=
X-CMS-MailID: 20190628165015eucas1p15a2f228181560f882bb184452ff3a9a5
X-Msg-Generator: CA
X-RootMTR: 20190628130921eucas1p239935b0771032c331911eacc1a69dd2e
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190628130921eucas1p239935b0771032c331911eacc1a69dd2e
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <20190621095252.32307-5-vincenzo.frascino@arm.com>
 <CGME20190628130921eucas1p239935b0771032c331911eacc1a69dd2e@eucas1p2.samsung.com>
 <1fd47b0d-f77f-8d07-c039-6ac9072834fc@samsung.com>
 <27386d82-2906-b541-f71d-3c61f5099bdf@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_095024_909195_D72CA718 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
 Shuah Khan <shuah@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arch@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Andre Przywara <andre.przywara@arm.com>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org, Huw Davies <huw@codeweavers.com>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Mark Salyzyn <salyzyn@android.com>, Paul Burton <paul.burton@mips.com>,
 Shijith Thotton <sthotton@marvell.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVmluY2Vuem8sCgpPbiA2LzI4LzE5IDE2OjMyLCBWaW5jZW56byBGcmFzY2lubyB3cm90ZToK
PiBPbiA2LzI4LzE5IDI6MDkgUE0sIE1hcmVrIFN6eXByb3dza2kgd3JvdGU6Cj4+IE9uIDIwMTkt
MDYtMjEgMTE6NTIsIFZpbmNlbnpvIEZyYXNjaW5vIHdyb3RlOgo+Pj4gVG8gdGFrZSBhZHZhbnRh
Z2Ugb2YgdGhlIGNvbW1vbmx5IGRlZmluZWQgdmRzbyBpbnRlcmZhY2UgZm9yCj4+PiBnZXR0aW1l
b2ZkYXkgdGhlIGFyY2hpdGVjdHVyYWwgY29kZSByZXF1aXJlcyBhbiBhZGFwdGF0aW9uLgo+Pj4K
Pj4+IFJlLWltcGxlbWVudCB0aGUgZ2V0dGltZW9mZGF5IHZkc28gaW4gQyBpbiBvcmRlciB0byB1
c2UgbGliL3Zkc28uCj4+Pgo+Pj4gV2l0aCB0aGUgbmV3IGltcGxlbWVudGF0aW9uIGFybTY0IGdh
aW5zIHN1cHBvcnQgZm9yIENMT0NLX0JPT1RUSU1FCj4+PiBhbmQgQ0xPQ0tfVEFJLgo+Pj4KPj4+
IENjOiBDYXRhbGluIE1hcmluYXMgPGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29tPgo+Pj4gQ2M6IFdp
bGwgRGVhY29uIDx3aWxsLmRlYWNvbkBhcm0uY29tPgo+Pj4gU2lnbmVkLW9mZi1ieTogVmluY2Vu
em8gRnJhc2Npbm8gPHZpbmNlbnpvLmZyYXNjaW5vQGFybS5jb20+Cj4+PiBUZXN0ZWQtYnk6IFNo
aWppdGggVGhvdHRvbiA8c3Rob3R0b25AbWFydmVsbC5jb20+Cj4+PiBUZXN0ZWQtYnk6IEFuZHJl
IFByenl3YXJhIDxhbmRyZS5wcnp5d2FyYUBhcm0uY29tPgo+Pj4gU2lnbmVkLW9mZi1ieTogQ2F0
YWxpbiBNYXJpbmFzIDxjYXRhbGluLm1hcmluYXNAYXJtLmNvbT4KPj4KPj4gVGhpcyBwYXRjaCBj
YXVzZXMgc2VyaW91cyByZWdyZXNzaW9uIG9uIFNhbXN1bmcgRXh5bm9zNTQzMyBTb0MgYmFzZWQg
Cj4+IFRNMihlKSBib2FyZHMuIFRoZSB0aW1lIGluIHVzZXJzcGFjZSBpcyBhbHdheXMgc2V0IHRv
IGJlZ2luIG9mIHRoZSBlcG9jaDoKPj4KPj4gIyBkYXRlIDA2MjgxMzE1MjAxOQo+PiBGcmkgSnVu
IDI4IDEzOjE1OjAwIFVUQyAyMDE5Cj4+ICMgZGF0ZQo+PiBUaHUgSmFuwqAgMSAwMDowMDowMCBV
VEMgMTk3MAo+PiAjIGRhdGUKPj4gVGh1IEphbsKgIDEgMDA6MDA6MDAgVVRDIDE5NzAKPj4KPj4g
SSd2ZSBub3RpY2VkIHRoYXQgc2luY2UgdGhlIHBhdGNoIGxhbmRlZCBpbiBMaW51eCBuZXh0LTIw
MTkwNjI1IGFuZCAKPj4gYmlzZWN0IGluZGVlZCBwb2ludGVkIHRvIHRoaXMgcGF0Y2guCj4+Cj4g
VGhhbmsgeW91IGZvciByZXBvcnRpbmcgdGhpcywgc2VlbXMgdGhhdCB0aGUgbmV4dCB0aGF0IHlv
dSBwb3N0ZWQgaXMgbWlzc2luZwo+IHNvbWUgZml4ZXMgZm9yIGFybTY0Lgo+IAo+IENvdWxkIHlv
dSBwbGVhc2UgdHJ5IHRoZSB0cmVlIGJlbG93Pwo+IAo+IGdpdDovL2dpdC5rZXJuZWwub3JnL3B1
Yi9zY20vbGludXgva2VybmVsL2dpdC90aXAvdGlwLmdpdCB0aW1lcnMvdmRzbwo+IAo+IExldCB1
cyBrbm93IGlmIHRoZSBmdW5jdGlvbmFsaXR5IGlzIHJlc3RvcmVkLiBPdGhlcndpc2UgdGhlIGlz
c3VlIHdpbGwgcmVxdWlyZQo+IGZ1cnRoZXIgaW52ZXN0aWdhdGlvbi4KIApNYXJlayBpcyBhbHJl
YWR5IG91dCBmb3IgaG9saWRheXMsIEkgZ2F2ZSB5b3VyIHRyZWUgYSB0cnkgYnV0IGtlcm5lbCBm
cm9tIAp0aGF0IGJyYW5jaCB3YXMgZmFpbGluZyB0byBib290IG9uIFRNMihlKS4gIAoKVGhlbiBJ
IGhhdmUgY2hlcnJ5LXBpY2tlZCA1IHBhdGNoZXMgZnJvbSB0aGUgYnJhbmNoIHRoYXQgc2VlbWVk
IHRvIApiZSBtaXNzaW5nIGluIG5leHQtMjAxOTA2Mjg6CgoyODAyOGYzMTc0Y2YxIChIRUFEKSBN
QUlOVEFJTkVSUzogRml4IEFuZHkncyBzdXJuYW1lIGFuZCB0aGUgZGlyZWN0b3J5IGVudHJpZXMg
b2YgVkRTTwplYzhmOGU0YmYyMjA2IGFybTY0OiB2ZHNvOiBGaXggY29tcGlsYXRpb24gd2l0aCBj
bGFuZyBvbGRlciB0aGFuIDgKNzIxODgyZWJiNTcyOSBhcm02NDogY29tcGF0OiBGaXggX19hcmNo
X2dldF9od19jb3VudGVyKCkgaW1wbGVtZW50YXRpb24KNzAyN2ZlYTk3N2EzZCBhcm02NDogRml4
IF9fYXJjaF9nZXRfaHdfY291bnRlcigpIGltcGxlbWVudGF0aW9uCjEwYjMwNTg1M2ZlMjIgbGli
L3Zkc286IE1ha2UgZGVsdGEgY2FsY3VsYXRpb24gd29yayBjb3JyZWN0bHkKNDg1NjhkOGM3ZjQ3
OSAodGFnOiBuZXh0LTIwMTkwNjI4LCBsaW51eC1uZXh0L21hc3RlcikgQWRkIGxpbnV4LW5leHQg
c3BlY2lmaWMgZmlsZXMgZm9yIDIwMTkwNjI4CgpXaXRoIHRob3NlIDUgYWRkaXRpb25hbCBwYXRj
aGVzIG9uIHRvcCBvZiBuZXh0LTIwMTkwNjI4IHRoZSBwcm9ibGVtCmlzIG5vdCBvYnNlcnZlZCBh
bnkgbW9yZS4gZGF0ZSwgcGluZywgZXRjLiBzZWVtcyB0byBiZSB3b3JraW5nIHdlbGwuCgojIGRh
dGUKRnJpIEp1biAyOCAxNjozOToyMiBVVEMgMjAxOQojCiMgc3lzdGVtY3RsIHN0b3Agc3lzdGVt
ZC10aW1lc3luY2QKIyAgCiMgZGF0ZSAwNjI4MTgzOTIwMTkKRnJpIEp1biAyOCAxODozOTowMCBV
VEMgMjAxOQojIGRhdGUKRnJpIEp1biAyOCAxODozOTowMSBVVEMgMjAxOQojIAojIGRhdGUgMDYy
ODE4NDMyMDE5OyBkYXRlCkZyaSBKdW4gMjggMTg6NDM6MDAgVVRDIDIwMTkKRnJpIEp1biAyOCAx
ODo0MzowMCBVVEMgMjAxOQojIGRhdGUKRnJpIEp1biAyOCAxODo0MzowNCBVVEMgMjAxOQoKLS0K
UmVnYXJkcywKU3lsd2VzdGVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
