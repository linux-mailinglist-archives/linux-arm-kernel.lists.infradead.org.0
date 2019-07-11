Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A7D654CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 12:55:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xy0s2lVwKs8j17+NaH+0SlWhZ0YGBJjPQIShYKgtYfk=; b=JNA8q4YWE+zHo+
	29IELieBgZFf6Vgzbf7A4I3UQQJxVEOfyZ6vOHZplVZXWFHyHUF4w4TW3/RdXhK4ZUBUyeis1NDvv
	fNg9nOs9/R2mqHP74K/iLX5DNNvITGyRJ6XjGEPcUUdPZviZMFiNWAFs5gHaSPc2NpP2u2sePtjXt
	EHypOp9z9HBmnbg1YlcAEeMny9mfywv/H3jp63Xg14kZPZg9riLwKDkNzVJLdsvLDZhPIjpbvlswp
	mqUqIO99ZlbqiWfN+zgnzzKxq2uU9PYG4uDeikMVcPaZWGauDvZ8zb4XXarND7CvJ6fxBpfxg6rbv
	htOJaarF7pfEA1+BOEyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlWjl-0003fv-DE; Thu, 11 Jul 2019 10:55:41 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlWja-0003fN-EJ
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 10:55:32 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190711105527euoutp02c6917d2305189611ac7bf84f7646a5a6~wVP_lgF6s2308423084euoutp02X
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 10:55:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190711105527euoutp02c6917d2305189611ac7bf84f7646a5a6~wVP_lgF6s2308423084euoutp02X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1562842527;
 bh=IAVycDmPIRNWjC1+QKPqn0lYsTXCDWV/uL4QaMcrbYM=;
 h=Subject:To:From:Date:In-Reply-To:References:From;
 b=GXeYvAWYMYeMGrQwx5WdAZ1SURHw3WtMXXed7hK2xDZiuILXYGgB2nwYxRSfcZ1RS
 Tf4tb+pG5ESKmzOZiNeJ9XJJRRdOeC+r3vWcmGnSFDh/oG0g5R6wqrLyNIs2bLvTc4
 WJep5eMwHBBBK73So/wba6kcy+sqmaWC5krdRA8E=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190711105526eucas1p2ae6f12ae0aa1b4df554f58fe535fabfc~wVP9vr88W0464104641eucas1p2J;
 Thu, 11 Jul 2019 10:55:26 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 02.B4.04298.E95172D5; Thu, 11
 Jul 2019 11:55:26 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190711105525eucas1p1b4f0f8bf4bd05483c785e54e109275ae~wVP8x7JsI0887508875eucas1p1l;
 Thu, 11 Jul 2019 10:55:25 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190711105525eusmtrp2d4d86087364c0ce4d6a6917727d8625a~wVP8fxBEo0727707277eusmtrp2G;
 Thu, 11 Jul 2019 10:55:25 +0000 (GMT)
X-AuditID: cbfec7f2-f13ff700000010ca-12-5d27159e4ca9
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id FB.54.04140.D95172D5; Thu, 11
 Jul 2019 11:55:25 +0100 (BST)
