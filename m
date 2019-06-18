Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E479D4A957
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 20:04:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y9cuWlvAl8JHxWrtG6RhwELqPa8cYngvAvRa+8fl1vI=; b=fX7S3xcjyZ3aTP
	jQARylFMkE0QPtRL1VY/ZipFufTqLK+Dl5jTkkiydnFNbdnitsLnVOnse7vDDSIU4W33xFAc2k3DU
	MAG8VAnF0G21LZgnbL+CscrPB5M8WrQIk0Icn/xFaPuoBvFGit1Ljd0Try4Qs8M4Rt5Z5LC3h8SZv
	CzrZzKepK7kmVJLRjQQWBacroVj16x6+FHHjRqr/O97J+C4iaK31Oc1LpK2y4p4/b/1Nft2P91Zl0
	fVQcmqBB+naiN+Ulc6sTqDNNivBrbYBNRW+iGJdHM3RdZYJlrDY549HY9tdX4UY2Z9Wx6zshGtBVE
	x2pttMOzzkew1gDpm/tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdISj-0000zH-Rq; Tue, 18 Jun 2019 18:04:05 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdISR-0000pe-WF
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 18:03:49 +0000
Received: by mail-wm1-x343.google.com with SMTP id v19so4189988wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 11:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:from:to:cc:references:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lttFEPfRt0Wuf+nPnx+84S2YbaD4CrvqKuctJOETCxw=;
 b=aCiwuqgCoo4NcVk1r8yrpB5ja/70MVtjTNFbV8qOHm9Wzv+nSg1HsbXuvlVGzBKs7k
 wGzjvdRGqJ8C6fKoiu5CKoVDDeSj6ZKFkz24qafeX4CpaKDgMbnYKnd+bJillG8aH7MR
 eXWzqbxdITLacR/SCw85em+s9QMhjB3vCLJXjZ19EY+vKayERMvspXDFyZ+s88l/V8nT
 S3U7FyfBPSLnH4XPD22A+XOOmvrmEjT21O0XXao2/a8zx50mTYeYVi/hyz7FNCSinhKP
 WHBbOpKFuhmNX7Ar0KWsnmycUJ4G4TWTisGU25J8DmZrpiJGGN5TuYmGc1I6Fey+NU4a
 XkKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=lttFEPfRt0Wuf+nPnx+84S2YbaD4CrvqKuctJOETCxw=;
 b=jSdTTqZYeNgt3SGffvaCrgW9dT/CiQS09//j9WC0Gd5U+IpeQd1JwSHhrJMqEmqjT0
 H+9knZKp0x/Teb9Lj7gVqSje5xToNwXfqQByytG+ao1pWKXXLbLWmRCFqxUgu0cmc6IC
 I9hHcUkLQ6ozmjhIMh8aBMQggKXbDEo7p8hQ+SoVFezvujIP/akVkhhNJO3wtRfx5rpu
 /5dlWzhWQNMm2E/ghGFURsX5v+a/wpJVHbkD8rtEQVrjSgHv2WR0tmQnJy8fbWm+E3Tc
 B8DZjTYw9WF/O5z+kxSYldPlRd/D6TIMs+syLrRkbpdsVmWt5NZ99D3c2UygY9dC7Amv
 Yd0A==
X-Gm-Message-State: APjAAAUdGqXKb1SDW3rJzR8TjTT+BSvbajHFyfrEZ+KYpuroSwmi0lU0
 a8vnY+eBhbxNaJ/fT4/68J957w==
X-Google-Smtp-Source: APXvYqyyn77pcD13tUuJSVuYzuDle+h6Jp7klHLZo1Lq9sopUius8XOWIcce8iFAlqNmjLRuHAdv8Q==
X-Received: by 2002:a1c:6a0e:: with SMTP id f14mr4992240wmc.154.1560881025473; 
 Tue, 18 Jun 2019 11:03:45 -0700 (PDT)
Received: from [192.168.0.41] (sju31-1-78-210-255-2.fbx.proxad.net.
 [78.210.255.2])
 by smtp.googlemail.com with ESMTPSA id t140sm4282881wmt.0.2019.06.18.11.03.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 11:03:44 -0700 (PDT)
