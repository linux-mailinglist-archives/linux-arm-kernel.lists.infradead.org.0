Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AA2B4E4B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 14:44:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aeHjv7DWyOBnyo8aALJG+xYcC4oI/YHQ2ypeBHbVNUk=; b=KIrALJWyBD/dm2
	hZCXGpuvfUFCrKsasaMoAJoim5UKipJ1YHvj7AsPMhvVBcCnBEqmIkOLVD2CQD2t705jCm+AmFQzd
	yMtl2OPVZZoq3K3NgSdSgozUHyNnAlNPWy1TzEFOcrIsSmA9S/X0R6tVKFgpz9r4sCitT1sBTL6T2
	wUi3O5wdzx15stTU1/sSwZ5v8TM4piIMQ2biGbhZ88443S6zpndpg15vUTVu8GAYEVcLfXuo60Raw
	iKINBuNw3DWsu8RQp5sjecBogPdTXf/7ElOqdLQZAvfp5BDe7Yfuiz52MkHOK8h1BK3BU3dygMr1b
	ohzEpjlWS3ItLNntzlNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iACqQ-0006DW-Sj; Tue, 17 Sep 2019 12:44:35 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iACq4-0006Cb-VM
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 12:44:15 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190917124410euoutp01e6c0f25637e4bacf64ff826d0488e519~FOmUENzSz2758227582euoutp014
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 12:44:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190917124410euoutp01e6c0f25637e4bacf64ff826d0488e519~FOmUENzSz2758227582euoutp014
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568724250;
 bh=wUXpKJGu/og/UoOB6RtnG3FPGUskHRfnTr98I07AiCg=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=WDiYcicIRmy0yZ30lP+c2/4AV65RZ7SfTTOMsmvl4fZnzJyDpvhYce0fxKR9SLwjS
 dCXoYEmHYZSvDhMFjLUlg+MX9is7yDg//iCgKYKaa2MwZV/9PGlNCP+WR1J/RAc6DN
 4KpL/sbKO1efwJJzIV0Epk5k6aWM/V/0c6FCj8aM=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190917124410eucas1p2e83a6b1d64ddb17b4a345d786d7260b6~FOmTccf7w2150021500eucas1p2C;
 Tue, 17 Sep 2019 12:44:10 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id FB.A0.04469.915D08D5; Tue, 17
 Sep 2019 13:44:09 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190917124409eucas1p2211d232e6833a44a9ad5dbf72457197c~FOmSsZsEg2149521495eucas1p2T;
 Tue, 17 Sep 2019 12:44:09 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190917124409eusmtrp2d5e1869c322423d265b23ce57565b766~FOmSeKWX42680926809eusmtrp2Z;
 Tue, 17 Sep 2019 12:44:09 +0000 (GMT)
X-AuditID: cbfec7f2-54fff70000001175-b1-5d80d519d59e
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 39.79.04166.815D08D5; Tue, 17
 Sep 2019 13:44:08 +0100 (BST)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190917124407eusmtip251bb455018ae4b0faee9f4999a104f9a~FOmRZq8a80883208832eusmtip2y;
 Tue, 17 Sep 2019 12:44:07 +0000 (GMT)
