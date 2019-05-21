Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EADC524DC3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 13:16:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jgVAOj5kJmjCVgw/TxCfxapEBWaK9LNBXzBerRQG8Kc=; b=dJbJFnvUt4qNV5
	rqQDnQ7J/PLRzIL7on5eE9Uo9v3103g03KjGY9A1REIAkhkC7alelvShaacr/ps2RPcIyzmsoiqCH
	zDvqbk4AsXy6CahGhiDtmg/5Psi08N16ekBHeisHBqKGS2O9OkkMVgShsPxNffFfDVkt/UgS1GCj/
	gwDhPliA6aPsMZ6d0datuhHN6VhUY2miu2angR2MlyP3gmXoE0XLn9TWTwS+BZ03btEwMGL+NM4vF
	RI386sOkLUYVUHQsV7E8b1xDbOnXw0tdRsy8RYe3DbPrZFX9ei5lS6LlxOO1sdVStfe67ggB1O0I9
	DjcNjpixhm2HnrELcwlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT2ky-0003Mo-Jz; Tue, 21 May 2019 11:16:32 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT2kr-0003Lq-Bx
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 11:16:26 +0000
Received: by mail-yb1-xb32.google.com with SMTP id e128so3195201ybc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 04:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=qHKESFWu3uVEowXVX/MvPCRT+aTkRC4ea2S7JZT1F1I=;
 b=cDYa5bjjEi5TiX7BKmIemQ4LmfzVf2nUsVGq64Kc/mu8g7xa6JqtsS6oDAJ+ZU+HER
 yDCjQZae2XQqGv/Pw5bvHHmGM3g8e5dTKPNPQiWYpAYaOWVM+SItOzvYjBSsffBDY8sN
 brOJ/RbEA+HJa/SANyea38MIANy2ZYu2mmPTzpLynR/MbziBvxAme8PkYlKM3bxMA0nm
 nJxsc5/ak7Uv1x+IRKS3KgH2COieezeVCSCZ1kL3wGXM/2P1gY9nx7BsEErP7DIbBrCE
 2raAMhom4F4qpS9UFBf3rsfjDiXCPu2wO3l+4sqfmAVjBKOv3zPHybzfqSKgjPKsn1fN
 xPHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=qHKESFWu3uVEowXVX/MvPCRT+aTkRC4ea2S7JZT1F1I=;
 b=Q1ddWlzUjenliETl4rMsXYgN5mI7jZem8mdB66zAi4Riuxh8H6hjy7j/pNg2GkrsnR
 2JDnW1QJ7VSU+inDktGHfmxv+nTbAjBQWNm56ANNFiZ2qUklQKZ9MVdLM748ItckHvIf
 x19x9P/b/yWX+FWQ9PO9i5IupmuYmVeRoZxTrTQWxApjrZZjrX5zV+I/+23svtxTpZPC
 1uFFi/jXmPZPvgGrrNOkZrSKRkobbvQ/I4EUZs2KDTPpy/Yt65IHxU6K+aBiWgI99vQ1
 kQfnK/BqvxiWCotILcf0trTzZlK7Q9/OS422Jc7MdBj0YP55F9gIEz7SSw/Mx8c+bXpH
 ZzCQ==
X-Gm-Message-State: APjAAAW406Sk6PTzQauBYiKV0JISIfNd05CNxbW8w55rO67eRE03KfZh
 OnuGKqGMQb8nSbNOy5dCkDNf5AJU1HsqRXjPEq0=
X-Google-Smtp-Source: APXvYqzx693vHzn03Sj+D9wBGIXnVqz/1AaF0r6ryn52oijxf7HsQVy+WYRTWMopirlPQg2lq8f8gGRY2he9l206H/Y=
X-Received: by 2002:a25:c6c9:: with SMTP id k192mr3210217ybf.2.1558437383800; 
 Tue, 21 May 2019 04:16:23 -0700 (PDT)
MIME-Version: 1.0
References: <9a9ba4c9-3cb7-eb64-4aac-d43b59224442@gmail.com>
 <20190521104512.2r67fydrgniwqaja@shell.armlinux.org.uk>
