Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93DBC5C966
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 08:37:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LkM+EXj+mxswTkLlNXXVXUPP3NMW/nDc4dTX7CZ9ihM=; b=q9375jSOOPYJqw
	htlUP3jwhVNLPp1FVT2UlUSHB1M63WgGDV+bQXuHeXmYIbeKMXz7MPkgfErbYWKKz+by7/ZbgQC7b
	uCpZGe99lX7IlF8Gky8dTbI3YhMit/V9ugupJAojYa4nz9kugtLAwQ//RRTnf6CbeMqKu9AhWWYHU
	Pm2M+9w688mVn+MrjtFNACV6xPhSdjiA2WG7OKm6lHw5C0FeWXGFAs5cMewFk+nO6x52oXjzHWI6r
	VxSju6I4CZikV6UF08FfO+Da+TGOARNd6L+yZXBP7j8QJDIve/aDr8Ggn6F3VqxZQHmzeG9MEvenz
	LCPXBh/JvoH83hgEjvrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiCPd-00012r-WC; Tue, 02 Jul 2019 06:37:10 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiCPS-000120-5y
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 06:36:59 +0000
Received: by mail-wr1-x444.google.com with SMTP id p11so5132346wro.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 23:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=kL52YKQhFRfe3VLS8UGs1QL98Cpg/XLkHXZMM+/zcyM=;
 b=YZV+d5gqyzrP4gJNY5WwDuXGyrmn0m0DVdTv+9ppXaeW71PBbeOby+m1eElOIBixjX
 bkEre9t6nF7NUX9U965KXC/EJ8N98Cru9PsOJGSjGF9gFnwp8/QzBDy5LTRHXHi9aqrI
 zW9Z41R0hL7APL7VK5m6sYCxRpZfFKvd1bTVN0BR21ivFK/UZmgSRk9ygU2x48NnBA8X
 AcBGEN/Jh0clFSqBDXkVTpFBncTcdw03s0bRc1OCI9d189YVkL5re+bSQrm+0KZ0TqmV
 AWij6o1bxNwElPFN+PCnj2zJDkewnveeiEIoypEZ0ljdMwx5LuxyF3hah2RwmITTiE2x
 w1Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=kL52YKQhFRfe3VLS8UGs1QL98Cpg/XLkHXZMM+/zcyM=;
 b=ClmBYzezi9MTyOHEnVmMfH+zaFPq8Sn5XERudMky6vOcU5fYs+CQc2OZScQsBZSvDy
 7kWaCmsrbSvUayd7YBriBlZE0MhB5/Axy2cyEz+NtdSlyrx5VA6764Fyh7Ho4nlRUkIW
 4cKeF+Q+MEpMG9I3RJPiMD8Ux9b2Jpsfd1C3k0RQDqf1WcGtK0860Ftu27Luuf6XwAjZ
 quOKARZYZTPhUEYkA4oMLLyPJSbp3qxv9ycO5siBe+pWpWUR1S0c6fAOI4kKmvUgiBnS
 knT1xaO6iIJyFJVSE2bIuLatitZtRlxwCeMf+ejLbmUre8i6q2vFH+rreAcuFIp8fLzV
 wAcw==
X-Gm-Message-State: APjAAAWLbEy4vfVWgJ557f56xkoh4f+KlDrOyTEC1iP/OTCXdUAsyDA3
 z8jwjN15TfDNXFO6o1aq2K7xsg==
X-Google-Smtp-Source: APXvYqyNIADHpitNQlVYgOHrVqbwIkf6QAAdkpRA5Xs8300TxHIp8LjNRmcFL/fWRjeA4UT1R1Qr1A==
X-Received: by 2002:a05:6000:1285:: with SMTP id
 f5mr7035937wrx.315.1562049416043; 
 Mon, 01 Jul 2019 23:36:56 -0700 (PDT)
Received: from dell ([2.27.35.164])
 by smtp.gmail.com with ESMTPSA id h133sm1648236wme.28.2019.07.01.23.36.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 01 Jul 2019 23:36:55 -0700 (PDT)
Date: Tue, 2 Jul 2019 07:36:53 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Sekhar Nori <nsekhar@ti.com>
Subject: Re: [PATCH 00/12] ARM: davinci: da850-evm: remove more legacy GPIO
 calls
Message-ID: <20190702063653.GC4652@dell>
References: <20190625163434.13620-1-brgl@bgdev.pl>
 <fe42c0e1-2bfb-2b1c-2c38-0e176e88ec6e@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fe42c0e1-2bfb-2b1c-2c38-0e176e88ec6e@ti.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_233658_285609_8F44D299 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 David Lechner <david@lechnology.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Jingoo Han <jingoohan1@gmail.com>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Kevin Hilman <khilman@kernel.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, linux-fbdev@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAwMSBKdWwgMjAxOSwgU2VraGFyIE5vcmkgd3JvdGU6Cgo+IEhpIExlZSwgRGFuaWVs