Subject: Re: [PATCH v1 2/2] of: Let of_for_each_phandle fallback to
 non-negative cell_count
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Peter Rosin <peda@axentia.se>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <ba4d0f94-f147-049f-6252-10928b626e41@samsung.com>
Date: Tue, 17 Sep 2019 14:44:06 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190917122530.3xy7sut3xdvzlomj@pengutronix.de>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTcRTHO7u7D5eL283y9JRGD3prJfzICqOgSwT5T1DGrFWXJT7bWmUP
 GhqiS8oKLWemhaaIle+m9HJKoyTL7LE0s8gEq0XqzMLKvF4s//ucc76/7zlf+HGUMEBP4yJj
 D0imWEO0jtGoqx/8fLJk6gurPtCdtZzkNjTRJOvLEEO6Wu+oSN69EJKaXcqS4owaNSn/8JIm
 Kb+9QFpqLzGkJakZSFX3VxVJPLmC3HHmAhm67WBJ3bdOmrSdPQ/k5JtgcrppY6ggdtZdVokl
 l0tAzLyfzYo19nZWLC9OZURnfQqIFfknxPPuQhDP/A4Uu67cVIt95bPCxodrVu+VoiMPSqZl
 a3dp9jnc/RB/I/Rw7eluxgqVwTbw4ZBfifdzr7A24DiBLwIcXCW3Bd4L+Na93waaYe4DvNva
 qx7V179+RCuDQsCMtFJQCg9gTWMLK6sm8XrsKEtkZFc/3ohtrk2yhuJPMWhvuMXIGoYPQpvH
 NsJafi06nDkqmdX8XPR+fT/iM3nY5+0PF6VoJuLDrM6RK3z4Ndhfeg5kpvgATKrKphT2x9bO
 XJW8DPkCDl+lDKiUszfgYNddWuFJ+MlVySo8A4dqRh8kAb5vus4qRRpgS+JFUFQhWO9qpuU4
 FL8Ab9YukxH5dVjhTVBwAro9E5UbJuC56guU0tZiSrKgeMxDu+vGv611T59R6aCzj0lmH5PG
 PiaN/f/aPFAXg79kMccYJXNQrHRoqdkQY7bEGpfuiYsph+Hv2PjH1euA/me7ncBzoPPV4mOr
 XqANB80JMU5AjtL5acOOn9AL2r2GhCOSKW6nyRItmZ0wnVPr/LVHx73bIfBGwwEpSpLiJdPo
 VMX5TLPCsR852yPnvO7rXhc8cMazJ+J7++0tvZZkvy1pPXNLErYGpH4uuBqXHrGozC8cfAMa
 DjEwf3ZUT7JeiE/XHI7InNIRFSoaF1vCex6Q4JkB81esDBI2P4z60FF0bXDxJ/96K3PhV8jm
 j3TJ83zxS2Fmu/fYAk/GelVeZrTvbge7bX2VTm3eZwhaSJnMhr/qgyryigMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02SbUhTYRiGec+2s6O2OE7FNwurRRlF0zPdfC1d+qvzU4igD4cuPUzTOdk5
 SmbhUhFdZn6k6Cy/0AwT05kyLdHNKDQxzBLTykJRLFtRVkSpbc7Afxfc93XDAw/BE18X+BFJ
 qRyjT1WnSHB3/rO1p++OwFcGVdBsnhTVPR4ToOrldRwtTPdjqH7gGCqs6RCi1opePjLPTQpQ
 weoKQBN9t3A0kTsOUPeSHUM5ecGo31YH0PojixBZv84L0ExpOUB5b+SoeOxEpJiet9ZidFtt
 G6ArB2uEdK/prZA2txbitG2oANBdTdl0+VQLoG+sBtELDff59Hezf7THWWm4XpfOMXsSdSwX
 ITlHIZmUCkNSWUiYlAoOVR2VySWByvAEJiUpg9EHKuOkiZapHyCtPfJiX/ESbgAP5EbgRkAy
 BA69HhEYgTshJpsBLCtpELiCXXC40rDJXvDvpBF3lT4BePflotAZeJEqONuZgzvZm9TA0pVW
 obPEI0txWP7TwncZqxis/zOzMYWTFDR+Nm4YIlIJLbbbmJP55H64Yv/gsAnCx7Fq7le4Kp5w
 uHqe72Q3MgL+6CgDTuaRCljb9YHn4t0wt7tmk33h9HwdVgLEpi26aYti2qKYtij1gN8KvJl0
 VqvRspSUVWvZ9FSNNF6nNQPHK/Q8+d1lAS86T9oASQDJNtHgiEElFqgz2EytDUCCJ/EWRV/J
 VolFCerMS4xeF6tPT2FYG5A7bivl+fnE6xyPlcrFUnIqFIVRocGhwQok8RUVkNYYMalRc0wy
 w6Qx+v8eRrj5GUBcUWNQ28T4ArczoCi/khjtGLu8xH7b68mMnkrus1ccVxQtzo4eqM562Fvr
 P7W9qlGmxLznILfczin7FCG+1ihZj70yX8f6zP66d3DAmvQ84MuaveZ9v7Gtqen2tZjD2JmW
 mz8/Vvk3Rp3fV31BLLhzD3ns8Dc3R0ZTp69yWeUSPpuopg7x9Kz6H0G4kfwgAwAA
