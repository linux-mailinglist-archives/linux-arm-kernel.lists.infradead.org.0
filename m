Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAB914D3BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 00:39:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CUKuqdKgj/G1FqFMyZI9VNxZP8x1wHPyDI5h8fbbIYI=; b=kwlMqRIsR4g8TE
	iWaKmpX89qF5L7hcUKw1ZFPiWTukMozUOQUuaqlhiBM4jn6rqZOY1na+mWlHYjdOtizUdJVSTchwL
	4WV0E/f5AWUiZwz5u4jPy5FyKyR65q9RtP8nklS7fuHfX1EOyZ7bCPxYBiY4D2bldddchEx+NUKEp
	wgtovywJRBuGrdADQh28CpSxdZ5bEIvhTpdTjxeUN7DkfRm3Pfnwe1mya0XtGhlA3R5slhZCDMyvg
	qGs9cOCExc6OwdpYRE2R1tbO5mXyVith5ugcJ+zRdpTTQHmsZ8ANR4BdHUOnmQM9SwXwiA1vCZPfG
	ZYZ4ZrJFLYxidiytuPXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwwvl-0007CK-Md; Wed, 29 Jan 2020 23:39:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwwvb-0007BK-VD
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 23:39:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 39A9331B;
 Wed, 29 Jan 2020 15:39:19 -0800 (PST)
Received: from [10.0.2.15] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 570803F52E;
 Wed, 29 Jan 2020 15:39:17 -0800 (PST)
Subject: Re: [PATCH v2 6/6] arm64: use activity monitors for frequency
 invariance
From: Valentin Schneider <valentin.schneider@arm.com>
To: Ionela Voinescu <ionela.voinescu@arm.com>, catalin.marinas@arm.com,
 will@kernel.org, mark.rutland@arm.com, maz@kernel.org,
 suzuki.poulose@arm.com, sudeep.holla@arm.com, dietmar.eggemann@arm.com
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
 <20191218182607.21607-7-ionela.voinescu@arm.com>
 <96fdead6-9896-5695-6744-413300d424f5@arm.com>
