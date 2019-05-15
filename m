Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3891F772
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 17:27:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=st1yrxYYfdE1wrRMAnk58Pym1/TQ0kzqfk+7Ydi6HaM=; b=L0P9HvC0PXhDmM
	CnKruD8oBUrw25ZpyyqTlgUAbTz2tdlvF1yjIRSvGTZwOu1EpbwlUbbnb3w/JTrWtO0p1ZFLl/s72
	3XoLXQ3gvIoPB/MSEVNoXrdtQVShE0hKCTKJXq9/ZFYmkgTt9f9SodGxuz2q3HtfYbP7jh3YeDmdu
	pJO9v2LifgpEfZcZ/VFCOgWLZGjXCs+x+NlVvta5jhKebpnuJjLNn2XTcee8LeAX7TAtCfapaOsd0
	UBW++rm3FXmsZQyl4il2m0rZkAZvylYDIuMpZoSHhNpaD1kjrr93A6pt3HQY9Z6wftyCF2s/rzRMi
	pRzFoSwphYyBaUSlj0Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQvo5-0005VJ-2s; Wed, 15 May 2019 15:27:01 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQvnx-0005Uv-Ug
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 15:26:55 +0000
Received: by mail-lj1-x242.google.com with SMTP id h21so126621ljk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 08:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=6cBL5aTouL63mlEBJPFj1RGOe1dEBWdZshtStEgjyl4=;
 b=gQ5b5R0cTyTWOhDTjkP9WO0SWdB1A53z3VCrlhsLBS0+PRh7ovvr7QE8jfIgbzMWIg
 XpS+7U2Z5d2Xh3UxCBnJ/QDrt9ec6JQtiWybb37FBDCxIQJswkqHxWln2/z/mQYEVdLF
 /B+UTIlz+mu5uVm7uD+KHp5GDQz5N27xHw6Ty+QAjcR+zhoPcIwJY+PVEAX60Yjgu0hM
 JK9Ez/wN4v/uqTQqB2qI2lBMrJV5LRXqDo4JMvgCROiLJT3R5aXOmuasJLVFB480uW8L
 SThd3R3Ti+TrxWDvdiRGRZL0WD9EFHWExxoFcZn9i/nXMguyXnRvknWFKmuo9/H1Ktoa
 bTtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6cBL5aTouL63mlEBJPFj1RGOe1dEBWdZshtStEgjyl4=;
 b=WbHFnpe0YivQqPYGGLpS6Tk6kMxvNddB2hKmW9kBUA2mMfSw0Sryk277nK04z97Xd8
 tqmqyzz0rOSiXSZgPRmuaxb/PzFLqEvKKDw3fd9SInhSTZUZ7x9ayAHZtVnpPHfuJNGo
 j5Xz586X+XwSHmiBXYa5Q4AW/NaJK+02HrJfkU23yaI8vI6J/gty1Fc/MLuucI8Z9sRN
 8GOaq8yMGdi/a+8I+Hx/u4wUJToRRYW3ZA8bgrQitYfLRKAuGfIhrtB/wlryO9OOHE4a
 aNNBCoO6WDzf9to14MxajdI/glT3X4fPh96GFZFIvSIBTjMqxbFV9Y+QylGAENKP5Q02
 p89Q==
X-Gm-Message-State: APjAAAWnEdqfHBZLXBs7fDxEC/WHIBNRd9N5LOVlZ/D89CYDc/Cw6IJ6
 lElv7MSZl7h0SvZ9BemZYXW9qnqX
X-Google-Smtp-Source: APXvYqx1eXNFS/yKESjwI/+dMTt/Mzw77h/fGs13ul8A07QCq74RGyhn5/lFO1hjsM3brXCAP4ghWQ==
X-Received: by 2002:a2e:8644:: with SMTP id i4mr7583980ljj.0.1557934011892;
 Wed, 15 May 2019 08:26:51 -0700 (PDT)
Received: from [192.168.2.145] (ppp94-29-35-107.pppoe.spdop.ru. [94.29.35.107])
 by smtp.googlemail.com with ESMTPSA id k81sm399103ljb.77.2019.05.15.08.26.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 08:26:51 -0700 (PDT)
Subject: Re: [PATCH V3 5/8] memory: tegra: Add EMC scaling support code for
 Tegra210
To: Joseph Lo <josephl@nvidia.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
References: <20190510084719.18902-1-josephl@nvidia.com>
 <20190510084719.18902-6-josephl@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <6a42ff62-44fe-c420-7645-d57ecc1defaa@gmail.com>
Date: Wed, 15 May 2019 18:26:50 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190510084719.18902-6-josephl@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_082653_985801_5377BA3E 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
eTogSm9zZXBoIExvIDxqb3NlcGhsQG52aWRpYS5jb20+Cj4gLS0tCgo+ICsKPiArdm9pZCBkb19j
bG9ja19jaGFuZ2Uoc3RydWN0IHRlZ3JhX2VtYyAqZW1jLCB1MzIgY2xrc3JjKQo+ICt7Cj4gKwlp
bnQgZXJyOwo+ICsKPiArCW1jX3JlYWRsKGVtYy0+bWMsIE1DX0VNRU1fQURSX0NGRyk7Cj4gKwll
bWNfcmVhZGwoZW1jLCBFTUNfSU5UU1RBVFVTKTsKPiArCj4gKwl0ZWdyYTIxMF9jbGtfZW1jX3Vw
ZGF0ZV9zZXR0aW5nKGNsa3NyYyk7Cj4gKwo+ICsJZXJyID0gd2FpdF9mb3JfdXBkYXRlKGVtYywg
RU1DX0lOVFNUQVRVUywKPiArCQkJICAgICAgRU1DX0lOVFNUQVRVU19DTEtDSEFOR0VfQ09NUExF
VEUsIHRydWUsIFJFR19FTUMpOwo+ICsJaWYgKGVycikgewo+ICsJCXByX2VycigiJXM6IGNsb2Nr
IGNoYW5nZSBjb21wbGV0aW9uIGVycm9yOiAlZCIsIF9fZnVuY19fLCBlcnIpOwo+ICsJCVdBUk5f
T04oMSk7Cj4gKwl9CgpFdGhlciBXQVJOKGVyciwgLi4uKSBvciBkZXZfd2Fybiwgb3IganVzdCBk
ZXZfZXJyLgoKLS0gCkRtaXRyeQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
