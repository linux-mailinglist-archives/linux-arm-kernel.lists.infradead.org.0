Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBA9ACEEC
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Sep 2019 15:31:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oesmiwa8cFo/Sa8O3MXFOwPNL9qrB1xM7FiI7cWHj+k=; b=jEjBDOnhpcL1xd
	Dou47x5LMQLW0mx3W8LRVLmRJNQmS78LsIsyA4cIf/54f1B607BiCl7PStTroTuoxRI4TR4OkAfdC
	3YbT7ybPnwuDxApCO6HR17j42vwwcKWJ+9DzEdiNowz0ss6/75+J8Zuwjc4W/xktvwKQe/S5gViZI
	+hwbamKWtSzCO2jecTJX9BkUau9BWRCxsYZVFhH2pq2B5EPy0JnrSiZjCrkUopAHAOyCSXMVitM7b
	RlhJPKzZNVYXkOz1i42WIQZqIvyd/GdNb3c3W3L1N8zEHVRyYLm7SSiho2EA6BlPlMbyi2Dbgo0mR
	4jvfoMYJvk3ABeIttXkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6xIE-0001CW-EL; Sun, 08 Sep 2019 13:31:50 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6xI9-0001CC-LU
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Sep 2019 13:31:46 +0000
Received: by mail-io1-xd42.google.com with SMTP id h144so22794863iof.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 08 Sep 2019 06:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=X36wmf2pELzyiFZg2q0AZrLC5LYQSeOEO3rN3+H57xE=;
 b=BimSHKNEyNzWb8hT9o7lZ2Nhdz/s4+lbiuzgpmVLSurdU1us2dnPcX4TK/Wg+cAbKH
 oVd2ZhdQAxE+a4fHS932+8og+uPsHLydHNkwp28Au5hrNzHhD8cr3C07Up6dpjg1L5We
 JVyoJQxbUyyXkNyXqmLr0TlbDB0A0f1mnJnrP+RO3nZlF62DmwCnrNEka/VcHUNZxe51
 9sRid72T1Jwe7r5ctCkCBVTqG6Qtm+a82yBZGA1Nj4Vop0YsfYVXoC7E267+P503exA7
 CzR0t2upSy3AgcUA0Vj9I+mnENWe6Wc3v0eLkyYP4tAeZKwM2W5A6U7VsWdj+FSfltr8
 tltg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=X36wmf2pELzyiFZg2q0AZrLC5LYQSeOEO3rN3+H57xE=;
 b=MqWRW3WFYSVZdSJIqw0kjoPU31ye4q8v6zXXI5lDsVUS1Cb2aG6xMk2TYYI8fYh2WE
 6VtsCX27/mre6ADi+yzTE0Cpa+FSPWJZLKxLQkk3xCwIst8LKegburKolpCrxLiOgfPC
 P/GT+l45wpg8+IN3SPfBncB/0EzthJoUkcfsLLYF2Nlh52+bC7UVxOb/yliWxnTrnrDf
 G4H3qnCYrA0vJ4b/FzC7i4tiRFv6Jdnq/jKc61wcW8GwYEefXWIwXR4ZXIPS1KiGSPGk
 LWHSUjhD1FLCCts5rck4D7MQmHBxw2RqzVdqNhIP44JXFjX6or7f6R7MNeBU/lQwI4K9
 1xzA==
X-Gm-Message-State: APjAAAWfN3ZabaQ/HZus0+YuPDdXzejI1t6GUuGOOU+AhUap/XSGhA19
 3CswHULNaUdCMQuFshaTRIDdW3Q+Ll9e2C+caWO6Qg==
X-Google-Smtp-Source: APXvYqwzM2/smviUmWv4GATCXByKYmZBZv6kVqGnmRGoYGjQ1Na3OObolYsXeau8eo8I2KisMILUm2hc4DvR+jJL9Aw=
X-Received: by 2002:a5d:8457:: with SMTP id w23mr3350922ior.189.1567949504203; 
 Sun, 08 Sep 2019 06:31:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190725131257.6142-1-brgl@bgdev.pl>
 <CAK8P3a1FXyRRi5q48h-=egFjgoRJvy6_zuO9MQaAOMA-bsJKRA@mail.gmail.com>
 <CAMRc=Me_7aw_RvU_tZnVUgduN2wWYGqJ7hQirQ2RLzxGiPujvQ@mail.gmail.com>
 <CAMRc=MdCviMA4gakqFS3+F-nU2XkdmmZbCb-m1mBJdGRHufKGg@mail.gmail.com>
 <27eb964a-bc6c-3a0d-c2c4-48e908465986@ti.com>
 <CAMpxmJX7osgdzx1Lc=627RpHZDs+ha8a6=AnhaQJ5HkLVp-xKg@mail.gmail.com>
 <CAK8P3a0+kfDbGrcFi5TLxNNpoOM6u6KRW+PaLFNSQJ9BTxX=-w@mail.gmail.com>
