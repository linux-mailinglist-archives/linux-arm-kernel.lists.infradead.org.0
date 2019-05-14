Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 134091CF72
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 20:54:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4JSU2d7SoN1WidvWlYV+C+iFw3guazzoHrF2xr4crp8=; b=H54JGFsyiKl3OT
	C38GaKEIPCPg21j6i5ykZVgG6shEfT9q4pzv94ceogNFEmpxWCERuSnUQPNvJSGi2Aab9FosY+z2N
	v9GHGFBVlVEFlfNqUJ3ZbRBoszq672y1D+eE7f/zXgQeqQ7myU4NP4Lz7TNTIKGuHiCcSL2SKoaps
	3nkqwuNlumyDFs4wHpszahvq2HcWL74f+5iqt7feGQddPLzqTfHmbAUDvI3sYytifNtIZr1CJBOAJ
	D7PGLwlAhyspQlTRCKbkgfSNqiLLx6PXqMT+OIBWtaEk2ldfhivh8UnzzoIm4tUkvCIvGuv2YCn5b
	+D4wPZHsvefT8hFApkjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQcZ7-0004nJ-OI; Tue, 14 May 2019 18:54:17 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQcZ0-0004mb-He
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 18:54:12 +0000
Received: by mail-wr1-x442.google.com with SMTP id e15so7980801wrs.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 11:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=VCAQGz8qjml6ASU2OK1LEnrW5ChvncfEkzJRDaJ9AfM=;
 b=tlYGPpceDt4GjqHqn8XvdeH7oSM4djD9WBPrOe1X0oZ0wDG5pryX0rfiv5SFEB76LU
 JF8LJ6bu8T4YJ78yelc8P/8CAQXBiiY4sQb5MN0t2afe+OrgCaooEL+PBudgmZk3lZLa
 Z0RZOdsq8VBwI8pemYXk/7gNDSyGmcPFvDhPdEQ/3xefc2UwmmiquzJ2SHSkDvz+Tz/T
 Yrwc9WSg1emsJwcguVZ/NnVSIeCVPmK5JFqaL8uiMElLtPsdYvUlCPN+1RvBJklEk4/w
 lJ9WBrUsU19nQ8Xb6Sgezkr3UWCPjyiVX9vc/+AjdkufhHjZ/QboyUGR//IqfzGnbQbX
 I7pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=VCAQGz8qjml6ASU2OK1LEnrW5ChvncfEkzJRDaJ9AfM=;
 b=C/n446qfJBWm9fHDKMv290fvnS1mtNugNM76bS0eq7jGx7zrmmcNsFeX8e9ZpXe0LU
 CYqs1yhY+vFM7Co2IJyonPGoLxotRqdkjRHXP7QYstS0YkfRXwgnzXQKkSAl03VdGzU/
 3OFI8LCZGt5OspZDPTjyzMfCWkWncluRpJAIjomlElaES7ShwA3JXAmLy0w6FKlpLDyq
 XhD8A3QP/CUsTFENPb5i7bgrRTt37VmBpu36WWvwPvAW8tAQVLXlf0LSCpx2lp/RzT6k
 8wFKnTDLT2mq+0dvmsLpJ0rNDHKOx+rvZAH7Zk0h4PsLZW2ujzR28LB5u9rv0LpVVHlh
 UKlw==
X-Gm-Message-State: APjAAAWVjm/cNGM/pFcSnZWss392T8eKy+wzn7cbWNm4IFia3SEpWR7y
 iYr+iAPctXidNrrvse+4CZUwrw==
X-Google-Smtp-Source: APXvYqyXK6O0Aqh/1goILlJaZM+s8rUCdPYL1LSk9ZSGB1TPgYZuXHgOORUbKQn4wE9vtJIsBxrKSw==
X-Received: by 2002:a5d:4b07:: with SMTP id v7mr12420510wrq.106.1557860046921; 
 Tue, 14 May 2019 11:54:06 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id s22sm5469199wmh.45.2019.05.14.11.54.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 11:54:06 -0700 (PDT)