X-CMS-MailID: 20190917124409eucas1p2211d232e6833a44a9ad5dbf72457197c
X-Msg-Generator: CA
X-RootMTR: 20190917124409eucas1p2211d232e6833a44a9ad5dbf72457197c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190917124409eucas1p2211d232e6833a44a9ad5dbf72457197c
References: <20190824132846.8589-1-u.kleine-koenig@pengutronix.de>
 <20190824132846.8589-2-u.kleine-koenig@pengutronix.de>
 <20190913215809.GA11833@bogus>
 <CAMuHMdV+pwoAA0zH_vQf2nKqzrgHP8rcMStyJbnuu2qviFC_qg@mail.gmail.com>
 <20190917101303.t5otztdus7y3ayau@pengutronix.de>
 <489c90fb-a135-4fd8-ecb9-46404bd3c234@axentia.se>
 <20190917122530.3xy7sut3xdvzlomj@pengutronix.de>
 <CGME20190917124409eucas1p2211d232e6833a44a9ad5dbf72457197c@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_054413_354883_EFF3AA66 
X-CRM114-Status: GOOD (  27.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS" <devicetree@vger.kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 Joerg Roedel <joro@8bytes.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux I2C <linux-i2c@vger.kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVXdlLAoKT24gMTcuMDkuMjAxOSAxNDoyNSwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4g
T24gVHVlLCBTZXAgMTcsIDIwMTkgYXQgMTE6MjU6NDZBTSArMDAwMCwgUGV0ZXIgUm9zaW4gd3Jv
dGU6Cj4+IE9uIDIwMTktMDktMTcgMTI6MTMsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+Pj4g
SGVsbG8gR2VlcnQsCj4+Pgo+Pj4gT24gVHVlLCBTZXAgMTcsIDIwMTkgYXQgMTE6NDA6MjVBTSAr
MDIwMCwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+Pj4+IEhpIFJvYiwgVXdlLAo+Pj4+Cj4+
Pj4gT24gRnJpLCBTZXAgMTMsIDIwMTkgYXQgMTE6NTggUE0gUm9iIEhlcnJpbmcgPHJvYmhAa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4+Pj4+IE9uIFNhdCwgMjQgQXVnIDIwMTkgMTU6Mjg6NDYgKzAyMDAs
ID0/VVRGLTg/cT9Vd2U9MjBLbGVpbmUtSz1DMz1CNm5pZz89ICAgICAgICAgIHdyb3RlOgo+Pj4+
Pj4gUmVmZXJlbmNpbmcgZGV2aWNlIHRyZWUgbm9kZXMgZnJvbSBhIHByb3BlcnR5IGFsbG93cyB0
byBwYXNzIGFyZ3VtZW50cy4KPj4+Pj4+IFRoaXMgaXMgZm9yIGV4YW1wbGUgdXNlZCBmb3IgcmVm
ZXJlbmNpbmcgZ3Bpb3MuIFRoaXMgbG9va3MgYXMgZm9sbG93czoKPj4+Pj4+Cj4+Pj4+PiAgICAg
ICAgZ3Bpb19jdHJsOiBncGlvLWNvbnRyb2xsZXIgewo+Pj4+Pj4gICAgICAgICAgICAgICAgI2dw
aW8tY2VsbHMgPSA8Mj4KPj4+Pj4+ICAgICAgICAgICAgICAgIC4uLgo+Pj4+Pj4gICAgICAgIH0K
Pj4+Pj4+Cj4+Pj4+PiAgICAgICAgc29tZW90aGVybm9kZSB7Cj4+Pj4+PiAgICAgICAgICAgICAg
ICBncGlvcyA9IDwmZ3Bpb19jdHJsIDUgMCAmZ3Bpb19jdHJsIDMgMD47Cj4+Pj4+PiAgICAgICAg
ICAgICAgICAuLi4KPj4+Pj4+ICAgICAgICB9Cj4+Pj4+Pgo+Pj4+Pj4gVG8ga25vdyB0aGUgbnVt
YmVyIG9mIGFyZ3VtZW50cyB0aGlzIG11c3QgYmUgZWl0aGVyIGZpeGVkLCBvciB0aGUKPj4+Pj4+
IHJlZmVyZW5jZWQgbm9kZSBpcyBjaGVja2VkIGZvciBhICRjZWxsc19uYW1lIChoZXJlOiAiI2dw
aW8tY2VsbHMiKQo+Pj4+Pj4gcHJvcGVydHkgYW5kIHdpdGggdGhpcyBpbmZvcm1hdGlvbiB0aGUg
c3RhcnQgb2YgdGhlIHNlY29uZCByZWZlcmVuY2UgY2FuCj4+Pj4+PiBiZSBkZXRlcm1pbmVkLgo+
Pj4+Pj4KPj4+Pj4+IEN1cnJlbnRseSByZWd1bGF0b3JzIGFyZSByZWZlcmVuY2VkIHdpdGggbm8g
YWRkaXRpb25hbCBhcmd1bWVudHMuIFRvCj4+Pj4+PiBhbGxvdyBzb21lIG9wdGlvbmFsIGFyZ3Vt
ZW50cyB3aXRob3V0IGhhdmluZyB0byBjaGFuZ2UgYWxsIHJlZmVyZW5jZWQKPj4+Pj4+IG5vZGVz
IHRoaXMgY2hhbmdlIGludHJvZHVjZXMgYSB3YXkgdG8gc3BlY2lmeSBhIGRlZmF1bHQgY2VsbF9j
b3VudC4gU28KPj4+Pj4+IHdoZW4gYSBwaGFuZGxlIGlzIHBhcnNlZCB3ZSBjaGVjayBmb3IgdGhl
ICRjZWxsc19uYW1lIHByb3BlcnR5IGFuZCB1c2UKPj4+Pj4+IGl0IGFzIGJlZm9yZSBpZiBwcmVz
ZW50LiBJZiBpdCBpcyBub3QgcHJlc2VudCB3ZSBmYWxsIGJhY2sgdG8KPj4+Pj4+IGNlbGxzX2Nv
dW50IGlmIG5vbi1uZWdhdGl2ZSBhbmQgb25seSBmYWlsIGlmIGNlbGxzX2NvdW50IGlzIHNtYWxs
ZXIgdGhhbgo+Pj4+Pj4gemVyby4KPj4+Pj4+Cj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBVd2UgS2xl
aW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgo+Pj4+IFRoaXMgaXMg
bm93IGNvbW1pdCBlNDJlZTYxMDE3ZjU4Y2Q5ICgib2Y6IExldCBvZl9mb3JfZWFjaF9waGFuZGxl
IGZhbGxiYWNrCj4+Pj4gdG8gbm9uLW5lZ2F0aXZlIGNlbGxfY291bnQiKSBpbiByb2JoL2Zvci1u
ZXh0LCB3aGljaCBjYXVzZXMgYSBsb2NrLXVwIHdoZW4KPj4+PiBib290aW5nIGEgc2htb2JpbGVf
ZGVmY29uZmlnIGtlcm5lbCBvbiByOGE3NzkxL2tvZWxzY2g6Cj4+Pj4KPj4+PiByY3U6IElORk86
IHJjdV9zY2hlZCBzZWxmLWRldGVjdGVkIHN0YWxsIG9uIENQVQo+Pj4+IHJjdTogICAgIDAtLi4u
LjogKDIwOTkgdGlja3MgdGhpcyBHUCkgaWRsZT02ZmUvMS8weDQwMDAwMDAyCj4+Pj4gc29mdGly
cT0yOS8yOSBmcXM9MTA1MAo+Pj4+ICAgKHQ9MjEwMCBqaWZmaWVzIGc9LTExMzEgcT0wKQo+Pj4+
IE5NSSBiYWNrdHJhY2UgZm9yIGNwdSAwCj4+Pj4gQ1BVOiAwIFBJRDogMSBDb21tOiBzd2FwcGVy
LzAgTm90IHRhaW50ZWQKPj4+PiA1LjMuMC1yYzItc2htb2JpbGUtMDAwNTAtZ2U0MmVlNjEwMTdm
NThjZDkgIzM3Ngo+Pj4+IEhhcmR3YXJlIG5hbWU6IEdlbmVyaWMgUi1DYXIgR2VuMiAoRmxhdHRl
bmVkIERldmljZSBUcmVlKQo+Pj4+IFs8YzAxMGY4YWM+XSAodW53aW5kX2JhY2t0cmFjZSkgZnJv
bSBbPGMwMTBiNjIwPl0gKHNob3dfc3RhY2srMHgxMC8weDE0KQo+Pj4+IFs8YzAxMGI2MjA+XSAo
c2hvd19zdGFjaykgZnJvbSBbPGMwNzNkMDM4Pl0gKGR1bXBfc3RhY2srMHg3Yy8weDljKQo+Pj4+
IFs8YzA3M2QwMzg+XSAoZHVtcF9zdGFjaykgZnJvbSBbPGMwNzQyZTgwPl0gKG5taV9jcHVfYmFj
a3RyYWNlKzB4YTAvMHhiOCkKPj4+PiBbPGMwNzQyZTgwPl0gKG5taV9jcHVfYmFja3RyYWNlKSBm
cm9tIFs8YzA3NDJmMWM+XSAobm1pX3RyaWdnZXJfY3B1bWFza19iYWNrdHJhY2UrMHg4NC8weDEx
NCkKPj4+PiBbPGMwNzQyZjFjPl0gKG5taV90cmlnZ2VyX2NwdW1hc2tfYmFja3RyYWNlKSBmcm9t
IFs8YzAxN2Q2ODQ+XSAocmN1X2R1bXBfY3B1X3N0YWNrcysweGFjLzB4YzgpCj4+Pj4gWzxjMDE3
ZDY4ND5dIChyY3VfZHVtcF9jcHVfc3RhY2tzKSBmcm9tIFs8YzAxN2E1OTg+XSAocmN1X3NjaGVk
X2Nsb2NrX2lycSsweDJhYy8weDZiNCkKPj4+PiBbPGMwMTdhNTk4Pl0gKHJjdV9zY2hlZF9jbG9j
a19pcnEpIGZyb20gWzxjMDE4Mzk4MD5dICh1cGRhdGVfcHJvY2Vzc190aW1lcysweDMwLzB4NWMp
Cj4+Pj4gWzxjMDE4Mzk4MD5dICh1cGRhdGVfcHJvY2Vzc190aW1lcykgZnJvbSBbPGMwMTk0MWE4
Pl0gKHRpY2tfbm9oel9oYW5kbGVyKzB4Y2MvMHgxMjApCj4+Pj4gWzxjMDE5NDFhOD5dICh0aWNr
X25vaHpfaGFuZGxlcikgZnJvbSBbPGMwNWIxZDQwPl0gKGFyY2hfdGltZXJfaGFuZGxlcl92aXJ0
KzB4MjgvMHgzMCkKPj4+PiBbPGMwNWIxZDQwPl0gKGFyY2hfdGltZXJfaGFuZGxlcl92aXJ0KSBm
cm9tIFs8YzAxNmM5ZTA+XSAoaGFuZGxlX3BlcmNwdV9kZXZpZF9pcnErMHhlOC8weDIxYykKPj4+
PiBbPGMwMTZjOWUwPl0gKGhhbmRsZV9wZXJjcHVfZGV2aWRfaXJxKSBmcm9tIFs8YzAxNjdhOGM+
XSAoZ2VuZXJpY19oYW5kbGVfaXJxKzB4MTgvMHgyOCkKPj4+PiBbPGMwMTY3YThjPl0gKGdlbmVy
aWNfaGFuZGxlX2lycSkgZnJvbSBbPGMwMTY3YjNjPl0gKF9faGFuZGxlX2RvbWFpbl9pcnErMHhh
MC8weGI0KQo+Pj4+IFs8YzAxNjdiM2M+XSAoX19oYW5kbGVfZG9tYWluX2lycSkgZnJvbSBbPGMw
MzY3M2VjPl0gKGdpY19oYW5kbGVfaXJxKzB4NTgvMHg5MCkKPj4+PiBbPGMwMzY3M2VjPl0gKGdp
Y19oYW5kbGVfaXJxKSBmcm9tIFs8YzAxMDFhOGM+XSAoX19pcnFfc3ZjKzB4NmMvMHg5MCkKPj4+
PiBFeGNlcHRpb24gc3RhY2soMHhlYjA4ZGQzMCB0byAweGViMDhkZDc4KQo+Pj4+IGRkMjA6ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGMwY2M3NTE0IDIwMDAwMDEzIDAwMDAw
MDA1IDAwMDAzYjI3Cj4+Pj4gZGQ0MDogZWI3YzQwMjAgYzBjYzc1MGMgMDAwMDAwNTEgMDAwMDAw
NTEgMjAwMDAwMTMgYzBjNjZiMDggZWIxY2RjMDAgMDAwMDAwMTgKPj4+PiBkZDYwOiAwMDAwMDAw
MCBlYjA4ZGQ4MCBjMDVjMWEzOCBjMDc1NmMwMCAyMDAwMDAxMyBmZmZmZmZmZgo+Pj4+IFs8YzAx
MDFhOGM+XSAoX19pcnFfc3ZjKSBmcm9tIFs8YzA3NTZjMDA+XSAoX3Jhd19zcGluX3VubG9ja19p
cnFyZXN0b3JlKzB4MWMvMHgyMCkKPj4+PiBbPGMwNzU2YzAwPl0gKF9yYXdfc3Bpbl91bmxvY2tf
aXJxcmVzdG9yZSkgZnJvbSBbPGMwNWMxYTM4Pl0gKG9mX2ZpbmRfbm9kZV9ieV9waGFuZGxlKzB4
Y2MvMHhmMCkKPj4+PiBbPGMwNWMxYTM4Pl0gKG9mX2ZpbmRfbm9kZV9ieV9waGFuZGxlKSBmcm9t
IFs8YzA1YzFiYjg+XSAob2ZfcGhhbmRsZV9pdGVyYXRvcl9uZXh0KzB4NjgvMHgxNzgpCj4+Pj4g
WzxjMDVjMWJiOD5dIChvZl9waGFuZGxlX2l0ZXJhdG9yX25leHQpIGZyb20gWzxjMDVjMjJiYz5d
IChvZl9jb3VudF9waGFuZGxlX3dpdGhfYXJncysweDVjLzB4N2MpCj4+Pj4gWzxjMDVjMjJiYz5d
IChvZl9jb3VudF9waGFuZGxlX3dpdGhfYXJncykgZnJvbSBbPGMwNTNmYzM4Pl0gKGkyY19kZW11
eF9waW5jdHJsX3Byb2JlKzB4MjQvMHgxZmMpCj4+Pj4gWzxjMDUzZmMzOD5dIChpMmNfZGVtdXhf
cGluY3RybF9wcm9iZSkgZnJvbSBbPGMwNDQ2M2M0Pl0gKHBsYXRmb3JtX2Rydl9wcm9iZSsweDQ4
LzB4OTQpCj4+Pj4gWzxjMDQ0NjNjND5dIChwbGF0Zm9ybV9kcnZfcHJvYmUpIGZyb20gWzxjMDQ0
NGEyMD5dIChyZWFsbHlfcHJvYmUrMHgxZjAvMHgyYjgpCj4+Pj4gWzxjMDQ0NGEyMD5dIChyZWFs
bHlfcHJvYmUpIGZyb20gWzxjMDQ0NGU2OD5dIChkcml2ZXJfcHJvYmVfZGV2aWNlKzB4MTQwLzB4
MTU4KQo+Pj4+IFs8YzA0NDRlNjg+XSAoZHJpdmVyX3Byb2JlX2RldmljZSkgZnJvbSBbPGMwNDQ0
ZmYwPl0gKGRldmljZV9kcml2ZXJfYXR0YWNoKzB4NDQvMHg1YykKPj4+PiBbPGMwNDQ0ZmYwPl0g
KGRldmljZV9kcml2ZXJfYXR0YWNoKSBmcm9tIFs8YzA0NDUwYjQ+XSAoX19kcml2ZXJfYXR0YWNo
KzB4YWMvMHhiNCkKPj4+PiBbPGMwNDQ1MGI0Pl0gKF9fZHJpdmVyX2F0dGFjaCkgZnJvbSBbPGMw
NDQzMTc4Pl0gKGJ1c19mb3JfZWFjaF9kZXYrMHg2NC8weGEwKQo+Pj4+IFs8YzA0NDMxNzg+XSAo
YnVzX2Zvcl9lYWNoX2RldikgZnJvbSBbPGMwNDQzOGE4Pl0gKGJ1c19hZGRfZHJpdmVyKzB4MTQ4
LzB4MWE4KQo+Pj4+IFs8YzA0NDM4YTg+XSAoYnVzX2FkZF9kcml2ZXIpIGZyb20gWzxjMDQ0NWFk
MD5dIChkcml2ZXJfcmVnaXN0ZXIrMHhhYy8weGYwKQo+Pj4+IFs8YzA0NDVhZDA+XSAoZHJpdmVy
X3JlZ2lzdGVyKSBmcm9tIFs8YzBiMDEwYjA+XSAoZG9fb25lX2luaXRjYWxsKzB4YTgvMHgxZDQp
Cj4+Pj4gWzxjMGIwMTBiMD5dIChkb19vbmVfaW5pdGNhbGwpIGZyb20gWzxjMGIwMTQ0OD5dIChr
ZXJuZWxfaW5pdF9mcmVlYWJsZSsweDI2Yy8weDJjOCkKPj4+PiBbPGMwYjAxNDQ4Pl0gKGtlcm5l
bF9pbml0X2ZyZWVhYmxlKSBmcm9tIFs8YzA3NTFjNzA+XSAoa2VybmVsX2luaXQrMHg4LzB4MTBj
KQo+Pj4+IFs8YzA3NTFjNzA+XSAoa2VybmVsX2luaXQpIGZyb20gWzxjMDEwMTBlOD5dIChyZXRf
ZnJvbV9mb3JrKzB4MTQvMHgyYykKPj4+PiBFeGNlcHRpb24gc3RhY2soMHhlYjA4ZGZiMCB0byAw
eGViMDhkZmY4KQo+Pj4+IGRmYTA6ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwCj4+Pj4gZGZjMDogMDAwMDAwMDAg
MDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAw
MDAwMDAKPj4+PiBkZmUwOiAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAw
MDAxMyAwMDAwMDAwMAo+Pj4+Cj4+Pj4gUHJlc3VtYWJseSBpdCBsb29wcyBmb3JldmVyLCBkdWUg
dG8gYSBjb252ZXJzaW9uIG9mIC0xIHRvIHVuc2lnbmVkCj4+Pj4gc29tZXdoZXJlPwo+Pj4gSG1t
LCBJIGZhaWwgdG8gc2VlIHRoZSBjdWxwcml0LiBpMmNfZGVtdXhfcGluY3RybF9wcm9iZSBjYWxs
cwo+Pj4gb2ZfY291bnRfcGhhbmRsZV93aXRoX2FyZ3Mgd2l0aCBjZWxsc19uYW1lPU5VTEwuIFdp
dGggdGhhdCBJIGRvbid0IHNlZQo+Pj4gaG93IG15IHBhdGNoIGNoYW5nZXMgYW55dGhpbmcgYXMg
dGhlIG9ubHkgY2hhbmdlIGlzIGluIGFuIGlmCj4+PiAoaXQtPmNlbGxzX25hbWUpIGJsb2NrIHRo
YXQgc2hvdWxkbid0IGJlIHJlbGV2YW50IGluIHlvdXIgY2FzZS4KPj4+Cj4+PiBDYW4geW91IHBs
ZWFzZSB2ZXJpZnkgdGhhdCB0aGUgbG9vcCBpbiBvZl9jb3VudF9waGFuZGxlX3dpdGhfYXJncyBp
cwo+Pj4gaW5kZWVkIG5vdCB0ZXJtaW5hdGluZywgZS5nLiB3aXRoCj4+IFRoZSBiZWxvdyBpbmRp
Y2F0ZWQgZWxzZS1icmFuY2ggd2FzIG5vdCB0b3VjaGVkIGJ5IGU0MmVlNjEwMTdmNThjZDksCj4+
IHdoaWNoIGVuZHMgdXAgc2V0dGluZyB0aGUgY291bnQgdG8gLTEgKGFrYSAweGZmLi4uZmYgaW4g
dGhpcyBjYXNlKS4KPj4gTm8/Cj4+Cj4+IGludCBvZl9waGFuZGxlX2l0ZXJhdG9yX25leHQoc3Ry
dWN0IG9mX3BoYW5kbGVfaXRlcmF0b3IgKml0KQo+PiB7Cj4+Cj4+IAkuLi4KPj4KPj4gCQlpZiAo
aXQtPmNlbGxzX25hbWUpIHsKPj4KPj4gCQkJLi4uCj4+Cj4+IAkJfSBlbHNlIHsKPj4gCQkJY291
bnQgPSBpdC0+Y2VsbF9jb3VudDsgICAgLyogPC0tLS0gU1VTUEVDVCEhISAqLwo+PiAJCX0KPiBP
aCB5ZWFoLCB5b3UncmUgcmlnaHQuIEknbSBhIGJpdCBkaXNhcHBvaW50ZWQgdGhhdCBJIGRpZG4n
dCBzcG90IHRoaXMKPiBteXNlbGYgOi18Cj4KPiBVbnRlc3RlZCBwYXRjaCB0byBmaXggdGhpcyBw
cm9ibGVtOgoKWWVzdGVyZGF5IEkndmUgbm90aWNlZCB0aGF0IHNvdW5kIGRyaXZlciBmYWlscyB0
byBpbml0aWFsaXplIG9uIFRNMihlKSAKYm9hcmQgKGFybTY0KSBhbmQgdG9kYXkgSSd2ZSBiaXNl
Y3RlZCB0byB0aGlzIGNvbW1pdC4gTmljZSB0byBzZWUgdGhhdCAKdGhlIGlzc3VlIGhhcyBiZWVu
IGFscmVhZHkgaW52ZXN0aWdhdGVkLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9vZi9iYXNlLmMg
Yi9kcml2ZXJzL29mL2Jhc2UuYwo+IGluZGV4IDJmMjVkMmRmZWNmYS4uMjZmN2EyMWQ3MTg3IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvb2YvYmFzZS5jCj4gKysrIGIvZHJpdmVycy9vZi9iYXNlLmMK
PiBAQCAtMTI4NCw2ICsxMjg0LDEzIEBAIGludCBvZl9waGFuZGxlX2l0ZXJhdG9yX2luaXQoc3Ry
dWN0IG9mX3BoYW5kbGVfaXRlcmF0b3IgKml0LAo+ICAgCWNvbnN0IF9fYmUzMiAqbGlzdDsKPiAg
IAlpbnQgc2l6ZTsKPiAgIAo+ICsJLyoKPiArCSAqIG9uZSBvZiBjZWxsX2NvdW50IG9yIGNlbGxz
X25hbWUgbXVzdCBiZSBwcm92aWRlZCB0byBkZXRlcm1pbmUgdGhlCj4gKwkgKiBhcmd1bWVudCBs
ZW5ndGguCj4gKwkgKi8KPiArCWlmIChjZWxsX2NvdW50IDwgMCAmJiAhY2VsbHNfbmFtZSkKPiAr
CQlyZXR1cm4gLUVJTlZBTDsKPiArCj4gICAJbWVtc2V0KGl0LCAwLCBzaXplb2YoKml0KSk7Cj4g
ICAKPiAgIAlsaXN0ID0gb2ZfZ2V0X3Byb3BlcnR5KG5wLCBsaXN0X25hbWUsICZzaXplKTsKPiBA
QCAtMTc2NSw2ICsxNzcyLDE4IEBAIGludCBvZl9jb3VudF9waGFuZGxlX3dpdGhfYXJncyhjb25z
dCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLCBjb25zdCBjaGFyICpsaXN0X25hCj4gICAJc3RydWN0
IG9mX3BoYW5kbGVfaXRlcmF0b3IgaXQ7Cj4gICAJaW50IHJjLCBjdXJfaW5kZXggPSAwOwo+ICAg
Cj4gKwkvKiBJZiBjZWxsc19uYW1lIGlzIE5VTEwgd2UgYXNzdW1lIGFuIGNlbGxfY291bnQgb2Yg
MCAqLwo+ICsJaWYgKGNlbGxzX25hbWUgPT0gTlVMTCkgewo+ICsJCWNvbnN0IF9fYmUzMiAqbGlz
dDsKPiArCQlpbnQgc2l6ZTsKPiArCj4gKwkJbGlzdCA9IG9mX2dldF9wcm9wZXJ0eShucCwgbGlz
dF9uYW1lLCAmc2l6ZSk7Cj4gKwkJaWYgKCFsaXN0KQo+ICsJCQlyZXR1cm4gLUVOT0VOVDsKPiAr
Cj4gKwkJcmV0dXJuIHNpemUgLyBzaXplb2YoKmxpc3QpOwo+ICsJfQo+ICsKPiAgIAlyYyA9IG9m
X3BoYW5kbGVfaXRlcmF0b3JfaW5pdCgmaXQsIG5wLCBsaXN0X25hbWUsIGNlbGxzX25hbWUsIC0x
KTsKPiAgIAlpZiAocmMpCj4gICAJCXJldHVybiByYzsKPgpJIGNvbmZpcm0gdGhhdCB0aGUgYWJv
dmUgY29kZSB3b3Jrcy4gVGhlIHBhdGNoIGZpeGVzIG15IFRNMihlKSBzb3VuZCAKaXNzdWUsIGZl
ZWwgZnJlZSB0byBhZGQ6CgpUZXN0ZWQtYnk6IE1hcmVrIFN6eXByb3dza2kgPG0uc3p5cHJvd3Nr
aUBzYW1zdW5nLmNvbT4KCkJlc3QgcmVnYXJkcwotLSAKTWFyZWsgU3p5cHJvd3NraSwgUGhEClNh
bXN1bmcgUiZEIEluc3RpdHV0ZSBQb2xhbmQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
