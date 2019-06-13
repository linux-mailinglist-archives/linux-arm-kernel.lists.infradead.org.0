Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C81C44455
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:37:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YNDf8h04FGPHwlsdsycirSnAEdxlWZXm6eJtEq9Isqc=; b=bnRBNZXzrBWaa2
	+ArJUrPKAEqlG9h3G32ZFKjgBR02OJ1IxAj+Zq8NjaudMYX+B3Df6etQSRLnUXaAR93k4RyWZYTeC
	paxkQmRoPrk/Bi82ZTkZgsosFLugeP8CwZGd3CcmNfoN9Hky9VH6YpgD2DQ1Z6PIWNiqAOEFNDs2n
	qTAU6V8RksNm3scykEByXrXQJnDF+H7CyXdygvOq3cKr1wuA0I4X6H7LJwx2D9OnQOx2KNCN4duxi
	Ng64taOevzkYb/OyW7DvvSIr7wj+xqHhvJoN10F+VTX4r9PM2cvgtI4Rt3eq/nxjTFLgAhBy4FFbY
	/xBpibRghTMHac2Wp/HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSis-0003JK-5E; Thu, 13 Jun 2019 16:37:10 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSig-0003IK-KT
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 16:36:59 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 3CC0420A52;
 Thu, 13 Jun 2019 18:36:57 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 248BF20163;
 Thu, 13 Jun 2019 18:36:57 +0200 (CEST)
Subject: Re: [PATCH v1] iopoll: Tweak readx_poll_timeout sleep range
To: Doug Anderson <dianders@chromium.org>
References: <c2e6af51-5676-3715-6666-c3f18df7b992@free.fr>
 <CAK8P3a1_WvHYW243MR5-NdFm3cSt+cVGM5EJmOM8uiQMQ3vQjQ@mail.gmail.com>
 <a732f522-5e65-3ac4-de04-802ef5455747@free.fr>
 <CAD=FV=U+Ky1bAuAuuY+eBdTP9U3kbuH0tfwyN0Zs-iw0GNUFyQ@mail.gmail.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <13cb7357-0d10-fe43-bee1-b2142d01684c@free.fr>
Date: Thu, 13 Jun 2019 18:36:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAD=FV=U+Ky1bAuAuuY+eBdTP9U3kbuH0tfwyN0Zs-iw0GNUFyQ@mail.gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Jun 13 18:36:57 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_093658_821036_87444286 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: Arnd Bergmann <arnd@arndb.de>, Will Deacon <will.deacon@arm.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Bjorn Helgaas <helgaas@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTMvMDYvMjAxOSAxODoxMSwgRG91ZyBBbmRlcnNvbiB3cm90ZToKCj4gT24gVGh1LCBKdW4g
MTMsIDIwMTkgYXQgOTowNCBBTSBNYXJjIEdvbnphbGV6IHdyb3RlOgo+Cj4+IEhtbW0sIEkgZXhw
ZWN0IHRoZSB0eXBpY2FsIHVzZS1jYXNlIHRvIGJlOgo+PiAiSFcgbWFudWFsIHN0YXRlcyBvcGVy
YXRpb24gWCBjb21wbGV0ZXMgaW4gMTAwIMK1cy4KPj4gTGV0J3MgY2FsbCB1c2xlZXBfcmFuZ2Uo
MTAwLCBmb28pOyBiZWZvcmUgaGl0dGluZyB0aGUgcmVnLiIKPj4KPj4gQW5kIGZvbyBuZWVkcyB0
byBiZSBhICJyZWFzb25hYmxlIiB2YWx1ZTogYmlnIGVub3VnaCB0byBiZSBhYmxlCj4+IHRvIG1l
cmdlIHNldmVyYWwgcmVxdWVzdHMsIGxvdyBlbm91Z2ggbm90IHRvIHdhaXQgdG9vIGxvbmcgYWZ0
ZXIKPj4gdGhlIEhXIGlzIHJlYWR5Lgo+Pgo+PiBJbiB0aGlzIGNhc2UsIEknZCBzYXkgdXNsZWVw
X3JhbmdlKDEwMCwgMjAwKTsgbWFrZXMgc2Vuc2UuCj4+Cj4+IENvbWUgdG8gdGhpbmsgb2YgaXQs
IEknbSBub3Qgc3VyZSBtaW49MjYgKG9yIG1pbj01MCkgbWFrZXMgc2Vuc2UuLi4KPj4gV2h5IHdh
aXQgKmxlc3MqIHRoYW4gd2hhdCB0aGUgdXNlciBzcGVjaWZpZWQ/Cj4gCj4gSUlSQyB1c2xlZXBf
cmFuZ2UoKSBuZWFybHkgYWx3YXlzIHRyaWVzIHRvIHNsZWVwIGZvciB0aGUgbWF4LiAgTXkKPiBy
ZWNvbGxlY3Rpb24gb2YgdGhlIGRlc2lnbiBpcyB0aGF0IHlvdSBvbmx5IGVuZCB1cCB3aXRoIHNv
bWV0aGluZyBsZXNzCj4gdGhhbiB0aGUgbWF4IGlmIHRoZSBzeXN0ZW0gd2FzIGdvaW5nIHRvIHdh
a2UgdXAgYW55d2F5LiAgSW4gc3VjaCBhCj4gY2FzZSBpdCBzZWVtcyBsaWtlIGl0IHdvdWxkbid0
IGJlIGluc2FuZSB0byBnbyBhbmQgY2hlY2sgaWYgdGhlCj4gY29uZGl0aW9uIGlzIGFscmVhZHkg
dHJ1ZSBpZiAyNSUgb2YgdGhlIHRpbWUgaGFzIHBhc3NlZC4gIE1heWJlIHlvdSdsbAo+IGdldCBs
dWNreSBhbmQgeW91IGNhbiByZXR1cm4gZWFybHkuCj4gCj4gQXJlIHlvdSBhY3R1YWxseSBzZWVp
bmcgcHJvYmxlbXMgd2l0aCB0aGUgLyA0LCBvciBpcyB0aGlzIHBhdGNoIGp1c3QgYQo+IHJlc3Vs
dCBvZiBjb2RlIGluc3BlY3Rpb24/CgpObyBhY3R1YWwgaXNzdWUuIEkganVzdCByYW4gaW50byBh
IGRyaXZlciBjYWxsaW5nOgoKCXJlYWRsX3BvbGxfdGltZW91dChzdGF0dXMsIHZhbCwgdmFsICYg
bWFzaywgMSwgMTAwMCk7CgphbmQgaXQgc2VlbWVkLi4uIHVud2lzZSg/KSB0byBjYWxsIHVzbGVl
cF9yYW5nZSgxLCAxKTsKCkJ1dCBpZiwgYXMgeW91IHNheSwgdXNsZWVwX3JhbmdlKCkgYWltcyBm
b3IgdGhlIG1heCwgdGhlbiBJIGd1ZXNzIGl0J3MKbm90IGEgYmlnIGRlYWwgdG8gaXNzdWUgYW4g
ZWFybHkgcmVhZCBvciAzLi4uIE1laAoKUmVnYXJkcy4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