Message-ID: <3ed9af08-82ef-e30c-b1ec-3a1dac0d2091@arm.com>
Date: Wed, 29 Jan 2020 23:39:11 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <96fdead6-9896-5695-6744-413300d424f5@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_153924_052142_E960079A 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-doc@vger.kernel.org, peterz@infradead.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, ggherdovich@suse.cz,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjkvMDEvMjAyMCAxNzoxMywgVmFsZW50aW4gU2NobmVpZGVyIHdyb3RlOgo+IEkgaGFkIGEg
YnJpZWYgbG9vayBhdCB0aGUgQXJtIEFSTSwgZm9yIHRoZSBhcmNoIHRpbWVyIGl0IHNheXMgaXQg
aXMKPiAidHlwaWNhbGx5IGluIHRoZSByYW5nZSAxLTUwTUh6IiwgYnV0IHRoZW4gYWxzbyBnaXZl
cyBhbiBleGFtcGxlIHdpdGggMjBLSHoKPiBpbiBhIGxvdy1wb3dlciBtb2RlLgo+IAo+IElmIHdl
IHRha2Ugc2F5IDVHSHogbWF4IENQVSBmcmVxdWVuY3ksIG91ciBsb3dlciBib3VuZCBmb3IgdGhl
IGFyY2ggdGltZXIKPiAod2l0aCB0aGF0IFNDSEVEX0NBUEFDSVRZX1NDQUxFwrIgdHJpY2spIGlz
IGFib3V0IH40Ljc2OEtIei4gSXQncyBub3QgKnRvbyoKPiBmYXIgZnJvbSB0aGF0IDIwS0h6LCBi
dXQgSSdtIG5vdCBzdXJlIHdlIHdvdWxkIGFjdHVhbGx5IGJlIGV4ZWN1dGluZyBzdHVmZgo+IGlu
IHRoYXQgbG93LXBvd2VyIG1vZGUuCj4gCgpJIG1peGVkIHVwIGEgZmV3IHRoaW5ncyBpbiB0aGVy
ZTsgdGhhdCBsb3ctcG93ZXIgbW9kZSBpcyBzdXBwb3NlZCB0byBkbwpoaWdoZXIgaW5jcmVtZW50
cywgc28gaXQgd291bGQgZW11bGF0ZSBhIHNpbWlsYXIgZnJlcXVlbmN5IGFzIHRoZSBub24tbG93
LXBvd2VyCm1vZGUuIFRodXMgdGhlIGFjdHVhbCBmcmVxdWVuY3kgbWF0dGVycyBsZXNzIHRoYW4g
d2hhdCBpcyByZXBvcnRlZCBpbiBDTlRGUlEKKHRob3VnaCB3ZSBob3BlIHRvIGdldCB0aGUgYmVo
YXZpb3VyIHdlJ3JlIHRvbGQgd2Ugc2hvdWxkIHNlZSksIHNvIHdlIHNob3VsZApiZSBxdWl0ZSBz
YWZlIGZyb20gdGhhdCB+NUtIeiB2YWx1ZS4gU3RpbGwsIHRvIG1ha2UgaXQgb2J2aW91cywgSSBk
b24ndCB0aGluawpzb21ldGhpbmcgbGlrZSB0aGlzIHdvdWxkIGh1cnQ6CgotLS0KZGlmZiAtLWdp
dCBhL2RyaXZlcnMvY2xvY2tzb3VyY2UvYXJtX2FyY2hfdGltZXIuYyBiL2RyaXZlcnMvY2xvY2tz
b3VyY2UvYXJtX2FyY2hfdGltZXIuYwppbmRleCA5YTU0NjRjNjI1YjQ1Li5hNzI4MzIwOTM1NzVh
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2Nsb2Nrc291cmNlL2FybV9hcmNoX3RpbWVyLmMKKysrIGIv
ZHJpdmVycy9jbG9ja3NvdXJjZS9hcm1fYXJjaF90aW1lci5jCkBAIC04ODUsNiArODg1LDE3IEBA
IHN0YXRpYyBpbnQgYXJjaF90aW1lcl9zdGFydGluZ19jcHUodW5zaWduZWQgaW50IGNwdSkKIAly
ZXR1cm4gMDsKIH0KIAorc3RhdGljIGludCB2YWxpZGF0ZV90aW1lcl9yYXRlKHZvaWQpCit7CisJ
aWYgKCFhcmNoX3RpbWVyX3JhdGUpCisJCXJldHVybiAxOworCisJLyogQXJjaCB0aW1lciBmcmVx
dWVuY3kgPCAxTUh6IGlzIHNoYWR5ICovCisJV0FSTl9PTihhcmNoX3RpbWVyX3JhdGUgPCAxMDAw
MDAwKTsKKworCXJldHVybiAwOworfQorCiAvKgogICogRm9yIGhpc3RvcmljYWwgcmVhc29ucywg
d2hlbiBwcm9iaW5nIHdpdGggRFQgd2UgdXNlIHdoaWNoZXZlciAobm9uLXplcm8pCiAgKiByYXRl
IHdhcyBwcm9iZWQgZmlyc3QsIGFuZCBkb24ndCB2ZXJpZnkgdGhhdCBvdGhlcnMgbWF0Y2guIElm
IHRoZSBmaXJzdCBub2RlCkBAIC05MDAsNyArOTExLDcgQEAgc3RhdGljIHZvaWQgYXJjaF90aW1l
cl9vZl9jb25maWd1cmVfcmF0ZSh1MzIgcmF0ZSwgc3RydWN0IGRldmljZV9ub2RlICpucCkKIAkJ
YXJjaF90aW1lcl9yYXRlID0gcmF0ZTsKIAogCS8qIENoZWNrIHRoZSB0aW1lciBmcmVxdWVuY3ku
ICovCi0JaWYgKGFyY2hfdGltZXJfcmF0ZSA9PSAwKQorCWlmICh2YWxpZGF0ZV90aW1lcl9yYXRl
KCkpCiAJCXByX3dhcm4oImZyZXF1ZW5jeSBub3QgYXZhaWxhYmxlXG4iKTsKIH0KIApAQCAtMTU5
NCw3ICsxNjA1LDcgQEAgc3RhdGljIGludCBfX2luaXQgYXJjaF90aW1lcl9hY3BpX2luaXQoc3Ry
dWN0IGFjcGlfdGFibGVfaGVhZGVyICp0YWJsZSkKIAkgKiBDTlRGUlEgdmFsdWUuIFRoaXMgKm11
c3QqIGJlIGNvcnJlY3QuCiAJICovCiAJYXJjaF90aW1lcl9yYXRlID0gYXJjaF90aW1lcl9nZXRf
Y250ZnJxKCk7Ci0JaWYgKCFhcmNoX3RpbWVyX3JhdGUpIHsKKwlpZiAodmFsaWRhdGVfdGltZXJf
cmF0ZSgpKSB7CiAJCXByX2VycihGV19CVUcgImZyZXF1ZW5jeSBub3QgYXZhaWxhYmxlLlxuIik7
CiAJCXJldHVybiAtRUlOVkFMOwogCX0KLS0tCgo+IExvbmcgc3Rvcnkgc2hvcnQsIHdlJ3JlIHBy
b2JhYmx5IGZpbmUsIGJ1dCBpdCB3b3VsZCBuaWNlIHRvIHNob3ZlIHNvbWUgb2YKPiB0aGUgYWJv
dmUgaW50byBjb21tZW50cyAoZXNwZWNpYWxseSB0aGUgU0NIRURfQ0FQQUNJVFlfU0NBTEXCsiB0
cmljaykKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
