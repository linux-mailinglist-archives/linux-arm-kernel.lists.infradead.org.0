Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F841B1AA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 10:04:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EMi4IQDm7V+7BnwlT1Ff1ZXCmZTOu5p6K0k+H1KEJuE=; b=SlDrU089/HuKdg
	H905WMNZxe214A9sJueTn4A7VuwI6bOHAjQme65rmLZ93UjwA4t3QM/qGS+RACRoWqYzN7/JV09SP
	gdo1xFnprJVdBd3GLZmuNToiVhtqAojBfCblKBUURP5ik6Y5JG+BGwFJRvJyZPm1/8gmavvyI4YVg
	2drF81hHcQcxsGSM/17cObMdDeaZGBKs8/SOONN03BUsv2+UFXoZ2mUp32aZWYRaq9afLlgr7R2pe
	sWsbk1SxfevnAxkElB9sxGKb6v2u2nlEA+426JTuryDk99jq1Y4bvlbBTR3mEwFmsesxBvNAAuOlD
	jKC8NlgZG8HvpALOnm3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ5wq-0008B5-ML; Mon, 13 May 2019 08:04:36 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ5wj-0008AF-Bl
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 08:04:30 +0000
Received: by mail-wr1-x441.google.com with SMTP id w8so11639475wrl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 01:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=FdczpF+HAtCkzG6jTzIfOqqlgewnqObJbWmhu1Fz2yM=;
 b=Sld5lvhmRWIvM91ctJtd//tpVz1uloPeXyHekhDCoKSGrt3JP/Vx+70r8vP1bQGcwR
 iuYJHi7x2/TnAnszH8u3hL9tssUToBtcKD1H102oNQG7gsGzal8StFurBHnmfiXuL9SQ
 mvtTiKabDcfh+hEcAcdmmdAgMcZ8CdtsRAtMGqvi87YqAHOpnlZ/EFiM2TzaRf+KYfte
 j0DKalgnO5CLWHl9KTE0y36Gue9BnTzanHx2T562Oiz9c1SaALAgOrPc2BVC5XPUq4LO
 cvk9NZ21aRi846aiVdo271IK0QwDfJlQdVDMGZmD1repraLSDKZoqcZBam+wb9qoPkMa
 hZAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FdczpF+HAtCkzG6jTzIfOqqlgewnqObJbWmhu1Fz2yM=;
 b=q4ZJGC1eDJ9E8m80QD1W5jFbXUNCmR/XlMEs+sQStxxxcqEMfYq3FVhVUdIebYRjpP
 HNubrt/bJi25LZAc5s0sFHJJZrAhOwifsLxbDGziuAwJxqHVXgQ5QzeSf1jlB2ie/1xR
 u2tqeXBT5Kx/c5Vx9wiXQvSXQ47VRdFfK40srluHvEjSYGFtoSOKoGiap01IwY+YHoyR
 0lYwGeRRph+4dajvEr/UbEhpXg/S4z1ckNdmSTiTrY71g4R9DKVJD7mSeTEhIvkR7cFd
 TmJ6+9jbsUrZHOtp9WglfGjoOXXgCReONhPsQeRZbOsRcyQWK2tBXr8rQBKmX7qA3kVE
 rqDw==
X-Gm-Message-State: APjAAAUF00HIoVhrea087sSpH4J9Pz0jE9HIZKgMcXFpA9JL68KGFeVT
 XChY+Mhj2J3Z6slfYUFtmH5PKw==
X-Google-Smtp-Source: APXvYqzvj8NuvJYWXTRnd2qzSR8XJHh9J+mCXfue5ISEeA4KA6HWrXpRsrTWXWt04RTsIrJWlms0Jw==
X-Received: by 2002:a5d:434c:: with SMTP id u12mr17399442wrr.92.1557734667055; 
 Mon, 13 May 2019 01:04:27 -0700 (PDT)
Received: from [192.168.0.41] (205.29.129.77.rev.sfr.net. [77.129.29.205])
 by smtp.googlemail.com with ESMTPSA id e8sm29815369wrc.34.2019.05.13.01.04.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 01:04:26 -0700 (PDT)
Subject: Re: [RFC 0/2] clocksource: davinci-timer: new driver
To: Bartosz Golaszewski <brgl@bgdev.pl>
References: <20190417144709.19588-1-brgl@bgdev.pl>
 <CAMRc=MdhfEM_CndCjCkY9kWeu+3VPTA7tmTy5PH=2XforZ6aLw@mail.gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <861538a7-9ee4-307d-433e-54e51a54fb98@linaro.org>
