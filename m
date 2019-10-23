Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 363B5E1BD5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 15:11:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wF9Cp28emMj88uQE1AfcKCMiTuwkULS0HraItP8tAww=; b=AvNQS6l5dEtv2f
	59RP7jv/S+S7UVRIP+l0P3e/VP9mrCeTDheN99TDjmmJczWEb7htJpUVvTz+WGTjr4MVA+m8+xe6C
	ZTEsmZfhkvXywVCtgFOS6zHglNcWa1r9yQRTn8UpYCd4ce/y4oDD3jDTheeqt8KqKtd7BPp/glrts
	Ci7yo0Nd12zus3f5ZB8b2ABBhOdwIX6Eu8fIvDwW4t0ZuQGH4v9JkQSjR7L0yHWg/Yt5/CcJIMoU4
	qNQw3TwOS7KssQc4pwhbZGdl7KaODR1Sn63eRr+NVnXQp6YtGgcKbuZppLdoeNWbucaJCvphg4k4e
	GnmjMJ8q3I8YtT8N7bsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNGPo-0003eE-5h; Wed, 23 Oct 2019 13:11:04 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNGPe-0003dt-DH
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 13:10:56 +0000
Received: by mail-ed1-f67.google.com with SMTP id r4so15715848edy.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 06:10:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=lzwXfyhUE7yc9zrzbjqMe71sKuHvjq9U3aqm0Bd1AoI=;
 b=dtGKoUN3FeMiFW3n96I3uKuT/YoJhIFX4KPMUdAimwyAx51tiso6nuYee0x6SdhPh2
 GV0rykjEftkxAvnLGVYp6WOf3EGbgII1Kf0NAf4QLjPqrcehKCmMhP20xOYz+SxBQiQV
 zw+HerFNOuVP3xAEqRQSDLaDVKUiSdo5iFrBtAxnJNF+j1nMrVpfIWrEl3pCriYlY9gK
 k25CQ4kzCd5RQkO3Hl3c+3GPqqokm2VuZnYFWT1PAuGghNyLwO2pGxZs7nKoCuXAX063
 rI7wzrL8eEAjZ5tIGhPjoK7yMIDZIhGmaf5hlm3N7DAWPksrjMGzrib9xJXaqQWfbPp7
 mpGQ==
X-Gm-Message-State: APjAAAVcP3M5UzqH3mkIqd3DrLMY5pZRSy8nELId7aCAv1i9FlqMsenb
 GH2NgcNS+UzyihP3NPb9/qk=
X-Google-Smtp-Source: APXvYqyft44OcCGb0xN0+fC1gmfK8usNRgvA/I5KY4vuTv2zLifQ5kptU9qNo1AQahi2rM4m7Aa/dg==
X-Received: by 2002:aa7:c595:: with SMTP id g21mr36717915edq.79.1571836252860; 
 Wed, 23 Oct 2019 06:10:52 -0700 (PDT)
Received: from pi3 ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id b12sm785479edq.75.2019.10.23.06.10.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 06:10:52 -0700 (PDT)
Date: Wed, 23 Oct 2019 15:10:49 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 00/36] ARM: samsung platform cleanup
Message-ID: <20191023131049.GG11048@pi3>
References: <20191010202802.1132272-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010202802.1132272-1-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_061054_449234_42945C9D 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-fbdev@vger.kernel.org, alsa-devel@alsa-project.org,
 dri-devel@lists.freedesktop.org, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-clk@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Lihua Yao <ylhuajnu@outlook.com>, Kukjin Kim <kgene@kernel.org>,
 linux-serial@vger.kernel.org, linux-input@vger.kernel.org,
 =?utf-8?B?UGF3ZcWC?= Chmiel <pawel.mikolaj.chmiel@gmail.com>,
 linux-pwm@vger.kernel.org, Sergio Prado <sergio.prado@e-labworks.com>,
 linux-pm@vger.kernel.org, Lihua Yao <ylhuajnu@163.com>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 patches@opensource.cirrus.com, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBPY3QgMTAsIDIwMTkgYXQgMTA6Mjg6MDJQTSArMDIwMCwgQXJuZCBCZXJnbWFubiB3
