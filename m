Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B71F51678C7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 09:51:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EANqNarx/+MRCnOzadnIWiQ/9bdcLbeqmwccwbixn8w=; b=W+bgiNk/+SgKFw
	l4QWKvBoKo10+0IBqmezBSuTmjktT22BToDIMBPBxqa05YL6f+keVSJgEljVs+qlflFSB5LQZsFza
	4KgroieJZPsPGRXr+ALD3IWZIhY66tQXOGhOFTfy5wlY3g8H3F2ihYhZe9L7W04qv4lTT5Ommveqz
	N4hxdOFVzXARphp7pJzyHSni0dq3QAeO21+ycXq2Tv9Jz+eDEJT3oIpWAkppQIh2cv8c6v8aS1d71
	M1RnzfaFdHbKSXmrUO3POpDvG/W02/kAeoGWGyVUg9r7nTMimeDQxTAd5YBBYLuZjeYJ4kcykagov
	ex5nmTC+a1gya9HyqRTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j541Q-0008F3-8Q; Fri, 21 Feb 2020 08:50:56 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j541F-00086m-Jf
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 08:50:47 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200221085040euoutp01f606481a875ba59c65924971aa5f57fb~1XsQoUVGE2138921389euoutp01V
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 08:50:40 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200221085040euoutp01f606481a875ba59c65924971aa5f57fb~1XsQoUVGE2138921389euoutp01V
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1582275040;
 bh=HZLNxylF3daAUHGgLFX7OuD1/pYOLzAhJCT48ldmvp8=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=bJTSssywoTDY9rLZ4jT2P01j2QhiKpZfBKVAtb16Jijl0RxvmD7hfN+KoCkJ5SI4Z
 CQEwn/PklQlSkIYFiBhjob3NkLieGUdKmSXK7klUwGJu74R93r0SKiVzRFvk2+OqCW
 ndOKBvaPMFPTvdljHh+v7B9TTi2ZBqXXywmb29QY=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200221085040eucas1p1964a56ab0b132d8c0120d31850741b72~1XsQSuyfh2317823178eucas1p1n;
 Fri, 21 Feb 2020 08:50:40 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id EC.08.61286.0E99F4E5; Fri, 21
 Feb 2020 08:50:40 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200221085039eucas1p2b439c37eb04870cc020f452b7ad31929~1XsP8LlTH2387523875eucas1p26;
 Fri, 21 Feb 2020 08:50:39 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200221085039eusmtrp26e6785315653b9152523025d12bd84bb~1XsP7HlW00916709167eusmtrp2G;
 Fri, 21 Feb 2020 08:50:39 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-2c-5e4f99e009d7
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 8E.B0.07950.FD99F4E5; Fri, 21
 Feb 2020 08:50:39 +0000 (GMT)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200221085038eusmtip275b699c639314f6826691376433a2979~1XsO2zE1v0499104991eusmtip2U;
 Fri, 21 Feb 2020 08:50:38 +0000 (GMT)
Subject: Re: [PATCH] kbuild: use KBUILD_DEFCONFIG as the fallback for
 DEFCONFIG_LIST