LCBKaW5nb28sCj4gCj4gT24gMjUvMDYvMTkgMTA6MDQgUE0sIEJhcnRvc3ogR29sYXN6ZXdza2kg
d3JvdGU6Cj4gPiBGcm9tOiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxiZ29sYXN6ZXdza2lAYmF5bGli
cmUuY29tPgo+ID4gCj4gPiBUaGlzIGlzIGFub3RoZXIgc21hbGwgc3RlcCBvbiB0aGUgcGF0aCB0
byBsaWJlcmF0aW5nIGRhdmluY2kgZnJvbSBsZWdhY3kKPiA+IEdQSU8gQVBJIGNhbGxzIGFuZCBz
aHJpbmtpbmcgdGhlIGRhdmluY2kgR1BJTyBkcml2ZXIgYnkgbm90IGhhdmluZyB0bwo+ID4gc3Vw
cG9ydCB0aGUgYmFzZSBHUElPIG51bWJlciBhbnltb3JlLgo+ID4gCj4gPiBUaGlzIHRpbWUgd2Un
cmUgcmVtb3ZpbmcgdGhlIGxlZ2FjeSBjYWxscyB1c2VkIGluZGlyZWN0bHkgYnkgdGhlIExDREMK
PiA+IGZiZGV2IGRyaXZlci4KPiA+IAo+ID4gVGhlIGZpcnN0IHRocmVlIHBhdGNoZXMgbW9kaWZ5
IHRoZSBHUElPIGJhY2tsaWdodCBkcml2ZXIuIFRoZSBmaXJzdAo+ID4gb2YgdGhlbSBhZGRzIHRo
ZSBuZWNlc3NhcnkgZnVuY3Rpb25hbGl0eSwgdGhlIG90aGVyIHR3byBhcmUganVzdAo+ID4gdHdl
YWtzIGFuZCBjbGVhbnVwcy4KPiAKPiBDYW4geW91IHRha2UgdGhlIGZpcnN0IHRocmVlIHBhdGNo
ZXMgZm9yIHY1LjMgLSBpZiBpdHMgbm90IHRvbyBsYXRlPyBJCj4gdGhpbmsgdGhhdCB3aWxsIG1h
a2UgaXQgZWFzeSBmb3IgcmVzdCBvZiBwYXRjaGVzIHRvIG1ha2UgaW50byBzdWJzZXF1ZW50Cj4g
a2VybmVsIHJlbGVhc2VzLgoKSXQncyBhbHJlYWR5IHRvbyBsYXRlIGluIHRoZSBjeWNsZSAoLXJj
NykgZm9yIHRoYXQuICBJIHJlcXVpcmUgcGF0Y2hlcwpvZiB0aGlzIG5hdHVyZSB0byBoYXZlIGEg
Z29vZCBzb2FrIGluIC1uZXh0IGJlZm9yZSBiZWluZyBtZXJnZWQuIFRoZXJlCnNob3VsZG4ndCBi
ZSBhbiBpc3N1ZSB3aXRoIGdldHRpbmcgdGhlbSBpbnRvIHY1LjQgdGhvdWdoLgoKPiA+IE5leHQg
dHdvIHBhdGNoZXMgZW5hYmxlIHRoZSBHUElPIGJhY2tsaWdodCBkcml2ZXIgaW4KPiA+IGRhdmlu
Y2lfYWxsX2RlZmNvbmZpZy4KPiA+IAo+ID4gUGF0Y2ggNi8xMiBtb2RlbHMgdGhlIGJhY2tsaWdo
dCBHUElPIGFzIGFuIGFjdHVhbCBHUElPIGJhY2tsaWdodCBkZXZpY2UuCj4gPiAKPiA+IFBhdGNo
ZXMgNy05IGV4dGVuZCB0aGUgZmJkZXYgZHJpdmVyIHdpdGggcmVndWxhdG9yIHN1cHBvcnQgYW5k
IGNvbnZlcnQKPiA+IHRoZSBkYTg1MC1ldm0gYm9hcmQgZmlsZSB0byB1c2luZyBpdC4KPiA+IAo+
ID4gTGFzdCB0aHJlZSBwYXRjaGVzIGFyZSBpbXByb3ZlbWVudHMgdG8gdGhlIGRhOHh4IGZiZGV2
IGRyaXZlciBzaW5jZQo+ID4gd2UncmUgYWxyZWFkeSB0b3VjaGluZyBpdCBpbiB0aGlzIHNlcmll
cy4KPiAKPiBUaGFua3MsCj4gU2VraGFyCj4gCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxp
bmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBz
b2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwg
QmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
