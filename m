Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EA91CD02
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 18:31:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SOof8IEy1oEv9CsT7F/One51m183dC/M7e3uE77lXtE=; b=J/6dunC2JxIgQg
	ZRtU++lSoAwY4tlcn4GivZ8WWHBYyAHlYAC0LSbwJGFzcTjPgZ/LHZp1Sg2+8adLv2zr9kkWv/CIN
	ewPx1Z5085ChvpZpEdlB6gLR1rY4kQjkP5sYvq1Sy1Zx6iwLS0qtiIx8RagM/OD3lsRgkmDEc/z/a
	rgsb+mr9jXIxTsrKS8sSiJPPyuUUXINCJRX1fHCB/0WLgxUUq/fdt0HIA65ysSFfnmpHo0QBeFqYR
	M9xGaRtJt4Wby09WEuyqmS5MiDFxQvb39NmCkugX8mkIvUvycibJAKFRJFmrKNLXI+gqdyDUpwiNe
	cMDFuFmnHFvGTy8OgFUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQaKl-0004v3-2t; Tue, 14 May 2019 16:31:19 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQaKe-0004ua-Bq
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 16:31:13 +0000
Received: by mail-pg1-x542.google.com with SMTP id i21so8872838pgi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 09:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=KrtNpKFbyRA7Yf14BrtYX1O2jmezyFFAzIDM6gIT51c=;
 b=ResSDhqrk0g7EUCk8wjgV3Ip/1b9SfI9ZFCSIS6zNp19QD01DSoszpZBoYsCm+CFxD
 sA39/SvBGyUzpZch911FrQkh7X77N1CQfanX7ZttHcCwDrACDApUAS0dQs1O4wwd14lZ
 almRSaqBRveCuoCTFp39Y6Yzd7NoJSAC3obDtaUYunfkEGS3lI8jU0GTpGHkA9LFbVGi
 rLWGC0AML4nRxKPG9zY/GRO3m6cfxZVR41GMF2loVlHA/G5dhzhLcuFtd/h4gyCXt7BD
 /i+aM9I2xuCUH/fK2MPaMBVCuJUhU1EWkZ81xNsNgJQNTgFgY3zT2Yd7a+63nytY0rXg
 6MiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KrtNpKFbyRA7Yf14BrtYX1O2jmezyFFAzIDM6gIT51c=;
 b=qA+v8CJDeX5Wyd9QKxtHP5GnAP7nwKLCdMatNCdhnMlWuquiW9tCCplDL6kZ19q81V
 evghQ0G+LKm83vPoD9J7EzDjjntKPEUbkvFWJvX8gepqGBXE95P7iaCk7+nZGm01OKik
 eL8R7+lSFTTNJ9KLyU9TJMuXqsMpEF+4RdlqfKMSfQNyMIANEXNUtpGVyjQknMXq5xBd
 9Y8a2oQ1hU3UAaaxP24iu6x8VtlLk+rDfx1ER4Tjvbz9+bu53x0ylryub2KWCEINdpnE
 jR/xAy/pSlGMn76xxDbzdLfM1x4yZiZcHHoKd6ZTwE74+J4nPLp+TVx8WVgJP6IoaVFi
 ljBQ==
X-Gm-Message-State: APjAAAWy2kYI/+mBG2LX1ZpeiFGCAGmdZFxSDBXSt4oMX58F3OLertzq
 RlaIsP7UJigEmrq2nhMK+T/juIkv
X-Google-Smtp-Source: APXvYqw0E2GLHkJkn9NxXxxrzDixEEMUZ7bjvayKvBHMv/53B8aZJYKYKrqKGiD/1WHWDOPxbS2cTQ==
X-Received: by 2002:a63:9d8d:: with SMTP id
 i135mr39327590pgd.245.1557851470721; 
 Tue, 14 May 2019 09:31:10 -0700 (PDT)
Received: from [192.168.2.145] (ppp94-29-35-107.pppoe.spdop.ru. [94.29.35.107])
 by smtp.googlemail.com with ESMTPSA id a18sm32224542pfr.22.2019.05.14.09.31.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 09:31:10 -0700 (PDT)
Subject: Re: [PATCH V3 5/8] memory: tegra: Add EMC scaling support code for
 Tegra210
To: Joseph Lo <josephl@nvidia.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
References: <20190510084719.18902-1-josephl@nvidia.com>
 <20190510084719.18902-6-josephl@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <bc9a1ffe-f58c-784e-1fa1-0e609d0bbb30@gmail.com>
Date: Tue, 14 May 2019 19:30:24 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190510084719.18902-6-josephl@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_093112_401501_B26C4F49 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTAuMDUuMjAxOSAxMTo0NywgSm9zZXBoIExvINC/0LjRiNC10YI6Cj4gVGhpcyBwYXRjaCBhZGRz
IHRoZSByZXF1aXJlZCBBUElzIGFuZCB2YXJpYWJsZXMgZm9yIHRoZSBFTUMgc2NhbGluZwo+IHNl
cXVlbmNlIGNvZGUgb24gVGVncmEyMTAuCj4gCj4gQmFzZWQgb24gdGhlIHdvcmsgb2YgUGV0ZXIg
RGUgU2NocmlqdmVyIDxwZGVzY2hyaWp2ZXJAbnZpZGlhLmNvbT4uCj4gCj4gU2lnbmVkLW9mZi1i
eTogSm9zZXBoIExvIDxqb3NlcGhsQG52aWRpYS5jb20+Cj4gLS0tCgoKLi4uCgo+ICAKPiArc3Ry
dWN0IHBlcl9jaF9yZWdzIHsKPiArCXUzMiBiYW5rOwo+ICsJdTMyIG9mZnNldDsKPiArfTsKPiAr
Cj4gK3N0cnVjdCBlbWNfdGFibGVfcmVnaXN0ZXJfb2Zmc2V0IHsKPiArCXUzMiBidXJzdF9yZWdz
X29mZltCVVJTVF9SRUdTX1NJWkVdOwo+ICsJdTMyIHRyaW1fcmVnc19vZmZbVFJJTV9SRUdTX1NJ
WkVdOwo+ICsJdTMyIGJ1cnN0X21jX3JlZ3Nfb2ZmW0JVUlNUX01DX1JFR1NfU0laRV07Cj4gKwl1
MzIgbGFfc2NhbGVfcmVnc19vZmZbQlVSU1RfVVBfRE9XTl9SRUdTX1NJWkVdOwoKTG9va3MgbGlr
ZSB1MTYgc2hvdWxkIGJlIGVub3VnaCBmb3IgYWxsIG9mIHRoZSBvZmZzZXRzLgoKLS0gCkRtaXRy
eQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
