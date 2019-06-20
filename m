Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2764CDB0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 14:26:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=70TyePQ3OlApW02x+7Tf/JRLiSBFYUjVGveWPO8qomo=; b=VHUn1QBLKXUxpg
	PdF9Xg9yH6bM2C0FT0B4C3CS1CUPVGTf2wFrQq5OT6MQaSB7fLtni/gDzsaFv1Pt2Z6u7Z/7AZxtA
	W+zB7f7Q4JKwEQldigSNTAZkgZMiCACeRmvFhkjs9opeMF5oFxmYDBXCUhOEM9LZrIOrmSVhCftym
	/YnXjIHY+PpQmAfrGMHM/bim9/mrbpn82OBrpPv/XiGKOEO/6v0hjX9N3EF3DVy+igxfyvz8RN1S+
	PejA7Lj6ff+egkfWPd1/LQ+sfDAbcrgy4QLJVuAAberDCAkv4SDuCb7ZmImVh3RFQQysU/7tkd1TG
	AFqkbHUPvMoJxogaWQPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdw8o-0000R7-Sd; Thu, 20 Jun 2019 12:26:10 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdw8Z-0000QV-83
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 12:25:56 +0000
Received: by mail-wm1-x341.google.com with SMTP id a15so2868763wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 05:25:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=nGbwT1fOo/WcjbkFQ3vvfod2lQownHb8jwDrl6e2Yzk=;
 b=CoPiD8NXuY79eSws3YaYvFv5PqRMRItqh+Yea5nAQAhZwlCElCUngtM6Yt5DY0rkf1
 oYiIsFQ5dFh1bKoP9oWtH3jQeEq9nzihwUW7FxVj9/D84o1ZYLTEeNk44akVaNP4ZPof
 XIdOkl+JLPTNaMVtUCV+PYg0sDn8YE2Ok4ag/ZI4UVLZ4+IFcc1FbH+2BZP147R9UUqB
 36p40GNpJbb0T9UOPjamUUuvHoCeM0jsuwUz2C7Rh4/P2GzyvUD+Yt+3QG9Nm5Tx7vqx
 T4YWi58KKkGszAsVYNp8XLrfW/9JUVLK+gHQnf8UB32GOJqblFrDZXuu2uN6p6xwY6GY
 SEqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=nGbwT1fOo/WcjbkFQ3vvfod2lQownHb8jwDrl6e2Yzk=;
 b=iQfNKUQFbraqlIpOkFnl9tQasUnGlnQ9fLESy2kNJ0dTptZYQTLkUolOuvZ3Yq9OPO
 KpoXSYppTq+qQ5zE0ieT6GU51Zf8uL2z2vqUQe7nGo5XEFfWQp2bNFh/ReiCGQ4N0OEY
 7yBfomhcSATclxeqoE1q5MP2RJPpFanLRzXTO61Kkc986kN8T2tEodlB/YWKr3khEWK9
 FdwVflJki1BPq3R7qCnRUYxDFLtFRQElbn6XeSvanfHrxOUbGeEZonbtLARUVPCn7wps
 MbU1UVKs4Iqs9FJ9h+yujwPS8qBqGwzkNmM57KBTXXH5oHClF7jRUwCPQdBysuhB6Ujf
 Kkfg==
X-Gm-Message-State: APjAAAUycQaM5uTkyQjahDa7L+rkEErss1+KN2jS/ibUu0yVcT/9UOPS
 wAusH8ybmPoqY60rGE1auHu6wg==
X-Google-Smtp-Source: APXvYqz6jnLBVywer3zqPeTDaiXVrGtBx8wKm76F0MgDMf6oUh3M5VIM8YxAxe12Bk0fOIKqMpgUlA==
X-Received: by 2002:a1c:a842:: with SMTP id r63mr2705755wme.117.1561033553765; 
 Thu, 20 Jun 2019 05:25:53 -0700 (PDT)
Received: from dell ([2.27.35.243])
 by smtp.gmail.com with ESMTPSA id p26sm21241456wrp.58.2019.06.20.05.25.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 20 Jun 2019 05:25:53 -0700 (PDT)
