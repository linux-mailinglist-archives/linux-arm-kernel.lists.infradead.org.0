Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6C0E12D6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 09:08:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DK+ZyKjTM35ShdAjMLvCZJ9iBVPgaSKYwFpGJK4GO+U=; b=TXXpLGMBGNstjk
	Oetvq2agYUz6lkrsZpqhHlD1sqCDHMWorPg1DZKwyKa98kVpXW5OdTHUQJ5az2EDvGRf5SdH73alD
	jE3Vz/SOoiGV+vMIh98Tn4Ha4EGauRVjsp6M5XhZF4OVgyk3zzInxfmLEP0tdSLTaMd3w1bhyb0pf
	QuNgnivEA8eAmkjmaCbxgCvQeoVIQfvD4LFIELW6XskkLUlZqCoX5D/gZdbyPZHLpP1rDd3WIt2Ar
	vJF9EVo3iSSn+7VOGr3kN8vHbZvxCu0yO39dQjzKfD0E2/0C8MtTD75642haW7a1OttAHk0PwEYRB
	P92TOkPrsUI5psqr391A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNAl9-0007jX-UX; Wed, 23 Oct 2019 07:08:43 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNAkx-0007j4-Qd
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 07:08:35 +0000
Received: by mail-lf1-x142.google.com with SMTP id g21so14033092lfh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 00:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=myl9hp8GAdZ10Vh56qyy6JaHhxuDJ9OqLHFd3viE44w=;
 b=D/CIKos7wpo0yugt6OSXX7bSNd0uG+7P8UyKC6tUPLOGlg3lpLAmJCUCqZRgkpJSmQ
 /ua9qSJgNrl1LsDsy10IsXdPlR6Fv1rZxxYSOM/ZcCJ0mDG8jrtIdD8yFOK61FPzQ90u
 hFpSSl11Te5wvXzmj7gDzCd2zmJkM16v/LNQ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=myl9hp8GAdZ10Vh56qyy6JaHhxuDJ9OqLHFd3viE44w=;
 b=bH4hnaHAWFivjc97Tuhv8UIcP71zmZoYbNdz9MV4tGRrfscyxAH45ZWe6G0CIWuDAF
 oswpOrG6TUnOcnBnmMqszyCM6dkQxx/hRME8J1lBvTieA7voCSGKF2Utof0XQDoWsr1D
 bZ/484AA0J7VkcpRJ3YjoqmuyROBc4bgSz00b7le9mCQUR4jFoAwI5pBmFvxXh0cFvaF
 5CaOF7ZTbeXcJFFMeUU8jy0gbYQBKneNPLd0db3XYqcsh2WxwOWyL5z71PAFTNtONYVD
 0dfyOWbdaxmVrVDfEZGXJo75aZVjTTdDVBvT03aJ6G4xZATGGWHbBu1fvYVPEUBsdf/V
 F3Jg==
X-Gm-Message-State: APjAAAWYXnGi2jwSfvCBkHeKbyOuTJm9YV0+bBjetM1FS+bcXLLO7RPx
 0GJ5t8grMuGdjwWXbNOd+Ap8a+qr7AxyNGJG
X-Google-Smtp-Source: APXvYqwRZFXEAB1sX7Quxj/Hpyb451DS8Gl1oBwoo5NLaCgiUg7xN2GoprYTPQVnWp6BHkMtcSr9Mg==
X-Received: by 2002:a19:c354:: with SMTP id t81mr13587917lff.179.1571814509700; 
 Wed, 23 Oct 2019 00:08:29 -0700 (PDT)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id r6sm9908883ljr.77.2019.10.23.00.08.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 23 Oct 2019 00:08:29 -0700 (PDT)
Subject: Re: [PATCH 3/7] soc: fsl: qe: avoid ppc-specific io accessors
To: Christophe Leroy <christophe.leroy@c-s.fr>,
 Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191018125234.21825-4-linux@rasmusvillemoes.dk>
 <6ee121cf-0e3d-4aa0-2593-fcb00995e429@c-s.fr>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <47d45f33-d5aa-b4b5-9b5f-2e86e309a206@rasmusvillemoes.dk>