cm90ZToKPiBJJ3ZlIHNwZW50IHNvbWUgdGltZSBsb29raW5nIGF0IHRoZSByZW1haW5pbmcgQVJN
djQvQVJNdjUgcGxhdGZvcm1zCj4gdGhhdCBhcmUgbm90IHBhcnQgb2YgQVJDSF9NVUxUSVBMQVRG
T1JNLCBhbmQgdHJpZWQgdG8gZ2V0IHRoZW0gY2xvc2VyCj4gdG8gdGhhdC4gSGVyZSBpcyB3aGF0
IGNhbWUgb3V0IG9mIHRoYXQgZm9yIHRoZSBzYW1zdW5nIHBsYXRmb3JtczoKPiAKPiAqIEV4eW5v
cyBhbmQgczVwdjIxMCBhcmUgbWFkZSBpbmRlcGVuZGVudCBvZiBwbGF0LXNhbXN1bmcKPiAqIGRl
dmljZSBkcml2ZXJzIHN0b3AgdXNpbmcgbWFjaC8qLmggaGVhZGVycyBmb3IgczNjMjR4eAo+ICAg
KGFuZCBvdGhlciBwbGF0Zm9ybXMgbm90IGluIHRoaXMgc2VyaWVzKQo+ICogczNjMjR4eCBhbmQg
czNjNjR4eCBnZXQgbWVyZ2VkIGludG8gbWFjaC1zM2MsIHJlbW92aW5nCj4gICB0aGUgbmVlZCBm
b3IgcGxhdC1zYW1zdW5nIChJIGhhdmUgb3RoZXIgcGF0Y2hlcyBmb3IgdGhlCj4gICByZW1haW5p
bmcgcGxhdC0qIGRpcmVjdG9yaWVzKQo+ICogbWFjaC9pby5oIGdldHMgY2xlYW5lZCB1cCB0byBv
bmx5IGJlIG5lZWRlZCBmb3IgQkFTVAo+ICAgUEMxMDQgbW9kZSAobG9va2luZyBmb3IgaWRlYXMg
dG8gcHJvY2VlZCkKPiAqIG1hY2gvaXJxcy5oIHJlbWFpbnMgZm9yIG5vdywgdGhpcyBzdGlsbCBu
ZWVkcyB0byBiZSBjb252ZXJ0ZWQKPiAgIHRvIHNwYXJzZSBJUlFzLgo+IAo+IFNvbWUgYml0cyBh
cmUgYSBsaXR0bGUgdWdseSwgYnV0IG92ZXJhbGwgSSB0aGluayB0aGlzIGEgYmlnCj4gaW1wcm92
ZW1lbnQuCj4gCj4gVGhlIGNvbnRlbnRzIGFyZSBhdmFpbGFibGUgZm9yIHRlc3RpbmcgaW4KPiAK
PiBnaXQ6Ly9rZXJuZWwub3JnOi9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYXJuZC9wbGF5Z3Jv
dW5kLmdpdCBzM2MtbXVsdGlwbGF0Zm9ybQoKV2hlbiBzZW5kaW5nIHYyLCBjYW4geW91IENjOgoK
UGF3ZcWCIENobWllbCA8cGF3ZWwubWlrb2xhai5jaG1pZWxAZ21haWwuY29tPgpMaWh1YSBZYW8g
PHlsaHVham51QG91dGxvb2suY29tPgoob3IgTGlodWEgWWFvIDx5bGh1YWpudUAxNjMuY29tPiBp
ZiBvdXRsb29rLmNvbSBib3VuY2VzKQpTZXJnaW8gUHJhZG8gPHNlcmdpby5wcmFkb0BlLWxhYndv
cmtzLmNvbT4KU3lsd2VzdGVyIE5hd3JvY2tpIDxzLm5hd3JvY2tpQHNhbXN1bmcuY29tPgoKVGhl
c2UgYXJlIGZvbGtzIHdoaWNoIHRvIG15IGtub3dsZWRnZSBoYWQgd29ya2luZyBTM0MgYW5kIFM1
UCBib2FyZHMKc28gbWF5YmUgdGhleSBjb3VsZCBwcm92aWRlIHRlc3RpbmcuCgpCZXN0IHJlZ2Fy
ZHMsCktyenlzenRvZgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
