Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1CCC9BDEE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 15:17:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YXQEdIqcgyuGbrz3PeDIz4ufpS3h3/zWBH7vd4wUn7Q=; b=WqxBWyKQbI/k35
	7UufXZbN+QDkZ6BPtWcUVqfK08O0DEDssS2JENDgwRDZgEKv8loQXwhwqHWB2AIsAaBtYkAxfqsZN
	1ZmzKtIvQvLTOgNvrL+bCGdHBM+YRMuzKEBQjvtoldK6y9aFBAEy/FAdIdKpG8IIcdRxDJDlrly8g
	eU/COnjXQ6PRNi7aIb3cdjGNIs/dKBXOH6kgWLcy/bOeV/jmcKOj31LP8lP2S50s/olh0GLt9uwe+
	7aIiLtIV82ttQna4IZmWmLGx7uAZZS51DtZEpmaOhCo3vuiVIAaS4NydX7rIny5WpMkfgX84cDlyc
	8XT/1xGxlKNAWgzNRzPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Vub-0002rQ-BJ; Sat, 24 Aug 2019 13:16:57 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1VuP-0002qi-1O
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 13:16:47 +0000
Received: by mail-wr1-x444.google.com with SMTP id p17so11041116wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 24 Aug 2019 06:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=C1hVGnspJEkHk3CSlDSzIE4hRd3nEnSusrWYGONHDj8=;
 b=KL2jQUCaak8HRH6SIqnMrUlCC6nDHx1sgVIIxI/wb2ZJMAT3ZR4MMcCloC8oDr8Uic
 EbF+qp4zoDssJsLCgYxYrOkZa33ulJHxJaV6ic+Ff/3K5g9VaqkciesrUVI26guIaCrw
 /khXafJtPoQTOyNAD2Ghbd0bYdygMdbaqX4JJMR78PRHij+x2BOsbG+JpI9s5WwLAbSo
 u+BeF6TZFPpS6wgqACs4St4hex5+ghsPvkAYzh25LELA878I4ZjP7rgPXnUMCw7chTrd
 Mm4epPSd7ENV7ZYmRVD3pzaLjZMG09aq9Ra+hRqq3Y8usYLxu5G/36P3IPPJqUgavjoQ
 f29w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=C1hVGnspJEkHk3CSlDSzIE4hRd3nEnSusrWYGONHDj8=;
 b=pDrY7DfbGlDkf2wrpv9HVmsRz6N7LOH02XwjMnRjxJjSgxDWo1V6Ld4aWZ9PjQxBjL
 RF3akgpI4kLJDU9AfiNojFCQoYoxqveZCjKsi17gAsjjiRimUVO0mwTK2WqRXBVFxjwS
 ErmLHsU8JYPXLfMxVUmGUb8sxfU2HD2K10M7SDFcTR1M2d8FCBx44VlqhrIRVWjkpyqf
 r8+tGpCK5jcW5NxM4CJPd9/jHo6+kyEbPBx1x8m7ukJgbyYWj7UH5330J9AvoPHD7mPt
 BGtpmf9eJjTYoVtIG+eWJ45d1sh405d/3zNoY3UMuyzFDJJsq1Bka2o/JnKWyXC0I3Ih
 SxjQ==
X-Gm-Message-State: APjAAAVOs1pqteFN/rusYEnubcyNflxJPrcItgVLOpp3CKsMNUH/t+Nj
 kHym7yi+3ZvMITHMviY4M+0=
X-Google-Smtp-Source: APXvYqz6nTZAuEiVhX+hV2Kiu0tEQI+RrrS/5uHiXoqBiM+771zQrvuX94GxBGrxFHkPs7XU8BYMRA==
X-Received: by 2002:a5d:6a49:: with SMTP id t9mr11127808wrw.134.1566652603487; 
 Sat, 24 Aug 2019 06:16:43 -0700 (PDT)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net.
 [86.58.59.25])
 by smtp.gmail.com with ESMTPSA id a23sm12117020wma.24.2019.08.24.06.16.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 24 Aug 2019 06:16:42 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@googlegroups.com, megous@megous.com
Subject: Re: [linux-sunxi] [PATCH v2 2/3] rtc: sun6i: Add support for H6 RTC
Date: Sat, 24 Aug 2019 15:16:41 +0200
Message-ID: <10880274.nteIY8W56H@jernej-laptop>
In-Reply-To: <20190824130544.kxypq3siv7kffidp@core.my.home>
References: <20190820151934.3860-1-megous@megous.com>
 <2544007.NTLiB2pbcT@jernej-laptop>
 <20190824130544.kxypq3siv7kffidp@core.my.home>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_061645_105162_159D2D31 
