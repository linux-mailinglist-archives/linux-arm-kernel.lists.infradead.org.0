Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 145982DE8B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 15:38:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QYJu2w3ggKgUN+e7ripWhx8dYzIM6Aa6SlmCIK6Wh44=; b=WaPJly6qneWOQy
	UyhxgrbjKDfkCz3WN1QwLj5LEp7wpx5LW5fWIrp5KiLfSR4I2LK4UuWGxU7elQEg6Bb+cqtlN/LNX
	pX/nHcB/xIjmLIaUs6xg2lmkgOowxJKnmaKP2b07oN4X48F9HK7l3VxnQAHDUVWr4O8YhMeCsxZG2
	1irJqdcCYk4nW1ruz+N7gs/025SQzLePYreuBX7OJo1kD9s/DRgeIoblV+7j/2i21wYTTbxJ/bxEF
	lrOYdz09P+TEh00MMvBVVOMWNRfkff9eecWDyTm1XEJH71oxs2zo5Tx6ex8OT1xnAhV6RC3nEN1F7
	DcbQ0e/BMGPTO/wyL8wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVymo-0008CE-Nl; Wed, 29 May 2019 13:38:34 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVymh-0008BL-7q
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 13:38:28 +0000
Received: by mail-lj1-x242.google.com with SMTP id r76so2459922lja.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 06:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:newsgroups:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=VoMv/71us6M8DbDViUqysPdNgAN+xa2mLNMMXYgg6YA=;
 b=fpu2tXpr7clU9LTk7+KSRqjY63WODxNTsAcGqDq5xKZ2wIbupZFJILlIdQZ4TftjNl
 TmyGmp5IsKkvk/qitY+t+oMibDc5WR0hiyTI+QvmrGMbRNx2pF9znsL5Vvv/gYvumKCh
 MZWzLFgHPnVRAHZhovrKRLH+jRci9pJcfWKEgQCiwG52567NA9TLoIWiSJx6JMkEEKxK
 bl79yTvtQ/vUU4hjm5yRhaUzCKgyjOLkxjSOTeV60mZoiXxmALxK7Ba7up3bXO0P8+YE
 wf5A5SjHT5oPaD+dYfu3sgdFjuN2p3uwiQvPMDgsoIfbKbMJcvWY0Vv/WQqIoUzXM/n5
 8niw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:newsgroups:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=VoMv/71us6M8DbDViUqysPdNgAN+xa2mLNMMXYgg6YA=;
 b=UQaHg/Lu+pcgc1xAsrBQl8+AdLkenFuOdK2Scmk7bOHxal/5QaoV6gFCaXnHV57dld
 XRQOxz94fSFkLn6LVu22kHG29Ph1MHqwhH74ZM+UTkr0hLil1nyS0IiFCznsm58zQBzw
 0HFP4Of+9poExTL6hQn/0J6PhvUTRosHdypTLP5WocqkAIn3c50mm2ySZzNuQCUgChYp
 wcAN+9Xey6w2GN0Olg3n86ZcVegZy3WCQRSeQJpBRze4vPPYMV5ihg/9jf/+RPVL952k
 gOy6L/fbJ7gveB+EH6qEKlOOf5kCXWvlFZ0EO1GtTNjAR27jnqvHUrio+AqTSHDNyoxT
 JSDQ==
X-Gm-Message-State: APjAAAVpJreN+zaRomjm0AniKOhXd1U3eiIlouspNyL/h7CO0bXK5CcP
 KQKag4CiaGSKGLv4Yw2hIrNqHkbN
X-Google-Smtp-Source: APXvYqzERz4U+Q9lLxvdncfDaBvdigW9kVACUuZgbRyZIBY4T9hQ8Em3/wCwkzyuRxGYSusJMHudyw==
X-Received: by 2002:a2e:9a9a:: with SMTP id p26mr3978876lji.64.1559137104811; 
 Wed, 29 May 2019 06:38:24 -0700 (PDT)
Received: from [192.168.2.145] ([94.29.35.141])
 by smtp.googlemail.com with ESMTPSA id d5sm3525117lji.85.2019.05.29.06.38.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 06:38:24 -0700 (PDT)
