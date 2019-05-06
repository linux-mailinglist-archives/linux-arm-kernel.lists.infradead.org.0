Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4701474A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 11:12:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VN31hyTaLqhLzWvxpB7YzUbMvIgBgf0aUuK74MV/PGg=; b=QwRtAMlU8aUKWH
	Xt7GkSeqeBW0Qjh14L+XQz5Onvsv5xwf9SAgjAkq/PDmVxfXUQsWcYzRI20F0WHPw+fpmxde6Tje8
	lNAcu8wgGlvC8G2kcaewtQDL9C0heEUadQb+FtlMO1shEcYdSpg0Xor+wqzNQgR2vA7x+6MCDxLf/
	/PMHqWu/d6SPY2s1ZQ8m/x7F3WFOvmgSMV+2uPDND3LxtSOtG9RYhSl1XurqX45vn0FPDPjKkmnlG
	YxQtIw7AcgkgCOv2P3ZmDCs/viKZ+txhZ4535oqOzAzW5tLvMEGOTpc0KY2Cfubc1JSeetdOuF/L/
	k8sLFGdMxa3DuxTAS9vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNZfj-0000nE-Sh; Mon, 06 May 2019 09:12:31 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNZer-0008KN-IG
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 09:11:39 +0000
Received: by mail-wr1-x442.google.com with SMTP id e11so3193464wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 02:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ZYgB2KrpZpzHR2v58pOeNxb0piw7Uh4ZRV+bzlYTbr0=;
 b=u2J8ntojMwwTiT61fQVbYSc6leVgbIFryxDIY6tusWwx8OoKgmgU3nnwsm3mIKYeyi
 w3Ema4SBEni7wjmvjQoYZ3YY73MiCxwaWsAi2nF/t7QU6/rjLhY/VlIWL6+lzWKKGKTF
 NMM4TccQsk9ElBwU/NroSzbWJWxhapprUFUdPvtNq/unk8wSiRpud1j26MKRBVQA086K
 Hucu4iRvWBgq9wZ641nXFpp96k7uYUQuFNNOINSNap5wsl3lgpyz0Xo8OQZHRTDkdvrn
 wDN1Ec1xLSvxYY6RZIuHcZLR4FAwFXAG7crPalpmyqsRtNu14doT6mNSxxe5yfK8oxHb
 stCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZYgB2KrpZpzHR2v58pOeNxb0piw7Uh4ZRV+bzlYTbr0=;
 b=K9DgcOX11x752J9WyudK39s4jgYgJwRRvvg1JtKOo1noCII3Q7ivCmkN6tnDa3dAgB
 HDa1gleWyAKmqwyUnlkobbwv5fPz9mIM4cjbxbKyZu/fqWFbr/IFdb/LiNwb3IfPJWxB
 whiTiPP2gb4jbzwX4P6uftz3Oe13aRLP3Qg3QxOnGeOdN35bevTs4fT6Amobmdt2fM3W
 09jl21ZCkBS1nZY4urMgm3i+5+AvT8OOK9B0GxehAV/XN9J97ANSMlcBdKyfR8GAfLJv
 0f0IlpsNlViI7jSfdPiKOzALNmESFu5wdZaS1YbQBgb4Qy1+7IL92/vkXohT03S9k/dR
 vmFA==
X-Gm-Message-State: APjAAAVC4l0PbXUzWzmfsr1TIvNKecieY95iZ1rWQH8B3pDCTWv4Igq0
 tMcTnvDl4kLHKCFmzQ2GSvNPXQ==
X-Google-Smtp-Source: APXvYqxNG53bmLOSPGjq6RCjuw7D0+kYajE7xI+MNqEr9jVyVlQpWJml25+KSeZufn+RO8H6LB6LdQ==
X-Received: by 2002:a05:6000:1181:: with SMTP id
 g1mr2362032wrx.56.1557133894720; 
 Mon, 06 May 2019 02:11:34 -0700 (PDT)
Received: from [192.168.0.41] (sju31-1-78-210-255-2.fbx.proxad.net.
 [78.210.255.2])
 by smtp.googlemail.com with ESMTPSA id b10sm15331432wrh.59.2019.05.06.02.11.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 02:11:34 -0700 (PDT)