In-Reply-To: <CAK8P3a0+kfDbGrcFi5TLxNNpoOM6u6KRW+PaLFNSQJ9BTxX=-w@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Sun, 8 Sep 2019 15:31:33 +0200
Message-ID: <CAMRc=Mdsfbh1nF1a23Anig=w42s7=WzS3Uz7KK1P1aRNP2kFvg@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] ARM: make DaVinci part of the ARM v5 multiplatform
 build
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_063145_754489_5CC37A7B 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: David Lechner <david@lechnology.com>, Kevin Hilman <khilman@kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

c29iLiwgNyB3cnogMjAxOSBvIDEwOjIxIEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+IG5h
cGlzYcWCKGEpOgo+Cj4gT24gV2VkLCBBdWcgMjgsIDIwMTkgYXQgOTo1NSBBTSBCYXJ0b3N6IEdv
bGFzemV3c2tpCj4gPGJnb2xhc3pld3NraUBiYXlsaWJyZS5jb20+IHdyb3RlOgo+ID4gxZtyLiwg
Mjggc2llIDIwMTkgbyAwOTo0NCBTZWtoYXIgTm9yaSA8bnNla2hhckB0aS5jb20+IG5hcGlzYcWC
KGEpOgo+ID4KPiA+IEFjdHVhbGx5IEkgdGVzdGVkIHRoaXMgd2l0aG91dCB0aGUgY2xvY2tzb3Vy
Y2UgY29udmVyc2lvbiBhbmQgaXQgd29ya3MKPiA+IC0gdGhlIHByZXZpb3VzIGRyaXZlciBzdGls
bCBzZWxlY3RzIHJlbGV2YW50IGNvbmZpZyBvcHRpb25zLiBCdXQgSQo+ID4gdGhpbmsgeW91J3Jl
IHJpZ2h0IC0gaXQncyB3b3J0aCBwaWNraW5nIHVwIGFsbCB0aGUgYnVnIGZpeGVzIGZyb20gdGhp
cwo+ID4gc2VyaWVzIGFuZCB0aGVuIG1lcmdpbmcgdGhlIHJlc3Qgb25jZSBkbTM2NSBpc3N1ZSBp
cyBmaXhlZC4KPgo+IEkganVzdCBoYWQgYW5vdGhlciBsb29rIGF0IHRoZSBzZXJpZXMgYW5kIGZv
dW5kIHRoYXQgdGhlIGRyaXZlciBmaXhlcwo+IChwYXRjaGVzIDEgYW5kIDIpIGFyZSBxdWV1ZWQg
aW4gbGludXgtbmV4dCwgYW5kIHBhdGNoIDMgd2FzIG1lcmdlZC4KPgo+IElmIHlvdSBsaWtlLCBJ
IGNvdWxkIHB1dCB0aGUgcmVtYWluaW5nIHR3byBwYXRjaGVzIGludG8gdGhlIGFybS9sYXRlIGJy
YW5jaAo+IGFuZCBzZW5kIHRoYXQgYWZ0ZXIgdGhlIG1lZGlhIGFuZCBzdGFnaW5nIHRyZWVzIGFy
ZSBtZXJnZWQgaW50byBtYWlubGluZS4KPgo+ICAgICAgIEFybmQKClN1cmUhIE1ha2VzIHNlbnNl
LgoKU2VraGFyOiB0aGlzIHNlcmllcyBkb2Vzbid0IGJyZWFrIGN1cnJlbnQgbWFpbmxpbmUgKGku
ZS4gd2l0aG91dCB0aGUKY2xvY2tzb3VyY2Ugc2VyaWVzKSBzbyBJIHRoaW5rIHdlJ3JlIHNhZmUg
ZXZlbiBmb3IgZG0zNjUuCgpCYXJ0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