Subject: Re: [RFC v3 0/2] clocksource: davinci-timer: new driver
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Sekhar Nori <nsekhar@ti.com>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Kevin Hilman <khilman@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 David Lechner <david@lechnology.com>
References: <20190605083334.22383-1-brgl@bgdev.pl>
 <1ac8cfcf-1d77-9b6b-4aab-4171f6cf80fc@ti.com>
 <67e4688a-09d5-61a3-7406-a91f55045004@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <5250ca8e-81bf-6b93-1f00-8121605e9baf@linaro.org>
Date: Tue, 18 Jun 2019 20:03:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <67e4688a-09d5-61a3-7406-a91f55045004@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_110348_040962_E16C9DD0 
X-CRM114-Status: GOOD (  17.85  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTQvMDYvMjAxOSAxNjoyNSwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4gT24gMTQvMDYvMjAx
OSAxMjozOSwgU2VraGFyIE5vcmkgd3JvdGU6Cj4+IEhpIERhbmllbCwKPj4KPj4gT24gMDUvMDYv
MTkgMjowMyBQTSwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPj4+IEZyb206IEJhcnRvc3og
R29sYXN6ZXdza2kgPGJnb2xhc3pld3NraUBiYXlsaWJyZS5jb20+Cj4+Pgo+Pj4gVGhpcyBpcyBh
bm90aGVyIHZlcnNpb24gb2YgdGhlIG5ldyBkYXZpbmNpIGNsb2Nrc291cmNlIGRyaXZlci4gQWZ0
ZXIgbXVjaAo+Pj4gZGlzY3Vzc2lvbiB0aGlzIGNvbnRhaW5zIG1hbnkgY2hhbmdlcyB0byBzaW1w
bGlmeSBhbmQgaW1wcm92ZSB0aGUgZHJpdmVyLgo+Pgo+PiBEb2VzIHRoaXMgbG9vayBnb29kIHRv
IHlvdSBub3c/IElmIHllcywgY2FuIHlvdSBwbGVhc2UgbWVyZ2UgYW5kIHByb3ZpZGUKPj4gYW4g
aW1tdXRhYmxlIGJyYW5jaCB0byBtZSBzbyBJIGNhbiBtZXJnZSBkZXBlbmRlbnQgbWFjaC1kYXZp
bmNpIHBhdGNoZXM/Cj4gCj4gWWVzLCBJIHRoaW5rIGl0IGlzIGZpbmUuCj4gCj4gaHR0cDovL2dp
dEBnaXQubGluYXJvLm9yZy9wZW9wbGUvZGFuaWVsLmxlemNhbm8vbGludXguZ2l0Cj4gdGltZXJz
L2RyaXZlcnMvZGF2aW5jaQo+IAo+IEl0IGlzIHY1LjItcmM0ICsgKDIgeCBwYXRjaGVzKQo+IAo+
IEl0IGlzIG1lcmdlZCBpbiBjbG9ja2V2ZW50cy9uZXh0IHdoaWNoIGlzIGV4cG9ydGVkIHRvIGxp
bnV4LW5leHQgYW5kIGZvcgo+IGtlcm5lbC1jaS4KPiAKPiBBRkFJVSwgdGhlIHBhdGNoIHdhcyBj
b21waWxlZCBhbmQgdGVzdGVkLiBJZiBub3QsIHBsZWFzZSBsZXQgbWUga25vdy4KPiAKPiBQbGVh
c2UsIHdhaXQgYSBjb3VwbGUgb2YgZGF5cyBJIGNvbmZpcm0gdGhlIHRlc3RzIHBhc3NlZCBhbmQg
eW91IGNhbgo+IGNvbnNpZGVyIHRoZSBicmFuY2ggaW1tdXRhYmxlLgoKbGtwIGNvbXBsYWluZWQs
IHBsZWFzZSBkbyBub3QgdXNlIHRoZSBicmFuY2guCgpJJ20gd2FpdGluZyBmb3IgQmFydG9zeiB0
byBmaXggdGhlIGlzc3VlLgoKCi0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5v
cmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzog
IDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6
Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8u
b3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
