Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94AE91CC605
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 03:31:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dtm8aJfC+ESGF2JDbvQC7HdSzNtj2YC19KlrFRxfFkc=; b=nQ0OCgO2s8Mg34
	VuosinzDesQoJ/2chVo316iLPKA3+THHGJq2qXIVNtbGQRYEQF1lh2ewnU7HDJUFIHHMZqWH8vi3M
	BDJJq9KpWGZLSs3b2BLnQ9BJh8o2nFLWzIQbnqS7cVVrrtY7C3eAWEJNpLzZMvBYmyGAnqfJpwsyc
	3vB6C8svxiO21yk5fpcEiu7mznkTHcTIJSRXC3Ke30toDHYB57RPk9sVDRK499cWs11m80Pl/0lvw
	W32EJ9tfC6oWT3EJ/RcwRWEXbrthzxuX9f+93AmwdsiQFqO3TnZvA/1YHxYvskpXmbXbqbfb/nxyh
	Ir/zC0mv2nuU4PBuHI7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXaoA-0004Q7-3c; Sun, 10 May 2020 01:31:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXao1-0004P6-Px; Sun, 10 May 2020 01:31:03 +0000
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com
 [209.85.218.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3708524957;
 Sun, 10 May 2020 01:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589074261;
 bh=ZFWESm7BCWR/1W4jYyjzg2GMZbin6TOpjGg+VzUNEZw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=WixNi7vGq6fwF+jXK+YId/1rB8G+PTd4s4v9spXxhIej/fIqTIBM7l1xQ622g4SRs
 FJK4xHHtNzpB3AfmcDFaDThmjEcrTB2GPoJXeccEy7GlFLAUL4Jefturov6uDNdr0O
 F2R3x80oOncFEJNRshjB7qwvtjunQXppRuJOHWW0=
Received: by mail-ej1-f50.google.com with SMTP id s3so4797993eji.6;
 Sat, 09 May 2020 18:31:01 -0700 (PDT)
X-Gm-Message-State: AGi0PuaE9utzTXw1BXC/G7gsEr/AJ7uZCcgb6Ouv0Uaa9ZZVIFQaF+qj
 JfO91Ip6s/lzAQeYihX1kjCmaONrCRctneEm0Q==
X-Google-Smtp-Source: APiQypLLpbjrFxVDPm7x548/daha8AvlKc41zGr1ENz1S4CiuA/k3u8aVFCV/n89pbH/JXLI098lhHIujmbMaZ4UR7k=
X-Received: by 2002:a17:906:2503:: with SMTP id
 i3mr7553000ejb.293.1589074259573; 
 Sat, 09 May 2020 18:30:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200506124255.9477-1-bernard@vivo.com>
In-Reply-To: <20200506124255.9477-1-bernard@vivo.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Sun, 10 May 2020 09:30:49 +0800
X-Gmail-Original-Message-ID: <CAAOTY__L44OeoDeyhbSRQRiTSksDsW-H5c0VZNv_1h7yXC3Oww@mail.gmail.com>
Message-ID: <CAAOTY__L44OeoDeyhbSRQRiTSksDsW-H5c0VZNv_1h7yXC3Oww@mail.gmail.com>
Subject: Re: [PATCH] drm/mediatek: eliminate the magic number in array size
To: Bernard Zhao <bernard@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_183101_879431_31A4601B 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, opensource.kernel@vivo.com,
 David Airlie <airlied@linux.ie>, linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEJlcm5hcmQ6CgpCZXJuYXJkIFpoYW8gPGJlcm5hcmRAdml2by5jb20+IOaWvCAyMDIw5bm0
NeaciDbml6Ug6YCx5LiJIOS4i+WNiDg6NDPlr6vpgZPvvJoKPgo+IEVpbWluYXRlIHRoZSBtYWdp
YyBudW1iZXIgaW4gYXJyYXkgc2l6ZSwgdGhlcmUgbWFjcm8gZGVmaW5lcyBpbgo+IGhkbWkuaC4K
CkFwcGxpZWQgdG8gbWVkaWF0ZWstZHJtLW5leHQgWzFdLCB0aGFua3MuCgpbMV0gaHR0cHM6Ly9n
aXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvY2h1bmt1YW5nLmh1L2xpbnV4
LmdpdC9sb2cvP2g9bWVkaWF0ZWstZHJtLW5leHQKClJlZ2FyZHMsCkNodW4tS3VhbmcKCj4KPiBT
aWduZWQtb2ZmLWJ5OiBCZXJuYXJkIFpoYW8gPGJlcm5hcmRAdml2by5jb20+Cj4gLS0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5jIHwgNiArKystLS0KPiAgMSBmaWxlIGNo
YW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRp
YXRlay9tdGtfaGRtaS5jCj4gaW5kZXggZmY0M2EzZDgwNDEwLi40Yzk2MmM3ZjA2ZTUgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19oZG1pLmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2hkbWkuYwo+IEBAIC05ODIsNyArOTgyLDcgQEAgc3Rh
dGljIGludCBtdGtfaGRtaV9zZXR1cF9hdmlfaW5mb2ZyYW1lKHN0cnVjdCBtdGtfaGRtaSAqaGRt
aSwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9k
aXNwbGF5X21vZGUgKm1vZGUpCj4gIHsKPiAgICAgICAgIHN0cnVjdCBoZG1pX2F2aV9pbmZvZnJh
bWUgZnJhbWU7Cj4gLSAgICAgICB1OCBidWZmZXJbMTddOwo+ICsgICAgICAgdTggYnVmZmVyW0hE
TUlfSU5GT0ZSQU1FX0hFQURFUl9TSVpFICsgSERNSV9BVklfSU5GT0ZSQU1FX1NJWkVdOwo+ICAg
ICAgICAgc3NpemVfdCBlcnI7Cj4KPiAgICAgICAgIGVyciA9IGRybV9oZG1pX2F2aV9pbmZvZnJh
bWVfZnJvbV9kaXNwbGF5X21vZGUoJmZyYW1lLAo+IEBAIC0xMDA4LDcgKzEwMDgsNyBAQCBzdGF0
aWMgaW50IG10a19oZG1pX3NldHVwX3NwZF9pbmZvZnJhbWUoc3RydWN0IG10a19oZG1pICpoZG1p
LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBjaGFyICpw
cm9kdWN0KQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgaGRtaV9zcGRfaW5mb2ZyYW1lIGZyYW1lOwo+
IC0gICAgICAgdTggYnVmZmVyWzI5XTsKPiArICAgICAgIHU4IGJ1ZmZlcltIRE1JX0lORk9GUkFN
RV9IRUFERVJfU0laRSArIEhETUlfU1BEX0lORk9GUkFNRV9TSVpFXTsKPiAgICAgICAgIHNzaXpl
X3QgZXJyOwo+Cj4gICAgICAgICBlcnIgPSBoZG1pX3NwZF9pbmZvZnJhbWVfaW5pdCgmZnJhbWUs
IHZlbmRvciwgcHJvZHVjdCk7Cj4gQEAgLTEwMzEsNyArMTAzMSw3IEBAIHN0YXRpYyBpbnQgbXRr
X2hkbWlfc2V0dXBfc3BkX2luZm9mcmFtZShzdHJ1Y3QgbXRrX2hkbWkgKmhkbWksCj4gIHN0YXRp
YyBpbnQgbXRrX2hkbWlfc2V0dXBfYXVkaW9faW5mb2ZyYW1lKHN0cnVjdCBtdGtfaGRtaSAqaGRt
aSkKPiAgewo+ICAgICAgICAgc3RydWN0IGhkbWlfYXVkaW9faW5mb2ZyYW1lIGZyYW1lOwo+IC0g
ICAgICAgdTggYnVmZmVyWzE0XTsKPiArICAgICAgIHU4IGJ1ZmZlcltIRE1JX0lORk9GUkFNRV9I
RUFERVJfU0laRSArIEhETUlfQVVESU9fSU5GT0ZSQU1FX1NJWkVdOwo+ICAgICAgICAgc3NpemVf
dCBlcnI7Cj4KPiAgICAgICAgIGVyciA9IGhkbWlfYXVkaW9faW5mb2ZyYW1lX2luaXQoJmZyYW1l
KTsKPiAtLQo+IDIuMjYuMgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
