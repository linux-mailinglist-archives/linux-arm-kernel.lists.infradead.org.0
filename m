Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D12C78154E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 11:21:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WolCQ0vENU0m7M/gExmaGicvupE0mFaggulkAbrPEa4=; b=KWaNt8Z+3l0gRQ
	fMui74UVbjsOSW4XFkcbxKJVf3yA/u3TwlcK/KhPX2ABuaIOEUCMwgQ7bOVs9UHOKV6qUEjdNjT2s
	Z0UgzCSJQOqQX5OHPnirQcZ/BMWSTPNclSA6XQ/2DjqSoGMoRNBh5iyFFpfRW1MEdJq+8uUUkClJR
	qJ8Rd2EyPTw5NSBvDrF2EhOqGWm4u7b4oJPxOBG0omcetJu1LyWxwpnFm4zz4DEc+qdeOIQuTZCEx
	YlXffuFn1m5g3mi+EsLXn3bKPr9nj12apOsQjyty/zpw+u4jguHXop1gbaPylMRKs54m5EZJA0NSC
	InabTBKdxRXsX905+PWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZB8-0002yH-RR; Mon, 05 Aug 2019 09:21:19 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZAj-0002mf-9u
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 09:20:54 +0000
Received: by mail-wm1-x343.google.com with SMTP id x15so74002543wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 02:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=Txq+lDiphkm/bbR1QJjNIr3wsYZnih7HNqUu+m8HW5g=;
 b=uEOjz0T5cshqZrk3oYudE0+04T7bHBrrqq2rEJm6LnhyYk0Ql5HxZGlPo2EzdtpO9z
 Njpyd7nL34660kby30+X3W0NfOlCJHvDlfdHsUP2PTJGO/Q2HkxLlS4gat1vTjQ/bcOL
 2woU+IKYPzbYB8WwJGYmkE0zb6ORrg+kQV0Zf+VG5NbNuoCryhV7g5t0W8jjhHXmC5/5
 +XsB8+IEsbhKNhije8TRAx4IEeigjgUsg50/+rE0qJg1BT5kvSTEKgVwMaOB/a8cA7F5
 CWIhllujU2a/pHw8O+J0cpqI7w+swkz63QBidnxsByPReLPae8MtHVZ+WzSQdyylPpPN
 Rqgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=Txq+lDiphkm/bbR1QJjNIr3wsYZnih7HNqUu+m8HW5g=;
 b=RQrpJwwL54iSH5C8a9gFFSJ/XIA2z4Wx6h1TgrwZvfp8p0c5tVsD4LOCDxuMVslrGR
 zHQnG4+f5syz6bsoiOun6GyiLuJl8+1ZVJCpY+UzHp3aYRyGqvzwZjtOpq/WED9sIfza
 scusTDSChROKZ9/g1z+gRF61FEP4x7WI+PlcMJlt76c0GSEwQwR27h3AihDn6Kjt0aso
 RPh4KLraE+e4IYL9mDxhaBaSMyUx55JgRhTMRezh+uBaEN+A9OFQvHNq6vbupqOdK5WE
 ZDKLboYRA/tj6lCoZXInoEUJIMrzOALqa6oaXHbD6Z2itAExTozbRbrmUjbffU0TobvJ
 1RMw==
X-Gm-Message-State: APjAAAWeYDdMxvUSELyuqvYNf3gd/3ho3MmF9qs0wfhXHuvF9fNEFrzI
 UIdjDLLQymm/5ZeLgOEAMsq1nw==
X-Google-Smtp-Source: APXvYqxRymdS0Y120dc+66ig+NnOypLstaE2XLW5cYlQYTxMx9gygwTStF1SdScUmEGZpjy0b6TAIw==
X-Received: by 2002:a7b:c251:: with SMTP id b17mr18293512wmj.143.1564996850198; 
 Mon, 05 Aug 2019 02:20:50 -0700 (PDT)
Received: from dell ([109.180.115.177])
 by smtp.gmail.com with ESMTPSA id c1sm191644368wrh.1.2019.08.05.02.20.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 05 Aug 2019 02:20:49 -0700 (PDT)
