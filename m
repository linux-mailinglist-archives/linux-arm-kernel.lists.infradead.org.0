Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 364C531098
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 16:51:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9/04A9X5XIIiMyqwfHHWg2yunj3SkctBqYevpUb2pbo=; b=RZ1JbPsv6YWhd7
	lH2JccxffDllPmL38p9h4YcGYcWGWplYSyeFsZjmdw2G1wCIePSVfcQcmNl+ZlDKYE2us6xGfQo7H
	190TYYnZUiZFe6XHjgTQH7MSYBP8WQZEULaIrDygr0+EOY0GZx94gZFfhCqd3bxxTS/gXTxpL9q26
	8cYVqjFaIycbMDniLDTcJjNttg2nXGBlcHb4LXOmumBGHe/UXeTTJ2qbDQWaUotpAqde+S7iablob
	BqdmfvxL3DHQNMPT7xlKN5sI4MU5YilEhFqHRGt1SR2exIu0Ef5t2RDPFvY/UEi7MQNiKXNYvJ1Gb
	CXFLdhJUhJxzgZ676KiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWirx-0007K5-6a; Fri, 31 May 2019 14:50:57 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWiro-0007JL-IP
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 14:50:50 +0000
Received: by mail-wm1-x341.google.com with SMTP id t5so6124567wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 07:50:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3Ejjn9tsIocPGgrlriybmtTTwYOoIz+qLpQdyRRXG3Y=;
 b=kjzT6LyWI5jDAbLEeyiHmWdnipo6dS0Q5aP+mllEO3z5Ny0UyAaL26Q3JR5KcU5DXT
 PUxJf15YY5KJtI90hMzDJL4UfxPjFJI+NTlqhkymzZX/ekn/s+dQvPBXKsNm0/3xd0vv
 wqJmzmcqdrIugKcPdZuBoOqgKjruvEsLCJffq1vRcFFXRLxbiqq/voYRVgKQt2lGlsLe
 2xSl2L4V6wO13lrodX2fBghs7MsVbZYYJkRjVUfQHKodcHSBZ29Hc9uVlGPi3tNKlH7K
 odcwaN3lP0rAiuhlNzzD42l4Bm/wDbFrfsncPDregEnkOjq1ErdKdkjAg4ITeWpTEYvn
 gL4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=3Ejjn9tsIocPGgrlriybmtTTwYOoIz+qLpQdyRRXG3Y=;
 b=SVntTOnI/nqiX09eH5uDKGrRc/7uZpGR2xVvWTaeHxtPk17Y/NsU/Jf8/sBRgro78t
 8YQ3wP7XmOalb1KV6IAH0j77cvl9xNORDRBbnB9A3Y/vugygOvK+pYfpR/ka4tnDvw/z
 +JJVHPXGMikMM2qVELnRicRM558GygkiAZ5rL4d95LOdRJBo2bQ9X5m0niO/bUB6fPRZ
 f2GdTUj9Uj7F6q02x5JwRPvhAvk7baeXSNz+IU0BDb7noQfTJx4jgR+miqGe6tY+tGds
 BZe0M80woEhkRxtNZARP+j2wqXkcukrO4FeKwLvY2eQfqYPmK1fTzRRb9juym6+/onc6
 NSZA==
X-Gm-Message-State: APjAAAXT7VXCB+dVlZxhUYIdP8NnMPPuxH52YGM3l2BtzEiqSfJaZJcW
 sGO5sIzfkqQ2ULYrqvx1fwsMAQ==
X-Google-Smtp-Source: APXvYqzjWzl2iusomjNPpgBO9Jbq1DapAKMctucCxBOfYQr9WIxGJ7wfs1GK57I9DCc5ViBN7HwCdg==
X-Received: by 2002:a1c:f507:: with SMTP id t7mr6100537wmh.149.1559314246190; 
 Fri, 31 May 2019 07:50:46 -0700 (PDT)
Received: from [192.168.43.165] ([37.173.17.188])
 by smtp.googlemail.com with ESMTPSA id j66sm7962954wmb.24.2019.05.31.07.50.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 07:50:45 -0700 (PDT)
