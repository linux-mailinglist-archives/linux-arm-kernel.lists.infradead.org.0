Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BABC428F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 23:21:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SRE4CoXAP7bq5Zuyv6dXj/4V3Yr5dwGglk990viaVR4=; b=ZOgIxHzodGgfxrvbajw/NHIDz
	MQ1erdqRX1dsuii/AId1/80kNNzdaVCI6aO7zPBLCK52IIT4j9as6WH0g6L04wIu9i3j3DSk7TUKP
	zvTTYIIHuLfjyL89eA12LFoqmxFOf2xDJk/2rzVi4hxR/KSNYwX9EvLcsT9m89kTLcqK1IMjJuONc
	1wqpotYMDqkUqQWIWgtvoXO+07gGvj9lX+l9kM66ilDStf/d5XBAwt4KrVlUVJiQXp0cd6vX3vHgH
	6bTHB0MLSXsHC0xNNxfMpVQw73Tq4AEEr8wvmOZzKfKmfFS24Fd3zmJ5lXPhAIdlKzcAzeGMibM/b
	oCpP+aSkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFPa0-0001xt-JS; Tue, 01 Oct 2019 21:21:08 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFPZq-0001xJ-0a
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 21:20:59 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id E7C4060A4E; Tue,  1 Oct 2019 21:20:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569964856;
 bh=w+jS0hrugZUADs46Yt3kI36QvmBAu57QkggIGJ3Zzcg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=XngETgFCZ50XD0tTyUCFvvDFcbcTOY9PbEvDMs2pEECOi4kY8moKQCvLuyPo38hx6
 BCEcuVXCybcaLjxytJ9hre60UDVZg6FS1Yvsethbd2VujOW74+wrFT5vban2XPbyI+
 MflOMFE7mUqMGm/k4mHKJcqTWrXvMVfe0r1gnhZ0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 9C946608CE;
 Tue,  1 Oct 2019 21:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569964855;
 bh=w+jS0hrugZUADs46Yt3kI36QvmBAu57QkggIGJ3Zzcg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ScTLBS4jA/VVSV/lMquq7GY7mIfey+8XcH5U6L+lWBFpEy1O+3RsYRoanjpwA8OL7
 c0SET8Uf7eGiB1bsB+6YYs/maf4YL/1PIXIOiozQrzF3LjteIltl34GaMHslVhv7L9
 vfdi7tRDLt/vzoiuMZ0vA8yGNJh3fAMYshB4cKBw=
MIME-Version: 1.0
Date: Tue, 01 Oct 2019 14:20:55 -0700
From: Jeykumar Sankaran <jsanka@codeaurora.org>
To: =?UTF-8?Q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm: add fb max width/height fields to drm_mode_config
In-Reply-To: <20190930103931.GZ1208@intel.com>
References: <1569634131-13875-1-git-send-email-jsanka@codeaurora.org>
 <1569634131-13875-2-git-send-email-jsanka@codeaurora.org>
 <20190930103931.GZ1208@intel.com>