Date: Thu, 20 Jun 2019 13:25:51 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [RFC PATCH] acpi/arm64: ignore 5.1 FADTs that are reported as 5.0
Message-ID: <20190620122551.GC4699@dell>
References: <20190619121831.7614-1-ard.biesheuvel@linaro.org>
 <20190619122434.GA25656@e107155-lin> <20190620075732.GB4699@dell>
 <20190620094937.GB20872@e121166-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620094937.GB20872@e121166-lin.cambridge.arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_052555_353289_846F5E6E 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>, catalin.marinas@arm.com,
 will.deacon@arm.com, leif.lindholm@linaro.org, linux-acpi@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAyMCBKdW4gMjAxOSwgTG9yZW56byBQaWVyYWxpc2kgd3JvdGU6Cgo+IE9uIFRodSwg
SnVuIDIwLCAyMDE5IGF0IDA4OjU3OjMyQU0gKzAxMDAsIExlZSBKb25lcyB3cm90ZToKPiA+IE9u
IFdlZCwgMTkgSnVuIDIwMTksIFN1ZGVlcCBIb2xsYSB3cm90ZToKPiA+IAo+ID4gPiBPbiBXZWQs
IEp1biAxOSwgMjAxOSBhdCAwMjoxODozMVBNICswMjAwLCBBcmQgQmllc2hldXZlbCB3cm90ZToK
PiA+ID4gPiBTb21lIFF1YWxjb21tIFNuYXBkcmFnb24gYmFzZWQgbGFwdG9wcyBidWlsdCB0byBy
dW4gTWljcm9zb2Z0IFdpbmRvd3MKPiA+ID4gPiBhcmUgY2xlYXJseSBBQ1BJIDUuMSBiYXNlZCwg
Z2l2ZW4gdGhhdCB0aGF0IGlzIHRoZSBmaXJzdCBBQ1BJIHJldmlzaW9uCj4gPiA+ID4gdGhhdCBz
dXBwb3J0cyBBUk0sIGFuZCBpbnRyb2R1Y2VkIHRoZSBGQURUICdhcm1fYm9vdF9mbGFncycgZmll
bGQsCj4gPiA+ID4gd2hpY2ggaGFzIGEgbm9uLXplcm8gZmllbGQgb24gdGhvc2Ugc3lzdGVtcy4K
PiA+ID4gPiAKPiA+ID4gPiBTbyBpbiB0aGVzZSBjYXNlcywgaW5mZXIgZnJvbSB0aGUgQVJNIGJv
b3QgZmxhZ3MgdGhhdCB0aGUgRkFEVCBtdXN0IGJlCj4gPiA+ID4gNS4xIG9yIGxhdGVyLCBhbmQg
dHJlYXQgaXQgYXMgNS4xLgo+ID4gPiA+IAo+ID4gPiAKPiA+ID4gTWFrZXMgc2Vuc2UgYW5kIGxv
b2tzIHNpbXBsZSB0byBtZS4KPiA+ID4gCj4gPiA+IEFja2VkLWJ5OiBTdWRlZXAgSG9sbGEgPHN1
ZGVlcC5ob2xsYUBhcm0uY29tPgo+ID4gCj4gPiBDb3VsZCB3ZSBwbGVlZWVlYXNlIGhhdmUgdGhp
cyBpbiBmb3IgdjUuMz8KPiA+IAo+ID4gV2UgaGF2ZSBhdmFpbGFibGUsIGNvbnN1bWVyLWxldmVs
IHBsYXRmb3JtcyB0aGF0IHJlbHkgb24gdGhpcyBjaGFuZ2UuCj4gCj4gQnV0IHdlIGRvIG5vdCBo
YXZlIHRoZSBrZXJuZWwgaW5mcmFzdHJ1Y3R1cmUgdG8gc3VwcG9ydCB0aGVtIHNvCj4gSSBhbSBm
aW5lIHdpdGggaXQgYnV0IHVyZ2VuY3kgaXMgcXVlc3Rpb25hYmxlIGFzIGZhciBhcyBJIGFtCj4g
Y29uY2VybmVkLgoKWWVzIHdlIGRvLiAgQXQgbGVhc3QsIHdlIHdpbGwgaW4gdjUuMy4KCi0tIApM
ZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFy
by5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJv
OiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
