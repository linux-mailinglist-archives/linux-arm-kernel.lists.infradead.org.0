Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F7911A0F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 03:00:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CFdFDiNhaTNM6NH+F0TagtPGaqUQ7r9RkYgJVQ2t7BQ=; b=oKYwpt/w9Fo/Dr
	z6WC98TAWiTMW1UjChhtGJ+Gq/CyBI+XA342c6rd2ToEWwTXf8y8EagzJbxgeEYscGzE4V1J8LoHq
	uAt5QqRaDU9DaT/jveZpIUsxTfdoj4WJ6dI3I6k8PxCTIWycYk2Js+TnMAHNzInN3CKtDqrcMcwc6
	g57rOzDwtMvwX2lQSkxiOQtRJCoztpRNoRCrkFlMAnBYgchv3jGk9fNC10HNWhfUs7+CxDsNxxXkv
	YZ5wcLFFuZcZ+RkSpXkbOFqQUfbON3Y2Gp1JiLa3mplArXevrYP8llrEMvxQqOZOajSiOjMV80D8n
	JbJKofYqDx5zSqR9NhgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ierIu-0000hh-7a; Wed, 11 Dec 2019 02:00:40 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ierIj-0000gA-MB; Wed, 11 Dec 2019 02:00:31 +0000
Received: by mail-il1-x143.google.com with SMTP id g12so18025387ild.2;
 Tue, 10 Dec 2019 18:00:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=KPuoiuDNoBypEAM8Lz9cHX9/+wFHQgQuzldUjfKUDfU=;
 b=Hc8+WJ7I5SkbhfyyJ1GG9HanLO2qTGWVPrbxgqsX1v+pNfYx13yWRVsKlYBw1BN9po
 ymyGxs2o27HAo+NjD4QVmVQF6PB4hM8lPALOguzJDRO343lWcHs+/LdF44PECDcldWTk
 JjapM1p/BsjTSCd2mTywgbsa4pSjZ+R6kmowrPT4V/HTOmK0oxWLok8JIRSeY61EfKuR
 AxxfMZDu2/K416bxmqM3fDDZXT4/XWbS7WoKuzLSvChxtQ4weCiGVBFsDFctMPYlIG3R
 R0L40npXRAaCN+6d83Y/Oi1ALJ2SiqE3t/wUpHBsncDWPV8G09/xmPzhWdAQxpN1azeZ
 KiPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=KPuoiuDNoBypEAM8Lz9cHX9/+wFHQgQuzldUjfKUDfU=;
 b=F+v+8OG8DCXPYaPQZQb5H4JOtvyQzgciOoN6Zi6R4YtPP4OY/18qM4XRNOGXogo/aQ
 JrbIQeSIj1YAYcWG+1W0iGMmT5KGZe6CaJTUq06FTax2J4N73e4fV37h5i/UGmBwEEFZ
 3AqOn8FnY+J45s10JguXYotSH93Qid1XFpJz77/9oaAO2+cVRzXtLdSGhwEI3e+tGSbI
 FWfaeUkofphoZ9bsNfsIHbp8GDGYvuiLFeNKA7Jbf8LTISmHolnl6mmJ/W9p5ORpiNIx
 caGPtMNJI+WVELT7QtFlHlBEYURP92OiEHaAuxwrC7FbDLWngmcE82/eG5MYRgLAqCe1
 iG0A==
X-Gm-Message-State: APjAAAV0Ca9sGHyXOxRHiPA4mtfjmICtaJlosHVyxxdR/7WBo0KrTjvJ
 7vpR51+Segq5nF1M5hqdmXnwqQt8FQQODOXP1Io=
X-Google-Smtp-Source: APXvYqylaGqxl3kuUUGeA/LM6tIleUnS7lkYsGc2qrtlbxfaSliAIXHMcgnoSIKSORsU/xc/hzwyPUpbTpUlqWR44h4=
X-Received: by 2002:a92:5d92:: with SMTP id e18mr746775ilg.75.1576029627000;
 Tue, 10 Dec 2019 18:00:27 -0800 (PST)
