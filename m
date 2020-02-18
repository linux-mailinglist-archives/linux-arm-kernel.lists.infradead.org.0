Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBF0162D14
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 18:35:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9/M2CgOQSO9w+X+1xJfLVADGIZXGquBnZHpIHxeAlBs=; b=NQ97U+mSfKJw63
	ABMSGbRnoQ+3ytup0f0tOfgrVZdV+u4B2ryOoz+N/vt/GTtLW+X90H11zTciA3c6Fb9Lbu9HtjgFw
	phIO303PvlVsNHAqrKhVY5pAlWu774sfzrH4XCc8rtpbFYJCJCR4IC40dhopnABdlvfXc1eKJolyh
	X+30B4INUC7KcBi7XufAUuGLNsqEY/on8HXlYguESwzsjGJMw8MHlAg9nvlOi4O0dUenWG3ZX3lyH
	WuuIXyFse69SXNvO9i88LFOjDKHpIm5lnsBp9F4M8uAWMuPvtTGUb1eYMVLhNRazpRMoWi9gw+xZn
	8QX+IIUltKVV1dxGehnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j46mO-0007k1-SL; Tue, 18 Feb 2020 17:35:28 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j46mF-0006Wn-TI
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 17:35:21 +0000
Received: by mail-wm1-x343.google.com with SMTP id a9so3849279wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 09:35:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=RILWoXXun3vjq+42du8IC+UmbZgRdTK1KmCkih2WLgI=;
 b=GcgG0g7oTyfqugWUxGmwTGyE0HE9J8IbJgdE4weTCvpOmnnj/PLJJRvmAzk5qQMHn3
 le7wf/QB761zG1i/AU9+ZziDLItIJNxoADUEkKhMRod2TyJvMxCrB5Y074ZElULEV5lO
 TDK/VyePvPm3q8pHXP2YiMdh30eVSqWmWJZv9gg4y9jYaTjJrQVonXIZo/BUoE+vJHcp
 QYwbYS3MqIiB0EG5f+hBQ9/W3nvuZKxwLXkef12rCY6gruqCcqklg7TJMKl2XAonkFkv
 +hIx5GlKXORzaP67V9J5jvF4nyqBgdyqgp/zAQGgTQX02nrDI5iNV58lh0752z4Adlpg
 OQlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=RILWoXXun3vjq+42du8IC+UmbZgRdTK1KmCkih2WLgI=;
 b=SJOitLwxkNvN2Iw100XFzlTk3kKNLRox9otwgsm1OXZRNEM13powGQnPh/Rw6sBaQR
 LKIh4u/bzwX9TDrOcbM0/gpiYXKEC1VXPh25uDQdIdDcRyVqYUfTkxhcWfn9Y4FBFwRB
 jWMFaEW5JXqu+bRmW4hH1TVvqVb0scY/T/RtRWmSWqNu/VS/kN0KW8+SxAWED5828a47
 pLGbYhMaDVXZEPw57UIV/lNEKgq8GoJhHC08B2jjru5IhANxIMbcRjqcAD2fyW4TuCHS
 aT4uIJnueoxIx+yYhi/8QhUkGmS+OG58fl7kRIS+9AGn9InY4IiJHwOUKrEGcBrXaf4a
 kczw==
X-Gm-Message-State: APjAAAUVUO5ViT+zWovFi5li78F6pno/KyTbUZiYfsujzv5C+9UQMHDB
 wyY/2SIkSmsNJdO7AXbfvFtdag==
X-Google-Smtp-Source: APXvYqwV2asQG46dY9dPtK3kmRKdgGKPf77Ywn9l/NS4zXqZ/iEYlIgdCdisI+0MnwB3PrsCC0zWtg==
X-Received: by 2002:a05:600c:2:: with SMTP id g2mr4245334wmc.18.1582047315026; 
 Tue, 18 Feb 2020 09:35:15 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:59:7ef1:274e:1203?
 ([2a01:e34:ed2f:f020:59:7ef1:274e:1203])
 by smtp.googlemail.com with ESMTPSA id z8sm2273263wrv.74.2020.02.18.09.35.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Feb 2020 09:35:14 -0800 (PST)
Subject: Re: [RFC PATCH 03/11] cpuidle: Remove Calxeda driver
To: Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, soc@kernel.org,
 Andre Przywara <andre.przywara@arm.com>,
 Robert Richter <rrichter@marvell.com>, Jon Loeliger <jdl@jdl.com>,
 Alexander Graf <graf@amazon.com>, Matthias Brugger <mbrugger@suse.com>,
 Mark Langsdorf <mlangsdo@redhat.com>