Subject: Re: [PATCH v3] clocksource: exynos_mct: Increase priority over ARM
 arch timer
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <CGME20190530105059eucas1p1d9c911a5ba2ae412166cd8866deb725e@eucas1p1.samsung.com>
 <20190530105043.29965-1-m.szyprowski@samsung.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <a0a97d11-b422-b2c1-0415-ada85f1f493c@linaro.org>
Date: Fri, 31 May 2019 16:50:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190530105043.29965-1-m.szyprowski@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_075048_633811_EE38A303 
X-CRM114-Status: GOOD (  14.16  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chanwoo Choi <cw00.choi@samsung.com>, Thomas Gleixner <tglx@linutronix.de>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMzAvMDUvMjAxOSAxMjo1MCwgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToKPiBFeHlub3MgU29D
cyBiYXNlZCBvbiBDQTcvQ0ExNSBoYXZlIDIgdGltZXIgaW50ZXJmYWNlczogY3VzdG9tIEV4eW5v
cyBNQ1QKPiAoTXVsdGkgQ29yZSBUaW1lcikgYW5kIHN0YW5kYXJkIEFSTSBBcmNoaXRlY3RlZCBU
aW1lcnMuCj4gCj4gVGhlcmUgYXJlIHVzZSBjYXNlcywgd2hlcmUgYm90aCB0aW1lciBpbnRlcmZh
Y2VzIGFyZSB1c2VkIHNpbXVsdGFub3VzbHkuCj4gT25lIG9mIHN1Y2ggZXhhbXBsZXMgaXMgdXNp
bmcgRXh5bm9zIE1DVCBmb3IgdGhlIG1haW4gc3lzdGVtIHRpbWVyIGFuZAo+IEFSTSBBcmNoaXRl
Y3RlZCBUaW1lcnMgZm9yIHRoZSBLVk0gYW5kIHZpcnR1YWxpemVkIGd1ZXN0cyAoS1ZNIHJlcXVp
cmVzCj4gYXJjaCB0aW1lcnMpLgo+IAo+IEV4eW5vcyBNdWx0aS1Db3JlIFRpbWVyIGRyaXZlciAo
ZXh5bm9zX21jdCkgbXVzdCBiZSBob3dldmVyIHN0YXJ0ZWQKPiBiZWZvcmUgQVJNIEFyY2hpdGVj
dGVkIFRpbWVycyAoYXJjaF90aW1lciksIGJlY2F1c2UgdGhleSBib3RoIHNoYXJlIHNvbWUKPiBj
b21tb24gaGFyZHdhcmUgYmxvY2tzIChnbG9iYWwgc3lzdGVtIGNvdW50ZXIpIGFuZCB0dXJuaW5n
IG9uIE1DVCBpcwo+IG5lZWRlZCB0byBnZXQgQVJNIEFyY2hpdGVjdGVkIFRpbWVyIHdvcmtpbmcg
cHJvcGVybHkuCj4gCj4gVG8gZW5zdXJlIHNlbGVjdGluZyBFeHlub3MgTUNUIGFzIHRoZSBtYWlu
IHN5c3RlbSB0aW1lciwgaW5jcmVhc2UgTUNUCj4gdGltZXIgcmF0aW5nLiBUbyBlbnN1cmUgcHJv
cGVyIHN0YXJ0aW5nIG9yZGVyIG9mIGJvdGggdGltZXJzIGR1cmluZwo+IHN1c3BlbmQvcmVzdW1l
IGN5Y2xlLCBpbmNyZWFzZSBNQ1QgaG90cGx1ZyBwcmlvcml0eSBvdmVyIEFSTSBBcmNoaWN0ZWN0
ZWQKPiBUaW1lcnMuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlw
cm93c2tpQHNhbXN1bmcuY29tPgo+IFJldmlld2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxr
cnprQGtlcm5lbC5vcmc+Cj4gUmV2aWV3ZWQtYnk6IENoYW53b28gQ2hvaSA8Y3cwMC5jaG9pQHNh
bXN1bmcuY29tPgo+IC0tLQoKQXBwbGllZCB0aGFua3MhCgotLSAKIDxodHRwOi8vd3d3LmxpbmFy
by5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MK
CkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBG
YWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0
dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