MIME-Version: 1.0
References: <20191209115746.12953-1-smoch@web.de>
 <CANAwSgS9ixhyOE2QYQ3CetA=BUVebMan2=9xBKF=U3YXAwCHNQ@mail.gmail.com>
 <6e380c0a-007d-22db-af26-19defaf1ae83@fivetechno.de>
 <8377b8d6-8b4d-0605-4c61-fb61b4aebf91@web.de>
In-Reply-To: <8377b8d6-8b4d-0605-4c61-fb61b4aebf91@web.de>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 11 Dec 2019 07:30:15 +0530
Message-ID: <CANAwSgQhPtBy-npPJgOAqieF7doGmaX3U35m95ktR2qAWVbf5w@mail.gmail.com>
Subject: Re: [PATCH] mfd: rk808: Always use poweroff when requested
To: Soeren Moch <smoch@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_180029_753365_A82D1030 
X-CRM114-Status: GOOD (  22.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 Markus Reichl <m.reichl@fivetechno.de>, linux-rockchip@lists.infradead.org,
 Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aGkgU29lcmVuLAoKT24gVHVlLCAxMCBEZWMgMjAxOSBhdCAyMjoxMCwgU29lcmVuIE1vY2ggPHNt
b2NoQHdlYi5kZT4gd3JvdGU6Cj4KPgo+Cj4gT24gMTAuMTIuMTkgMTM6NTUsIE1hcmt1cyBSZWlj
aGwgd3JvdGU6Cj4gPiBIaSBBbmFuZCwKPiA+Cj4gPiBBbSAxMC4xMi4xOSB1bSAxMzo0MiBzY2hy
aWViIEFuYW5kIE1vb246Cj4gPj4gSGkgU29lcmVuLAo+ID4+Cj4gPj4gT24gTW9uLCA5IERlYyAy
MDE5IGF0IDE3OjI4LCBTb2VyZW4gTW9jaCA8c21vY2hAd2ViLmRlPiB3cm90ZToKPiA+Pj4KPiA+
Pj4gV2l0aCB0aGUgZGV2aWNlIHRyZWUgcHJvcGVydHkgInJvY2tjaGlwLHN5c3RlbS1wb3dlci1j
b250cm9sbGVyIiB3ZQo+ID4+PiBleHBsaWNpdGx5IHJlcXVlc3QgdG8gdXNlIHRoaXMgUE1JQyB0
byBwb3dlciBvZmYgdGhlIHN5c3RlbS4gU28gYWx3YXlzCj4gPj4+IHJlZ2lzdGVyIG91ciBwb3dl
cm9mZiBmdW5jdGlvbiwgZXZlbiBpZiBzb21lIG90aGVyIGhhbmRsZXIgKHByb2JhYmx5Cj4gPj4+
IFBTQ0kgcG93ZXJvZmYpIHdhcyByZWdpc3RlcmVkIGJlZm9yZS4KPiA+Pj4KPiA+Pj4gU2lnbmVk
LW9mZi1ieTogU29lcmVuIE1vY2ggPHNtb2NoQHdlYi5kZT4KPiA+Pj4gLS0tCj4gPj4+IENjOiBM
ZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+ID4+PiBDYzogSGVpa28gU3R1ZWJuZXIg
PGhlaWtvQHNudGVjaC5kZT4KPiA+Pj4gQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwo+ID4+PiBDYzogbGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4+
PiBDYzogbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZwo+ID4+PiAtLS0KPiA+Pj4gIGRyaXZl
cnMvbWZkL3JrODA4LmMgfCAxMSArKy0tLS0tLS0tLQo+ID4+PiAgMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKPiA+Pj4KPiA+Pj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbWZkL3JrODA4LmMgYi9kcml2ZXJzL21mZC9yazgwOC5jCj4gPj4+IGluZGV4IGE2OWE2
NzQyZWNkYy4uNjE2ZTQ0ZTdlZjk4IDEwMDY0NAo+ID4+PiAtLS0gYS9kcml2ZXJzL21mZC9yazgw
OC5jCj4gPj4+ICsrKyBiL2RyaXZlcnMvbWZkL3JrODA4LmMKPiA+Pj4gQEAgLTU1MCw3ICs1NTAs
NyBAQCBzdGF0aWMgaW50IHJrODA4X3Byb2JlKHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQsCj4g
Pj4+ICAgICAgICAgY29uc3Qgc3RydWN0IG1mZF9jZWxsICpjZWxsczsKPiA+Pj4gICAgICAgICBp
bnQgbnJfcHJlX2luaXRfcmVnczsKPiA+Pj4gICAgICAgICBpbnQgbnJfY2VsbHM7Cj4gPj4+IC0g
ICAgICAgaW50IHBtX29mZiA9IDAsIG1zYiwgbHNiOwo+ID4+PiArICAgICAgIGludCBtc2IsIGxz
YjsKPiA+Pj4gICAgICAgICB1bnNpZ25lZCBjaGFyIHBtaWNfaWRfbXNiLCBwbWljX2lkX2xzYjsK
PiA+Pj4gICAgICAgICBpbnQgcmV0Owo+ID4+PiAgICAgICAgIGludCBpOwo+ID4+PiBAQCAtNjc0
LDE2ICs2NzQsOSBAQCBzdGF0aWMgaW50IHJrODA4X3Byb2JlKHN0cnVjdCBpMmNfY2xpZW50ICpj
bGllbnQsCj4gPj4+ICAgICAgICAgICAgICAgICBnb3RvIGVycl9pcnE7Cj4gPj4+ICAgICAgICAg
fQo+ID4+Pgo+ID4+PiAtICAgICAgIHBtX29mZiA9IG9mX3Byb3BlcnR5X3JlYWRfYm9vbChucCwK
PiA+Pj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAicm9ja2NoaXAsc3lzdGVtLXBv
d2VyLWNvbnRyb2xsZXIiKTsKPiA+Pj4gLSAgICAgICBpZiAocG1fb2ZmICYmICFwbV9wb3dlcl9v
ZmYpIHsKPiA+Pj4gKyAgICAgICBpZiAob2ZfcHJvcGVydHlfcmVhZF9ib29sKG5wLAo+ID4+PiAi
cm9ja2NoaXAsc3lzdGVtLXBvd2VyLWNvbnRyb2xsZXIiKSkgewo+ID4+PiAgICAgICAgICAgICAg
ICAgcms4MDhfaTJjX2NsaWVudCA9IGNsaWVudDsKPiA+Pj4gICAgICAgICAgICAgICAgIHBtX3Bv
d2VyX29mZiA9IHJrODA4LT5wbV9wd3JvZmZfZm47Cj4gPj4+IC0gICAgICAgfQo+ID4+PiAtCj4g
Pj4+IC0gICAgICAgaWYgKHBtX29mZiAmJiAhcG1fcG93ZXJfb2ZmX3ByZXBhcmUpIHsKPiA+Pj4g
LSAgICAgICAgICAgICAgIGlmICghcms4MDhfaTJjX2NsaWVudCkKPiA+Pj4gLSAgICAgICAgICAg
ICAgICAgICAgICAgcms4MDhfaTJjX2NsaWVudCA9IGNsaWVudDsKPiA+Pj4gICAgICAgICAgICAg
ICAgIHBtX3Bvd2VyX29mZl9wcmVwYXJlID0gcms4MDgtPnBtX3B3cm9mZl9wcmVwX2ZuOwo+ID4+
PiAgICAgICAgIH0KPiA+Pj4KPiA+Pgo+ID4+IEkgZ2F2ZSB0aGlzIGEgdHJ5IG9uIG15IFJvY2s5
NjAgYW5kIE9kcm9pZCBOMQo+ID4+IGJvdGggZ290IGtlcm5lbCBwYW5pYyBiZWxvdy4KPiA+Cj4g
PiBJIHNlZSB0aGUgc2FtZSBvbiByazMzOTktcm9jLXBjLgo+IFRoaXMgaXMgbm8gcGFuaWMsIGl0
J3MgYSBoYXJtbGVzcyB3YXJuaW5nLgoKT2sgYnV0IG15IGRldmljZSBkbyBub3QgY29tZSB1cCBj
bGVhbmx5IGFmdGVyIHRoYXQsIGl0IGdldCBzdHVjayBpbgp1LWJvb3QgaW4gbmV4dCBib290LgoK
PiBUaGUgaTJjIGNvcmUgbm93YWRheXMgZXhwZWN0cyBhIHNwZWNpYWxseSBtYXJrZWQgaTJjIHRy
YW5zZmVyIGZ1bmN0aW9uCj4gbGF0ZSBpbiB0aGUgcG93ZXJkb3duIGN5Y2xlOgoKWW91IGNhbiBs
b29rIGludG8gc2ltaWxhciBjb21taXQuCmQ3ODUzMzRhMGQ1ZGVmZjMwYTQ4N2M3NDMyNGI4NDJk
MjE3OTU1M2QgKG1mZDogczJtcHMxMTogQWRkIG1hbnVhbApzaHV0ZG93biBtZXRob2QgZm9yIE9k
cm9pZCBYVTMpCgo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtcmszeC5j
IGIvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1yazN4LmMKPiBpbmRleCAxYTMzMDA3YjAzZTkuLmNl
YzExNWUwYWZhNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLXJrM3guYwo+
ICsrKyBiL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtcmszeC5jCj4gQEAgLTExMjYsNiArMTEyNiw3
IEBAIHN0YXRpYyB1MzIgcmszeF9pMmNfZnVuYyhzdHJ1Y3QgaTJjX2FkYXB0ZXIgKmFkYXApCj4K
PiAgc3RhdGljIGNvbnN0IHN0cnVjdCBpMmNfYWxnb3JpdGhtIHJrM3hfaTJjX2FsZ29yaXRobSA9
IHsKPiAgICAgIC5tYXN0ZXJfeGZlciAgICAgICAgPSByazN4X2kyY194ZmVyLAo+ICsgICAgLm1h
c3Rlcl94ZmVyX2F0b21pYyAgICA9IHJrM3hfaTJjX3hmZXIsIC8qIHVzYWJsZSBmb3IgUE1JQyBw
b3dlcm9mZiAqLwo+ICAgICAgLmZ1bmN0aW9uYWxpdHkgICAgICAgID0gcmszeF9pMmNfZnVuYywK
PiAgfTsKPgo+IC0tLQo+IEl0IGlzIG9ubHkgdXNlZCBmb3IgcG93ZXJkb3duLiBUaGUgcmVndWxh
ciBpMmMgeGZlciBmdW5jdGlvbiB3b3Jrcy4KPgo+IEhlaWtvLCBzaG91bGQgSSBzZW5kIGEgZm9y
bWFsIHBhdGNoIGZvciB0aGF0Pwo+Cj4gU29lcmVuCj4KPiA+Cj4gPj4KPiA+PiBbICAgNTguMzA1
ODY4XSB4aGNpLWhjZCB4aGNpLWhjZC4wLmF1dG86IFVTQiBidXMgNSBkZXJlZ2lzdGVyZWQKPiA+
PiBbICAgNTguMzA2NzQ3XSByZWJvb3Q6IFBvd2VyIGRvd24KPiA+PiBbICAgNTguMzA3MTA2XSAt
LS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0KPiA+PiBbICAgNTguMzA3NTEwXSBO
byBhdG9taWMgSTJDIHRyYW5zZmVyIGhhbmRsZXIgZm9yICdpMmMtMCcKPiA+PiBbICAgNTguMzA4
MDA3XSBXQVJOSU5HOiBDUFU6IDAgUElEOiAxIGF0IGRyaXZlcnMvaTJjL2kyYy1jb3JlLmg6NDEK
PiA+PiBpMmNfdHJhbnNmZXIrMHhlNC8weGY4Cj4gPj4gWyAgIDU4LjMwODY5Nl0gTW9kdWxlcyBs
aW5rZWQgaW46IHNuZF9zb2NfaGRtaV9jb2RlYyBkd19oZG1pX2kyc19hdWRpbwo+ID4+IHJvY2tj
aGlwZHJtIGFuYWxvZ2l4X2RwIGJyY21mbWFjIG52bWUgZHdfbWlwaV9kc2kgbnZtZV9jb3JlIGR3
X2hkbWkKPiA+PiBwYW5mcm9zdCBjZWMgYnJjbXV0aWwgZHJtX2ttc19oZWxwZXIgZ3B1X3NjaGVk
IGNmZzgwMjExIGhjaV91YXJ0IGRybQo+ID4+IGJ0YmNtIGNyY3QxMGRpZl9jZSBzbmRfc29jX3Np
bXBsZV9jYXJkIGJsdWV0b290aCBzbmRfc29jX3JvY2tjaGlwX2kycwo+ID4+IHNuZF9zb2Nfc2lt
cGxlX2NhcmRfdXRpbHMgc25kX3NvY19yb2NrY2hpcF9wY20gcGh5X3JvY2tjaGlwX3BjaWUKPiA+
PiBlY2RoX2dlbmVyaWMgcnRjX3JrODA4IGVjYyBwY2llX3JvY2tjaGlwX2hvc3QgcmZraWxsIHJv
Y2tjaGlwX3RoZXJtYWwKPiA+PiBpcF90YWJsZXMgeF90YWJsZXMgaXB2NiBuZl9kZWZyYWdfaXB2
Ngo+ID4+IFsgICA1OC4zMTIxNTBdIENQVTogMCBQSUQ6IDEgQ29tbTogc2h1dGRvd24gTm90IHRh
aW50ZWQKPiA+PiA1LjUuMC1yYzEtZGlydHkgIzEKPiA+PiBbICAgNTguMzEyNzI1XSBIYXJkd2Fy
ZSBuYW1lOiA5NmJvYXJkcyBSb2NrOTYwIChEVCkKPiA+PiBbICAgNTguMzEzMTMxXSBwc3RhdGU6
IDYwMDAwMDg1IChuWkN2IGRhSWYgLVBBTiAtVUFPKQo+ID4+IFsgICA1OC4zMTM1NTFdIHBjIDog
aTJjX3RyYW5zZmVyKzB4ZTQvMHhmOAo+ID4+IFsgICA1OC4zMTM4ODldIGxyIDogaTJjX3RyYW5z
ZmVyKzB4ZTQvMHhmOAo+ID4+IFsgICA1OC4zMTQyMjVdIHNwIDogZmZmZjgwMDAxMDA0YmIwMAo+
ID4+IFsgICA1OC4zMTQ1MTZdIHgyOTogZmZmZjgwMDAxMDA0YmIwMCB4Mjg6IGZmZmYwMDAwN2Qy
MDgwMDAKPiA+PiBbICAgNTguMzE0OTgxXSB4Mjc6IDAwMDAwMDAwMDAwMDAwMDAgeDI2OiAwMDAw
MDAwMDAwMDAwMDAwCj4gPj4gWyAgIDU4LjMxNTQ0Nl0geDI1OiAwMDAwMDAwMDAwMDAwMDAwIHgy
NDogMDAwMDAwMDAwMDAwMDAwOAo+ID4+IFsgICA1OC4zMTU5MTBdIHgyMzogMDAwMDAwMDAwMDAw
MDAwMCB4MjI6IGZmZmY4MDAwMTAwNGJjNzQKPiA+PiBbICAgNTguMzE2Mzc1XSB4MjE6IDAwMDAw
MDAwMDAwMDAwMDIgeDIwOiBmZmZmODAwMDEwMDRiYjU4Cj4gPj4gWyAgIDU4LjMxNjg0MV0geDE5
OiBmZmZmMDAwMDc4NGYwODgwIHgxODogMDAwMDAwMDAwMDAwMDAxMAo+ID4+IFsgICA1OC4zMTcz
MDVdIHgxNzogMDAwMDAwMDAwMDAwMDAwMSB4MTY6IDAwMDAwMDAwMDAwMDAwMTkKPiA+PiBbICAg
NTguMzE3NzcwXSB4MTU6IGZmZmZmZmZmZmZmZmZmZmYgeDE0OiBmZmZmODAwMDExODM5OGM4Cj4g
Pj4gWyAgIDU4LjMxODIzNl0geDEzOiBmZmZmODAwMDkwMDRiODY3IHgxMjogZmZmZjgwMDAxMDA0
Yjg2Zgo+ID4+IFsgICA1OC4zMTg3MDFdIHgxMTogZmZmZjgwMDAxMTg1MTAwMCB4MTA6IGZmZmY4
MDAwMTAwNGI3ZjAKPiA+PiBbICAgNTguMzE5MTY2XSB4OSA6IDAwMDAwMDAwZmZmZmZmZDAgeDgg
OiBmZmZmODAwMDEwNjk5YWQ4Cj4gPj4gWyAgIDU4LjMxOTYzMV0geDcgOiAwMDAwMDAwMDAwMDAw
MjY1IHg2IDogZmZmZjgwMDAxMWEyMGJlOQo+ID4+IFsgICA1OC4zMjAwOTZdIHg1IDogMDAwMDAw
MDAwMDAwMDAwMCB4NCA6IDAwMDAwMDAwMDAwMDAwMDAKPiA+PiBbICAgNTguMzIwNTYxXSB4MyA6
IDAwMDAwMDAwZmZmZmZmZmYgeDIgOiBmZmZmODAwMDExODUxYWI4Cj4gPj4gWyAgIDU4LjMyMTAy
Nl0geDEgOiBkMzc1YzBkNGY0NzUxZjAwIHgwIDogMDAwMDAwMDAwMDAwMDAwMAo+ID4+IFsgICA1
OC4zMjE0OTFdIENhbGwgdHJhY2U6Cj4gPj4gWyAgIDU4LjMyMTcxMF0gIGkyY190cmFuc2Zlcisw
eGU0LzB4ZjgKPiA+PiBbICAgNTguMzIyMDIwXSAgcmVnbWFwX2kyY19yZWFkKzB4NWMvMHg5OAo+
ID4+IFsgICA1OC4zMjIzNTBdICBfcmVnbWFwX3Jhd19yZWFkKzB4Y2MvMHgxMzgKPiA+PiBbICAg
NTguMzIyNjk0XSAgX3JlZ21hcF9idXNfcmVhZCsweDNjLzB4NzAKPiA+PiBbICAgNTguMzIzMDM0
XSAgX3JlZ21hcF9yZWFkKzB4NjAvMHhlMAo+ID4+IFsgICA1OC4zMjMzNDFdICBfcmVnbWFwX3Vw
ZGF0ZV9iaXRzKzB4YzgvMHgxMDgKPiA+PiBbICAgNTguMzIzNzA3XSAgcmVnbWFwX3VwZGF0ZV9i
aXRzX2Jhc2UrMHg2MC8weDkwCj4gPj4gWyAgIDU4LjMyNDA5OV0gIHJrODA4X2RldmljZV9zaHV0
ZG93bisweDM4LzB4NTAKPiA+PiBbICAgNTguMzI0NDc2XSAgbWFjaGluZV9wb3dlcl9vZmYrMHgy
NC8weDMwCj4gPj4gWyAgIDU4LjMyNDgyM10gIGtlcm5lbF9wb3dlcl9vZmYrMHg2NC8weDcwCj4g
Pj4gWyAgIDU4LjMyNTE1OV0gIF9fZG9fc3lzX3JlYm9vdCsweDE1Yy8weDI0MAo+ID4+IFsgICA1
OC4zMjU1MDRdICBfX2FybTY0X3N5c19yZWJvb3QrMHgyMC8weDI4Cj4gPj4gWyAgIDU4LjMyNTg1
OF0gIGVsMF9zdmNfY29tbW9uLmNvbnN0cHJvcC4yKzB4ODgvMHgxNTAKPiA+PiBbICAgNTguMzI2
Mjc5XSAgZWwwX3N2Y19oYW5kbGVyKzB4MjAvMHg4MAo+ID4+IFsgICA1OC4zMjY2MDddICBlbDBf
c3luY19oYW5kbGVyKzB4MTE4LzB4MTg4Cj4gPj4gWyAgIDU4LjMyNjk2MF0gIGVsMF9zeW5jKzB4
MTQwLzB4MTgwCj4gPj4gWyAgIDU4LjMyNzI1MV0gLS0tWyBlbmQgdHJhY2UgYjFkZTM5ZDAzZDcy
NGQwMSBdLS0tCj4gPj4KPiA+PiAtQW5hbmQKPiA+Pgo+ID4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0Cj4gPj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4+IGh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKPiA+Pgo+
ID4KPiA+IEdydcOfLAo+Ci1BbmFuZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