Message-ID: <f6d3c2b6ad897ce8b2fdcaab44993eed@codeaurora.org>
X-Sender: jsanka@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_142058_098453_6E5144B6 
X-CRM114-Status: GOOD (  21.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, seanpaul@chromium.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 narmstrong@baylibre.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0wOS0zMCAwMzozOSwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOgo+IE9uIEZyaSwgU2Vw
IDI3LCAyMDE5IGF0IDA2OjI4OjUxUE0gLTA3MDAsIEpleWt1bWFyIFNhbmthcmFuIHdyb3RlOgo+
PiBUaGUgbW9kZV9jb25maWcgbWF4IHdpZHRoL2hlaWdodCB2YWx1ZXMgZGV0ZXJtaW5lIHRoZSBt
YXhpbXVtCj4+IHJlc29sdXRpb24gdGhlIHBpeGVsIHJlYWRlciBjYW4gaGFuZGxlLgo+IAo+IE5v
dCBhY2NvcmRpbmcgdG8gdGhlIGRvY3MgSSAiZml4ZWQiIGEgd2hpbGUgYWdvLgo+IAo+PiBCdXQg
dGhlIHNhbWUgdmFsdWVzIGFyZQo+PiB1c2VkIHRvIHJlc3RyaWN0IHRoZSBzaXplIG9mIHRoZSBm
cmFtZWJ1ZmZlciBjcmVhdGlvbi4gSGFyZHdhcmUncwo+PiB3aXRoIHNjYWxpbmcgYmxvY2tzIGNh
biBvcGVyYXRlIG9uIGZyYW1lYnVmZmVycyBsYXJnZXIvc21hbGxlciB0aGFuCj4+IHRoYXQgb2Yg
dGhlIHBpeGVsIHJlYWRlciByZXNvbHV0aW9ucyBieSBzY2FsaW5nIHRoZW0gZG93bi91cCBiZWZv
cmUKPj4gcmVuZGVyaW5nLgo+PiAKPj4gVGhpcyBjaGFuZ2VzIGFkZHMgYSBzZXBhcmF0ZSBmcmFt
ZWJ1ZmZlciBtYXggd2lkdGgvaGVpZ2h0IGZpZWxkcwo+PiBpbiBkcm1fbW9kZV9jb25maWcgdG8g
YWxsb3cgdmVuZG9ycyB0byBzZXQgaWYgdGhleSBhcmUgZGlmZmVyZW50Cj4+IHRoYW4gdGhhdCBv
ZiB0aGUgZGVmYXVsdCBtYXggcmVzb2x1dGlvbiB2YWx1ZXMuCj4gCj4gSWYgeW91J3JlIGdvaW5n
IHRvIGNoYW5nZSB0aGUgbWVhbmluZyBvZiB0aGUgb2xkIHZhbHVlcyB5b3UgbmVlZAo+IHRvIGZp
eCB0aGUgZHJpdmVycyB0b28uCj4gCj4gUGVyc29uYWxseSBJIGRvbid0IHNlZSB0b28gbXVjaCBw
b2ludCBpbiB0aGlzIHNpbmNlIHlvdSBtb3N0IGxpa2VseQo+IHdhbnQgdG8gdmFsaWRhdGUgYWxs
IHRoZSBvdGhlciB0aW1pbmdzIGFzIHdlbGwsIGFuZCBzbyBsaWtlbHkgbmVlZAo+IHNvbWUga2lu
ZCBvZiBtb2RlX3ZhbGlkIGltcGxlbWVudGF0aW9uIGFueXdheS4gSGVuY2UgdG8gdmFsaWRhdGUK
PiBtb2RlcyB0aGVyZSdzIG5vdCBtdWNoIGJlbmVmaXQgb2YgaGF2aW5nIGdsb2JhbCBtaW4vbWF4
IHZhbHVlcy4KPiAKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMDQ2NzE1NS8K
CkkgYmVsaWV2ZSB5b3UgYXJlIHJlZmVycmluZyB0byB0aGlzIHBhdGNoLgoKSSBhbSBwcmltYXJp
bHkgaW50ZXJlc3RlZCBpbiB0aGUgc2NhbGluZyBzY2VuYXJpbyBtZW50aW9uZWQgaGVyZS4gTVNN
CmFuZCBhIGZldyBvdGhlciBoYXJkd2FyZSBoYXZlIHNjYWxpbmcgYmxvY2sgdGhhdCBhcmUgdXNl
ZCBib3RoIHdheXM6CgoxKSBXaGVyZSBGQiBsaW1pdHMgYXJlIGxhcmdlciB0aGFuIHRoZSBkaXNw
bGF5IGxpbWl0cy4gU2NhbGFyIGJsb2NrcyBhcmUgCnVzZWQgdG8KICAgIGRvd25zY2FsZSB0aGUg
ZnJhbWVidWZmZXJzIGFuZCByZW5kZXIgd2l0aGluIGRpc3BsYXkgbGltaXRzLgoKSW4gdGhpcyBz
Y2VuYXJpbywgd2l0aCB5b3VyIHBhdGNoLCBhcmUgeW91IHN1Z2dlc3RpbmcgdGhlIGRyaXZlcnMg
Cm1haW50YWluIHRoZQpkaXNwbGF5IGxpbWl0cyBsb2NhbGx5IGFuZCB1c2UgdGhvc2UgdmFsdWVz
IGluIGZpbGxfbW9kZXMoKSAvIAptb2RlX3ZhbGlkKCkgdG8gZmlsdGVyCm91dCBpbnZhbGlkIG1v
ZGVzIGV4cGxpY2l0bHkgaW5zdGVhZCBvZiBtb2RlX2NvbmZpZy5tYXhfd2lkdGgvaGVpZ2h0PwoK
MikgV2hlcmUgRkIgbGltaXRzIGFyZSBzbWFsbGVyIHRoYW4gZGlzcGxheSBsaW1pdHMuIEVuZm9y
Y2VkIGZvciAKcGVyZm9ybWFuY2UgcmVhc29ucyBvbiBsb3cgdGllciBoYXJkd2FyZS4KSXQgcmVk
dWNlcyB0aGUgZmV0Y2ggYmFuZHdpZHRoIGFuZCB1c2VzIHBvc3QgYmxlbmRpbmcgc2NhbGFyIGJs
b2NrIHRvIApzY2FsZSB1cCB0aGUgcGl4ZWwgc3RyZWFtCnRvIG1hdGNoIHRoZSBkaXNwbGF5IHJl
c29sdXRpb24uCgpBbnkgc3VnZ2VzdGlvbnMgb24gaG93IHRoaXMgdG9wb2xvZ3kgY2FuIGJlIGhh
bmRsZWQgd2l0aCBhIHNpbmdsZSBzZXQgb2YgCm1heC9taW4gdmFsdWVzPwoKVGhhbmtzIGFuZCBS
ZWdhcmRzLApKZXlrdW1hciBTLgo+PiAKPj4gVmVuZG9ycyBzZXR0aW5nIHRoZXNlIGZpZWxkcyBz
aG91bGQgZml4IHRoZWlyIG1vZGVfc2V0IHBhdGhzIHRvbwo+PiBieSBmaWx0ZXJpbmcgYW5kIHZh
bGlkYXRpbmcgdGhlIG1vZGVzIGFnYWluc3QgdGhlIGFwcHJvcHJpYXRlIG1heAo+PiBmaWVsZHMg
aW4gdGhlaXIgbW9kZV92YWxpZCgpIGltcGxlbWVudGF0aW9ucy4KPj4gCj4+IFNpZ25lZC1vZmYt
Ynk6IE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4KPj4gU2lnbmVkLW9m
Zi1ieTogSmV5a3VtYXIgU2Fua2FyYW4gPGpzYW5rYUBjb2RlYXVyb3JhLm9yZz4KPj4gLS0tCj4+
ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2ZyYW1lYnVmZmVyLmMgfCAxNSArKysrKysrKysrKy0tLS0K
Pj4gIGluY2x1ZGUvZHJtL2RybV9tb2RlX2NvbmZpZy5oICAgICB8ICAzICsrKwo+PiAgMiBmaWxl
cyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+PiAKPj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZnJhbWVidWZmZXIuYwo+IGIvZHJpdmVycy9ncHUv
ZHJtL2RybV9mcmFtZWJ1ZmZlci5jCj4+IGluZGV4IDU3NTY0MzEuLjIwODMxNjggMTAwNjQ0Cj4+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZnJhbWVidWZmZXIuYwo+PiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vZHJtX2ZyYW1lYnVmZmVyLmMKPj4gQEAgLTMwMCwxNCArMzAwLDIxIEBAIHN0cnVj
dCBkcm1fZnJhbWVidWZmZXIgKgo+PiAgCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKPj4gIAl9
Cj4+IAo+PiAtCWlmICgoY29uZmlnLT5taW5fd2lkdGggPiByLT53aWR0aCkgfHwgKHItPndpZHRo
ID4KPiBjb25maWctPm1heF93aWR0aCkpIHsKPj4gKwlpZiAoKGNvbmZpZy0+bWluX3dpZHRoID4g
ci0+d2lkdGgpIHx8Cj4+ICsJICAgICghY29uZmlnLT5tYXhfZmJfd2lkdGggJiYgci0+d2lkdGgg
PiBjb25maWctPm1heF93aWR0aCkgfHwKPj4gKwkgICAgKGNvbmZpZy0+bWF4X2ZiX3dpZHRoICYm
IHItPndpZHRoID4gY29uZmlnLT5tYXhfZmJfd2lkdGgpKSB7Cj4+ICAJCURSTV9ERUJVR19LTVMo
ImJhZCBmcmFtZWJ1ZmZlciB3aWR0aCAlZCwgc2hvdWxkIGJlID49ICVkCj4gJiYgPD0gJWRcbiIs
Cj4+IC0JCQkgIHItPndpZHRoLCBjb25maWctPm1pbl93aWR0aCwgY29uZmlnLT5tYXhfd2lkdGgp
Owo+PiArCQkJci0+d2lkdGgsIGNvbmZpZy0+bWluX3dpZHRoLCBjb25maWctPm1heF9mYl93aWR0
aAo+ID8KPj4gKwkJCWNvbmZpZy0+bWF4X2ZiX3dpZHRoIDogY29uZmlnLT5tYXhfd2lkdGgpOwo+
PiAgCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKPj4gIAl9Cj4+IC0JaWYgKChjb25maWctPm1p
bl9oZWlnaHQgPiByLT5oZWlnaHQpIHx8IChyLT5oZWlnaHQgPgo+IGNvbmZpZy0+bWF4X2hlaWdo
dCkpIHsKPj4gKwo+PiArCWlmICgoY29uZmlnLT5taW5faGVpZ2h0ID4gci0+aGVpZ2h0KSB8fAo+
PiArCSAgICAoIWNvbmZpZy0+bWF4X2ZiX2hlaWdodCAmJiByLT5oZWlnaHQgPiBjb25maWctPm1h
eF9oZWlnaHQpIHx8Cj4+ICsJICAgIChjb25maWctPm1heF9mYl9oZWlnaHQgJiYgci0+aGVpZ2h0
ID4gY29uZmlnLT5tYXhfZmJfaGVpZ2h0KSkKPiB7Cj4+ICAJCURSTV9ERUJVR19LTVMoImJhZCBm
cmFtZWJ1ZmZlciBoZWlnaHQgJWQsIHNob3VsZCBiZSA+PSAlZAo+ICYmIDw9ICVkXG4iLAo+PiAt
CQkJICByLT5oZWlnaHQsIGNvbmZpZy0+bWluX2hlaWdodCwKPiBjb25maWctPm1heF9oZWlnaHQp
Owo+PiArCQkJci0+aGVpZ2h0LCBjb25maWctPm1pbl9oZWlnaHQsCj4gY29uZmlnLT5tYXhfZmJf
d2lkdGggPwo+PiArCQkJY29uZmlnLT5tYXhfZmJfaGVpZ2h0IDogY29uZmlnLT5tYXhfaGVpZ2h0
KTsKPj4gIAkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7Cj4+ICAJfQo+PiAKPj4gZGlmZiAtLWdp
dCBhL2luY2x1ZGUvZHJtL2RybV9tb2RlX2NvbmZpZy5oCj4gYi9pbmNsdWRlL2RybS9kcm1fbW9k
ZV9jb25maWcuaAo+PiBpbmRleCAzYmNiZTMwLi5jNjM5NGVkIDEwMDY0NAo+PiAtLS0gYS9pbmNs
dWRlL2RybS9kcm1fbW9kZV9jb25maWcuaAo+PiArKysgYi9pbmNsdWRlL2RybS9kcm1fbW9kZV9j
b25maWcuaAo+PiBAQCAtMzM5LDYgKzMzOSw4IEBAIHN0cnVjdCBkcm1fbW9kZV9jb25maWdfZnVu
Y3Mgewo+PiAgICogQG1pbl9oZWlnaHQ6IG1pbmltdW0gZmIgcGl4ZWwgaGVpZ2h0IG9uIHRoaXMg
ZGV2aWNlCj4+ICAgKiBAbWF4X3dpZHRoOiBtYXhpbXVtIGZiIHBpeGVsIHdpZHRoIG9uIHRoaXMg
ZGV2aWNlCj4+ICAgKiBAbWF4X2hlaWdodDogbWF4aW11bSBmYiBwaXhlbCBoZWlnaHQgb24gdGhp
cyBkZXZpY2UKPj4gKyAqIEBtYXhfZmJfd2lkdGg6IG1heGltdW0gZmIgYnVmZmVyIHdpZHRoIGlm
IGRpZmZlcnMgZnJvbSBtYXhfd2lkdGgKPj4gKyAqIEBtYXhfZmJfaGVpZ2h0OiBtYXhpbXVtIGZi
IGJ1ZmZlciBoZWlnaHQgaWYgZGlmZmVycyBmcm9tICAKPj4gbWF4X2hlaWdodAo+PiAgICogQGZ1
bmNzOiBjb3JlIGRyaXZlciBwcm92aWRlZCBtb2RlIHNldHRpbmcgZnVuY3Rpb25zCj4+ICAgKiBA
ZmJfYmFzZTogYmFzZSBhZGRyZXNzIG9mIHRoZSBmcmFtZWJ1ZmZlcgo+PiAgICogQHBvbGxfZW5h
YmxlZDogdHJhY2sgcG9sbGluZyBzdXBwb3J0IGZvciB0aGlzIGRldmljZQo+PiBAQCAtNTIzLDYg
KzUyNSw3IEBAIHN0cnVjdCBkcm1fbW9kZV9jb25maWcgewo+PiAKPj4gIAlpbnQgbWluX3dpZHRo
LCBtaW5faGVpZ2h0Owo+PiAgCWludCBtYXhfd2lkdGgsIG1heF9oZWlnaHQ7Cj4+ICsJaW50IG1h
eF9mYl93aWR0aCwgbWF4X2ZiX2hlaWdodDsKPj4gIAljb25zdCBzdHJ1Y3QgZHJtX21vZGVfY29u
ZmlnX2Z1bmNzICpmdW5jczsKPj4gIAlyZXNvdXJjZV9zaXplX3QgZmJfYmFzZTsKPj4gCj4+IC0t
Cj4+IFRoZSBRdWFsY29tbSBJbm5vdmF0aW9uIENlbnRlciwgSW5jLiBpcyBhIG1lbWJlciBvZiB0
aGUgQ29kZSBBdXJvcmEKPiBGb3J1bSwKPj4gYSBMaW51eCBGb3VuZGF0aW9uIENvbGxhYm9yYXRp
dmUgUHJvamVjdAo+PiAKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+PiBkcmktZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCj4+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpLWRldmVsCj4gCj4gLS0KPiBWaWxsZSBTeXJqw6Rsw6QKPiBJbnRlbAoKLS0gCkpl
eWt1bWFyIFMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
