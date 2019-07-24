Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5348673783
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 21:10:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UWzXnMNYXlqTxzvXn2n8oJ29yaxOrdk4nOqZZwugWi8=; b=mLTgwhMGtud5l8
	qKhHpV/jCvWm8Syevb9tFJVimrMVBFezurcP3p2CSQjkge3eOYpln7y9cqI8L/bmO7PV56g3hStXi
	AenhAiEIV1aZMahQql/3aZFZsbx7Bo1PE96YTsZf/J96jR9YHvaK1C7hJFGKKp1IZ1XFQnzhsaJGM
	vflTHbbyAsOXrQyg15bQY/eqk7+S77zNJRmU8Sogd/ms6ry2lOsYnBcq4i8iU4x4KtOj5xcwBFXr0
	f89qV+ZRShMp4I/Kj9y6WMlHnDharAolcEVtxBO/gzg0sUqa3iZc99sdCpVuYLZHj8OGZuAnJSEpf
	jOC7hotmiqp4PAkzceqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqMeh-0005zS-4o; Wed, 24 Jul 2019 19:10:27 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqMeR-0005yr-81
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 19:10:12 +0000
Received: by mail-wr1-f68.google.com with SMTP id r1so48121393wrl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 12:10:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=HSdo9ZmudjoY5QfVd80yVoDhymQ27WsVZ3uLmAFSang=;
 b=hindbzBLt9vpEvex+iE1OLgHTfsAYOEKDmVfRUId8yqVMp47xylPdPrwAdxGCUVH4a
 DnIgzRZlgFJbpTBqG6G9gYRH6eZzTzon+ls3pVc6u0zDCIwSVqw3a1Aq88yJcI0KitdV
 jgmfPvLNPMF3izPVuI8EpdlblS3CQdV8k0yoqhvxfVZ3FYvqJSN+G0LPZ5qNU9hf4u8c
 9uzBFwvwgY5yaWY4MfxG4Dmjv1I3OdYkBWo+mm7ZTkz87TrK9zHy0dnev2RIHcl5R/rR
 uZ6u5bePuSdDp432DlQWNOQmaa8zpx+3TCROFXrq2dMtX8v4LcgHkyfMkUyiCep0fz5C
 LPmQ==
X-Gm-Message-State: APjAAAVCrBhxeJS/ZgTltSjKFsmekpHhsnCmRmjbINzz/RpRpwBh8l1X
 pEor/7nPKfK4T78OT4JNeuk=
X-Google-Smtp-Source: APXvYqyWQBOON9MCwlXaZ8Eic8a5Grk22K3A0wrcZg+IPuNCk48LkzoWpj7xmqjgI5qwVDbGSZBdAQ==
X-Received: by 2002:a5d:4d81:: with SMTP id b1mr6533715wru.27.1563995409586;
 Wed, 24 Jul 2019 12:10:09 -0700 (PDT)
Received: from kozik-lap ([194.230.155.239])
 by smtp.googlemail.com with ESMTPSA id v4sm44882540wmg.22.2019.07.24.12.10.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 24 Jul 2019 12:10:08 -0700 (PDT)
Date: Wed, 24 Jul 2019 21:10:06 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Artur =?utf-8?B?xZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>
Subject: Re: [RFC PATCH 03/11] devfreq: exynos-bus: Change goto-based logic
 to if-else logic
Message-ID: <20190724191006.GF14346@kozik-lap>
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122024eucas1p1ff060d072132bfbc8a8a1d10fa1f90f8@eucas1p1.samsung.com>
 <20190723122016.30279-4-a.swigon@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723122016.30279-4-a.swigon@partner.samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_121011_287803_35742708 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, sw0312.kim@samsung.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, inki.dae@samsung.com, cw00.choi@samsung.com,
 myungjoo.ham@samsung.com, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDI6MjA6MDhQTSArMDIwMCwgQXJ0dXIgxZp3aWdvxYQg
d3JvdGU6Cj4gVGhpcyBwYXRjaCBpbXByb3ZlcyBjb2RlIHJlYWRhYmlsaXR5IGJ5IGNoYW5naW5n
IHRoZSBmb2xsb3dpbmcgY29uc3RydWN0Ogo+IAo+ID4gICAgaWYgKGNvbmQpCj4gPiAgICAgICAg
Z290byBwYXNzaXZlOwo+ID4gICAgZm9vKCk7Cj4gPiAgICBnb3RvIG91dDsKPiA+cGFzc2l2ZToK
PiA+ICAgIGJhcigpOwo+ID5vdXQ6Cj4gCj4gaW50byB0aGlzOgo+IAo+ID4gICAgaWYgKGNvbmQp
Cj4gPiAgICAgICAgYmFyKCk7Cj4gPiAgICBlbHNlCj4gPiAgICAgICAgZm9vKCk7Cj4gCj4gU2ln
bmVkLW9mZi1ieTogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHBhcnRuZXIuc2Ftc3VuZy5jb20+
Cj4gLS0tCj4gIGRyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMgfCAyNCArKysrKysrKystLS0t
LS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRp
b25zKC0pCgpDb2RlIGxvb2tzIG11Y2ggYmV0dGVyOgpSZXZpZXdlZC1ieTogS3J6eXN6dG9mIEtv
emxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