References: <20200218171321.30990-1-robh@kernel.org>
 <20200218171321.30990-4-robh@kernel.org>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <17a4842d-7ecb-a9c8-6f1e-9295b9b5f00d@linaro.org>
Date: Tue, 18 Feb 2020 18:35:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200218171321.30990-4-robh@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_093519_956268_324C767F 
X-CRM114-Status: GOOD (  19.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kvm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 linux-ide@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-clk@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-edac@vger.kernel.org,
 Jens Axboe <axboe@kernel.dk>, Tony Luck <tony.luck@intel.com>,
 Stephen Boyd <sboyd@kernel.org>, netdev@vger.kernel.org,
 Cornelia Huck <cohuck@redhat.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 iommu@lists.linux-foundation.org, James Morse <james.morse@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTgvMDIvMjAyMCAxODoxMywgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gQ2M6ICJSYWZhZWwgSi4g
V3lzb2NraSIgPHJqd0Byand5c29ja2kubmV0Pgo+IENjOiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVs
LmxlemNhbm9AbGluYXJvLm9yZz4KPiBDYzogbGludXgtcG1Admdlci5rZXJuZWwub3JnCj4gU2ln
bmVkLW9mZi1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KCkFja2VkLWJ5OiBEYW5p
ZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz4KCgo+IC0tLQo+IERvIG5vdCBh
cHBseSB5ZXQuCj4gCj4gIGRyaXZlcnMvY3B1aWRsZS9LY29uZmlnLmFybSAgICAgICB8ICA3IC0t
LQo+ICBkcml2ZXJzL2NwdWlkbGUvTWFrZWZpbGUgICAgICAgICAgfCAgMSAtCj4gIGRyaXZlcnMv
Y3B1aWRsZS9jcHVpZGxlLWNhbHhlZGEuYyB8IDcyIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KPiAgMyBmaWxlcyBjaGFuZ2VkLCA4MCBkZWxldGlvbnMoLSkKPiAgZGVsZXRlIG1vZGUg
MTAwNjQ0IGRyaXZlcnMvY3B1aWRsZS9jcHVpZGxlLWNhbHhlZGEuYwo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2NwdWlkbGUvS2NvbmZpZy5hcm0gYi9kcml2ZXJzL2NwdWlkbGUvS2NvbmZpZy5h
cm0KPiBpbmRleCA2MjI3MmVjZmE3NzEuLmMyODMwZDJlZDQ0YSAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2NwdWlkbGUvS2NvbmZpZy5hcm0KPiArKysgYi9kcml2ZXJzL2NwdWlkbGUvS2NvbmZpZy5h
cm0KPiBAQCAtNDIsMTMgKzQyLDYgQEAgY29uZmlnIEFSTV9DTFBTNzExWF9DUFVJRExFCj4gIAlo
ZWxwCj4gIAkgIFNlbGVjdCB0aGlzIHRvIGVuYWJsZSBjcHVpZGxlIG9uIENpcnJ1cyBMb2dpYyBD
TFBTNzExWCBTT0NzLgo+IAo+IC1jb25maWcgQVJNX0hJR0hCQU5LX0NQVUlETEUKPiAtCWJvb2wg
IkNQVSBJZGxlIERyaXZlciBmb3IgQ2FseGVkYSBwcm9jZXNzb3JzIgo+IC0JZGVwZW5kcyBvbiBB
Uk1fUFNDSSAmJiAhQVJNNjQKPiAtCXNlbGVjdCBBUk1fQ1BVX1NVU1BFTkQKPiAtCWhlbHAKPiAt
CSAgU2VsZWN0IHRoaXMgdG8gZW5hYmxlIGNwdWlkbGUgb24gQ2FseGVkYSBwcm9jZXNzb3JzLgo+
IC0KPiAgY29uZmlnIEFSTV9LSVJLV09PRF9DUFVJRExFCj4gIAlib29sICJDUFUgSWRsZSBEcml2
ZXIgZm9yIE1hcnZlbGwgS2lya3dvb2QgU29DcyIKPiAgCWRlcGVuZHMgb24gKE1BQ0hfS0lSS1dP
T0QgfHwgQ09NUElMRV9URVNUKSAmJiAhQVJNNjQKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jcHVp
ZGxlL01ha2VmaWxlIGIvZHJpdmVycy9jcHVpZGxlL01ha2VmaWxlCj4gaW5kZXggY2M4Yzc2OWQ3
ZmE5Li5lZWU1ZjI3NmVkZjcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9jcHVpZGxlL01ha2VmaWxl
Cj4gKysrIGIvZHJpdmVycy9jcHVpZGxlL01ha2VmaWxlCj4gQEAgLTE0LDcgKzE0LDYgQEAgb2Jq
LSQoQ09ORklHX0hBTFRQT0xMX0NQVUlETEUpCQkgICs9IGNwdWlkbGUtaGFsdHBvbGwubwo+ICBv
YmotJChDT05GSUdfQVJNX01WRUJVX1Y3X0NQVUlETEUpICs9IGNwdWlkbGUtbXZlYnUtdjcubwo+
ICBvYmotJChDT05GSUdfQVJNX0JJR19MSVRUTEVfQ1BVSURMRSkJKz0gY3B1aWRsZS1iaWdfbGl0
dGxlLm8KPiAgb2JqLSQoQ09ORklHX0FSTV9DTFBTNzExWF9DUFVJRExFKQkrPSBjcHVpZGxlLWNs
cHM3MTF4Lm8KPiAtb2JqLSQoQ09ORklHX0FSTV9ISUdIQkFOS19DUFVJRExFKQkrPSBjcHVpZGxl
LWNhbHhlZGEubwo+ICBvYmotJChDT05GSUdfQVJNX0tJUktXT09EX0NQVUlETEUpCSs9IGNwdWlk
bGUta2lya3dvb2Qubwo+ICBvYmotJChDT05GSUdfQVJNX1pZTlFfQ1BVSURMRSkJCSs9IGNwdWlk
bGUtenlucS5vCj4gIG9iai0kKENPTkZJR19BUk1fVTg1MDBfQ1BVSURMRSkgICAgICAgICArPSBj
cHVpZGxlLXV4NTAwLm8KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jcHVpZGxlL2NwdWlkbGUtY2Fs
eGVkYS5jIGIvZHJpdmVycy9jcHVpZGxlL2NwdWlkbGUtY2FseGVkYS5jCj4gZGVsZXRlZCBmaWxl
IG1vZGUgMTAwNjQ0Cj4gaW5kZXggYjE3ZDlhODQxOGIwLi4wMDAwMDAwMDAwMDAKPiAtLS0gYS9k
cml2ZXJzL2NwdWlkbGUvY3B1aWRsZS1jYWx4ZWRhLmMKPiArKysgL2Rldi9udWxsCj4gQEAgLTEs
NzIgKzAsMCBAQAo+IC0vLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5Cj4g
LS8qCj4gLSAqIENvcHlyaWdodCAyMDEyIENhbHhlZGEsIEluYy4KPiAtICoKPiAtICogQmFzZWQg
b24gYXJjaC9hcm0vcGxhdC1teGMvY3B1aWRsZS5jOiAjdjMuNwo+IC0gKiBDb3B5cmlnaHQgMjAx
MiBGcmVlc2NhbGUgU2VtaWNvbmR1Y3RvciwgSW5jLgo+IC0gKiBDb3B5cmlnaHQgMjAxMiBMaW5h
cm8gTHRkLgo+IC0gKgo+IC0gKiBNYWludGFpbmVyOiBSb2IgSGVycmluZyA8cm9iLmhlcnJpbmdA
Y2FseGVkYS5jb20+Cj4gLSAqLwo+IC0KPiAtI2luY2x1ZGUgPGxpbnV4L2NwdWlkbGUuaD4KPiAt
I2luY2x1ZGUgPGxpbnV4L2NwdV9wbS5oPgo+IC0jaW5jbHVkZSA8bGludXgvaW5pdC5oPgo+IC0j
aW5jbHVkZSA8bGludXgvbW0uaD4KPiAtI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5o
Pgo+IC0jaW5jbHVkZSA8bGludXgvcHNjaS5oPgo+IC0KPiAtI2luY2x1ZGUgPGFzbS9jcHVpZGxl
Lmg+Cj4gLSNpbmNsdWRlIDxhc20vc3VzcGVuZC5oPgo+IC0KPiAtI2luY2x1ZGUgPHVhcGkvbGlu
dXgvcHNjaS5oPgo+IC0KPiAtI2RlZmluZSBDQUxYRURBX0lETEVfUEFSQU0gXAo+IC0JKCgwIDw8
IFBTQ0lfMF8yX1BPV0VSX1NUQVRFX0lEX1NISUZUKSB8IFwKPiAtCSAoMCA8PCBQU0NJXzBfMl9Q
T1dFUl9TVEFURV9BRkZMX1NISUZUKSB8IFwKPiAtCSAoUFNDSV9QT1dFUl9TVEFURV9UWVBFX1BP
V0VSX0RPV04gPDwgUFNDSV8wXzJfUE9XRVJfU1RBVEVfVFlQRV9TSElGVCkpCj4gLQo+IC1zdGF0
aWMgaW50IGNhbHhlZGFfaWRsZV9maW5pc2godW5zaWduZWQgbG9uZyB2YWwpCj4gLXsKPiAtCXJl
dHVybiBwc2NpX29wcy5jcHVfc3VzcGVuZChDQUxYRURBX0lETEVfUEFSQU0sIF9fcGEoY3B1X3Jl
c3VtZSkpOwo+IC19Cj4gLQo+IC1zdGF0aWMgaW50IGNhbHhlZGFfcHdyZG93bl9pZGxlKHN0cnVj
dCBjcHVpZGxlX2RldmljZSAqZGV2LAo+IC0JCQkJc3RydWN0IGNwdWlkbGVfZHJpdmVyICpkcnYs
Cj4gLQkJCQlpbnQgaW5kZXgpCj4gLXsKPiAtCWNwdV9wbV9lbnRlcigpOwo+IC0JY3B1X3N1c3Bl
bmQoMCwgY2FseGVkYV9pZGxlX2ZpbmlzaCk7Cj4gLQljcHVfcG1fZXhpdCgpOwo+IC0KPiAtCXJl
dHVybiBpbmRleDsKPiAtfQo+IC0KPiAtc3RhdGljIHN0cnVjdCBjcHVpZGxlX2RyaXZlciBjYWx4
ZWRhX2lkbGVfZHJpdmVyID0gewo+IC0JLm5hbWUgPSAiY2FseGVkYV9pZGxlIiwKPiAtCS5zdGF0
ZXMgPSB7Cj4gLQkJQVJNX0NQVUlETEVfV0ZJX1NUQVRFLAo+IC0JCXsKPiAtCQkJLm5hbWUgPSAi
UEciLAo+IC0JCQkuZGVzYyA9ICJQb3dlciBHYXRlIiwKPiAtCQkJLmV4aXRfbGF0ZW5jeSA9IDMw
LAo+IC0JCQkucG93ZXJfdXNhZ2UgPSA1MCwKPiAtCQkJLnRhcmdldF9yZXNpZGVuY3kgPSAyMDAs
Cj4gLQkJCS5lbnRlciA9IGNhbHhlZGFfcHdyZG93bl9pZGxlLAo+IC0JCX0sCj4gLQl9LAo+IC0J
LnN0YXRlX2NvdW50ID0gMiwKPiAtfTsKPiAtCj4gLXN0YXRpYyBpbnQgY2FseGVkYV9jcHVpZGxl
X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gLXsKPiAtCXJldHVybiBjcHVp
ZGxlX3JlZ2lzdGVyKCZjYWx4ZWRhX2lkbGVfZHJpdmVyLCBOVUxMKTsKPiAtfQo+IC0KPiAtc3Rh
dGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgY2FseGVkYV9jcHVpZGxlX3BsYXRfZHJpdmVyID0g
ewo+IC0gICAgICAgIC5kcml2ZXIgPSB7Cj4gLSAgICAgICAgICAgICAgICAubmFtZSA9ICJjcHVp
ZGxlLWNhbHhlZGEiLAo+IC0gICAgICAgIH0sCj4gLSAgICAgICAgLnByb2JlID0gY2FseGVkYV9j
cHVpZGxlX3Byb2JlLAo+IC19Owo+IC1idWlsdGluX3BsYXRmb3JtX2RyaXZlcihjYWx4ZWRhX2Nw
dWlkbGVfcGxhdF9kcml2ZXIpOwo+IC0tCj4gMi4yMC4xCj4gCgoKLS0gCiA8aHR0cDovL3d3dy5s
aW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBT
b0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFy
bz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8
CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