X-CRM114-Status: GOOD (  35.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jernej.skrabec[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIHNvYm90YSwgMjQuIGF2Z3VzdCAyMDE5IG9iIDE1OjA1OjQ0IENFU1QgamUgT25kxZllaiBK
aXJtYW4gbmFwaXNhbChhKToKPiBPbiBTYXQsIEF1ZyAyNCwgMjAxOSBhdCAwMjo1MTo1NFBNICsw
MjAwLCBKZXJuZWogxaBrcmFiZWMgd3JvdGU6Cj4gPiBEbmUgc29ib3RhLCAyNC4gYXZndXN0IDIw
MTkgb2IgMTQ6NDY6NTQgQ0VTVCBqZSBPbmTFmWVqIEppcm1hbiBuYXBpc2FsKGEpOgo+ID4gPiBI
aSwKPiA+ID4gCj4gPiA+IE9uIFNhdCwgQXVnIDI0LCAyMDE5IGF0IDAyOjMyOjMyUE0gKzAyMDAs
IEplcm5laiDFoGtyYWJlYyB3cm90ZToKPiA+ID4gPiBIaSEKPiA+ID4gPiAKPiA+ID4gPiBEbmUg
dG9yZWssIDIwLiBhdmd1c3QgMjAxOSBvYiAxNzoxOTozMyBDRVNUIGplIG1lZ291c0BtZWdvdXMu
Y29tCj4gPiAKPiA+IG5hcGlzYWwoYSk6Cj4gPiA+ID4gPiBGcm9tOiBPbmRyZWogSmlybWFuIDxt
ZWdvdXNAbWVnb3VzLmNvbT4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gUlRDIG9uIEg2IGlzIG1vc3Rs
eSB0aGUgc2FtZSBhcyBvbiBINSBhbmQgSDMuIEl0IGhhcyBzbGlnaHQKPiA+ID4gPiA+IGRpZmZl
cmVuY2VzCj4gPiA+ID4gPiBtb3N0bHkgaW4gZmVhdHVyZXMgdGhhdCBhcmUgbm90IHlldCBzdXBw
b3J0ZWQgYnkgdGhpcyBkcml2ZXIuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFNvbWUgZGlmZmVyZW5j
ZXMgYXJlIGFscmVhZHkgc3RhdGVkIGluIHRoZSBjb21tZW50cyBpbiBleGlzdGluZwo+ID4gPiA+
ID4gY29kZS4KPiA+ID4gPiA+IE9uZSBvdGhlciBkaWZmZXJlbmNlIGlzIHRoYXQgSDYgaGFzIGV4
dHJhIGJpdCBpbiBMT1NDX0NUUkxfUkVHLAo+ID4gPiA+ID4gY2FsbGVkCj4gPiA+ID4gPiBFWFRf
TE9TQ19FTiB0byBlbmFibGUvZGlzYWJsZSBleHRlcm5hbCBsb3cgc3BlZWQgY3J5c3RhbCBvc2Np
bGxhdG9yLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBJdCBhbHNvIGhhcyBiaXQgRVhUX0xPU0NfU1RB
IGluIExPU0NfQVVUT19TV1RfU1RBX1JFRywgdG8gY2hlY2sKPiA+ID4gPiA+IHdoZXRoZXIKPiA+
ID4gPiA+IGV4dGVybmFsIGxvdyBzcGVlZCBvc2NpbGxhdG9yIGlzIHdvcmtpbmcgY29ycmVjdGx5
Lgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBUaGlzIHBhdGNoIGFkZHMgc3VwcG9ydCBmb3IgZW5hYmxp
bmcgTE9TQyB3aGVuIG5lY2Vzc2FyeToKPiA+ID4gPiA+IAo+ID4gPiA+ID4gLSBkdXJpbmcgcmVw
YXJlbnRpbmcKPiA+ID4gPiA+IC0gd2hlbiBwcm9iaW5nIHRoZSBjbG9jawo+ID4gPiA+ID4gCj4g
PiA+ID4gPiBINiBhbHNvIGhhcyBjYXBhY2JpbGl0eSB0byBhdXRvbWF0aWNhbGx5IHJlcGFyZW50
IFJUQyBjbG9jayBmcm9tCj4gPiA+ID4gPiBleHRlcm5hbCBjcnlzdGFsIG9zY2lsbGF0b3IsIHRv
IGludGVybmFsIFJDIG9zY2lsbGF0b3IsIGlmIGV4dGVybmFsCj4gPiA+ID4gPiBvc2NpbGxhdG9y
IGZhaWxzLiBUaGlzIGlzIGVuYWJsZWQgYnkgZGVmYXVsdC4gRGlzYWJsZSBpdCBkdXJpbmcKPiA+
ID4gPiA+IHByb2JlLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBPbmRyZWog
SmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4KPiA+ID4gPiA+IFJldmlld2VkLWJ5OiBDaGVuLVl1
IFRzYWkgPHdlbnNAY3NpZS5vcmc+Cj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+IAo+ID4gPiA+ID4g
IGRyaXZlcnMvcnRjL3J0Yy1zdW42aS5jIHwgNDAKPiA+ID4gPiA+ICArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKy0tCj4gPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDM4IGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiA+ID4gPiAKPiA+ID4gPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3J0Yy9ydGMtc3VuNmkuYyBiL2RyaXZlcnMvcnRjL3J0Yy1zdW42aS5jCj4g
PiA+ID4gPiBpbmRleCBkNTBlZTAyM2I1NTkuLmIwYzM3NTJiZWQzZiAxMDA2NDQKPiA+ID4gPiA+
IC0tLSBhL2RyaXZlcnMvcnRjL3J0Yy1zdW42aS5jCj4gPiA+ID4gPiArKysgYi9kcml2ZXJzL3J0
Yy9ydGMtc3VuNmkuYwo+ID4gPiA+ID4gQEAgLTMyLDkgKzMyLDExIEBACj4gPiA+ID4gPiAKPiA+
ID4gPiA+ICAvKiBDb250cm9sIHJlZ2lzdGVyICovCj4gPiA+ID4gPiAgI2RlZmluZSBTVU42SV9M
T1NDX0NUUkwJCQkJMHgwMDAwCj4gPiA+ID4gPiAgI2RlZmluZSBTVU42SV9MT1NDX0NUUkxfS0VZ
CQkJKDB4MTZhYSAKPDwgMTYpCj4gPiA+ID4gPiAKPiA+ID4gPiA+ICsjZGVmaW5lIFNVTjZJX0xP
U0NfQ1RSTF9BVVRPX1NXVF9CWVBBU1MJCUJJVCgxNSkKPiA+ID4gPiAKPiA+ID4gPiBVc2VyIG1h
bnVhbCBzYXlzIHRoYXQgYWJvdmUgZmllbGQgaXMgYml0IDE0Lgo+ID4gPiAKPiA+ID4gU2VlIHRo
ZSBwcmV2aW91cyBkaXNjdXNzaW9uLCB0aGlzIGlzIGZyb20gQlNQLgo+ID4gCj4gPiBJIGhhdmUg
dHdvIHZlcnNpb25zIG9mIEJTUCAoZG9uJ3QgYXNrIG1lIHdoaWNoKSB3aGljaCBoYXZlIHRoaXMg
c2V0IGFzIGJpdAo+ID4gMTQgYW5kIGNoYW5naW5nIHRoaXMgdG8gMTQgYWN0dWFsbHkgc29sdmVz
IGFsbCBteSBwcm9ibGVtcyB3aXRoIExPU0MgKG5vCj4gPiBtb3JlIGlzc3VlcyB3aXRoIHNldHRp
bmcgUlRDIGFuZCBIRE1JLUNFQyB3b3JrcyBub3cgLSBpdCB1c2VzIExPU0MgYXMKPiA+IHBhcmVu
dCkgb24gVGFuaXggVFg2IGJveC4KPiAKPiBJbnRlcmVzdGluZy4gSXMgTE9TQyBmZWQgZXh0ZXJu
YWxseSBnZW5lcmF0ZWQgY2xvY2ssIG9yIGlzIGl0IHNldHVwIGFzIGEKPiBjcnlzdGFsIG9zY2ls
bGF0b3Igb24geW91ciBib2FyZD8KCkkgcmVhbGx5IGRvbid0IGtub3csIGJ1dCBoZXJlIGlzIERU
OiBodHRwOi8vaXguaW8vMVRoSQoKPiAKPiBBbnl3YXksIHNlZSBoZXJlOgo+IAo+IGh0dHBzOi8v
bWVnb3VzLmNvbS9naXQvbGludXgvdHJlZS9kcml2ZXJzL3J0Yy9ydGMtc3VueGkuaD9oPWg2LTQu
OS1ic3AjbjY0OQo+IGh0dHBzOi8vbWVnb3VzLmNvbS9naXQvbGludXgvdHJlZS9kcml2ZXJzL3J0
Yy9ydGMtc3VueGkuYz9oPWg2LTQuOS1ic3AjbjY1MgoKSW50ZXJlc3RpbmcsIDQuOSBCU1AgaGFz
IGFkZGl0aW9uYWwgYml0IGRlZmluaXRpb24sIHdoaWNoIGlzIG5vdCBkb2N1bWVudGVkIGluIApt
YW51YWwgYW5kIDMuMTAgQlNQIHRvIHdoaWNoIEkgcmVmZXIuCgpJIHdhcyByZWZlcnJpbmcgdG8g
My4xMCBCU1AsIHdoaWNoIHVzZXMgb25seSBiaXQgMTQuIEkgdGhvdWdodCB0aGF0IHlvdSBuYW1l
ZCAKaXQgZGlmZmVyZW50bHkuCgo+IAo+IEl0IHdvdWxkIGJlIG5pY2UgdG8ga25vdyB3aGF0J3Mg
cmVhbGx5IGhhcHBlbmluZy4KPiAKPiBNeSBvdXRwdXQgaXM6Cj4gCj4gWyAgICAwLjgzMjI1Ml0g
c3VuNmktcnRjIDcwMDAwMDAucnRjOiByZWdpc3RlcmVkIGFzIHJ0YzAKPiBbICAgIDAuODMyMjU3
XSBzdW42aS1ydGMgNzAwMDAwMC5ydGM6IFJUQyBlbmFibGVkCj4gWyAgICAxLjcyODk2OF0gc3Vu
NmktcnRjIDcwMDAwMDAucnRjOiBzZXR0aW5nIHN5c3RlbSBjbG9jayB0bwo+IDE5NzAtMDEtMDFU
MDA6MDA6MDcgVVRDICg3KQoKV2l0aCBjaGFuZ2UsIEkgZ2V0IHNhbWUgb3V0cHV0LgoKPiAKPiBJ
IHRoaW5rLCB5b3UgbWF5IGhhdmUganVzdCBlbmFibGVkIHRoZSBhdXRvIHN3aXRjaCBmZWF0dXJl
LCBhbmQgcnVubmluZyB0aGUKPiBjbG9jayBmcm9tIGxvdyBwcmVjaXNpb24gUkMgb3NjaWxsYXRv
ciB3aXRoIHlvdXIgcGF0Y2guCgpUcnVlLCBub3cgSSB0aGluayB0aGVyZSBpcyBubyBleHRlcm5h
bCBjcnlzdGFsLCBidXQgSSdtIHN0aWxsIG5vdCBzdXJlIGhvdyB0byAKY29uZmlybSB0aGF0LgoK
PiAKPiBUaGUgcmVhbCBpc3N1ZSBwcm9iYWJseSBpcyB0aGF0IHRoZSBtYWlubGluZSBkcml2ZXIg
aXMgbWlzc2luZyB0aGlzOgo+IAo+IGh0dHBzOi8vbWVnb3VzLmNvbS9naXQvbGludXgvdHJlZS9k
cml2ZXJzL3J0Yy9ydGMtc3VueGkuYz9oPWg2LTQuOS1ic3AjbjY1MAo+IAoKTm90IHN1cmUgd2hh
dCB5b3UgbWVhbiBieSB0aGF0LiBleHQgdnMuIGludCBzb3VyY2Ugc2VsZWN0aW9uPwoKQmVzdCBy
ZWdhcmRzLApKZXJuZWoKCj4gcmVnYXJkcywKPiAJby4KPiAKPiA+IEJlc3QgcmVnYXJkcywKPiA+
IEplcm5lago+ID4gCj4gPiA+IHJlZ2FyZHMsCj4gPiA+IAo+ID4gPiAJby4KPiA+ID4gCQo+ID4g
PiA+IEJlc3QgcmVnYXJkcywKPiA+ID4gPiBKZXJuZWoKPiA+ID4gPiAKPiA+ID4gPiA+ICAjZGVm
aW5lIFNVTjZJX0xPU0NfQ1RSTF9BTE1fREhNU19BQ0MJCUJJVCg5KQo+ID4gPiA+ID4gICNkZWZp
bmUgU1VONklfTE9TQ19DVFJMX1JUQ19ITVNfQUNDCQlCSVQoOCkKPiA+ID4gPiA+ICAjZGVmaW5l
IFNVTjZJX0xPU0NfQ1RSTF9SVENfWU1EX0FDQwkJQklUKDcpCj4gPiA+ID4gPiAKPiA+ID4gPiA+
ICsjZGVmaW5lIFNVTjZJX0xPU0NfQ1RSTF9FWFRfTE9TQ19FTgkJQklUKDQpCj4gPiA+ID4gPiAK
PiA+ID4gPiA+ICAjZGVmaW5lIFNVTjZJX0xPU0NfQ1RSTF9FWFRfT1NDCQkJQklUKDApCj4gPiA+
ID4gPiAgI2RlZmluZSBTVU42SV9MT1NDX0NUUkxfQUNDX01BU0sJCUdFTk1BU0soOSwgNykKPiA+
ID4gPiA+IAo+ID4gPiA+ID4gQEAgLTEyOCw2ICsxMzAsOCBAQCBzdHJ1Y3Qgc3VuNmlfcnRjX2Ns
a19kYXRhIHsKPiA+ID4gPiA+IAo+ID4gPiA+ID4gIAl1bnNpZ25lZCBpbnQgaGFzX3ByZXNjYWxl
ciA6IDE7Cj4gPiA+ID4gPiAgCXVuc2lnbmVkIGludCBoYXNfb3V0X2NsayA6IDE7Cj4gPiA+ID4g
PiAgCXVuc2lnbmVkIGludCBleHBvcnRfaW9zYyA6IDE7Cj4gPiA+ID4gPiAKPiA+ID4gPiA+ICsJ
dW5zaWduZWQgaW50IGhhc19sb3NjX2VuIDogMTsKPiA+ID4gPiA+ICsJdW5zaWduZWQgaW50IGhh
c19hdXRvX3N3dCA6IDE7Cj4gPiA+ID4gPiAKPiA+ID4gPiA+ICB9Owo+ID4gPiA+ID4gIAo+ID4g
PiA+ID4gIHN0cnVjdCBzdW42aV9ydGNfZGV2IHsKPiA+ID4gPiA+IAo+ID4gPiA+ID4gQEAgLTE5
MCw2ICsxOTQsMTAgQEAgc3RhdGljIGludCBzdW42aV9ydGNfb3NjX3NldF9wYXJlbnQoc3RydWN0
Cj4gPiA+ID4gPiBjbGtfaHcKPiA+ID4gPiA+ICpodywKPiA+ID4gPiA+IHU4IGluZGV4KSB2YWwg
Jj0gflNVTjZJX0xPU0NfQ1RSTF9FWFRfT1NDOwo+ID4gPiA+ID4gCj4gPiA+ID4gPiAgCXZhbCB8
PSBTVU42SV9MT1NDX0NUUkxfS0VZOwo+ID4gPiA+ID4gIAl2YWwgfD0gaW5kZXggPyBTVU42SV9M
T1NDX0NUUkxfRVhUX09TQyA6IDA7Cj4gPiA+ID4gPiAKPiA+ID4gPiA+ICsJaWYgKHJ0Yy0+ZGF0
YS0+aGFzX2xvc2NfZW4pIHsKPiA+ID4gPiA+ICsJCXZhbCAmPSB+U1VONklfTE9TQ19DVFJMX0VY
VF9MT1NDX0VOOwo+ID4gPiA+ID4gKwkJdmFsIHw9IGluZGV4ID8gU1VONklfTE9TQ19DVFJMX0VY
VF9MT1NDX0VOIDogMDsKPiA+ID4gPiA+ICsJfQo+ID4gPiA+ID4gCj4gPiA+ID4gPiAgCXdyaXRl
bCh2YWwsIHJ0Yy0+YmFzZSArIFNVTjZJX0xPU0NfQ1RSTCk7Cj4gPiA+ID4gPiAgCXNwaW5fdW5s
b2NrX2lycXJlc3RvcmUoJnJ0Yy0+bG9jaywgZmxhZ3MpOwo+ID4gPiA+ID4gCj4gPiA+ID4gPiBA
QCAtMjE1LDYgKzIyMyw3IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBzdW42aV9ydGNfY2xrX2luaXQo
c3RydWN0Cj4gPiA+ID4gPiBkZXZpY2Vfbm9kZSAqbm9kZSwgY29uc3QgY2hhciAqaW9zY19uYW1l
ID0gInJ0Yy1pbnQtb3NjIjsKPiA+ID4gPiA+IAo+ID4gPiA+ID4gIAljb25zdCBjaGFyICpjbGtv
dXRfbmFtZSA9ICJvc2MzMmstb3V0IjsKPiA+ID4gPiA+ICAJY29uc3QgY2hhciAqcGFyZW50c1sy
XTsKPiA+ID4gPiA+IAo+ID4gPiA+ID4gKwl1MzIgcmVnOwo+ID4gPiA+ID4gCj4gPiA+ID4gPiAg
CXJ0YyA9IGt6YWxsb2Moc2l6ZW9mKCpydGMpLCBHRlBfS0VSTkVMKTsKPiA+ID4gPiA+ICAJaWYg
KCFydGMpCj4gPiA+ID4gPiAKPiA+ID4gPiA+IEBAIC0yMzUsOSArMjQ0LDE4IEBAIHN0YXRpYyB2
b2lkIF9faW5pdCBzdW42aV9ydGNfY2xrX2luaXQoc3RydWN0Cj4gPiA+ID4gPiBkZXZpY2Vfbm9k
ZSAqbm9kZSwgZ290byBlcnI7Cj4gPiA+ID4gPiAKPiA+ID4gPiA+ICAJfQo+ID4gPiA+ID4gCj4g
PiA+ID4gPiArCXJlZyA9IFNVTjZJX0xPU0NfQ1RSTF9LRVk7Cj4gPiA+ID4gPiArCWlmIChydGMt
PmRhdGEtPmhhc19hdXRvX3N3dCkgewo+ID4gPiA+ID4gKwkJLyogQnlwYXNzIGF1dG8tc3dpdGNo
IHRvIGludCBvc2MsIG9uIGV4dCBsb3NjIGZhaWx1cmUKPiA+IAo+ID4gKi8KPiA+IAo+ID4gPiA+
ID4gKwkJcmVnIHw9IFNVTjZJX0xPU0NfQ1RSTF9BVVRPX1NXVF9CWVBBU1M7Cj4gPiA+ID4gPiAr
CQl3cml0ZWwocmVnLCBydGMtPmJhc2UgKyBTVU42SV9MT1NDX0NUUkwpOwo+ID4gPiA+ID4gKwl9
Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiAKPiA+ID4gPiA+ICAJLyogU3dpdGNoIHRvIHRoZSBleHRl
cm5hbCwgbW9yZSBwcmVjaXNlLCBvc2NpbGxhdG9yICovCj4gPiA+ID4gPiAKPiA+ID4gPiA+IC0J
d3JpdGVsKFNVTjZJX0xPU0NfQ1RSTF9LRVkgfCBTVU42SV9MT1NDX0NUUkxfRVhUX09TQywKPiA+
ID4gPiA+IC0JICAgICAgIHJ0Yy0+YmFzZSArIFNVTjZJX0xPU0NfQ1RSTCk7Cj4gPiA+ID4gPiAr
CXJlZyB8PSBTVU42SV9MT1NDX0NUUkxfRVhUX09TQzsKPiA+ID4gPiA+ICsJaWYgKHJ0Yy0+ZGF0
YS0+aGFzX2xvc2NfZW4pCj4gPiA+ID4gPiArCQlyZWcgfD0gU1VONklfTE9TQ19DVFJMX0VYVF9M
T1NDX0VOOwo+ID4gPiA+ID4gKwl3cml0ZWwocmVnLCBydGMtPmJhc2UgKyBTVU42SV9MT1NDX0NU
UkwpOwo+ID4gPiA+ID4gCj4gPiA+ID4gPiAgCS8qIFllcywgSSBrbm93LCB0aGlzIGlzIHVnbHku
ICovCj4gPiA+ID4gPiAgCXN1bjZpX3J0YyA9IHJ0YzsKPiA+ID4gPiA+IAo+ID4gPiA+ID4gQEAg
LTM0NSw2ICszNjMsMjMgQEAgQ0xLX09GX0RFQ0xBUkVfRFJJVkVSKHN1bjhpX2gzX3J0Y19jbGss
Cj4gPiA+ID4gPiAiYWxsd2lubmVyLHN1bjhpLWgzLXJ0YyIsIENMS19PRl9ERUNMQVJFX0RSSVZF
UihzdW41MGlfaDVfcnRjX2NsaywKPiA+ID4gPiA+ICJhbGx3aW5uZXIsc3VuNTBpLWg1LXJ0YyIs
IHN1bjhpX2gzX3J0Y19jbGtfaW5pdCk7Cj4gPiA+ID4gPiAKPiA+ID4gPiA+ICtzdGF0aWMgY29u
c3Qgc3RydWN0IHN1bjZpX3J0Y19jbGtfZGF0YSBzdW41MGlfaDZfcnRjX2RhdGEgPSB7Cj4gPiA+
ID4gPiArCS5yY19vc2NfcmF0ZSA9IDE2MDAwMDAwLAo+ID4gPiA+ID4gKwkuZml4ZWRfcHJlc2Nh
bGVyID0gMzIsCj4gPiA+ID4gPiArCS5oYXNfcHJlc2NhbGVyID0gMSwKPiA+ID4gPiA+ICsJLmhh
c19vdXRfY2xrID0gMSwKPiA+ID4gPiA+ICsJLmV4cG9ydF9pb3NjID0gMSwKPiA+ID4gPiA+ICsJ
Lmhhc19sb3NjX2VuID0gMSwKPiA+ID4gPiA+ICsJLmhhc19hdXRvX3N3dCA9IDEsCj4gPiA+ID4g
PiArfTsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICtzdGF0aWMgdm9pZCBfX2luaXQgc3VuNTBpX2g2
X3J0Y19jbGtfaW5pdChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUpCj4gPiA+ID4gPiArewo+ID4g
PiA+ID4gKwlzdW42aV9ydGNfY2xrX2luaXQobm9kZSwgJnN1bjUwaV9oNl9ydGNfZGF0YSk7Cj4g
PiA+ID4gPiArfQo+ID4gPiA+ID4gK0NMS19PRl9ERUNMQVJFX0RSSVZFUihzdW41MGlfaDZfcnRj
X2NsaywgImFsbHdpbm5lcixzdW41MGktaDYtcnRjIiwKPiA+ID4gPiA+ICsJCSAgICAgIHN1bjUw
aV9oNl9ydGNfY2xrX2luaXQpOwo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gCj4gPiA+ID4gPiAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBzdW42aV9ydGNfY2xrX2RhdGEgc3VuOGlfdjNfcnRjX2RhdGEgPSB7
Cj4gPiA+ID4gPiAgCj4gPiA+ID4gPiAgCS5yY19vc2NfcmF0ZSA9IDMyMDAwLAo+ID4gPiA+ID4g
IAkuaGFzX291dF9jbGsgPSAxLAo+ID4gPiA+ID4gCj4gPiA+ID4gPiBAQCAtNjc1LDYgKzcxMCw3
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkCj4gPiA+ID4gPiBzdW42aV9ydGNf
ZHRfaWRzW10KPiA+ID4gPiA+ID0gewo+ID4gPiA+ID4gCj4gPiA+ID4gPiAgCXsgLmNvbXBhdGli
bGUgPSAiYWxsd2lubmVyLHN1bjhpLXI0MC1ydGMiIH0sCj4gPiA+ID4gPiAgCXsgLmNvbXBhdGli
bGUgPSAiYWxsd2lubmVyLHN1bjhpLXYzLXJ0YyIgfSwKPiA+ID4gPiA+ICAJeyAuY29tcGF0aWJs
ZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg1LXJ0YyIgfSwKPiA+ID4gPiA+IAo+ID4gPiA+ID4gKwl7
IC5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41MGktaDYtcnRjIiB9LAo+ID4gPiA+ID4gCj4g
PiA+ID4gPiAgCXsgLyogc2VudGluZWwgKi8gfSwKPiA+ID4gPiA+ICAKPiA+ID4gPiA+ICB9Owo+
ID4gPiA+ID4gIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIHN1bjZpX3J0Y19kdF9pZHMpOwo+ID4g
PiA+IAo+ID4gPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gPiA+ID4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiA+ID4gPiBsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+ID4gPiBodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKPiA+IAo+ID4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IGxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0Cj4gPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKPiA+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