Date: Mon, 13 May 2019 10:04:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAMRc=MdhfEM_CndCjCkY9kWeu+3VPTA7tmTy5PH=2XforZ6aLw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_010429_411692_9FCFD612 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: David Lechner <david@lechnology.com>, Kevin Hilman <khilman@kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTMvMDUvMjAxOSAwOTo1NCwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPiDFm3IuLCAx
NyBrd2kgMjAxOSBvIDE2OjQ3IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJyZ2xAYmdkZXYucGw+IG5h
cGlzYcWCKGEpOgo+Pgo+PiBGcm9tOiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxiZ29sYXN6ZXdza2lA
YmF5bGlicmUuY29tPgo+Pgo+PiBIaSBEYW5pZWwsCj4+Cj4+IGFzIGRpc2N1c3NlZCAtIHRoaXMg
aXMgdGhlIGRhdmluY2kgdGltZXIgZHJpdmVyIHNwbGl0IGludG8gdGhlIGNsb2NrZXZlbnQKPj4g
YW5kIGNsb2Nrc291cmNlIHBhcnRzLgo+Pgo+PiBTaW5jZSBpdCB3b24ndCB3b3JrIHdpdGhvdXQg
YWxsIHRoZSBvdGhlciAobGVmdCBvdXQgZm9yIG5vdykgY2hhbmdlcywgSSdtCj4+IG1hcmtpbmcg
aXQgYXMgUkZDLgo+Pgo+PiBUaGUgY29kZSBoYXMgYmVlbiBzaW1wbGlmaWVkIGFzIHJlcXVlc3Rl
ZCwgdGhlIGR1cGxpY2F0ZWQgZW51bXMgYW5kIHRoZQo+PiBkYXZpbmNpX3RpbWVyIHN0cnVjdHVy
ZSBoYXZlIGJlZW4gcmVtb3ZlZC4KPj4KPj4gUGxlYXNlIGxldCBtZSBrbm93IGlmIHRoYXQncyBi
ZXR0ZXIuIEkgcmV0ZXN0ZWQgaXQgb24gZGE4NTAtbGNkaywgZGE4MzAtZXZtCj4+IGFuZCBkbTM2
NS1ldm0uCj4+Cj4+IEJhcnRvc3ogR29sYXN6ZXdza2kgKDIpOgo+PiAgIGNsb2Nrc291cmNlOiBk
YXZpbmNpLXRpbWVyOiBhZGQgc3VwcG9ydCBmb3IgY2xvY2tldmVudHMKPj4gICBjbG9ja3NvdXJj
ZTogdGltZXItZGF2aW5jaTogYWRkIHN1cHBvcnQgZm9yIGNsb2Nrc291cmNlCj4+Cj4+ICBkcml2
ZXJzL2Nsb2Nrc291cmNlL0tjb25maWcgICAgICAgICB8ICAgNSArCj4+ICBkcml2ZXJzL2Nsb2Nr
c291cmNlL01ha2VmaWxlICAgICAgICB8ICAgMSArCj4+ICBkcml2ZXJzL2Nsb2Nrc291cmNlL3Rp
bWVyLWRhdmluY2kuYyB8IDM0MiArKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4+ICBpbmNs
dWRlL2Nsb2Nrc291cmNlL3RpbWVyLWRhdmluY2kuaCB8ICA0NCArKysrCj4+ICA0IGZpbGVzIGNo
YW5nZWQsIDM5MiBpbnNlcnRpb25zKCspCj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9j
bG9ja3NvdXJjZS90aW1lci1kYXZpbmNpLmMKPj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRl
L2Nsb2Nrc291cmNlL3RpbWVyLWRhdmluY2kuaAo+Pgo+PiAtLQo+PiAyLjIxLjAKPj4KPiAKPiBI
aSBEYW5pZWwsCj4gCj4gaXQncyBiZWVuIGFsbW9zdCBhIG1vbnRoIHNvIGEgZ2VudGxlIHBpbmcu
IEFueSBjb21tZW50cyBvbiB0aGF0PwoKT2ggcmlnaHQsIEkndmUgYmVlbiBkaXN0cmFjdGVkIHdp
dGggb3RoZXIgdGhpbmdzLCBzb3JyeSBmb3IgdGhhdC4gTGV0IG1lCnJldmlldyBpdCB0b2RheS4K
CgotLSAKIDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJj
ZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNl
Ym9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEv
bGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+
IEJsb2cKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