In-Reply-To: <20190521104512.2r67fydrgniwqaja@shell.armlinux.org.uk>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Tue, 21 May 2019 13:16:12 +0200
Message-ID: <CACna6ryVxFr8ho3ekY4Q_J=TamVLv9ZMDaHJFUGcEGSRrSVaHA@mail.gmail.com>
Subject: Re: ARM router NAT performance affected by random/unrelated commits
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_041625_429299_7B36DDCB 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b32 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Jo-Philipp Wich <jo@mein.io>, Network Development <netdev@vger.kernel.org>,
 John Crispin <john@phrozen.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-block@vger.kernel.org, Jonas Gorski <jonas.gorski@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyMSBNYXkgMjAxOSBhdCAxMjo0NSwgUnVzc2VsbCBLaW5nIC0gQVJNIExpbnV4IGFk
bWluCjxsaW51eEBhcm1saW51eC5vcmcudWs+IHdyb3RlOgo+IE9uIFR1ZSwgTWF5IDIxLCAyMDE5
IGF0IDEyOjI4OjQ4UE0gKzAyMDAsIFJhZmHFgiBNacWCZWNraSB3cm90ZToKPiA+IEkgd29yayBv
biBob21lIHJvdXRlcnMgYmFzZWQgb24gQnJvYWRjb20ncyBOb3J0aHN0YXIgU29Dcy4gVGhvc2Ug
ZGV2aWNlcwo+ID4gaGF2ZSBBUk0gQ29ydGV4LUE5IGFuZCBtb3N0IG9mIHRoZW0gYXJlIGR1YWwt
Y29yZS4KPiA+Cj4gPiBBcyBmb3IgaG9tZSByb3V0ZXJzLCBteSBtYWluIGNvbmNlcm4gaXMgbmV0
d29yayBwZXJmb3JtYW5jZS4gVGhhdCBDUFUKPiA+IGlzbid0IHBvd2VyZnVsIGVub3VnaCB0byBo
YW5kbGUgZ2lnYWJpdCB0cmFmZmljIHNvIGFsbCBraW5kIG9mCj4gPiBvcHRpbWl6YXRpb25zIGRv
IG1hdHRlci4gSSBub3RpY2VkIHNvbWUgdW5leHBlY3RlZCBjaGFuZ2VzIGluIE5BVAo+ID4gcGVy
Zm9ybWFuY2Ugd2hlbiBzd2l0Y2hpbmcgYmV0d2VlbiBrZXJuZWxzLgo+ID4KPiA+IE15IGhhcmR3
YXJlIGlzIEJDTTQ3MDk0IFNvQyAoZHVhbCBjb3JlIEFSTSkgd2l0aCBpbnRlZ3JhdGVkIG5ldHdv
cmsKPiA+IGNvbnRyb2xsZXIgYW5kIGV4dGVybmFsIEJDTTUzMDEyIHN3aXRjaC4KPgo+IEd1ZXNz
aW5nLCBJJ2Qgc2F5IGl0J3MgdG8gZG8gd2l0aCB0aGUgcGxhY2VtZW50IG9mIGNvZGUgd3J0IGNh
Y2hlbGluZXMuCgpUaGF0IHdhcyBteSBndWVzcyBhcyB3ZWxsLCB0aGF0J3Mgd2h5IEkgdHJpZWQg
ImNhY2hlc3RhdCIgdG9vbC4KCgo+IFlvdSBjb3VsZCB0cnkgYWxpZ25pbmcgc29tZSBvZiB0aGUg
Y2FjaGUgZmx1c2hpbmcgY29kZSB0byBhIGNhY2hlIGxpbmUKPiBhbmQgc2VlIHdoYXQgZWZmZWN0
IHRoYXQgaGFzLgoKQ2FuIHlvdSBnaXZlIG1lIHNvbWUgZXh0cmEgaGludCBvbiBob3cgdG8gZG8g
dGhhdCwgcGxlYXNlPyBJIHRyaWVkCnNlYXJjaGluZyBmb3IgaXQgYSBiaXQgYnV0IEkgZGlkbid0
IGZpbmQgYW55IGNsZWFyIGFydGljbGUgb24gdGhhdAptYXR0ZXIuCgotLSAKUmFmYcWCCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