Subject: Re: [PATCH V4 5/8] memory: tegra: Add EMC scaling support code for
 Tegra210
To: Joseph Lo <josephl@nvidia.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
Newsgroups: gmane.linux.ports.arm.kernel, gmane.linux.ports.tegra,
 gmane.linux.drivers.devicetree, gmane.linux.kernel.clk
References: <20190529082139.5581-1-josephl@nvidia.com>
 <20190529082139.5581-6-josephl@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <5bd95d0b-e1a5-e717-4d5a-b9ef5d5fa4a5@gmail.com>
Date: Wed, 29 May 2019 16:37:20 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190529082139.5581-6-josephl@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_063827_308673_F398FA20 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

MjkuMDUuMjAxOSAxMToyMSwgSm9zZXBoIExvINC/0LjRiNC10YI6Cj4gVGhpcyBwYXRjaCBhZGRz
IHRoZSByZXF1aXJlZCBBUElzIGFuZCB2YXJpYWJsZXMgZm9yIHRoZSBFTUMgc2NhbGluZwo+IHNl
cXVlbmNlIGNvZGUgb24gVGVncmEyMTAuCj4gCj4gQmFzZWQgb24gdGhlIHdvcmsgb2YgUGV0ZXIg
RGUgU2NocmlqdmVyIDxwZGVzY2hyaWp2ZXJAbnZpZGlhLmNvbT4uCj4gCj4gU2lnbmVkLW9mZi1i
eTogSm9zZXBoIExvIDxqb3NlcGhsQG52aWRpYS5jb20+Cj4gLS0tCj4gdjQ6Cj4gLSBmaXggdGhl
IEFQSSB3aXRoIGdlbmVyaWMgbmFtaW5nCj4gLSB1c2UgJ3UxNicgaW4gJ3N0cnVjdCBlbWNfdGFi
bGVfcmVnaXN0ZXJfb2Zmc2V0Jwo+IC0tLQoKW3NuaXBdCgo+ICt2b2lkIGVtY193cml0ZWwoc3Ry
dWN0IHRlZ3JhX2VtYyAqZW1jLCB1MzIgdmFsLCB1bnNpZ25lZCBsb25nIG9mZnNldCkKPiArewo+
ICsJd3JpdGVsX3JlbGF4ZWQodmFsLCBlbWMtPmVtY19iYXNlW1JFR19FTUNdICsgb2Zmc2V0KTsK
PiArfQo+ICsKPiAgdTMyIGVtY19yZWFkbChzdHJ1Y3QgdGVncmFfZW1jICplbWMsIHVuc2lnbmVk
IGxvbmcgb2Zmc2V0KQo+ICB7Cj4gIAlyZXR1cm4gcmVhZGxfcmVsYXhlZChlbWMtPmVtY19iYXNl
W1JFR19FTUNdICsgb2Zmc2V0KTsKPiAgfQo+ICAKPiArdTMyIGVtYzFfcmVhZGwoc3RydWN0IHRl
Z3JhX2VtYyAqZW1jLCB1bnNpZ25lZCBsb25nIG9mZnNldCkKPiArewo+ICsJcmV0dXJuIHJlYWRs
X3JlbGF4ZWQoZW1jLT5lbWNfYmFzZVtSRUdfRU1DMV0gKyBvZmZzZXQpOwo+ICt9CgpQbGVhc2Ug
bWFrZSBhbGwgdGhlIGdsb2JhbCBvbmUtbGluZSBmdW5jdGlvbnMgc3RhdGljIGFuZCBpbmxpbmVk
LCB0aGVuCm1vdmUgdGhlbSBvdXQgaW50byB0aGUgaGVhZGVyLiBUaGlzIHdpbGwgYWxsb3cgY29t
cGlsZXIgdG8gb3B0aW1pemUgY29kZQpiZXR0ZXIgYW5kIGFsc28gd2lsbCBoaWRlIHRoZXNlIGdl
bmVyaWMtbG9va2luZyBnbG9iYWwgc3ltYm9sIG5hbWVzIGZyb20KdW5yZWxhdGVkIHBhcnRpZXMg
aW4gdGhlIG11bHRpcGxhdGZvcm0ga2VybmVsIGJ1aWxkLgoKLS0gCkRtaXRyeQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