To: Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <e0212512-bc44-fc3a-a647-47eff86983b7@samsung.com>
Date: Fri, 21 Feb 2020 09:50:35 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200216154502.26478-1-masahiroy@kernel.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0yTVxj2fPd2Vo4F0zdosqRRjGQTyMZysjmiCYknC5vyh+gUtZtf0Ekr
 toK6ZLGzzLCOqVFU+Lh5GXIRRcDWghcQHYywVFfmBMKixAvUgBgQh1jZaD+Z/Hue532e875P
 ciRW3ypESlstO2WrxZRuFLScu/XlrffvF6zaEOvyhJHB/FqOuF4pIhm9MCmQ4TO5iJx8OcGT
 olvZHOkZH0TkhbubJwNXv+fIsVoDqbnSJ5K6B3/xJNDoYUhnY5FA3KPZAikK5LHk56ok0ne/
 iye+5hMMudNcg4i/M5cl+5UwcqRh6jF7ewVP6uuOsiS7N56MX3jAk3uHrzLLF9CJyU6R/vPD
 AY5e6VBYWl1SjWh/5RmWDvr9HL1Y2c3QGznPRdqg/C3SuqofBeotfMbRp16vSOt/2Uu7S3bQ
 4Wt3BOpz3BVXh3+pXbZZTt+aJVtjEjZpt5T95OAzWmN3Oy4fY+3o0WIn0kiAPwT32THBibSS
 HlcgcF16zKjkOYLhvFOiSkYR7Lvp5KYj4+PTkXIEvcUOXiVDCI7/dnrKJUnhOAXu/rouGIjA
 FIaqakIvsbhJhMD102JwIOA4cA45haBfhxMgrycxKHN4EQzcrBaCeB5OhcLKG6HFOjwX2gse
 hrAGfwztpX8wQczid8HhKmRVbICeh6WhCoAPaqCnv5xXr06EvpLXoorD4UnbxTd4AfzbMB1w
 IOjznhNVkougc18+Ul2fQK93InQpi5dATWOMKq+A4v4AE5QBz4GuobnqEXPgsPs4q8o6yNmv
 V91RoLSd/3/t9ds+9hAyKjOqKTPqKDPqKG/3nkBcFTLImTZzmmyLs8i7ltpMZlumJW3p19vN
 dWjqd3dMto140JjvqxaEJWScrdtt/2KDnjdl2faYWxBIrDFCFzV7StJtNu35VrZu32jNTJdt
 LWi+xBkNug9O+VP1OM20U94myxmydXrKSJpIO6Iro6NnWZPmx/qljJzkZY9W7Ipv2pvy7KSG
 uipeR6wtPerRhbVEXloYz2zcsW0sUPndcjuXVb9G+/R28Ygj8ptPuwp9CdzA5XlJhqgy8+/J
 qa5WT1NbrfYJzh25x7wqW/+i4DEkl9sdWe99fk3/5zsdH1lWrW3/LKN5SX7ipphZTI6Rs20x
 xUWzVpvpP8MVtDfZAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0iTaxzHefZeFUdP0/DBhGRwCoJm72ztWdgoitPzR6fEIsLSWvailXO2
 d9oNajHPOWvlwW7W3kSLLuSUrFl2j7SyRmCkmbosFZO0dAWauRpytizwvw/fyw9+8OUpVTuT
 wG/Lt4nWfFOemo2mn088fTev2706a35pgw4Pnb5G4xs/ZA6PXJ1g8edLRwA+F/zO4PIXxTT2
 jw8BPFbfyeCB+wdpXHYtHtfe6+Wwt+81g0N3bilw651yFtePFLO4PHSCwiWelbi3p4PBLQ/P
 KnDbw1qAB1uPUPgfeRo+fjt8zO67zOA670kKF3fp8PjVPgZ3H7uvWJJIvk+0cuTb3//R5N5z
 mSI1FTWAfKi6RJGhwUGaXK/qVJBHzlGO3JbfcsTrOcSS5jNfaBJobuZI3YUDpLNiJ/n8oI0l
 LY52Li02Q5NqtRTaxKRci2RbrN4gYK1GMGCNdoFBI6ToMxdpdepkY+pWMW9bkWhNNm7W5F48
 7GAKmubvdtwto+ygf44LRPEILkDj419ZF4jmVfAiQI7BEDdpJCJfmZ2Z5FgUeu36FfoE0DPv
 sbDB87FwHWp/siGSiYMEDXtquUiGgk84VFFVwkYMFTSgYn8zFWEWCsg1HDnE80poRCf8yyMy
 Df9AA49rfsZnwEzU4XYqIqyE05HP/Z6OcBRchHyVL3/qFFyIKup6qUmehRw3zvzieOR/X6ko
 BSp5Sl2eUpGnVOQplbOA9oA4sVAy55glrUYymaXC/BxNtsXsBeFR1TcFr98CrsCaRgB5oI5R
 7ravylIxpiJpj7kRIJ5Sxylnx4Ql5VbTnr2i1bLJWpgnSo1AF37uKJUwI9sSnmi+bZOgE/TY
 IOhT9CkLsTpe6YQNG1Uwx2QTd4higWj93VPwUQl28MpXpCrFgRy3/vCuj+eD1sblob4oo2D/
 80egwJKedGUko2E7TL0bSB+lgmnVSxN2da0fTVLKTWMPdmYYXmrXJjaFgupl1f+O5TpvvulP
 C8wqWtEWM9yfzUeX7N87OuDc4pxprK7bfKryr66eni9f3Sszu9Orxk77b3bEtVg8in1qWso1
 CXMpq2T6H3tOa3hqAwAA
