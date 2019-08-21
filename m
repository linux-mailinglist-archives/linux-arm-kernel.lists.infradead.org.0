Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B4B971BC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 07:56:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9r/4RrA7O3UoehhIW7diFeMxZ68Xjzh1PuVv5mQvc8M=; b=gCrp+11cc8qQrd
	raB74ijmNXe8H63xtchrRhPXZBAodsOYcjdACva8dK8HSZH0svN5QUvpP12DrprG4diGbm+bwA0Gm
	tyo+w7LUHUKZtOYVnR63FsJZVKfqu9zXsHv8pQ5a9VpWq6S/+jjB9njXGLcOvn7/3e7SNFQxUmkN8
	1NjW5BnYYjscuHwqHKttgVbZF15IhY86cRc2msMw/m0z6/Nk/VL9IYEXTphquQDY4FmM7pG8XN846
	oEJXjBg1qe7B7oz3v1zPn6NNlrTz/eeobpG1353Nr55LmM92P77UoK9z9VJNh64OCNIJ/qb6PdJII
	7fnGiJbqwGT575Tl28nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0JbA-00073Y-2l; Wed, 21 Aug 2019 05:55:56 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Jaw-00072u-H2
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 05:55:44 +0000
Received: from [192.168.1.162] ([37.4.249.106]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MCsHm-1i99IC3CKm-008qJZ; Wed, 21 Aug 2019 07:55:16 +0200
Subject: Re: Build regression in Linux 5.3-rc5 with CONFIG_XEN=y
To: Stefan Wahren <wahrenst@gmx.net>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Stephen Boyd <swboyd@chromium.org>
References: <ebd95b7c-d265-cbf1-be50-945db1dd06ad@gmx.net>
 <825549ed-8aa4-b418-8812-15a9d3cc153e@arm.com>
 <0b019cdc-6f0e-c37f-2be7-c24293acb8cd@gmx.net>
 <20190820012415.GA21178@lst.de>
 <a69cce68-8c41-2030-b011-cdfacfeae421@gmx.net>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <0b4f05ab-6cc1-7805-ea99-021c2bdd41be@i2se.com>
Date: Wed, 21 Aug 2019 07:55:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <a69cce68-8c41-2030-b011-cdfacfeae421@gmx.net>
Content-Language: en-US
X-Provags-ID: V03:K1:5l7VBDgpOJDI0RmlUxEEh9yD93ucKczDQT+mnPI3NwYI4Y9BAGG
 M+zrsuC5glSpY8JCd/8y2igRGT8+wUYKFDOulsUGJA9rB7BRp6z5zldDx4HhLz7BnvELNUj
 CCNxDROT+tg02BySZLXhKWSVfrvV8+3lNZOyOjr5Zek4wDjForjgQOjWd0OVGzqfD0DxS7b
 m5oRymYX+Ok63wuPWrmpA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:dRlqgzqTPb0=:78rAq1lPHJe9hJnmrDO7z+
 qxIOEf/l7Ee+IMwx3ZBysJzsoiuCtPyKaWlK6OA2fSeBHEfSqckrBSRQWhS/FBBM26QDquv2u
 0ZiWBq7fQk4oVo9GsbSLKQc2nWNbI34f1ue1T40ZeSVGhwLXA+6s0rDebSjXXWAnnJ5P4Al0z
 wx1Uvo4FBSbk/KkkGh2vR1SuWZDXn7lRZUfOzn/IXl99jV6ctOY0zeuD6O3wDUIEayFcqexbE
 PEVrz7BDwnRjJVFRKBQhUEzVOOX5EpY+i/i/+U+EbDd+lBBLHA6PEO3aWo4YWy/9iCceflT0u
 DluDEeDRwNEJXefDqegmUiji3iI9NkgGj8ZO6p8Bg3im1Dh+FV3Ktgu0Ceg94LWUKZ/wYNX5P
 bbKclHIP7KE4hvSZNvJm5k1o2wScx4STvj+iJImc4Utxi04OL3z1HoNNd3rTg4I4iJMo4TmWl
 Hatu2BzB5TGpWWh+mlN92nI0z0HPLRrs5QgGSneTiDYt9lv+7tzBeZAL4lXBVm2VaaKT12Epu
 k3ATl1wjf3ynWeEj+yj1LxTbuPIZReLpqceX+f8mcHQKo0WNfKgl4uuWK/ByvoGrfFmwFH5ue
 HSG4t68sxBi+jPPlcc3u04uHkCkjVK7BxrWjNkDel9BIqaW9kl7l1TP57qC0S2PbF0wijiGyk
 APFfqH/7Y3FLcjquL3dGeZhWHNyAGSU70BMwKFlo4EQPkdOQrbJYKZZ4OuyfZOxnHL921da1i
 MItliYlbMiL0U/khphed7IC1wzjHRMNNwnTeZhctxzdq3WKAprcXL3vYmg8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_225542_869676_F32AAB6E 
X-CRM114-Status: GOOD (  18.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
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
Cc: Avaneesh Kumar Dwivedi <akdwived@codeaurora.org>,
 iommu@lists.linux-foundation.org, Ian Jackson <ian.jackson@citrix.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQmpvcm4sCmhpIFN0ZXBoZW4sCgpBbSAyMC4wOC4xOSB1bSAwNzo0MyBzY2hyaWViIFN0ZWZh
biBXYWhyZW46Cj4gSGkgQ2hyaXN0b3BoLAo+Cj4gQW0gMjAuMDguMTkgdW0gMDM6MjQgc2Nocmll
YiBDaHJpc3RvcGggSGVsbHdpZzoKPj4gSGkgU3RlZmFuLAo+Pgo+PiBwbGVhc2UgdHJ5IHRoZSBw
YXRjaCBiZWxvdy4KPj4KPj4gLS0tCj4+IEZyb20gZTA1NzA2MjhkOTZmYWE1MGViZmM5NGNlOGU1
NDU5NjgzMzZkYjIyNSBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDEKPj4gRnJvbTogQ2hyaXN0b3Bo
IEhlbGx3aWcgPGhjaEBsc3QuZGU+Cj4+IERhdGU6IFR1ZSwgMjAgQXVnIDIwMTkgMTA6MDg6Mzgg
KzA5MDAKPj4gU3ViamVjdDogYXJtOiBzZWxlY3QgdGhlIGRtYS1ub25jb2hlcmVudCBzeW1ib2xz
IGZvciBhbGwgc3dpb3RsYiBidWlsZHMKPj4KPj4gV2UgbmVlZCB0byBwcm92aWRlIHRoZSBhcmNo
IGhvb2tzIGZvciBub24tY29oZXJlbnQgZG1hLWRpcmVjdAo+PiBhbmQgc3dpb3RsYiBmb3IgYWxs
IHN3aW90bGIgYnVpbGRzLCBub3QganVzdCB3aGVuIExQQVMgaXMgZW5hYmxlZC4KPiBzL0xQQVMv
TFBBRS8KPj4gV2l0aG91dCB0aGF0IHRoZSBYZW4gYnVpbGQgdGhhdCBzZWxlY3RzIFNXSU9UTEIg
aW5kaXJlY3RseSB0aHJvdWdoCj4+IFNXSU9UTEJfWEVOIGZhaWxzIHRvIGJ1aWxkLgo+Pgo+PiBG
aXhlczogYWQzYzdiMThjNWIzICgiYXJtOiB1c2Ugc3dpb3RsYiBmb3IgYm91bmNlIGJ1ZmZlcmlu
ZyBvbiBMUEFFIGNvbmZpZ3MiKQo+PiBSZXBvcnRlZC1ieTogU3RlZmFuIFdhaHJlbiA8d2FocmVu
c3RAZ214Lm5ldD4KPj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3Qu
ZGU+Cj4gaSBhcHBsaWVkIHRoaXMgcGF0Y2ggYW5kIGl0IGZpeGVzIHRoZSBidWlsZCBpc3N1ZSBp
IHJlcG9ydGVkIGJlZm9yZS4gQnV0Cj4gdGhpcyBzZWVtcyB0byByZXZlYWwgYW5vdGhlciBidWls
ZCBpc3N1ZSBpbiBkcml2ZXJzL2Zpcm13YXJlL3Fjb21fc2NtLmM6Cj4KPiBkcml2ZXJzL2Zpcm13
YXJlL3Fjb21fc2NtLmM6IEluIGZ1bmN0aW9uIOKAmHFjb21fc2NtX2Fzc2lnbl9tZW3igJk6Cj4g
ZHJpdmVycy9maXJtd2FyZS9xY29tX3NjbS5jOjQ2MDo0NzogZXJyb3I6IHBhc3NpbmcgYXJndW1l
bnQgMyBvZgo+IOKAmGRtYV9hbGxvY19jb2hlcmVudOKAmSBmcm9tIGluY29tcGF0aWJsZSBwb2lu
dGVyIHR5cGUKPiBbLVdlcnJvcj1pbmNvbXBhdGlibGUtcG9pbnRlci10eXBlc10KPiDCoCBwdHIg
PSBkbWFfYWxsb2NfY29oZXJlbnQoX19zY20tPmRldiwgcHRyX3N6LCAmcHRyX3BoeXMsIEdGUF9L
RVJORUwpOwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF4KPiBJbiBmaWxl
IGluY2x1ZGVkIGZyb20gZHJpdmVycy9maXJtd2FyZS9xY29tX3NjbS5jOjEyOjA6Cj4gLi9pbmNs
dWRlL2xpbnV4L2RtYS1tYXBwaW5nLmg6NjM2OjIxOiBub3RlOiBleHBlY3RlZCDigJhkbWFfYWRk
cl90ICoge2FrYQo+IGxvbmcgbG9uZyB1bnNpZ25lZCBpbnQgKn3igJkgYnV0IGFyZ3VtZW50IGlz
IG9mIHR5cGUg4oCYcGh5c19hZGRyX3QgKiB7YWthCj4gdW5zaWduZWQgaW50ICp94oCZCj4gwqBz
dGF0aWMgaW5saW5lIHZvaWQgKmRtYV9hbGxvY19jb2hlcmVudChzdHJ1Y3QgZGV2aWNlICpkZXYs
IHNpemVfdCBzaXplLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Xn5+fn5+fn5+fn5+fn5+fn5+Cj4gY2MxOiBzb21lIHdhcm5pbmdzIGJlaW5nIHRyZWF0ZWQgYXMg
ZXJyb3JzCj4gc2NyaXB0cy9NYWtlZmlsZS5idWlsZDoyODA6IGRpZSBSZWdlbCBmw7xyIFppZWwK
PiDigJ5kcml2ZXJzL2Zpcm13YXJlL3Fjb21fc2NtLm/igJwgc2NoZWl0ZXJ0ZQo+Cj4gTHVja2ls
eSB0aGVyZSBpcyBhbHJlYWR5IGEgcGF0Y2ggdG8gZml4IHRoaXMgaW4gbGludXgtbmV4dDoKPgo+
IGZpcm13YXJlOiBxY29tX3NjbTogVXNlIHByb3BlciB0eXBlcyBmb3IgZG1hIG1hcHBpbmdzCmNv
dWxkIHlvdSBwbGVhc2UgdGFrZSBjYXJlIHRoYXQgdGhpcyBwYXRjaCBpcyBhcHBsaWVkIHRvIDUu
My1maXhlcz8KPgo+IEl0IHNlZW1zIHRoYXQgaXQgbWlzc2VzIHRoZSBmaXhlcyB0YWcuCj4KPiBS
ZWdhcmRzCj4gU3RlZmFuCj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
