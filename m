Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F181A474D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 16:19:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2jC0foyFixWq7oP93//oAzs6S1u83cNIbGvPBwTYusw=; b=po53EEuFZFYJsy
	s58g3WVYKCTITESmUurojNcCxqnooPPEwizNLOQ413GW5YMKEFnlfWDNbAX1zNvqxEvk+ML8Gdq5P
	mBahnQh6XTJK9nyNGtnQJlV2aFlfQhppxnMsjhxqEJbh+zwoENmzvLXw9ipSa1UNZCiJjYNHm+sjT
	Wp7Fy3dhOIHOYThPV6gi9a9VFpx3V8aCTwq0NxIzrAXOAutP+02IQuxXI7Atc58ygwgXsWYhzhDtc
	wDcDSu4cm93sEdiLK+kFQy80KN8QUD9l/h0Jrty/BmIiF0HAp4/MzXQfGjcAPvIEIsAbKSjhCSzsz
	qpZjPAIYtTAYWyi65c/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMuUp-0001xj-LN; Fri, 10 Apr 2020 14:19:03 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMuUj-0001wh-8R
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 14:18:58 +0000
Received: by mail-lj1-x243.google.com with SMTP id h25so2074738lja.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 07:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=csrvl1c+O62QiY1i5I2vPcapPdMbP20Dc619rzOjrHg=;
 b=PzrJ1G+gJpRmx0ywjb/789Cgg1GrSezUTE0/LfFzYMCsmYLNAHM3H+oGpUNICrgdXZ
 aXDTfyc0dgSMHiUT0s17XtuLyqQ06SYP5mE6aS8fnmTyIBM60Bg/jOLf7F6dna5NMsMR
 8n0Day9czPDgppvmia1qnyEtX0wPI2TIOWRzxq3STR0XS15woWHGVFLhBq8allCjGoKF
 ZQIpbIK2AkLA8IK/svBpH3HlGRA0XqhT0UrWCMZJD5OKCi+gJxXFaWst4tqCQZ86tJC6
 6Zzd/T/yvHS7hdvhNJUTqfZCPnRjhSDuBJ7RgbYfIIkJEGXucntlRS+tR6tOQ0y6+xdF
 kASA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=csrvl1c+O62QiY1i5I2vPcapPdMbP20Dc619rzOjrHg=;
 b=Ss30XlO7cCQpQwvHLk6eWvL88mPWN7ymLAHaUDL2G2BJfcWQ9yM8U+jgp9ijIsZGtB
 DXolWjeyR8isEkt5hpKm05Se6OzA/vhDA2PwWgC0ElhVi7Bb9wQv7eVmg4zW0kQUeWJg
 dpw+YffcS8UZsh4FvRUT8T4wFDc8/togOMgiWhqxf3P8poI/T8k+yt0Xwvo6MLb7314L
 Gf7F03Decsa3piF4tX4jubkc/HlWffdix77yItNXvaKSXvAzpkeqU40wK06r0GgJSNHK
 FurWrWdweJdWv2klR6YBsQvuiKqQ/7JrbUYnFj3BZpJmckeeXOCeoFXf1jnHPuzvr4/S
 rIEg==
X-Gm-Message-State: AGi0PuZHEsC8lgLz1SF5gkf7PcexUpgtcWl+6ULQ6LDVC5hHGuTqUXQR
 wQkOH8doUU7t6ioEB/VppJ4JR880
X-Google-Smtp-Source: APiQypL8wSZ3+zuj3JdwrMxl2nUdiO7+MYxW0LLqG0DA915dib8zv1EuWcyyuRt5PD81k/AxqIRe1g==
X-Received: by 2002:a2e:b80d:: with SMTP id u13mr3126155ljo.166.1586528333328; 
 Fri, 10 Apr 2020 07:18:53 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id u1sm1129675ljo.65.2020.04.10.07.18.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Apr 2020 07:18:52 -0700 (PDT)
