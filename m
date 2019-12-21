Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF354128A92
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 18:21:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4g+UIDUjHmO5bUYuj0qWNso7J/6aEDvTRGCcsb3pCNo=; b=esJhMoCHlY+Yuz
	xlqPX0u+nuwcA6rPkETDrTIRuWiYsAuXae18aUTmMfOgBIUShVI7z/fKPD22zRNE2i3HdK/gbMIdq
	AEVyt82ci/mBAROXpkj1o8M1BXArtb6HNeABR9jeOV4fTd8FO9uCLSnyHEfJNEcuazXk/SBY8ukPX
	zrF0/ivRHrQevuDi68rnFbP/iF1cjfxuD0DXB0ogl1sfu68BD8uBARtqo8sd6iIMzwH20d7/UpORR
	8icuyuBcOdk7DLDUjEN27cahzdeb2noF5CxtS8f6vOAb9cRi0uPognxgX48dDlO+8r69/HNFHE6MA
	2GskGei1ySgcNVGtpjrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiiRG-0006ja-JY; Sat, 21 Dec 2019 17:21:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiiR6-0006it-Ts
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Dec 2019 17:21:07 +0000
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
 [209.85.208.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 93E83222C2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 21 Dec 2019 17:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576948862;
 bh=ygQ+LLKc6onkKQohUjB4VeER1S5nL8ISyedIw3igvFQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=x96NU+fxBzmg38mKk0TGitI2DkyJtAaQKY/5VTvgo818kI3m0Av9s6mvDML47ta94
 P1eHg6Bp/jv5P0xoqarNn0EvL7tEDDphKBnvcv1WmbmRKyCHkjtqHCfJCQwI+86fG9
 w1y42YhGVRdJIfTYdIwHvOCJNRQyDKTs2czaTwV0=
Received: by mail-lj1-f172.google.com with SMTP id o13so1843066ljg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 21 Dec 2019 09:21:02 -0800 (PST)
X-Gm-Message-State: APjAAAXgJJ+FA3K6DUcvegW3duvyfDzWxlk2SlHGr7SMWU3kTz7cwHP9
 hdb4lul7S6yj06AvrUcDVykXw+vHiREmonFPaYU=
X-Google-Smtp-Source: APXvYqzxQbblDkSAhXsYJzBSq3hDVzSm7VnGs1SPM1HBdZJYbyVd5kmZbEvVMHb9JsKwPhMwlDsc1nNYruHS7j121S0=
X-Received: by 2002:a2e:8551:: with SMTP id u17mr8218439ljj.165.1576948860712; 
 Sat, 21 Dec 2019 09:21:00 -0800 (PST)
MIME-Version: 1.0
References: <CGME20191220120142eucas1p1f43c7a862d9c0faa72e14b21d7d697e9@eucas1p1.samsung.com>
 <20191220115653.6487-1-a.swigon@samsung.com>
 <20191220115653.6487-3-a.swigon@samsung.com>
In-Reply-To: <20191220115653.6487-3-a.swigon@samsung.com>
From: Chanwoo Choi <chanwoo@kernel.org>
Date: Sun, 22 Dec 2019 02:20:24 +0900
X-Gmail-Original-Message-ID: <CAGTfZH2mh4xcUUa+z=thdnrFsEgZ7NR5nmL4sK2ybARndhn01A@mail.gmail.com>
Message-ID: <CAGTfZH2mh4xcUUa+z=thdnrFsEgZ7NR5nmL4sK2ybARndhn01A@mail.gmail.com>
Subject: Re: [RFC PATCH v3 2/7] interconnect: Relax requirement in
 of_icc_get_from_provider()
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_092104_984738_FB468E3D 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, inki.dae@samsung.com,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBGcmksIERlYyAyMCwgMjAxOSBhdCA5OjAzIFBNIEFydHVyIMWad2lnb8WEIDxhLnN3
aWdvbkBzYW1zdW5nLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIHBhdGNoIHJlbGF4ZXMgdGhlIGNvbmRp
dGlvbiBpbiBvZl9pY2NfZ2V0X2Zyb21fcHJvdmlkZXIoKSBzbyB0aGF0IGl0Cj4gaXMgbm8gbG9u
Z2VyIHJlcXVpcmVkIHRvIHNldCAjaW50ZXJjb25uZWN0LWNlbGxzID0gPDE+IGluIHRoZSBEVC4g
SW4gY2FzZQo+IG9mIHRoZSBkZXZmcmVxIGRyaXZlciBmb3IgZXh5bm9zLWJ1cywgI2ludGVyY29u
bmVjdC1jZWxscyBpcyBhbHdheXMgemVyby4KCkl0IGRvZXNuJ3QgY29udGFpbiB3aHkgZG9uJ3Qg
bmVlZCB0byByZXF1aXJlIGl0LiBJZiB5b3UgYWRkIG1vcmUgZGV0YWlsZWQKZGVzY3JpcHRpb24s
IGl0IGlzIGJldHRlciB0byB1bmRlcnN0YW5kLgoKPgo+IFNpZ25lZC1vZmYtYnk6IEFydHVyIMWa
d2lnb8WEIDxhLnN3aWdvbkBzYW1zdW5nLmNvbT4KPiBBY2tlZC1ieTogS3J6eXN6dG9mIEtvemxv
d3NraSA8a3J6a0BrZXJuZWwub3JnPgo+IC0tLQo+ICBkcml2ZXJzL2ludGVyY29ubmVjdC9jb3Jl
LmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW50ZXJjb25uZWN0L2NvcmUuYyBiL2RyaXZlcnMv
aW50ZXJjb25uZWN0L2NvcmUuYwo+IGluZGV4IGU2MDM1YzE5OTM2OS4uNzRjNjg4OThhMzUwIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvaW50ZXJjb25uZWN0L2NvcmUuYwo+ICsrKyBiL2RyaXZlcnMv
aW50ZXJjb25uZWN0L2NvcmUuYwo+IEBAIC0zMzUsNyArMzM1LDcgQEAgc3RydWN0IGljY19ub2Rl
ICpvZl9pY2NfZ2V0X2Zyb21fcHJvdmlkZXIoc3RydWN0IG9mX3BoYW5kbGVfYXJncyAqc3BlYykK
PiAgICAgICAgIHN0cnVjdCBpY2Nfbm9kZSAqbm9kZSA9IEVSUl9QVFIoLUVQUk9CRV9ERUZFUik7
Cj4gICAgICAgICBzdHJ1Y3QgaWNjX3Byb3ZpZGVyICpwcm92aWRlcjsKPgo+IC0gICAgICAgaWYg
KCFzcGVjIHx8IHNwZWMtPmFyZ3NfY291bnQgIT0gMSkKPiArICAgICAgIGlmICghc3BlYykKPiAg
ICAgICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7Cj4KPiAgICAgICAgIG11dGV4
X2xvY2soJmljY19sb2NrKTsKPiAtLQo+IDIuMTcuMQo+CgoKLS0gCkJlc3QgUmVnYXJkcywKQ2hh
bndvbyBDaG9pCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
