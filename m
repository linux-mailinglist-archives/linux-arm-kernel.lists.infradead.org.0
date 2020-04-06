Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F7C19F7E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 16:24:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ZSRevF4dQSfXZjRPybWF5gbKtC7dk3UAoDgghMwfwc=; b=C9ZsAFjZC5o32Q
	1qv57N4Pk9DDMM227+qZWRhsIPObH9gTvT2m03yAfn+3nAU9dtuRSDYRMlyF7qjf1gpAyKC3TjNBF
	XxrtDWJ5gntkHK5w+8Os/DN+30Z17W1KMfBZAMBX51dUIQkEwapYWxtrU1Es1S4ty8+UMrAQ/Pok9
	7kqIMq/0hiy29XnkegOQZ/7rDgQKzxcbjuIOT/MJud2Ma2cmXizBHS/7/vyVEBrF4ZsaUonw2Tz/H
	FC3ypCoHn6A/VacSDt0pQIk0sJrRhxr04VqxPjRJVvmnrdy9LJ+KAUbdoBCxow293f+SgCiR7p5/Z
	RvgfpgZbjEf2cg69ON7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLSfS-0002i8-D0; Mon, 06 Apr 2020 14:24:02 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLSfK-0002g3-60
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 14:23:56 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200406142351euoutp01a02fa6ccbc0fa55e3fd0f3562bb3ea17~DQRAtLzUi0578005780euoutp01S
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  6 Apr 2020 14:23:51 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200406142351euoutp01a02fa6ccbc0fa55e3fd0f3562bb3ea17~DQRAtLzUi0578005780euoutp01S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1586183031;
 bh=80HiovpSACSa5iKWuDtXEGNMjiGgvGqhBPfk2+6zg2I=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Y9S1R0tpk3yqYW2uH+9884TfpcTEYO2pF84lZFKPXhwoYBc3gkBFO6OqyCH1+jTGC
 T20P0WZ5F0EYNMBJc42m//fPODIqTgx52+aa81BSoufpKyfLnK3pQQn9XNc+MECcpD
 i1iSdMn2lfk0sAkq6grWcDGvAnsDJGNU5oTk1MkY=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200406142351eucas1p176e16341c0ae5cba40259b3b3b64279e~DQRAfqxZE2343723437eucas1p1r;
 Mon,  6 Apr 2020 14:23:51 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id F5.1A.61286.77B3B8E5; Mon,  6
 Apr 2020 15:23:51 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200406142350eucas1p2524f266941cfedd66c0181f2fedcf388~DQRAJGFE81495514955eucas1p2N;
 Mon,  6 Apr 2020 14:23:50 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200406142350eusmtrp1d2e992634175bcb2ae0fea4a3e778668~DQRAIQ9ax0348903489eusmtrp1a;
 Mon,  6 Apr 2020 14:23:50 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-ea-5e8b3b77753e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 01.CF.08375.67B3B8E5; Mon,  6
 Apr 2020 15:23:50 +0100 (BST)