Date: Wed, 23 Oct 2019 09:08:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <6ee121cf-0e3d-4aa0-2593-fcb00995e429@c-s.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_000831_870614_47E0596E 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjIvMTAvMjAxOSAxNy4wMSwgQ2hyaXN0b3BoZSBMZXJveSB3cm90ZToKPiAKPiAKPiBPbiAx
MC8xOC8yMDE5IDEyOjUyIFBNLCBSYXNtdXMgVmlsbGVtb2VzIHdyb3RlOgo+PiBJbiBwcmVwYXJh
dGlvbiBmb3IgYWxsb3dpbmcgdG8gYnVpbGQgUUUgc3VwcG9ydCBmb3IgYXJjaGl0ZWN0dXJlcwo+
PiBvdGhlciB0aGFuIFBQQywgcmVwbGFjZSB0aGUgcHBjLXNwZWNpZmljIGlvIGFjY2Vzc29ycy4g
RG9uZSB2aWEKPj4KPiAKPiBUaGlzIHBhdGNoIGlzIG5vdCB0cmFuc3BhcmVudCBpbiB0ZXJtcyBv
ZiBwZXJmb3JtYW5jZSwgZnVuY3Rpb25zIGdldAo+IGNoYW5nZWQgc2lnbmlmaWNhbnRseS4KPiAK
PiBCZWZvcmUgdGhlIHBhdGNoOgo+IAo+IDAwMDAwMzMwIDx1Y2NfZmFzdF9lbmFibGU+Ogo+IMKg
MzMwOsKgwqDCoCA4MSA0MyAwMCAwNMKgwqDCoMKgIGx3esKgwqDCoMKgIHIxMCw0KHIzKQo+IMKg
MzM0OsKgwqDCoCA3YyAwMCAwNCBhY8KgwqDCoMKgIGh3c3luYwo+IMKgMzM4OsKgwqDCoCA4MSAy
YSAwMCAwMMKgwqDCoMKgIGx3esKgwqDCoMKgIHI5LDAocjEwKQo+IMKgMzNjOsKgwqDCoCAwYyAw
OSAwMCAwMMKgwqDCoMKgIHR3acKgwqDCoMKgIDAscjksMAo+IMKgMzQwOsKgwqDCoCA0YyAwMCAw
MSAyY8KgwqDCoMKgIGlzeW5jCj4gwqAzNDQ6wqDCoMKgIDcwIDg4IDAwIDAywqDCoMKgwqAgYW5k
aS7CoMKgIHI4LHI0LDIKPiDCoDM0ODrCoMKgwqAgNDEgODIgMDAgMTDCoMKgwqDCoCBiZXHCoMKg
wqDCoCAzNTggPHVjY19mYXN0X2VuYWJsZSsweDI4Pgo+IMKgMzRjOsKgwqDCoCAzOSAwMCAwMCAw
McKgwqDCoMKgIGxpwqDCoMKgwqDCoCByOCwxCj4gwqAzNTA6wqDCoMKgIDkxIDAzIDAwIDEwwqDC
oMKgwqAgc3R3wqDCoMKgwqAgcjgsMTYocjMpCj4gwqAzNTQ6wqDCoMKgIDYxIDI5IDAwIDEwwqDC
oMKgwqAgb3JpwqDCoMKgwqAgcjkscjksMTYKPiDCoDM1ODrCoMKgwqAgNzAgODggMDAgMDHCoMKg
wqDCoCBhbmRpLsKgwqAgcjgscjQsMQo+IMKgMzVjOsKgwqDCoCA0MSA4MiAwMCAxMMKgwqDCoMKg
IGJlccKgwqDCoMKgIDM2YyA8dWNjX2Zhc3RfZW5hYmxlKzB4M2M+Cj4gwqAzNjA6wqDCoMKgIDM5
IDAwIDAwIDAxwqDCoMKgwqAgbGnCoMKgwqDCoMKgIHI4LDEKPiDCoDM2NDrCoMKgwqAgOTEgMDMg
MDAgMTTCoMKgwqDCoCBzdHfCoMKgwqDCoCByOCwyMChyMykKPiDCoDM2ODrCoMKgwqAgNjEgMjkg
MDAgMjDCoMKgwqDCoCBvcmnCoMKgwqDCoCByOSxyOSwzMgo+IMKgMzZjOsKgwqDCoCA3YyAwMCAw
NCBhY8KgwqDCoMKgIGh3c3luYwo+IMKgMzcwOsKgwqDCoCA5MSAyYSAwMCAwMMKgwqDCoMKgIHN0
d8KgwqDCoMKgIHI5LDAocjEwKQo+IMKgMzc0OsKgwqDCoCA0ZSA4MCAwMCAyMMKgwqDCoMKgIGJs
cgo+IAo+IEFmdGVyIHRoZSBwYXRjaDoKPiAKPiAwMDAwMDMwYyA8dWNjX2Zhc3RfZW5hYmxlPjoK
PiDCoDMwYzrCoMKgwqAgOTQgMjEgZmYgZTDCoMKgwqDCoCBzdHd1wqDCoMKgIHIxLC0zMihyMSkK
PiDCoDMxMDrCoMKgwqAgN2MgMDggMDIgYTbCoMKgwqDCoCBtZmxywqDCoMKgIHIwCj4gwqAzMTQ6
wqDCoMKgIGJmIGExIDAwIDE0wqDCoMKgwqAgc3Rtd8KgwqDCoCByMjksMjAocjEpCj4gwqAzMTg6
wqDCoMKgIDdjIDlmIDIzIDc4wqDCoMKgwqAgbXLCoMKgwqDCoMKgIHIzMSxyNAo+IMKgMzFjOsKg
wqDCoCA5MCAwMSAwMCAyNMKgwqDCoMKgIHN0d8KgwqDCoMKgIHIwLDM2KHIxKQo+IMKgMzIwOsKg
wqDCoCA3YyA3ZSAxYiA3OMKgwqDCoMKgIG1ywqDCoMKgwqDCoCByMzAscjMKPiDCoDMyNDrCoMKg
wqAgODMgYTMgMDAgMDTCoMKgwqDCoCBsd3rCoMKgwqDCoCByMjksNChyMykKPiDCoDMyODrCoMKg
wqAgN2YgYTMgZWIgNzjCoMKgwqDCoCBtcsKgwqDCoMKgwqAgcjMscjI5Cj4gwqAzMmM6wqDCoMKg
IDQ4IDAwIDAwIDAxwqDCoMKgwqAgYmzCoMKgwqDCoMKgIDMyYyA8dWNjX2Zhc3RfZW5hYmxlKzB4
MjA+Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAzMmM6IFJfUFBDX1JFTDI0wqDCoMKgIGlvcmVh
ZDMyYmUKPiDCoDMzMDrCoMKgwqAgNzMgZTkgMDAgMDLCoMKgwqDCoCBhbmRpLsKgwqAgcjkscjMx
LDIKPiDCoDMzNDrCoMKgwqAgNDEgODIgMDAgMTDCoMKgwqDCoCBiZXHCoMKgwqDCoCAzNDQgPHVj
Y19mYXN0X2VuYWJsZSsweDM4Pgo+IMKgMzM4OsKgwqDCoCAzOSAyMCAwMCAwMcKgwqDCoMKgIGxp
wqDCoMKgwqDCoCByOSwxCj4gwqAzM2M6wqDCoMKgIDkxIDNlIDAwIDEwwqDCoMKgwqAgc3R3wqDC
oMKgwqAgcjksMTYocjMwKQo+IMKgMzQwOsKgwqDCoCA2MCA2MyAwMCAxMMKgwqDCoMKgIG9yacKg
wqDCoMKgIHIzLHIzLDE2Cj4gwqAzNDQ6wqDCoMKgIDczIGU5IDAwIDAxwqDCoMKgwqAgYW5kaS7C
oMKgIHI5LHIzMSwxCj4gwqAzNDg6wqDCoMKgIDQxIDgyIDAwIDEwwqDCoMKgwqAgYmVxwqDCoMKg
wqAgMzU4IDx1Y2NfZmFzdF9lbmFibGUrMHg0Yz4KPiDCoDM0YzrCoMKgwqAgMzkgMjAgMDAgMDHC
oMKgwqDCoCBsacKgwqDCoMKgwqAgcjksMQo+IMKgMzUwOsKgwqDCoCA5MSAzZSAwMCAxNMKgwqDC
oMKgIHN0d8KgwqDCoMKgIHI5LDIwKHIzMCkKPiDCoDM1NDrCoMKgwqAgNjAgNjMgMDAgMjDCoMKg
wqDCoCBvcmnCoMKgwqDCoCByMyxyMywzMgo+IMKgMzU4OsKgwqDCoCA4MCAwMSAwMCAyNMKgwqDC
oMKgIGx3esKgwqDCoMKgIHIwLDM2KHIxKQo+IMKgMzVjOsKgwqDCoCA3ZiBhNCBlYiA3OMKgwqDC
oMKgIG1ywqDCoMKgwqDCoCByNCxyMjkKPiDCoDM2MDrCoMKgwqAgYmIgYTEgMDAgMTTCoMKgwqDC
oCBsbXfCoMKgwqDCoCByMjksMjAocjEpCj4gwqAzNjQ6wqDCoMKgIDdjIDA4IDAzIGE2wqDCoMKg
wqAgbXRscsKgwqDCoCByMAo+IMKgMzY4OsKgwqDCoCAzOCAyMSAwMCAyMMKgwqDCoMKgIGFkZGnC
oMKgwqAgcjEscjEsMzIKPiDCoDM2YzrCoMKgwqAgNDggMDAgMDAgMDDCoMKgwqDCoCBiwqDCoMKg
wqDCoMKgIDM2YyA8dWNjX2Zhc3RfZW5hYmxlKzB4NjA+Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAzNmM6IFJfUFBDX1JFTDI0wqDCoMKgIGlvd3JpdGUzMmJlCgpUcnVlLiBEbyB5b3Uga25vdyB3
aHkgcG93ZXJwYyB1c2VzIG91dC1vZi1saW5lIHZlcnNpb25zIG9mIHRoZXNlCmFjY2Vzc29ycyB3
aGVuICFQUENfSU5ESVJFQ1RfUElPLCBpLmUuIGF0IGxlYXN0IGFsbCBvZiBQUEMzMj8gSXQncyBx
dWl0ZQphIGJpdCBiZXlvbmQgdGhlIHNjb3BlIG9mIHRoaXMgc2VyaWVzLCBidXQgSSdkIGV4cGVj
dCBtb3ZpbmcgbW9zdCBpZiBub3QKYWxsIG9mIGFyY2gvcG93ZXJwYy9rZXJuZWwvaW9tYXAuYyBp
bnRvIGFzbS9pby5oIChndWFyZGVkIGJ5CiFkZWZpbmVkKENPTkZJR19QUENfSU5ESVJFQ1RfUElP
KSBvZiBjb3Vyc2UpIGFzIHN0YXRpYyBpbmxpbmVzIHdvdWxkCmJlbmVmaXQgYWxsIHBwYzMyIHVz
ZXJzIG9mIGlvd3JpdGUzMiBhbmQgZnJpZW5kcy4KCklzIHRoZXJlIHNvbWUgb3RoZXIgcHJpbWl0
aXZlIGF2YWlsYWJsZSB0aGF0IChhKSBpcyBkZWZpbmVkIG9uIGFsbAphcmNoaXRlY3R1cmVzIChv
ciBhdCBsZWFzdCBib3RoIHBwYyBhbmQgYXJtKSBhbmQgKGIpIGV4cGFuZHMgdG8gZ29vZApjb2Rl
IGluIGJvdGgvYWxsIGNhc2VzPwoKTm90ZSB0aGF0IGEgZmV3IHVzZXMgb2YgdGhlIHRoZSBpb3dy
aXRlMzJiZSBhY2Nlc3NvcnMgaGFzIGFscmVhZHkKYXBwZWFyZWQgaW4gdGhlIHFlIGNvZGUgd2l0
aCB0aGUgaW50cm9kdWN0aW9uIG9mIHRoZSBxZV9jbHJzZXRiaXRzKCkKaGVscGVycyBpbiBiYjhi
MjA2MmFmLgoKUmFzbXVzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
