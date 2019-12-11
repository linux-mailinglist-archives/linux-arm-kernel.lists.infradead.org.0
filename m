Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCB511A0F2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 02:59:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EUkwC7sBPnqjd43dX8DEpQhouoSJtQBC6ndZQH5hRVc=; b=oqQOac69BOCpDO
	AT62UyWZR03J2L+m2fEUop08Z+vU5pQqBS/hHS6TJC4InhljCiKmX33gYZbGLI+d+YdcUpXJRGElr
	nzTEoQBRO9rhpl6iQDvYYt6LXO553e1KvcMTFEQkA8Kdhd3LzS9/XfhfBKxSa36pugbMLdbOxI3ji
	8Zn/EuPC3bebMeFduSQegGSBpFReLmwKlCe0wvCP52LWvahwW9porfoCg4g4fMuHCpHQeVNTsibs9
	t4MDRcIhKOzkcTD1/TOSlC47lEDbccQycmpGK4OKWnXNwYVa35trVL8ZSW8BNWDuHuNwsNv42Vj32
	ykMtpT0gj3swTyFpCvjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ierHu-0007Ty-Sf; Wed, 11 Dec 2019 01:59:38 +0000
Received: from mail-pg1-f181.google.com ([209.85.215.181])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ierHk-0007T9-EN
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 01:59:29 +0000
Received: by mail-pg1-f181.google.com with SMTP id r11so9956639pgf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 17:59:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=djZPCLvwjYN7C0Z3kvT69z7JnBptuK8raPiTgl3uXeA=;
 b=XZcmgaO6wib+Ca5KNXkt0WrjPM1D++Us4Km3vcbR+L1iqu3c9smBEacL+wNVNDhMXl
 QvMsiARPr/FV/N+xWb6/DEszauswaQpB8JJkpUfaV4Eh0hCVt9c/JWL6nHHA8RfkwBsF
 nT/J0QyLicqZupoxJ7Jup/cK0WvIQL9fVBGx0Vw3lMz2Nkk6gRa2lds1i1l+AfT0EHml
 kjT9hw/RXNMB65IUrAD8Oe0n+gsL7QSvM2dUuCBAU88sZfVELhMGezWRMherHAGxp0fc
 TRhTjpAhJdquo/X6DXu4HDNirmw+u71k9DswoliNkgQOw6m17Y6Ly8Pbl4247Ynio3Lv
 R9pQ==
X-Gm-Message-State: APjAAAVsmaAfdYQ/09OnOdmnFuqAdMptmJgt1vfJqRy2AfdU1Mv86jK+
 kU4jUaMgCrQ4UR0kKOHtodEDjGMymg8=
X-Google-Smtp-Source: APXvYqw+4ugugmI3/4UR8tS7yCmwNl4DV11be7viPpBnA4Md1U6Z8TG3UeyIXtf2u2QIPgNwDC0+Aw==
X-Received: by 2002:aa7:9816:: with SMTP id e22mr1058742pfl.229.1576029563998; 
 Tue, 10 Dec 2019 17:59:23 -0800 (PST)
Received: from [192.168.43.25] (210-54-242-39.adsl.xtra.co.nz. [210.54.242.39])
 by smtp.gmail.com with ESMTPSA id e27sm351041pfm.26.2019.12.10.17.59.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Dec 2019 17:59:23 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3601.0.10\))
Subject: Re: [EXT] iMX6/UART imprecise external abort
From: Andre Renaud <arenaud@designa-electronics.com>
In-Reply-To: <789B91A2-6416-4906-AD32-BD66BDF879B3@designa-electronics.com>
Date: Wed, 11 Dec 2019 14:59:18 +1300
Message-Id: <F7B2A03F-1FB4-480E-A3E5-82093E207B76@designa-electronics.com>
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
 <CAOMZO5AxvuWETvubZU1Tu=0-SeoSzJs=LZcj-JJFE1+4O6-FxA@mail.gmail.com>
 <CAEj2-1M6950NxK0mOBzdc4qz3b=eBzD8NdLKE55aas5WN0iZkA@mail.gmail.com>
 <VI1PR0402MB3600DD7A4C9BFFE8E2805378FF5B0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <CAEj2-1PCDWSiP98ZN9ufa-Nws_4KSgX7Jf8gK1+TM1zEuU3SKw@mail.gmail.com>
 <CAOMZO5AP4F3fMwbx7TbnJ-xNPRh6r+3=TccWasVJER=cjLkgjA@mail.gmail.com>
 <789B91A2-6416-4906-AD32-BD66BDF879B3@designa-electronics.com>
To: Fabio Estevam <festevam@gmail.com>
X-Mailer: Apple Mail (2.3601.0.10)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_175928_477226_38E5CDD9 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.181 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Youxin Su <suyouxin@sporelab.io>, Andy Duan <fugang.duan@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cj4gT24gMTEvMTIvMjAxOSwgYXQgMjozNSBQTSwgQW5kcmUgUmVuYXVkIDxhcmVuYXVkQGRlc2ln
bmEtZWxlY3Ryb25pY3MuY29tPiB3cm90ZToKPiAKPiBIaSBGYWJpbywKPj4gT24gMTEvMTIvMjAx
OSwgYXQgMToyNyBQTSwgRmFiaW8gRXN0ZXZhbSA8ZmVzdGV2YW1AZ21haWwuY29tPiB3cm90ZToK
Pj4+IFRoYW5rcyAtIHdlIGRpZCBoYXZlIHRoaXMgd3JvbmcuIEhvd2V2ZXIgZXZlbiBhZnRlciBj
b3JyZWN0aW5nIHRoaXMgaXQKPj4+IHN0aWxsIGZhaWxzIGluIHRoZSBzYW1lIHdheS4gVGhpcyBp
cyB3aGF0IHdlJ3JlIHRyeWluZzoKPj4gCj4+IEkgdHJpZWQgeW91ciBwYXRjaCBvbiBteSBpbXg2
cXAgd2FuZGJvYXJkIGFuZCBkaWQgbm90IHJlcHJvZHVjZSB0aGUgZXJyb3IuCj4+IAo+PiBBcyB5
b3UgYWN0aXZhdGVkIHVhcnQyIEkgY2hhbmdlZCB5b3VyIGNvZGUgdG8gdXNlIHR0eW14YzEgaW5z
dGVhZC4KPj4gCj4+IERvIHlvdSBjb25uZWN0IFVBUlQyIHRvIHRoZSBQQyBhbmQgYWxzbyBzZW5k
IGNvbW1hbmQgZnJvbSB0aGUgUEMgdG8gdGhlIGJvYXJkPwo+IAo+IFllcywgd2UgY29ubmVjdCBp
dCB0byBhIFBDIGFuZCBiYXNpY2FsbHkgc3RyZWFtIGRhdGEgaW4gYm90aCBkaXJlY3Rpb25zIGJl
dHdlZW4gdGhlIHR3by4KPiAKPiBPbiB0aGUgUEMgaXTigJlzIGFzIHNpbXBsZSBhczoKPiB3aGls
ZSA6IDsgZG8gZWNobyB0ZXN0ID4gL2Rldi90dHlVU0IxIDsgc2xlZXAgMC4wNSA7IGRvbmUKPiAK
PiBJdCBkb2VzIG5lZWQgYmktZGlyZWN0aW9uYWwgdHJhZmZpYyB0byB0cmlnZ2VyLgoKV2UgYWxz
byBoYXZlIFNETUEgZGlzYWJsZWQuCgpSZWdhcmRzLApBbmRyZQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