Received: from [106.210.85.205] (unknown [106.210.85.205]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200406142350eusmtip1eccb47d1871edabd5397fc2de3e805dc~DQQ-biU9_1810518105eusmtip1e;
 Mon,  6 Apr 2020 14:23:50 +0000 (GMT)
Subject: Re: [PATCH v5 0/5] Genericize DW MIPI DSI bridge and add i.MX 6 driver
To: Adrian Ratiu <adrian.ratiu@collabora.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
From: Andrzej Hajda <a.hajda@samsung.com>
Message-ID: <7b95e129-8035-df7f-3d50-2ae3c2e8af8d@samsung.com>
Date: Mon, 6 Apr 2020 16:23:49 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200330113542.181752-1-adrian.ratiu@collabora.com>
Content-Language: pl
X-Brightmail-Tracker: H4sIAAAAAAAAA02SWUwTYRDH83V3y7ahuBSQEYxiY6JouIIxm6Aoxod9EKM+qQlHkQ0Q21Ja
 DlEjBJBAOUTw4jAQjoggqFQQiCFQCEiQIkcJJDQQqA8QDsuloIi0i5G338z855v5Tz4SExsI
 FzJKEcuqFFKZhC/Em7o3BjwS/LKCvUsfiuiNvCaCLu3SE/TI2hKfNvyYxejeeQNOa/XZBJ35
 uNKGbpgZJWjN5muMHm4t4dPLU9sYrRk1EedtmWZjJWKKMwoJ5nPeEI+ZzOrhMdrKJOb9YjOP
 ac8pwJmONh9mpeHQFcFN4ZlwVhYVz6q8/EOFkbpOQmnad2ep7SeRjKpsNYgkgToFXYMyDRKS
 YqoawcJ8H48LVhF8+j2Oc8EKguWhZzYaJLB2mKe6Ma7wCsGX7dJd1RICY043z6JyoK6CfjCd
 b2FHKgb0jTWERYRRnTxYSa+3iviUO2xpx60iEeUPQ+W1yMI4dRTq5zKt7EQFgX56jOA09tBb
 aMItLKACYD3dbGWMOgypjcUYx44wNp2GLMOAMtvA8PYIj9v7IhjNjwiOHWCu58Oun4PQV5CN
 c5wEk9VpGNecgaDxXQvGFfxgQr/Jt5wM29n6basXlw6Aj4YKxF3SDsYW7Lkd7CC/6TnGpUWQ
 kS7m1Edgsr9x90FnqPq6xs9DkqI9zor2uCna46bo/9wyhNcgZzZOLY9g1T4KNsFTLZWr4xQR
 nrei5Q1o57P1/elZbkZrQ2E6RJFIYiu6LsgKFhPSeHWiXIeAxCSOIpeczGCxKFyaeJdVRYeo
 4mSsWodcSVziLPItnw0SUxHSWPY2yypZ1b8qjxS4JKPSXMPZurGZGGX9E8Elj7Jjvxbvvfwu
 7ovq/+bqWvGipeTCcZt2U8KD0yMzymKnXreClIYws/vTrRSTW5VyK1cwkqqr0cqlvuc2t94I
 BxbTah0TT3a4pdi1hOYYPZxv3J+A6fzlJEVI3eV1o2v0ag+L9N4Z+xXa1c5A3YGga4GTElwd
 KfU5ganU0r9uZjfdaAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrBIsWRmVeSWpSXmKPExsVy+t/xu7pl1t1xBr82mFj8nLCN1WL+kXOs
 Fle+vmezuPr9JbPFyTdXWSw2n+thteicuITdYtPja6wWXb9WMltc3jWHzeLTg//MFl3XnrA6
 8HjsuLuE0WN2x0xWjxMTLjF53O8+zuSxeUm9x8Z3O5g8DvROZvE4uM/Q4/MmuQDOKD2bovzS
 klSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1MlfTublNSczLLUIn27BL2MQ4dZC57wV7zf
 94O1gXEpTxcjJ4eEgInExwfHmEFsIYGljBKXe70g4uISu+e/ZYawhSX+XOti62LkAqp5yyix
 /fE2JpCEsECgxLmLbWwgtohAocSX6xvAipgFDjNJ7F02lR2iYwqjxIemVkaQKjYBTYm/m2+C
 dfAK2ElcWrQaLM4ioCKx7lUnmC0qECvR37ybEaJGUOLkzCcsIDangKPEt7aPYDazgJnEvM0P
 mSFseYnmrbOhbBGJG49aGCcwCs1C0j4LScssJC2zkLQsYGRZxSiSWlqcm55bbKhXnJhbXJqX
 rpecn7uJERjL24793LyD8dLG4EOMAhyMSjy8EZzdcUKsiWXFlbmHGCU4mJVEeKV6O+OEeFMS
 K6tSi/Lji0pzUosPMZoCPTeRWUo0OR+YZvJK4g1NDc0tLA3Njc2NzSyUxHk7BA7GCAmkJ5ak
 ZqemFqQWwfQxcXBKNTD61jyd80V46Z2jM0M1Xwufq2LR3dcptittXrc7I3PXbcnnSk/cNvfs
 2nfkusDU3Q2GcdN7TlxxK7h1Pd3Tr6rmu0+44+9ZftXHtjwISiu3SQ5u99vductMaBWn3p5V
 pfKLprBp7P9fo2Z2Ri786nqLb0vL3QVPcM0wb1i1z9/7LfPF68+514orsRRnJBpqMRcVJwIA
 Q/GjXvsCAAA=
X-CMS-MailID: 20200406142350eucas1p2524f266941cfedd66c0181f2fedcf388
X-Msg-Generator: CA
X-RootMTR: 20200330113455eucas1p1441dc79d44de5081e9d90079e2020ca0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200330113455eucas1p1441dc79d44de5081e9d90079e2020ca0
References: <CGME20200330113455eucas1p1441dc79d44de5081e9d90079e2020ca0@eucas1p1.samsung.com>
 <20200330113542.181752-1-adrian.ratiu@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_072354_427876_D928B6FD 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-imx@nxp.com, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQWRyaWFuLAoKRHVlIHRvIGRpZmZlcmVudCB3YXlzIG9mIHdvcmsgSSB1c2UgZGlmZmVyZW50
IG1haWwgY2xpZW50LCBzbyBmb3JnaXZlIG1lIAppZiB0aGVyZSBhcmUgc29tZSBtaXNjb25mdWdy
YXRpb25zLgoKClcgZG5pdSAzMC4wMy4yMDIwIG/CoDEzOjM1LCBBZHJpYW4gUmF0aXUgcGlzemU6
Cj4gSGVsbG8gZXZlcnlvbmUsCj4KPiBUaGUgdjUgc2VyaWVzIGlzIGEgc2lnbmlmaWNhbnRseSBj
bGVhbmVkIHVwIHZlcnNpb24gZnJvbSB2NCwKPiBzdGFydGVkIGJ5IEV6ZXF1aWVsIEdhcmNpYSdz
IHN1Z2dlc3Rpb24gb2Ygc3BsaXR0aW5nIG91dCB0aGUKPiByZWdtYXAgaW5mcmFzdHJ1Y3R1cmUg
ZnJvbSB0aGUgZHJpdmVycyAodGhhbmsgeW91ISkuCj4KPiBUdXJucyBvdXQgbm8gY2hhbmdlcyBh
cmUgcmVxdWlyZWQgdG8gdGhlIGV4aXN0aW5nIGRyaXZlcnMgYW5kCj4gdGhlIGJyaWRnZSBjYW4g
dHJhbnNwYXJlbnRseSB0YWtlIGNhcmUgb2YgdGhlIGxheW91dCBsb2dpYywKPiBzbyB0aGVyZSdz
IG5vIG5lZWQgdG8gZXhwb3NlIHRoZSByZWdtYXAgdmlhIHBsYXRfZGF0YSBhbnltb3JlLgo+Cj4g
U3RhcnRpbmcgZnJvbSB0aGlzIHZlcnNpb24gSSBhbHNvIG9wdGVkIHRvIGFkZCBwZXItcGF0Y2gK
PiBjaGFuZ2Vsb2dzLiBBbGwgcmV2aWV3IGNvbW1lbnRzIHVwIHRvIG5vdyBoYXZlIGJlZW4gYWRk
cmVzc2VkLgo+Cj4gVGVzdGVkIG9uIElNWDZETC4KPgo+IEFkcmlhbiBSYXRpdSAoNSk6Cj4gICAg
ZHJtOiBicmlkZ2U6IGR3X21pcGlfZHNpOiBhZGQgaW5pdGlhbCByZWdtYXAgaW5mcmFzdHJ1Y3R1
cmUKPiAgICBkcm06IGJyaWRnZTogZHdfbWlwaV9kc2k6IGFic3RyYWN0IHJlZ2lzdGVyIGFjY2Vz
cyB1c2luZyByZWdfZmllbGRzCj4gICAgZHJtOiBicmlkZ2U6IHN5bm9wc2lzOiBhZGQgZHNpIHYx
LjAxIHN1cHBvcnQKPiAgICBkcm06IGlteDogQWRkIGkuTVggNiBNSVBJIERTSSBob3N0IHBsYXRm
b3JtIGRyaXZlcgo+ICAgIGR0LWJpbmRpbmdzOiBkaXNwbGF5OiBhZGQgaS5NWDYgTUlQSSBEU0kg
aG9zdCBjb250cm9sbGVyIGRvYwo+Cj4gICAuLi4vZGlzcGxheS9pbXgvZnNsLG1pcGktZHNpLWlt
eDYueWFtbCAgICAgICAgfCAxMzQgKysrKwo+ICAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5v
cHN5cy9kdy1taXBpLWRzaS5jIHwgNjgzICsrKysrKysrKysrKystLS0tLQoKClNvIHdlIGhhdmUg
YWJvdmUgNDAwIGxpbmVzIG1vcmUganVzdCB0byBhZGQgc2xpZ2h0bHkgZGlmZmVyZW50IHJlZ2lz
dGVyIApsYXlvdXQgb2YgdjEuMDEuCgpRdWl0ZSBiaWcgbGluZWNvdW50IGZvciBhcHBhcmVudGx5
IHNtYWxsICg/KSBmdW5jdGlvbmFsIGNoYW5nZSAtIEkgd2FzIAp0b28gbGF6eSB0byBjaGVjayBo
b3cgbWFueSByZWcgZmllbGRzIGFyZSByZWFsbHkgdXNlZCAoc29tZSBhcmUgbm90IHVzZWQgCmF0
IGFsbCksIGJ1dCBpdCBkb2VzIG5vdCBzZWVtIHRvIGJlIGJpZyBlbm91Z2ggdG8ganVzdHlmeSBz
byBiaWcgY2hhbmdlIElNTy4KCkkgd2lsbCBhZGQgbW9yZSBjb21tZW50cyBpbiBzcGVjaWZpYyBw
YXRjaGVzLgoKClJlZ2FyZHMKCkFuZHJ6ZWoKCgo+ICAgZHJpdmVycy9ncHUvZHJtL2lteC9LY29u
ZmlnICAgICAgICAgICAgICAgICAgIHwgICA3ICsKPiAgIGRyaXZlcnMvZ3B1L2RybS9pbXgvTWFr
ZWZpbGUgICAgICAgICAgICAgICAgICB8ICAgMSArCj4gICBkcml2ZXJzL2dwdS9kcm0vaW14L2R3
X21pcGlfZHNpLWlteDYuYyAgICAgICAgfCAzOTkgKysrKysrKysrKwo+ICAgNSBmaWxlcyBjaGFu
Z2VkLCAxMDQ5IGluc2VydGlvbnMoKyksIDE3NSBkZWxldGlvbnMoLSkKPiAgIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9pbXgvZnNs
LG1pcGktZHNpLWlteDYueWFtbAo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2Ry
bS9pbXgvZHdfbWlwaV9kc2ktaW14Ni5jCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