X-CMS-MailID: 20200221085039eucas1p2b439c37eb04870cc020f452b7ad31929
X-Msg-Generator: CA
X-RootMTR: 20200221085039eucas1p2b439c37eb04870cc020f452b7ad31929
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200221085039eucas1p2b439c37eb04870cc020f452b7ad31929
References: <20200216154502.26478-1-masahiroy@kernel.org>
 <CGME20200221085039eucas1p2b439c37eb04870cc020f452b7ad31929@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_005045_894140_A9796B73 
X-CRM114-Status: GOOD (  26.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Rich Felker <dalias@libc.org>, linux-sh@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, Guo Ren <guoren@kernel.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Vincent Chen <deanbo422@gmail.com>,
 Will Deacon <will@kernel.org>, Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Richard Weinberger <richard@nod.at>, x86@kernel.org,
 Ingo Molnar <mingo@redhat.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Jeff Dike <jdike@addtoit.com>, linux-um@lists.infradead.org,
 Borislav Petkov <bp@alien8.de>, Greentime Hu <green.hu@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Nick Hu <nickhu@andestech.com>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGVhciBBbGwsCgpPbiAxNi4wMi4yMDIwIDE2OjQ1LCBNYXNhaGlybyBZYW1hZGEgd3JvdGU6Cj4g
TW9zdCBvZiB0aGUgS2NvbmZpZyBjb21tYW5kcyAoZXhjZXB0IGRlZmNvbmZpZyBhbmQgYWxsKmNv
bmZpZykgcmVhZCB0aGUKPiAuY29uZmlnIGZpbGUgYXMgYSBiYXNlIHNldCBvZiBDT05GSUcgb3B0
aW9ucy4KPgo+IFdoZW4gaXQgZG9lcyBub3QgZXhpc3QsIHRoZSBmaWxlcyBpbiBERUZDT05GSUdf
TElTVCBhcmUgc2VhcmNoZWQgaW4gdGhpcwo+IG9yZGVyIGFuZCBsb2FkZWQgaWYgZm91bmQuCj4K
PiBJIGRvIG5vdCBzZWUgbXVjaCBzZW5zZSBpbiB0aGUgbGFzdCB0d28gZW50cmllcyBpbiBERUZD
T05GSUdfTElTVC4KPgo+IFsxXSBBUkNIX0RFRkNPTkZJRwo+Cj4gVGhlIGVudHJ5IGZvciBERUZD
T05GSUdfTElTVCBpcyBndWFyZGVkIGJ5ICdkZXBlbmRzIG9uICFVTUwnLiBTbywgdGhlCj4gQVJD
SF9ERUZDT05GSUcgZGVmaW5pdGlvbiBpbiBhcmNoL3g4Ni91bS9LY29uZmlnIGlzIG1lYW5pbmds
ZXNzLgo+Cj4gYXJjaC97c2gsc3BhcmMseDg2fS9LY29uZmlnIGRlZmluZSBBUkNIX0RFRkNPTkZJ
RyBkZXBlbmRpbmcgb24gMzIgb3IgNjQKPiBiaXQgdmFyaWFudCBzeW1ib2xzLiBUaGlzIGlzIGEg
bGl0dGxlIGJpdCBzdHJhbmdlOyBBUkNIX0RFRkNPTkZJRyBzaG91bGQKPiBiZSBhIGZpeGVkIHN0
cmluZyBiZWNhdXNlIHRoZSBiYXNlIGNvbmZpZyBmaWxlIGlzIGxvYWRlZCBiZWZvcmUgdGhlIHN5
bWJvbAo+IGV2YWx1YXRpb24gc3RhZ2UuCj4KPiBVc2luZyBLQlVJTERfREVGQ09ORklHIGlzIHNh
bmVyIGJlY2F1c2UgaXQgaXMgZml4ZWQgYmVmb3JlIEtjb25maWcgaXMKPiBpbnZva2VkLiBGb3J0
dW5hdGVseSwgYXJjaC97c2gsc3BhcmMseDg2fS9NYWtlZmlsZSBkZWZpbmUgaXQgaW4gdGhlCj4g
c2FtZSB3YXksIGFuZCBpdCB3b3JrcyBhcyBleHBlY3RlZC4gSGVuY2UsIHJlcGxhY2UgQVJDSF9E
RUZDT05GSUcgd2l0aAo+ICJhcmNoLyQoU1JDQVJDSCkvY29uZmlncy8kKEtCVUlMRF9ERUZDT05G
SUcpIi4KPgo+IFsyXSBhcmNoLyQoQVJDSCkvZGVmY29uZmlnCj4KPiBUaGlzIGZpbGUgcGF0aCBp
cyBubyBsb25nZXIgdmFsaWQuIFRoZSBkZWZjb25maWcgZmlsZXMgYXJlIGFsd2F5cyBsb2NhdGVk
Cj4gaW4gdGhlIGFyY2ggY29uZmlncy8gZGlyZWN0b3JpZXMuCj4KPiAgICAkIGZpbmQgYXJjaCAt
bmFtZSBkZWZjb25maWcgfCBzb3J0Cj4gICAgYXJjaC9hbHBoYS9jb25maWdzL2RlZmNvbmZpZwo+
ICAgIGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcKPiAgICBhcmNoL2Nza3kvY29uZmlncy9k
ZWZjb25maWcKPiAgICBhcmNoL25kczMyL2NvbmZpZ3MvZGVmY29uZmlnCj4gICAgYXJjaC9yaXNj
di9jb25maWdzL2RlZmNvbmZpZwo+ICAgIGFyY2gvczM5MC9jb25maWdzL2RlZmNvbmZpZwo+ICAg
IGFyY2gvdW5pY29yZTMyL2NvbmZpZ3MvZGVmY29uZmlnCj4KPiBUaGUgcGF0aCBhcmNoLyovY29u
Zmlncy9kZWZjb25maWcgaXMgYWxyZWFkeSBjb3ZlcmVkIGJ5Cj4gImFyY2gvJChTUkNBUkNIKS9j
b25maWdzLyQoS0JVSUxEX0RFRkNPTkZJRykiLiBTbywgdGhpcyBmaWxlIHBhdGggaXMKPiBub3Qg
bmVjZXNzYXJ5Lgo+Cj4gU2lnbmVkLW9mZi1ieTogTWFzYWhpcm8gWWFtYWRhIDxtYXNhaGlyb3lA
a2VybmVsLm9yZz4KClRoaXMgcGF0Y2ggbGFuZGVkIGluIHRvZGF5J3MgbGludXgtbmV4dCAobmV4
dC0yMDIwMDIyMSkgYW5kIGJyb2tlIGFybTY0IApidWlsZHM6CgotLS0+OC0tLQoKJCBtYWtlIEFS
Q0g9YXJtNjQgQ1JPU1NfQ09NUElMRT1hYXJjaDY0LWxpbnV4LWdudS0gZGVmY29uZmlnCioqKiBE
ZWZhdWx0IGNvbmZpZ3VyYXRpb24gaXMgYmFzZWQgb24gJ2RlZmNvbmZpZycKIwojIGNvbmZpZ3Vy
YXRpb24gd3JpdHRlbiB0byAuY29uZmlnCiMKJCBtYWtlIEFSQ0g9YXJtNjQgQ1JPU1NfQ09NUElM
RT1hYXJjaDY0LWxpbnV4LWdudS0gSW1hZ2UuZ3oKc2NyaXB0cy9rY29uZmlnL2NvbmbCoCAtLXN5
bmNjb25maWcgS2NvbmZpZwpzY3JpcHRzL2tjb25maWcvY29uZsKgIC0tc3luY2NvbmZpZyBLY29u
ZmlnCnNjcmlwdHMva2NvbmZpZy9jb25mwqAgLS1zeW5jY29uZmlnIEtjb25maWcKc2NyaXB0cy9r
Y29uZmlnL2NvbmbCoCAtLXN5bmNjb25maWcgS2NvbmZpZwpzY3JpcHRzL2tjb25maWcvY29uZsKg
IC0tc3luY2NvbmZpZyBLY29uZmlnCi4uLgoKKGVuZGxlc3MgbG9vcCkKCi0tLT44LS0tCgpSZXZl
cnRpbmcgaXQgZml4ZXMgdGhlIGlzc3VlOgoKLS0tPjgtLS0KCiQgZ2l0IHJldmVydCBjZGQ1ZDFh
MjA3ZDZhM2EwNmM5ZTYyN2EwMjM0ZDlhNmFmNmFkMzQ3CltkZXRhY2hlZCBIRUFEIDEwODBkNmEx
M2I2ZF0gUmV2ZXJ0ICJrYnVpbGQ6IHVzZSBLQlVJTERfREVGQ09ORklHIGFzIHRoZSAKZmFsbGJh
Y2sgZm9yIERFRkNPTkZJR19MSVNUIgogwqA1IGZpbGVzIGNoYW5nZWQsIDIyIGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKJCBtYWtlIEFSQ0g9YXJtNjQgQ1JPU1NfQ09NUElMRT1hYXJjaDY0
LWxpbnV4LWdudS0gZGVmY29uZmlnCioqKiBEZWZhdWx0IGNvbmZpZ3VyYXRpb24gaXMgYmFzZWQg
b24gJ2RlZmNvbmZpZycKIwojIE5vIGNoYW5nZSB0byAuY29uZmlnCiMKJCBtYWtlIEFSQ0g9YXJt
NjQgQ1JPU1NfQ09NUElMRT1hYXJjaDY0LWxpbnV4LWdudS0gSW1hZ2UuZ3oKc2NyaXB0cy9rY29u
ZmlnL2NvbmbCoCAtLXN5bmNjb25maWcgS2NvbmZpZwogwqAgVVBEwqDCoMKgwqAgaW5jbHVkZS9j
b25maWcva2VybmVsLnJlbGVhc2UKIMKgIFVQRMKgwqDCoMKgIGluY2x1ZGUvZ2VuZXJhdGVkL3V0
c3JlbGVhc2UuaAogwqAgQ0PCoMKgwqDCoMKgIHNjcmlwdHMvbW9kL2VtcHR5Lm8KLi4uCgokIGFh
cmNoNjQtbGludXgtZ251LWdjYyAtLXZlcnNpb24KYWFyY2g2NC1saW51eC1nbnUtZ2NjIChVYnVu
dHUvTGluYXJvIDcuNC4wLTF1YnVudHUxfjE4LjA0LjEpIDcuNC4wCkNvcHlyaWdodCAoQykgMjAx
NyBGcmVlIFNvZnR3YXJlIEZvdW5kYXRpb24sIEluYy4KVGhpcyBpcyBmcmVlIHNvZnR3YXJlOyBz
ZWUgdGhlIHNvdXJjZSBmb3IgY29weWluZyBjb25kaXRpb25zLiBUaGVyZSBpcyBOTwp3YXJyYW50
eTsgbm90IGV2ZW4gZm9yIE1FUkNIQU5UQUJJTElUWSBvciBGSVRORVNTIEZPUiBBIFBBUlRJQ1VM
QVIgUFVSUE9TRS4KLS0tPjgtLS0KCkl0IGxvb2tzIHRoYXQgdGhlIGlzc3VlIGlzIHNpbWlsYXIg
dG8gdGhlIG9uZSBkZXNjcmliZWQgaGVyZToKCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcv
cGF0Y2gvMTA0NTM2ODUvCgpJIGhvcGUgdGhpcyByZXBvcnQgaGVscHMgZml4aW5nIHRoZSBpc3N1
ZS4KCj4gLS0tCj4KPiAgIGFyY2gvc2gvS2NvbmZpZyAgICAgfCA1IC0tLS0tCj4gICBhcmNoL3Nw
YXJjL0tjb25maWcgIHwgNSAtLS0tLQo+ICAgYXJjaC94ODYvS2NvbmZpZyAgICB8IDUgLS0tLS0K
PiAgIGFyY2gveDg2L3VtL0tjb25maWcgfCA1IC0tLS0tCj4gICBpbml0L0tjb25maWcgICAgICAg
IHwgMyArLS0KPiAgIDUgZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIyIGRlbGV0aW9u
cygtKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvc2gvS2NvbmZpZyBiL2FyY2gvc2gvS2NvbmZpZwo+
IGluZGV4IDllY2UxMTFiMDI1NC4uYjRmMGUzN2I4M2ViIDEwMDY0NAo+IC0tLSBhL2FyY2gvc2gv
S2NvbmZpZwo+ICsrKyBiL2FyY2gvc2gvS2NvbmZpZwo+IEBAIC04NywxMSArODcsNiBAQCBjb25m
aWcgU1VQRVJINjQKPiAgIAlzZWxlY3QgSEFWRV9FWElUX1RIUkVBRAo+ICAgCXNlbGVjdCBLQUxM
U1lNUwo+ICAgCj4gLWNvbmZpZyBBUkNIX0RFRkNPTkZJRwo+IC0Jc3RyaW5nCj4gLQlkZWZhdWx0
ICJhcmNoL3NoL2NvbmZpZ3Mvc2h4M19kZWZjb25maWciIGlmIFNVUEVSSDMyCj4gLQlkZWZhdWx0
ICJhcmNoL3NoL2NvbmZpZ3MvY2F5bWFuX2RlZmNvbmZpZyIgaWYgU1VQRVJINjQKPiAtCj4gICBj
b25maWcgR0VORVJJQ19CVUcKPiAgIAlkZWZfYm9vbCB5Cj4gICAJZGVwZW5kcyBvbiBCVUcgJiYg
U1VQRVJIMzIKPiBkaWZmIC0tZ2l0IGEvYXJjaC9zcGFyYy9LY29uZmlnIGIvYXJjaC9zcGFyYy9L
Y29uZmlnCj4gaW5kZXggYzFkZDZkZDY0MmY0Li4wZGUxNTM4MGQxZmMgMTAwNjQ0Cj4gLS0tIGEv
YXJjaC9zcGFyYy9LY29uZmlnCj4gKysrIGIvYXJjaC9zcGFyYy9LY29uZmlnCj4gQEAgLTk1LDEx
ICs5NSw2IEBAIGNvbmZpZyBTUEFSQzY0Cj4gICAJc2VsZWN0IFBDSV9ET01BSU5TIGlmIFBDSQo+
ICAgCXNlbGVjdCBBUkNIX0hBU19HSUdBTlRJQ19QQUdFCj4gICAKPiAtY29uZmlnIEFSQ0hfREVG
Q09ORklHCj4gLQlzdHJpbmcKPiAtCWRlZmF1bHQgImFyY2gvc3BhcmMvY29uZmlncy9zcGFyYzMy
X2RlZmNvbmZpZyIgaWYgU1BBUkMzMgo+IC0JZGVmYXVsdCAiYXJjaC9zcGFyYy9jb25maWdzL3Nw
YXJjNjRfZGVmY29uZmlnIiBpZiBTUEFSQzY0Cj4gLQo+ICAgY29uZmlnIEFSQ0hfUFJPQ19LQ09S
RV9URVhUCj4gICAJZGVmX2Jvb2wgeQo+ICAgCj4gZGlmZiAtLWdpdCBhL2FyY2gveDg2L0tjb25m
aWcgYi9hcmNoL3g4Ni9LY29uZmlnCj4gaW5kZXggYmVlYTc3MDQ2ZjliLi45ODkzNWY0Mzg3Zjkg
MTAwNjQ0Cj4gLS0tIGEvYXJjaC94ODYvS2NvbmZpZwo+ICsrKyBiL2FyY2gveDg2L0tjb25maWcK
PiBAQCAtMjQwLDExICsyNDAsNiBAQCBjb25maWcgT1VUUFVUX0ZPUk1BVAo+ICAgCWRlZmF1bHQg
ImVsZjMyLWkzODYiIGlmIFg4Nl8zMgo+ICAgCWRlZmF1bHQgImVsZjY0LXg4Ni02NCIgaWYgWDg2
XzY0Cj4gICAKPiAtY29uZmlnIEFSQ0hfREVGQ09ORklHCj4gLQlzdHJpbmcKPiAtCWRlZmF1bHQg
ImFyY2gveDg2L2NvbmZpZ3MvaTM4Nl9kZWZjb25maWciIGlmIFg4Nl8zMgo+IC0JZGVmYXVsdCAi
YXJjaC94ODYvY29uZmlncy94ODZfNjRfZGVmY29uZmlnIiBpZiBYODZfNjQKPiAtCj4gICBjb25m
aWcgTE9DS0RFUF9TVVBQT1JUCj4gICAJZGVmX2Jvb2wgeQo+ICAgCj4gZGlmZiAtLWdpdCBhL2Fy
Y2gveDg2L3VtL0tjb25maWcgYi9hcmNoL3g4Ni91bS9LY29uZmlnCj4gaW5kZXggYTg5ODVlMWY3
NDMyLi45NWQyNmE2OTA4OGIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC94ODYvdW0vS2NvbmZpZwo+ICsr
KyBiL2FyY2gveDg2L3VtL0tjb25maWcKPiBAQCAtMjcsMTEgKzI3LDYgQEAgY29uZmlnIFg4Nl82
NAo+ICAgCWRlZl9ib29sIDY0QklUCj4gICAJc2VsZWN0IE1PRFVMRVNfVVNFX0VMRl9SRUxBCj4g
ICAKPiAtY29uZmlnIEFSQ0hfREVGQ09ORklHCj4gLQlzdHJpbmcKPiAtCWRlZmF1bHQgImFyY2gv
dW0vY29uZmlncy9pMzg2X2RlZmNvbmZpZyIgaWYgWDg2XzMyCj4gLQlkZWZhdWx0ICJhcmNoL3Vt
L2NvbmZpZ3MveDg2XzY0X2RlZmNvbmZpZyIgaWYgWDg2XzY0Cj4gLQo+ICAgY29uZmlnIDNfTEVW
RUxfUEdUQUJMRVMKPiAgIAlib29sICJUaHJlZS1sZXZlbCBwYWdldGFibGVzIiBpZiAhNjRCSVQK
PiAgIAlkZWZhdWx0IDY0QklUCj4gZGlmZiAtLWdpdCBhL2luaXQvS2NvbmZpZyBiL2luaXQvS2Nv
bmZpZwo+IGluZGV4IDQ1MmJjMTgzNWNkNC4uNmNjZGIxNjhkZWU1IDEwMDY0NAo+IC0tLSBhL2lu
aXQvS2NvbmZpZwo+ICsrKyBiL2luaXQvS2NvbmZpZwo+IEBAIC02LDggKzYsNyBAQCBjb25maWcg
REVGQ09ORklHX0xJU1QKPiAgIAlkZWZhdWx0ICIvbGliL21vZHVsZXMvJChzaGVsbCx1bmFtZSAt
cikvLmNvbmZpZyIKPiAgIAlkZWZhdWx0ICIvZXRjL2tlcm5lbC1jb25maWciCj4gICAJZGVmYXVs
dCAiL2Jvb3QvY29uZmlnLSQoc2hlbGwsdW5hbWUgLXIpIgo+IC0JZGVmYXVsdCBBUkNIX0RFRkNP
TkZJRwo+IC0JZGVmYXVsdCAiYXJjaC8kKEFSQ0gpL2RlZmNvbmZpZyIKPiArCWRlZmF1bHQgImFy
Y2gvJChTUkNBUkNIKS9jb25maWdzLyQoS0JVSUxEX0RFRkNPTkZJRykiCj4gICAKPiAgIGNvbmZp
ZyBDQ19JU19HQ0MKPiAgIAlkZWZfYm9vbCAkKHN1Y2Nlc3MsJChDQykgLS12ZXJzaW9uIHwgaGVh
ZCAtbiAxIHwgZ3JlcCAtcSBnY2MpCgpCZXN0IHJlZ2FyZHMKLS0gCk1hcmVrIFN6eXByb3dza2ks
IFBoRApTYW1zdW5nIFImRCBJbnN0aXR1dGUgUG9sYW5kCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
