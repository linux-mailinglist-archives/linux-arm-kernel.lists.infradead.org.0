Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFAB1C00CC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 17:51:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KvMoBxHSW0zGqqcnCZkYu5XSCG2eD9FEDD6oQknMuY4=; b=S8AoXEZDezENG+
	3dGBzf5FUoLfnLkm/6K28ioL2uSypN2gJxCFRe6ZUwrx+28TpsSnWMn4kWHmNXaI0ntGSqB7A3ME5
	XoZPqo9v5T1g16WkrL+r7JgPeteGtkhhl6VGGST0OeL8fyQwhmYfai8G5Te2pczAqXLxlZDEEt75E
	wzGKs3lbznRxq7xHNMCcgGsIG/LkLYmdviwfKuwcqpaZcU7rYe0k2kyYFOhfXwvgihE0Q2FHDBXzI
	ZpJQUeaY8iaz32ywz0JXY5UoirseU1sTCIstw9UFsyhG2rzUjkz5Q0udG0GK7Ww/rSTUjUfUf7ZXz
	3BNPQuTxqlXaVzFejibg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUBT6-0007bE-O4; Thu, 30 Apr 2020 15:51:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUBSf-0007Pi-Ml; Thu, 30 Apr 2020 15:50:57 +0000
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
 [209.85.208.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 27EDC208DB;
 Thu, 30 Apr 2020 15:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588261851;
 bh=AWlUUUEQmtBP6tJdyVBdRVvYUBKUIGdA1MEl0dfcZ1c=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=blFWQQqDR5s9d3ZEJt7rWSG47Ui51YmWTKkh3itQ/Sp3SU0kVuXu63FPnOk2WS56J
 zW77QmZcKSZJszbq/CKFhEiS+PSGTxjHBYA2jEAYMkYU/coTMAB0qLBIOeZbeo9tlb
 28HbThPQWnva6dMg986HdyvMzNJmd6p02ghaf77g=
Received: by mail-ed1-f46.google.com with SMTP id w2so4934479edx.4;
 Thu, 30 Apr 2020 08:50:51 -0700 (PDT)
X-Gm-Message-State: AGi0Puboyrn9zf8Nt5NSAWbyXmh06vO2jppo47oA+AySrTTwt4iOr+XU
 K5WQk5mxSxAT2Ug8pHpPMmycfD7RUiRL0+qu1g==
X-Google-Smtp-Source: APiQypLNtAe4WGt202vWspF3DK8VQGAkLi64NfyhwMTDL4r2HZtxav6S7QTWNUTBLfZims+Y6t3pKABbZl+n/V80byk=
X-Received: by 2002:a05:6402:48b:: with SMTP id
 k11mr3417709edv.47.1588261849430; 
 Thu, 30 Apr 2020 08:50:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAAOTY_86d-UryKQrLy8-zjTbrTRrHL4k3x=bx1KqvWxPL5jj2Q@mail.gmail.com>
 <AOsApgASCAa7imxfuvZwXqq0.3.1588228291133.Hmail.bernard@vivo.com>
In-Reply-To: <AOsApgASCAa7imxfuvZwXqq0.3.1588228291133.Hmail.bernard@vivo.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Thu, 30 Apr 2020 23:50:38 +0800
X-Gmail-Original-Message-ID: <CAAOTY_8o239n_y4LJiyU5978e87knZmNRJwSHZbEDxLLasiJjw@mail.gmail.com>
Message-ID: <CAAOTY_8o239n_y4LJiyU5978e87knZmNRJwSHZbEDxLLasiJjw@mail.gmail.com>
Subject: Re: Re: [PATCH] drm/mediatek: cleanup coding style in mediatek a bit
To: Bernard <bernard@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_085054_713533_5E4DE19D 
X-CRM114-Status: GOOD (  19.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 opensource.kernel@vivo.com, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEJlcm5hcmQ6CgpCZXJuYXJkIDxiZXJuYXJkQHZpdm8uY29tPiDmlrwgMjAyMOW5tDTmnIgz
MOaXpSDpgLHlm5sg5LiL5Y2IMjozMuWvq+mBk++8mgo+Cj4KPgo+IOWPkeS7tuS6uu+8mkNodW4t
S3VhbmcgSHUgPGNodW5rdWFuZy5odUBrZXJuZWwub3JnPgo+IOWPkemAgeaXpeacn++8mjIwMjAt
MDQtMjkgMjI6MjI6NTAKPiDmlLbku7bkurrvvJpCZXJuYXJkIFpoYW8gPGJlcm5hcmRAdml2by5j
b20+Cj4g5oqE6YCB5Lq677yaQ2h1bi1LdWFuZyBIdSA8Y2h1bmt1YW5nLmh1QGtlcm5lbC5vcmc+
LFBoaWxpcHAgWmFiZWwgPHAuemFiZWxAcGVuZ3V0cm9uaXguZGU+LERhdmlkIEFpcmxpZSA8YWly
bGllZEBsaW51eC5pZT4sRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPixNYXR0aGlhcyBC
cnVnZ2VyIDxtYXR0aGlhcy5iZ2dAZ21haWwuY29tPixEUkkgRGV2ZWxvcG1lbnQgPGRyaS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmc+LExpbnV4IEFSTSA8bGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnPiwibW9kZXJhdGVkIGxpc3Q6QVJNL01lZGlhdGVrIFNvQyBzdXBwb3J0
IiA8bGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZz4sbGludXgta2VybmVsIDxsaW51
eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnPixvcGVuc291cmNlLmtlcm5lbEB2aXZvLmNvbQo+IOS4
u+mimO+8mlJlOiBbUEFUQ0hdIGRybS9tZWRpYXRlazogY2xlYW51cCBjb2Rpbmcgc3R5bGUgaW4g
bWVkaWF0ZWsgYSBiaXQ+SGksIEJlcm5hcmQ6Cj4gPgo+ID5CZXJuYXJkIFpoYW8gPGJlcm5hcmRA
dml2by5jb20+IOaWvCAyMDIw5bm0NOaciDI35pelIOmAseS4gCDkuIvljYgzOjUz5a+r6YGT77ya
Cj4gPj4KPiA+PiBUaGlzIGNvZGUgY2hhbmdlIGlzIHRvIG1ha2UgY29kZSBiaXQgbW9yZSByZWFk
YWJsZS4KPiA+PiBPcHRpbWlzZSBhcnJheSBzaXplIGFsaWduIHRvIEhETUkgbWFjcm8gZGVmaW5l
Lgo+ID4+IEFkZCBjaGVjayBpZiBsZW4gaXMgb3ZlcmFuZ2UuCj4gPgo+ID5PbmUgcGF0Y2ggc2hv
dWxkIGp1c3QgZG8gb25lIHRoaW5nLCBidXQgdGhpcyBkbyB0aHJlZSB0aGluZ3MuCj4gPlNvIGJy
ZWFrIHRoaXMgaW50byB0aHJlZSBwYXRjaGVzLgo+ID4KPiA+UmVnYXJkcywKPiA+Q2h1bi1LdWFu
Zy4KPgo+IEhpCj4gVGhpcyBvcHRpbWl6YXRpb24gaXMgbWFpbmx5IHRvIG1ha2UgdGhlIGNvZGUg
YSBiaXQgcmVhZGFibGUuCj4gVGhlc2UgbW9kaWZpY2F0aW9ucyBhcmUgcmVsYXRlZCwgbWFpbiBp
biBzZXZlcmFsIHJlbGF0ZWQgZnVuY3Rpb24gY2FsbHMgaW4gdGhlIHNhbWUgZmlsZS4KPiBJIHdh
cyBhIGJpdCBjb25mdXNlZCB0aGF0IGlmIGl0IGlzIHJlYWxseSBuZWNlc3NhcnkgdG8gY2hhbmdl
IHRvIHRocmVlIHNlcGFyYXRlIHBhdGNoIHN1Ym1pc3Npb25zPwo+Cj4gUmVnYXJkcwo+IEJlcm5h
cmQKPgo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTogQmVybmFyZCBaaGFvIDxiZXJuYXJkQHZpdm8u
Y29tPgo+ID4+IC0tLQo+ID4+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2hkbWkuYyB8
IDIyICsrKysrKysrKysrLS0tLS0tLS0tLS0KPiA+PiAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2Vy
dGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210
a19oZG1pLmMKPiA+PiBpbmRleCBmZjQzYTNkODA0MTAuLjQwZmI1MTU0ZWQ1ZCAxMDA2NDQKPiA+
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2hkbWkuYwo+ID4+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5jCj4gPj4gQEAgLTMxMSwxNSArMzExLDE1
IEBAIHN0YXRpYyB2b2lkIG10a19oZG1pX2h3X3NlbmRfaW5mb19mcmFtZShzdHJ1Y3QgbXRrX2hk
bWkgKmhkbWksIHU4ICpidWZmZXIsCj4gPj4gICAgICAgICB1OCBjaGVja3N1bTsKPiA+PiAgICAg
ICAgIGludCBjdHJsX2ZyYW1lX2VuID0gMDsKPiA+Pgo+ID4+IC0gICAgICAgZnJhbWVfdHlwZSA9
ICpidWZmZXI7Cj4gPj4gLSAgICAgICBidWZmZXIgKz0gMTsKPiA+PiAtICAgICAgIGZyYW1lX3Zl
ciA9ICpidWZmZXI7Cj4gPj4gLSAgICAgICBidWZmZXIgKz0gMTsKPiA+PiAtICAgICAgIGZyYW1l
X2xlbiA9ICpidWZmZXI7Cj4gPj4gLSAgICAgICBidWZmZXIgKz0gMTsKPiA+PiAtICAgICAgIGNo
ZWNrc3VtID0gKmJ1ZmZlcjsKPiA+PiAtICAgICAgIGJ1ZmZlciArPSAxOwo+ID4+ICsgICAgICAg
ZnJhbWVfdHlwZSA9ICpidWZmZXIrKzsKPiA+PiArICAgICAgIGZyYW1lX3ZlciA9ICpidWZmZXIr
KzsKPiA+PiArICAgICAgIGZyYW1lX2xlbiA9ICpidWZmZXIrKzsKPiA+PiArICAgICAgIGNoZWNr
c3VtID0gKmJ1ZmZlcisrOwoKVGhpcyBwYXJ0IGxvb2tzIGxpa2UgY2xlYW51cCwgc28ga2VlcCBp
biB0aGlzIHBhdGNoLgoKPiA+PiAgICAgICAgIGZyYW1lX2RhdGEgPSBidWZmZXI7Cj4gPj4gKyAg
ICAgICBpZiAoKGZyYW1lX2xlbiArIEhETUlfSU5GT0ZSQU1FX0hFQURFUl9TSVpFKSA+IGxlbikg
ewo+ID4+ICsgICAgICAgICAgICAgICBkZXZfZXJyKGhkbWktPmRldiwgIldyb25nIGZyYW1lIGxl
bjogJWRcbiIsIGZyYW1lX2xlbjsKPiA+PiArICAgICAgICAgICAgICAgcmV0dXJuOwoKVGhpcyBp
cyBlcnJvciBjaGVja2luZywgbm90IGNsZWFudXAgdGhlIGNvZGluZyBzdHlsZSwgc28gbW92ZSB0
aGlzIHRvCmFub3RoZXIgcGF0Y2guCgo+ID4+ICsgICAgICAgfQo+ID4+Cj4gPj4gICAgICAgICBk
ZXZfZGJnKGhkbWktPmRldiwKPiA+PiAgICAgICAgICAgICAgICAgImZyYW1lX3R5cGU6MHgleCxm
cmFtZV92ZXI6MHgleCxmcmFtZV9sZW46MHgleCxjaGVja3N1bToweCV4XG4iLAo+ID4+IEBAIC05
ODIsNyArOTgyLDcgQEAgc3RhdGljIGludCBtdGtfaGRtaV9zZXR1cF9hdmlfaW5mb2ZyYW1lKHN0
cnVjdCBtdGtfaGRtaSAqaGRtaSwKPiA+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUpCj4gPj4gIHsKPiA+PiAgICAg
ICAgIHN0cnVjdCBoZG1pX2F2aV9pbmZvZnJhbWUgZnJhbWU7Cj4gPj4gLSAgICAgICB1OCBidWZm
ZXJbMTddOwo+ID4+ICsgICAgICAgdTggYnVmZmVyW0hETUlfSU5GT0ZSQU1FX0hFQURFUl9TSVpF
ICsgSERNSV9BVklfSU5GT0ZSQU1FX1NJWkVdOwoKVGhpcyBpcyB0byBzeW1ib2xpemUgdGhlIG51
bWJlciwgc3ltYm9saXphdGlvbiBpcyBtb3JlIHRoYW4gY2xlYW51cC4KClJlZ2FyZHMsCkNodW4t
S3VhbmcuCgo+ID4+ICAgICAgICAgc3NpemVfdCBlcnI7Cj4gPj4KPiA+PiAgICAgICAgIGVyciA9
IGRybV9oZG1pX2F2aV9pbmZvZnJhbWVfZnJvbV9kaXNwbGF5X21vZGUoJmZyYW1lLAo+ID4+IEBA
IC0xMDA4LDcgKzEwMDgsNyBAQCBzdGF0aWMgaW50IG10a19oZG1pX3NldHVwX3NwZF9pbmZvZnJh
bWUoc3RydWN0IG10a19oZG1pICpoZG1pLAo+ID4+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBjb25zdCBjaGFyICpwcm9kdWN0KQo+ID4+ICB7Cj4gPj4gICAgICAgICBz
dHJ1Y3QgaGRtaV9zcGRfaW5mb2ZyYW1lIGZyYW1lOwo+ID4+IC0gICAgICAgdTggYnVmZmVyWzI5
XTsKPiA+PiArICAgICAgIHU4IGJ1ZmZlcltIRE1JX0lORk9GUkFNRV9IRUFERVJfU0laRSArIEhE
TUlfU1BEX0lORk9GUkFNRV9TSVpFXTsKPiA+PiAgICAgICAgIHNzaXplX3QgZXJyOwo+ID4+Cj4g
Pj4gICAgICAgICBlcnIgPSBoZG1pX3NwZF9pbmZvZnJhbWVfaW5pdCgmZnJhbWUsIHZlbmRvciwg
cHJvZHVjdCk7Cj4gPj4gQEAgLTEwMzEsNyArMTAzMSw3IEBAIHN0YXRpYyBpbnQgbXRrX2hkbWlf
c2V0dXBfc3BkX2luZm9mcmFtZShzdHJ1Y3QgbXRrX2hkbWkgKmhkbWksCj4gPj4gIHN0YXRpYyBp
bnQgbXRrX2hkbWlfc2V0dXBfYXVkaW9faW5mb2ZyYW1lKHN0cnVjdCBtdGtfaGRtaSAqaGRtaSkK
PiA+PiAgewo+ID4+ICAgICAgICAgc3RydWN0IGhkbWlfYXVkaW9faW5mb2ZyYW1lIGZyYW1lOwo+
ID4+IC0gICAgICAgdTggYnVmZmVyWzE0XTsKPiA+PiArICAgICAgIHU4IGJ1ZmZlcltIRE1JX0lO
Rk9GUkFNRV9IRUFERVJfU0laRSArIEhETUlfQVVESU9fSU5GT0ZSQU1FX1NJWkVdOwo+ID4+ICAg
ICAgICAgc3NpemVfdCBlcnI7Cj4gPj4KPiA+PiAgICAgICAgIGVyciA9IGhkbWlfYXVkaW9faW5m
b2ZyYW1lX2luaXQoJmZyYW1lKTsKPiA+PiAtLQo+ID4+IDIuMjYuMgo+ID4+Cj4gPj4KPiA+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+IExpbnV4
LW1lZGlhdGVrIG1haWxpbmcgbGlzdAo+ID4+IExpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVh
ZC5vcmcKPiA+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LW1lZGlhdGVrCj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0Cj4gTGludXgtbWVkaWF0ZWtA
bGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtbWVkaWF0ZWsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