Date: Tue, 14 May 2019 19:54:04 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH] mfd: stmfx: Fix macro definition spelling
Message-ID: <20190514185404.GP4319@dell>
References: <20190511012301.2661-1-natechancellor@gmail.com>
 <20190513073059.GH4319@dell> <20190514183900.GA7559@archlinux-i9>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514183900.GA7559@archlinux-i9>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_115410_589620_75257E10 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Amelie Delaunay <amelie.delaunay@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAxNCBNYXkgMjAxOSwgTmF0aGFuIENoYW5jZWxsb3Igd3JvdGU6Cgo+IE9uIE1vbiwg
TWF5IDEzLCAyMDE5IGF0IDA4OjMwOjU5QU0gKzAxMDAsIExlZSBKb25lcyB3cm90ZToKPiA+IE9u
IEZyaSwgMTAgTWF5IDIwMTksIE5hdGhhbiBDaGFuY2VsbG9yIHdyb3RlOgo+ID4gCj4gPiA+IENs
YW5nIHdhcm5zOgo+ID4gPiAKPiA+ID4gSW4gZmlsZSBpbmNsdWRlZCBmcm9tIGRyaXZlcnMvbWZk
L3N0bWZ4LmM6MTM6Cj4gPiA+IGluY2x1ZGUvbGludXgvbWZkL3N0bWZ4Lmg6Nzo5OiB3YXJuaW5n
OiAnTUZEX1NUTUZYX0gnIGlzIHVzZWQgYXMgYQo+ID4gPiBoZWFkZXIgZ3VhcmQgaGVyZSwgZm9s
bG93ZWQgYnkgI2RlZmluZSBvZiBhIGRpZmZlcmVudCBtYWNybwo+ID4gPiBbLVdoZWFkZXItZ3Vh
cmRdCj4gPiA+IAo+ID4gPiBGaXhlczogMDYyNTJhZGU5MTU2ICgibWZkOiBBZGQgU1QgTXVsdGkt
RnVuY3Rpb24gZVhwYW5kZXIgKFNUTUZYKSBjb3JlIGRyaXZlciIpCj4gPiA+IExpbms6IGh0dHBz
Oi8vZ2l0aHViLmNvbS9DbGFuZ0J1aWx0TGludXgvbGludXgvaXNzdWVzLzQ3NQo+ID4gPiBTaWdu
ZWQtb2ZmLWJ5OiBOYXRoYW4gQ2hhbmNlbGxvciA8bmF0ZWNoYW5jZWxsb3JAZ21haWwuY29tPgo+
ID4gPiAtLS0KPiA+ID4gIGluY2x1ZGUvbGludXgvbWZkL3N0bWZ4LmggfCAyICstCj4gPiA+ICAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+IAo+ID4gQXBw
bGllZCwgdGhhbmtzLgo+ID4gCj4gCj4gSGkgTGVlLAo+IAo+IFRoYW5rcyBmb3IgcGlja2luZyBp
dCB1cC4gSXQgc2VlbXMgdGhpcyBkaWRuJ3QgbWFrZSBpdCBpbnRvIHlvdXIgTUZECj4gcHVsbCBy
ZXF1ZXN0IGZvciA1LjIsIHdhcyB0aGF0IGludGVudGlvbmFsPyBJdCB3b3VsZCBiZSBuaWNlIHRv
IGF2b2lkCj4gdGhpcyB3YXJuaW5nLgoKSG1tLi4uIG5vIGl0IHdhcyBub3QgaW50ZW50aW9uYWwu
ICBOb3Qgc3VyZSB3aGF0IGhhcHBlbmVkIHRoZXJlLgoKSSB3aWxsIHBpY2sgaXQgdXAgZm9yIHRo
ZSAtcmNzLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5p
Y2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0Nz
CkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