Subject: Re: [PATCH 1/3] clocksource/drivers/ixp4xx: Drop ifdef
To: Linus Walleij <linus.walleij@linaro.org>, arm@kernel.org
References: <20190506063109.3072-1-linus.walleij@linaro.org>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <297a0b9b-fbd2-4a35-12bb-2cfdecf3d196@linaro.org>
Date: Mon, 6 May 2019 11:11:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190506063109.3072-1-linus.walleij@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_021137_638593_AD86AB97 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDYvMDUvMjAxOSAwODozMSwgTGludXMgV2FsbGVpaiB3cm90ZToKPiBBcyB0aGUgc2NoZWRf
Y2xvY2sgcmVnaXN0cmF0aW9uIHdhcyBwdXQgaW5zaWRlIGFuIGlmZGVmCj4gaW4gdGhlIGRyaXZl
ciwgYnV0IHRoaXMgaXMgbm90IGFwcHJvcHJpYXRlLCB0aGUgaWZkZWYKPiBpcyBvbmx5IGFwcHJv
cHJpYXRlIGZvciBkZWxheV90aW1lciwgd2hpY2ggaXMgbm90IHlldAo+IGltcGxlbWVudGVkLgo+
IAo+IEZpeGVzOiAxM2UwYjQwNTliOTggKCJjbG9ja3NvdXJjZS9kcml2ZXJzL2l4cDR4eDogQWRk
IGRyaXZlciIpCj4gUmVwb3J0ZWQtYnk6IFN0ZXBoZW4gUm90aHdlbGwgPHNmckBjYW5iLmF1dWcu
b3JnLmF1Pgo+IENjOiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz4K
PiBDYzogVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+Cj4gU2lnbmVkLW9mZi1i
eTogTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPgoKQWNrZWQtYnk6IERh
bmllbCBMZXpjYW5vIDxkYW5pZWwubGV6Y2Fub0BsaW5hcm8ub3JnPgoKCj4gLS0tCj4gQVJNIFNv
QyBmb2xrczogcGxlYXNlIGFwcGx5IHRoaXMgZGlyZWN0bHkgb24gdGhlIElYUDR4eAo+IGJyYW5j
aCB3aGVyZSB0aGUgSVhQNHh4IHJld29yayBpcyBwZW5kaW5nIGZvciB2NS4yLgo+IC0tLQo+ICBk
cml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLWl4cDR4eC5jIHwgMiAtLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbG9ja3NvdXJjZS90
aW1lci1peHA0eHguYyBiL2RyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItaXhwNHh4LmMKPiBpbmRl
eCA0MDQ0NDViYzExZWEuLjVjMjE5MGI2NTRjZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2Nsb2Nr
c291cmNlL3RpbWVyLWl4cDR4eC5jCj4gKysrIGIvZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1p
eHA0eHguYwo+IEBAIC0yMjIsOSArMjIyLDcgQEAgc3RhdGljIF9faW5pdCBpbnQgaXhwNHh4X3Rp
bWVyX3JlZ2lzdGVyKHZvaWQgX19pb21lbSAqYmFzZSwKPiAgCWNsb2NrZXZlbnRzX2NvbmZpZ19h
bmRfcmVnaXN0ZXIoJnRtci0+Y2xrZXZ0LCB0aW1lcl9mcmVxLAo+ICAJCQkJCTB4ZiwgMHhmZmZm
ZmZmZSk7Cj4gIAo+IC0jaWZkZWYgQ09ORklHX0FSTQo+ICAJc2NoZWRfY2xvY2tfcmVnaXN0ZXIo
aXhwNHh4X3JlYWRfc2NoZWRfY2xvY2ssIDMyLCB0aW1lcl9mcmVxKTsKPiAtI2VuZGlmCj4gIAo+
ICAJcmV0dXJuIDA7Cj4gIH0KPiAKCgotLSAKIDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5h
cm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5h
cm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8Cjxo
dHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGlu
YXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