Date: Mon, 5 Aug 2019 10:20:47 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Timur Tabi <timur@kernel.org>
Subject: Re: next/master boot: 265 boots: 17 failed, 184 passed with 64
 offline (next-20190730)
Message-ID: <20190805092047.GA4739@dell>
References: <5d403574.1c69fb81.14163.65d3@mx.google.com>
 <20190730134115.GE4264@sirena.org.uk>
 <CACRpkdYevQiwW8iED8_qBo5yCcj5yCGrM76Lu3MyrU6Vy4HoNg@mail.gmail.com>
 <5d41b01a.1c69fb81.84578.a0bc@mx.google.com>
 <cbbe381e-a154-ced1-fbcb-9db2135e4e5b@codeaurora.org>
 <e974aa7e-98d4-1594-755b-6f57ab852cd7@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e974aa7e-98d4-1594-755b-6f57ab852cd7@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_022053_464752_D2AC5319 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kernel Build Reports Mailman List <kernel-build-reports@lists.linaro.org>,
 Jeffrey Hugo <jhugo@codeaurora.org>, Linus Walleij <linus.walleij@linaro.org>,
 Lina Iyer <ilina@codeaurora.org>, Stephen Boyd <swboyd@chromium.org>,
 Mark Brown <broonie@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAwMSBBdWcgMjAxOSwgVGltdXIgVGFiaSB3cm90ZToKCj4gT24gNy8zMS8xOSAxMjo1
OCBQTSwgSmVmZnJleSBIdWdvIHdyb3RlOgo+ID4gCj4gPiBzdGF0aWPCoGludMKgZ3Bpb2NoaXBf
YWxsb2NfdmFsaWRfbWFzayhzdHJ1Y3TCoGdwaW9fY2hpcMKgKmdjKQo+ID4gewo+ID4gIMKgwqDC
oMKgwqBpZsKgKElTX0VOQUJMRUQoQ09ORklHX09GX0dQSU8pKQo+ID4gIMKgwqDCoMKgwqDCoMKg
wqDCoGdjLT5uZWVkX3ZhbGlkX21hc2vCoD3CoG9mX2dwaW9fbmVlZF92YWxpZF9tYXNrKGdjKTsK
PiA+ICDCoMKgwqDCoMKgaWbCoCghZ2MtPm5lZWRfdmFsaWRfbWFzaykKPiA+ICDCoMKgwqDCoMKg
wqDCoMKgwqByZXR1cm7CoDA7Cj4gCj4gU28gdGhpcyBzZWVtcyB3cm9uZyBvbiBhIHN5c3RlbSB3
aXRoIE9GIGFuZCBBQ1BJLiAgSXQgYXNzdW1lcyB0aGF0IE9GIHRha2VzCj4gcHJpb3JpdHkgb3Zl
ciBBQ1BJIGlmIGJvdGggYXJlIGVuYWJsZWQsIGFuZCB0aGF0J3Mgbm90IHRydWUgaW4gZ2VuZXJh
bC4gIElmCj4gYW55dGhpbmcsIGl0J3MgdGhlIG90aGVyIHdheSBhcm91bmQuCgpEZXZpY2UgVHJl
ZSBoYXMgcHJpb3JpdHkgaW4gdGhlIExpbnV4IEtlcm5lbC4gIElmIHRoZSBib290bG9hZGVyCnBy
b3ZpZGVzIGJvdGggKHdoaWNoIGJyZWFrcyBTQkJSIGFuZCBFQkJSIGNvbXBsaWFuY2UgYnkgdGhl
IHdheSEpLAp0aGVuIHRoZSBrZXJuZWwgd2lsbCBjaG9vc2UgRFQuCgpJIGd1ZXNzIHRoaXMgaXMg
YmVjYXVzZSBEVCBpcyBtb3JlIGZsdWlkIChtdWNoIHRvIHRoZSBvcmlnaW5hdG9yJ3MKZGlzbWF5
IEkgc2hvdWxkIGltYWdpbmUpIGFuZCBjYW4gYmUgdXNlZCB0byBmaXggYnJva2VuIEFDUEkgdGFi
bGVzCndoaWNoIHRlbmQgdG8gYmUgbW9yZSBvZiBhIHBlcm1hbmVudCBmaXh0dXJlLgoKLS0gCkxl
ZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJv
Lm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86
IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