Received: from [106.120.51.74] (unknown [106.120.51.74]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190711105524eusmtip1d97857399d677a73081a79a74f985f59~wVP77Z0QF1471014710eusmtip1M;
 Thu, 11 Jul 2019 10:55:24 +0000 (GMT)
Subject: Re: [PATCH] drm/bridge: sii902x: add audio graph card support
To: Philippe CORNU <philippe.cornu@st.com>, Olivier MOYSAN
 <olivier.moysan@st.com>, "narmstrong@baylibre.com"
 <narmstrong@baylibre.com>, "Laurent.pinchart@ideasonboard.com"
 <Laurent.pinchart@ideasonboard.com>, "jonas@kwiboo.se" <jonas@kwiboo.se>,
 "jernej.skrabec@siol.net" <jernej.skrabec@siol.net>, "airlied@linux.ie"
 <airlied@linux.ie>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Benjamin GAIGNARD
 <benjamin.gaignard@st.com>, Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, "jsarha@ti.com" <jsarha@ti.com>
From: Andrzej Hajda <a.hajda@samsung.com>
Message-ID: <a8c6cde6-09d5-2175-234b-02cb3aacaa95@samsung.com>
Date: Thu, 11 Jul 2019 12:55:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <e29c1671-99fb-581d-bfb7-61ca2cfa8622@st.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRj2O5ftbDk5Lm1v2gUXJQWZQj9OJVJUduhXGi1SpFaeVHJTd1LL
 EC01vDAtJawZaWVkQd7nrZRa1DJRuzjbKlLSLouWkk0Num2eSf573ud93vd9no+PwuV2MoBK
 0h7ndFp1slIkJdoe/xxcf8U/OC60/3oAox/oxZim8T7ElFaPk8yQc0LEWGbsONP71UIwJUWF
 JFN0vlbMNI8Nk8zLrssipnjYpTOVxjIV96pEzGj+Z3KrDzthLRCzVYWXSPbJuRcY2z49SrIj
 JWaMbanNYe/rKwj2QU8Y+2G2G2fN1naMnWpesWdRjDQ8nktOyuB0GyIOSRPHun9hqeXUiY8F
 BVgu6hQVIwkF9EZonhhyYSklp+sQDNeZMaH4gcDcelUsFFMIrtTaxPMjExWvcKFxE8F0Xjcp
 FA4E5YMf51SL6UiwXLQT7oYfXSoCfZd7sYQS0Wvhd4tt7rqMjoDab1bkxgS9GorfGkg39qdV
 8LOmyKPxhd5L465FFCWhN8PMbKabxumVkGeswgWsgNfj1XO+gT5NwWfHXUKwugOuVVpwAS+G
 L+ZWT4Rl8LezGhNwDozU5ePCcCECY2OnZ2ALPDQ/J92HcZfphq4NAr0NbupvYW4aaB+wOnwF
 Dz5Q3laJC7QMCs/KBXUQjPQbPQsVcOOZ0/PuLJS160XnUJBhQUjDgmSGBckM/z3UIOI2UnDp
 vCaB48O0XGYIr9bw6dqEkCMpmmbk+oB9f8zfO5DzxWEToimk9JZRjtVxclKdwZ/UmBBQuNJP
 1rNrVZxcFq8+mcXpUg7q0pM53oQCKUKpkJ3yGo2V0wnq49wxjkvldPNdjJIE5CKFmbxmjPa6
 nnEhvac+tiwqLa+shbeFr7FLGqZnxlRL3xREHHAqw5cbV9xJy/ZZu5+rEfPyjkDmz15nve2o
 piPYhpriN71XiNfHN355ynbttlyYPJG4LxOfjFIlxbwOC4o27lyy/a88KzgUpWQftX6K9Vbt
 +x3qqMp+pDoz8C5SSfCJ6rB1uI5X/wOslNJAfAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrHIsWRmVeSWpSXmKPExsVy+t/xu7pzRdVjDXadE7foPXeSyWLjk9OM
 Fn3zn7BaXPn6ns3i6veXzBYn31xlseju7GC16Jy4hN1i0+NrrBaXd81hs+i6BlR3qC/aYvKe
 2WwWD1pesDrweby/0cruMbtjJqvHiQmXmDy2f3vA6nG/+ziTx+Yl9R4HeiezeBzcZ+jx9Mde
 Zo/jN7YzeXzeJBfAHaVnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9nk5Ka
 k1mWWqRvl6CX8XjvH6aCSRwVz1pbmRoYd7J1MXJySAiYSLyffJ25i5GLQ0hgKaPEs0n7oRLi
 Ervnv2WGsIUl/lzrAosLCbxmlHg+wQrEFhZwk7g64yULSLOIwCQ2iQWL7jJBTFrOJPHozzIW
 kCo2AU2Jv5tvgnXzCthJLHl3gxHEZhFQlei6M4u1i5GDQ1QgTOLoiTyIEkGJkzOfsICEOQWs
 JL7/KAcJMwuoS/yZd4kZwpaXaN46G8oWl7j1ZD7TBEbBWUi6ZyFpmYWkZRaSlgWMLKsYRVJL
 i3PTc4uN9IoTc4tL89L1kvNzNzEC43rbsZ9bdjB2vQs+xCjAwajEwxvwUDVWiDWxrLgy9xCj
 BAezkgjvPnflWCHelMTKqtSi/Pii0pzU4kOMpkCvTWSWEk3OB6acvJJ4Q1NDcwtLQ3Njc2Mz
 CyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjCzO56O/fs3mUWU/pR242GN59nLzikLTXwYZ
 c4sT3Z48cqjWnvU0NOHjs+PyO34Zhy4xmacntpNXTirp7FzXBLMko1eL+v22edmz39o9OW6m
 6M7KvKySX+/mz3u47EJ/6YI8tmumU4uf3dvMmhxU9OL1J9MnExmEhUz89cPvz3eduHB515xt
 v5RYijMSDbWYi4oTARJ9rYoBAwAA
X-CMS-MailID: 20190711105525eucas1p1b4f0f8bf4bd05483c785e54e109275ae
X-Msg-Generator: CA
X-RootMTR: 20190711092756epcas1p44e6b9d76d69652eaac039fafde75723e
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190711092756epcas1p44e6b9d76d69652eaac039fafde75723e
References: <1562141052-26221-1-git-send-email-olivier.moysan@st.com>
 <7c17b3f2-afee-7548-7620-b67d11d09b24@st.com>
 <20190710152720.GR15868@phenom.ffwll.local>
 <CGME20190711092756epcas1p44e6b9d76d69652eaac039fafde75723e@epcas1p4.samsung.com>
 <e29c1671-99fb-581d-bfb7-61ca2cfa8622@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_035530_698769_4C499002 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTEuMDcuMjAxOSAxMToyNywgUGhpbGlwcGUgQ09STlUgd3JvdGU6Cj4gSGkgRGFuaWVsLAo+
Cj4KPiBPbiA3LzEwLzE5IDU6MjcgUE0sIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4+IE9uIEZyaSwg
SnVsIDA1LCAyMDE5IGF0IDEyOjQxOjAzUE0gKzAwMDAsIFBoaWxpcHBlIENPUk5VIHdyb3RlOgo+
Pj4gSGkgT2xpdmllciwKPj4+IGFuZCBtYW55IHRoYW5rcyBmb3IgeW91ciBwYXRjaC4KPj4+IEdv
b2QgdG8gaGF2ZSB0aGUgYXVkaW8gZ3JhcGggY2FyZCBzdXBwb3J0LCBsb29rcyBvay4KPj4+IFJl
dmlld2VkLWJ5OiBQaGlsaXBwZSBDb3JudSA8cGhpbGlwcGUuY29ybnVAc3QuY29tPgo+PiBTaW5j
ZSB5b3UgaGF2ZSBkcm0tbWlzYyBjb21taXQgcmlnaHRzIEknbSBhc3N1bWluZyB5b3UncmUgZ29p
bmcgdG8gcHVzaAo+PiB0aGlzIHRvby4gQ29ycmVjdD8KPj4gLURhbmllbAo+IFJlZ2FyZGluZyB0
aGlzIHBhdGNoIGluIHBhcnRpY3VsYXIsIHRoZXJlIGlzIHN0aWxsIG1pc3NpbmcgYW4gYWNrZWQt
YnkgCj4gZnJvbSBhICJicmlkZ2UiIG1haW50YWluZXIuIEFsc28gaXQgY291bGQgYmUgbmljZSB0
byB3YWl0IGZvciB0aGUgCj4gcmV2aWV3ZWQtYnkgZnJvbSBKaXJ5IGFzIGl0IGtub3dzIHdlbGwg
dGhpcyBzaWkgZHJpdmVyIGFuZCBzZW50IHJlY2VudGx5IAo+IGdvb2QgcGF0Y2hlcyBvbiBpdCAo
YWxyZWFkeSBtZXJnZWQpLgo+Cj4gV2l0aCB0aGF0LCBCZW5qYW1pbiBvciBJIChvciBhIGJyaWRn
ZSBtYWludGFpbmVyKSBjYW4gcHVzaCB0aGlzIHBhdGNoICsgCj4gdGhlIHNlcmllIG5hbWVkICJk
cm0vYnJpZGdlOiBzaWk5MDJ4OiBmaXggYXVkaW8gbWNsayBtYW5hZ2VtZW50IiBhcyBJIAo+IHRo
aW5rIGl0IGlzIGJldHRlciB0byBwdXNoIHRoaXMgc2VyaWUgKmJlZm9yZSogdGhpcyBwYXRjaC4K
Pgo+IFRoYW5rcywKPiBQaGlsaXBwZSA6LSkKCgpBY2tlZC1ieTogQW5kcnplaiBIYWpkYSA8YS5o
YWpkYUBzYW1zdW5nLmNvbT4KCsKgLS0KUmVnYXJkcwpBbmRyemVqCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