Subject: Re: [PATCH v6 10/14] memory: tegra: Add EMC scaling sequence code for
 Tegra210
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-11-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <682c661d-ea3a-7b9a-42f0-d5473b969aa2@gmail.com>
Date: Fri, 10 Apr 2020 17:18:51 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200409175238.3586487-11-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_071857_300826_CBB9D76F 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDkuMDQuMjAyMCAyMDo1MiwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKLi4uCj4gK3N0YXRp
YyB2b2lkIHRlZ3JhMjEwX2VtY19yMjEwMjFfc2V0X2Nsb2NrKHN0cnVjdCB0ZWdyYTIxMF9lbWMg
KmVtYywgdTMyIGNsa3NyYykKPiArewo+ICsJLyoKPiArCSAqIFRoaXMgaXMgdGhlIHRpbWluZyB0
YWJsZSBmb3IgdGhlIHNvdXJjZSBmcmVxdWVuY3kuIEl0IGRvZXMgX25vdF8KPiArCSAqIG5lY2Vz
c2FyaWx5IGNvcnJlc3BvbmQgdG8gdGhlIGFjdHVhbCB0aW1pbmcgdmFsdWVzIGluIHRoZSBFTUMg
YXQgdGhlCj4gKwkgKiBtb21lbnQuIElmIHRoZSBib290IEJDVCBkaWZmZXJzIGZyb20gdGhlIHRh
YmxlIHRoZW4gdGhpcyBjYW4gaGFwcGVuLgo+ICsJICogSG93ZXZlciwgd2UgbmVlZCBpdCBmb3Ig
YWNjZXNzaW5nIHRoZSBkcmFtX3RpbWluZ3MgKHdoaWNoIGFyZSBub3QKPiArCSAqIHJlYWxseSBy
ZWdpc3RlcnMpIGFycmF5IGZvciB0aGUgY3VycmVudCBmcmVxdWVuY3kuCj4gKwkgKi8KPiArCXUz
MiB0bXAsIGN5YV9hbGxvd19yZWZfY2MgPSAwLCByZWZfYjRfc3JlZl9lbiA9IDAsIGN5YV9pc3N1
ZV9wY19yZWYgPSAwOwo+ICsJc3RydWN0IHRlZ3JhMjEwX2VtY190aW1pbmcgKmZha2UsICpsYXN0
ID0gZW1jLT5sYXN0LCAqbmV4dCA9IGVtYy0+bmV4dDsKPiArCXUzMiBiZ19yZWd1bGF0b3Jfc3dp
dGNoX2NvbXBsZXRlX3dhaXRfY2xrcywgYmdfcmVndWxhdG9yX21vZGVfY2hhbmdlOwo+ICsJdTMy
IG9wdF96Y2FsX2VuX2NjLCBvcHRfZG9fc3dfcXJzdCA9IDEsIG9wdF9kdmZzX21vZGUsIG9wdF9k
bGxfbW9kZTsKPiArCXUzMiBlbWNfemNhbF93YWl0X2NudF9vbGQsIGVtY196Y2FsX3dhaXRfY250
X25ldywgZW1jX2RiZ19hY3RpdmU7Cj4gKwl1MzIgb3B0X2NjX3Nob3J0X3pjYWwgPSAxLCBvcHRf
c2hvcnRfemNhbCA9IDEsIG9wdF93YXJfMjAwMDI0OTA3Owo+ICsJdTMyIHRSVE0sIFJQX3dhciwg
UjJQX3dhciwgVFJQYWJfd2FyLCBkZWx0YVRXQVRNLCBXMlBfd2FyLCB0UlBTVDsKPiArCXUzMiBh
ZGVsID0gMCwgY29tcGVuc2F0ZV90cmltbWVyX2FwcGxpY2FibGUgPSAwLCBtcndfcmVxLCB2YWx1
ZTsKPiArCXVuc2lnbmVkIGxvbmcgbmV4dF90aW1pbmdfcmF0ZV9taHogPSBuZXh0LT5yYXRlIC8g
MTAwMCwgZGVsYXk7Cj4gKwl1MzIgdFpRQ0FMX2xwZGRyNCA9IDEwMDAwMDAsIHpxX3dhaXRfbG9u
Zywgc2hhcmVkX3pxX3Jlc2lzdG9yOwo+ICsJczMyIHpxX2xhdGNoX2R2ZnNfd2FpdF90aW1lLCB0
WlFDQUxfbHBkZHI0X2ZjX2FkaiwgblJUUDsKPiArCXUzMiB0RkNfbHBkZHI0ID0gMTAwMCAqIG5l
eHQtPmRyYW1fdGltaW5nc1tUX0ZDX0xQRERSNF07Cj4gKwl1MzIgZW1jX2F1dG9fY2FsX2NvbmZp
ZywgYXV0b19jYWxfZW4sIG1yMTNfY2F0cl9lbmFibGU7Cj4gKwl1MzIgenFfb3AsIHpjYWxfd2Fp
dF90aW1lX2Nsb2NrcywgemNhbF93YWl0X3RpbWVfcHM7Cj4gKwl1MzIgZW1jX2NmZywgZW1jX3Nl
bF9kcGRfY3RybCwgZW1jX3pjYWxfaW50ZXJ2YWw7Cj4gKwlpbnQgbmV4dF9wdXNoLCBuZXh0X2Rx
X2VfaXZyZWYsIG5leHRfZHFzX2VfaXZyZWY7Cj4gKwl1MzIgbXIxM19mbGlwX2ZzcHdyLCBtcjEz
X2ZsaXBfZnNwb3AsIGlzX2xwZGRyMzsKPiArCXUzMiBlbmFibGVfYmdscF9yZWd1bGF0b3IsIGVu
YWJsZV9iZ19yZWd1bGF0b3I7Cj4gKwl1MzIgZW1jX2RiZ19vLCBlbWNfY2ZnX3BpcGVfY2xrX28s
IGVtY19waW5fbzsKPiArCXUzMiByYW1wX3VwX3dhaXQgPSAwLCByYW1wX2Rvd25fd2FpdCA9IDA7
Cj4gKwl1MzIgc2F2ZV9yZXN0b3JlX2Nsa3N0b3BfcGQgPSAxLCBkbGxfb3V0Owo+ICsJdTMyIHJl
Zl9kZWxheV9tdWx0LCByZWZfZGVsYXksIGRyYW1fdHlwZTsKPiArCXN0YXRpYyB1MzIgZnNwX2Zv
cl9uZXh0X2ZyZXE7Cj4gKwkvKiBJbiBwaWNvc2Vjb25kcy4gKi8KPiArCXUzMiBzb3VyY2VfY2xv
Y2tfcGVyaW9kLCBkZXN0aW5hdGlvbl9jbG9ja19wZXJpb2Q7Cj4gKwl1MzIgenFjYWxfYmVmb3Jl
X2NjX2N1dG9mZiA9IDI0MDA7Cj4gKwl1bnNpZ25lZCBpbnQgaTsKCldoYXQgYWJvdXQgdG8gdHJ5
IHRvIHJlcGxhY2UgdGhpcyBtYXNzaXZlIGVneXB0aWFuIGNvbnN0cnVjdGlvbiB3aXRoIGEKc2lu
Z2xlICJ1MzIgdmFsOyIgPwoKLi4uCgo+ICsJZW1jX3JlYWRsKGVtYywgRU1DX0NGRyk7Cj4gKwll
bWNfYXV0b19jYWxfY29uZmlnID0gZW1jX3JlYWRsKGVtYywgRU1DX0FVVE9fQ0FMX0NPTkZJRyk7
CgpBbmQgcmVtb3ZlIGFsbCB0aGUgImR1bW15IiB2YXJpYWJsZSBhc3NpZ25zIGluIHRoZSBjb2Rl
PwoKLi4uCj4gZW1jX2F1dG9fY2FsX2NvbmZpZyA9IG5leHQtPmVtY19hdXRvX2NhbF9jb25maWc7
Ci4uLj4gKwllbWNfemNhbF9pbnRlcnZhbCA9IDA7CgpBbmQgcmVwbGFjZSBhbGwgImNvbnN0YW50
IiB2YXJpYWJsZXMgd2l0aCBhIHJhdyB2YWx1ZSBpbiBwbGFjZSBpbiB0aGUgY29kZT8KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
