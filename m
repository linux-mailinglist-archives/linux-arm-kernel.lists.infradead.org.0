Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8017EA78
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 04:51:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cfDF88NGKrrwsFZUOPDkkiHcv8JfPwizdHIE9KRv5rg=; b=WIaOu/4uwHpk2E2K+uDMXb+Kb
	awexNmGnlw0Ff5CObsrJg5PDVUU/DmZ3H7EiN5rJvxavhIsrXK4PPKKZKFCR7qUcn7jXm0+2CZjVi
	nh7sTJEbppps6yBwL1cZQ86t/LnhWEmq7+zoBvaAFU4BO5V6K93khUYv1onogkce5xnofNvM/7nzr
	gd3UKa/k5c6sz5MePjlpuopqSiHVSIXrmqjclQyuE3k/XAJdGia4jIYaO8jookL5HJWNsmddnlqby
	JcbZTnL2E/iWhCZieFYzbYjkbG9+43qbYP8Ng9t5s1Wxt+KZovC1QclhTQ3iXpZiT8MqhPfkYoNs1
	WIqujKxlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htNfT-0003wu-DR; Fri, 02 Aug 2019 02:51:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htNfH-0003wZ-Fg
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 02:51:32 +0000
Received: from [192.168.1.20] (cpe-24-28-70-126.austin.res.rr.com
 [24.28.70.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7B50F20665;
 Fri,  2 Aug 2019 02:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564714290;
 bh=VZWtsxsEoPXfoUe0XWlEranIFrtjA8rrOKUg+8kLYcw=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=NTOaM8au5YQme6OuTXGz9pPlHf2YB74IUR/wubB1VdGxDgES+sMirVLaGaWVIGsoz
 JWD6J1lslo4fhQvdwqQrtTZ22UxMjYrVJ3dmXQDABBZTE+njlRRHTHsjFrZHvqPVml
 nkvquAMcJE+I6pYQlMqge52acvXI9IUj2gSYyoyY=
Subject: Re: next/master boot: 265 boots: 17 failed, 184 passed with 64
 offline (next-20190730)
To: Jeffrey Hugo <jhugo@codeaurora.org>, Stephen Boyd <swboyd@chromium.org>,
 Lee Jones <lee.jones@linaro.org>, Linus Walleij <linus.walleij@linaro.org>,
 Mark Brown <broonie@kernel.org>
References: <5d403574.1c69fb81.14163.65d3@mx.google.com>
 <20190730134115.GE4264@sirena.org.uk>
 <CACRpkdYevQiwW8iED8_qBo5yCcj5yCGrM76Lu3MyrU6Vy4HoNg@mail.gmail.com>
 <5d41b01a.1c69fb81.84578.a0bc@mx.google.com>
 <cbbe381e-a154-ced1-fbcb-9db2135e4e5b@codeaurora.org>
From: Timur Tabi <timur@kernel.org>
Message-ID: <e974aa7e-98d4-1594-755b-6f57ab852cd7@kernel.org>
Date: Thu, 1 Aug 2019 21:51:28 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <cbbe381e-a154-ced1-fbcb-9db2135e4e5b@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_195131_550002_2AAF67E4 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Lina Iyer <ilina@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kernel Build Reports Mailman List <kernel-build-reports@lists.linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNy8zMS8xOSAxMjo1OCBQTSwgSmVmZnJleSBIdWdvIHdyb3RlOgo+IAo+IHN0YXRpY8KgaW50
wqBncGlvY2hpcF9hbGxvY192YWxpZF9tYXNrKHN0cnVjdMKgZ3Bpb19jaGlwwqAqZ2MpCj4gewo+
ICDCoMKgwqDCoMKgaWbCoChJU19FTkFCTEVEKENPTkZJR19PRl9HUElPKSkKPiAgwqDCoMKgwqDC
oMKgwqDCoMKgZ2MtPm5lZWRfdmFsaWRfbWFza8KgPcKgb2ZfZ3Bpb19uZWVkX3ZhbGlkX21hc2so
Z2MpOwo+ICDCoMKgwqDCoMKgaWbCoCghZ2MtPm5lZWRfdmFsaWRfbWFzaykKPiAgwqDCoMKgwqDC
oMKgwqDCoMKgcmV0dXJuwqAwOwoKU28gdGhpcyBzZWVtcyB3cm9uZyBvbiBhIHN5c3RlbSB3aXRo
IE9GIGFuZCBBQ1BJLiAgSXQgYXNzdW1lcyB0aGF0IE9GIAp0YWtlcyBwcmlvcml0eSBvdmVyIEFD
UEkgaWYgYm90aCBhcmUgZW5hYmxlZCwgYW5kIHRoYXQncyBub3QgdHJ1ZSBpbiAKZ2VuZXJhbC4g
IElmIGFueXRoaW5nLCBpdCdzIHRoZSBvdGhlciB3YXkgYXJvdW5kLgoKSVNfRU5BQkxFRChDT05G
SUdfT0ZfR1BJTykgaXMgbm90IHRoZSBjb3JyZWN0IHRlc3QgdG8gc2VlIGlmIE9GIHNob3VsZCAK
YmUgdXNlZC4gIEkgdGhpbmsgdGhpcyBzaG91bGQgYmUgcmVwbGFjZWQgd2l0aCB0aGUgT0YgZXF1
aXZhbGVudCBvZiAKaGFzX2FjcGlfY29tcGFuaW9uKCksIGJ1dCBldmVuIHRoYXQgbWlnaHQgbm90
IGJlIGVub3VnaC4gIEJhc2ljYWxseSwgCm9mX2dwaW9fbmVlZF92YWxpZF9tYXNrKCkgc2hvdWxk
IHJldHVybiB0aHJlZSB2YWx1ZXMsIDAgPSBkb24ndCBuZWVkIGl0LCAKMSA9IGRvZXMgbmVlZCBp
dCwgLTEgPSBncGlvIGluZm8gaXMgbm90IGluIE9GLgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
