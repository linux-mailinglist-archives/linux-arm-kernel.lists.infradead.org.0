Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 517FCA9CF5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 10:29:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rlwlQBet5s70QsaihZdNh/J6z1PP793YUvBzbV7beFk=; b=ALBC7uW+UN284E
	AdfEs1eThOlh3ImC5sQCTKJ3GiSEHnfWJyqUZjYQNQcSCV1zuC78Q/93KvxhdiEbdv1MCY/7fgHQ3
	AJUC/zCkjuzxJObD9RZZx6KmXyqUZRKceS3GM4zEbeVyzQD4CTbhnq74kpvGLz0haM0j30iMXRO8F
	SGWgd+OIH2j5ttsAL7wO/OTsTGhJDWmDv8hM0kIhhaXbDItW/eo7I+BTJj8IpB+z1dhV2UM9Y56pu
	8lxALhImZ6e3wOumI/Kvji9o8VYbHtqDQNix2s0weWFtN5m3kPERryiyv7v2RF+1xH7xyyc0Dtezm
	sQy0HrErW7Dt93PLGqqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5n8V-0005fU-Ko; Thu, 05 Sep 2019 08:28:59 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5n8I-0005et-Up
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 08:28:48 +0000
Received: by mail-wr1-x442.google.com with SMTP id 30so1602771wrk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 01:28:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=BnCSpMfIGHQOtqoPPENSGImgRzrsNUGfiJvvR+LSCtU=;
 b=uUbzA5G+raebaq6/6elAYcUoNdWp7S7wUhe7DOZleBf/a13itcyQbGBwcGFTOYAz4+
 +rIZMooCuQm0SHURu1zLys+aVYC30KDjiw3DmQXmwVHuqPejwqWbkZpUyG+g2f5gbR1U
 PEfyZ/VtvrvD/yaLOP3VMfLHp40QfxbIvmVqTKAX2GfpNUym/gzcO2YJbr2PEdS4X/n3
 NWX3eShnZerBe6L9nUr9WkWhlywIISSDj1QuanTuFFin7gp/6DzL8TMgMyFj330WyABf
 RJe1JhRBr7bM/xVNxoZRkqKRyKoUSV8ABQxXCAirFbpmykBx8LUb9TR+pJ+7fNwWtsPu
 nS6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=BnCSpMfIGHQOtqoPPENSGImgRzrsNUGfiJvvR+LSCtU=;
 b=mjunh6+spIig2NIC3VZ/wg4v4kb27IjKDsIZm4QFcc/URE124TnU5aWsVDkSUshJqr
 b1k+ylSYXNXR8ztKS6qoHq8igUhvUEJaCOsK00u/fxVztYECvQY6W+5yU6Sh8ThAJIVh
 0DIDxX1Bfa52OqZAiV9s//QUBN+FTiekqusdoLuFWVXuW4zKzN1Xs90NHODH0Wm5jlBc
 3KfJ6zpxaHzZI/OQQZJvT5gIpiNs/CJEZAe92s4xD3vM51N4Egw5rw+qgIuECdT8N95+
 ZzUHoUr8Sf8GIH/MUOktUALSSPeakXdVEeSqBh72QVni7obzSwd9E2adwxTwEifWfCL4
 fl7A==
X-Gm-Message-State: APjAAAWZfkHJkkzkoK29BzGvLj/XVkFVZ69pgbsjcqAo6b0/N3q57CLC
 7y4nYqFuveGUU7oywc3bwhSqvQ==
X-Google-Smtp-Source: APXvYqynALciburMLPvs8ix/HKS4bWOp5tOLFwfln4G1EKGc4EO+lZqj/mWKaKSydxu/4GA5ZtLtWw==
X-Received: by 2002:a5d:6185:: with SMTP id j5mr1395397wru.99.1567672125407;
 Thu, 05 Sep 2019 01:28:45 -0700 (PDT)
Received: from dell ([95.147.198.36])
 by smtp.gmail.com with ESMTPSA id p19sm1331650wmg.31.2019.09.05.01.28.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 05 Sep 2019 01:28:44 -0700 (PDT)
Date: Thu, 5 Sep 2019 09:28:43 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH v2 1/1] arm64: dts: qcom: Add Lenovo Yoga C630
Message-ID: <20190905082843.GA26880@dell>
References: <20190904113917.15223-1-lee.jones@linaro.org>
 <20190904115234.GV2672@vkoul-mobl>
 <20190904204302.GD580@tuxbook-pro>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904204302.GD580@tuxbook-pro>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_012847_005105_5C7FF8EE 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Vinod Koul <vkoul@kernel.org>, agross@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwNCBTZXAgMjAxOSwgQmpvcm4gQW5kZXJzc29uIHdyb3RlOgoKPiBPbiBXZWQgMDQg
U2VwIDA0OjUyIFBEVCAyMDE5LCBWaW5vZCBLb3VsIHdyb3RlOgo+IAo+ID4gT24gMDQtMDktMTks
IDEyOjM5LCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cWNvbS9NYWtlZmlsZQo+ID4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vTWFrZWZp
bGUKPiA+ID4gQEAgLTEyLDUgKzEyLDYgQEAgZHRiLSQoQ09ORklHX0FSQ0hfUUNPTSkJKz0gc2Rt
ODQ1LWNoZXphLXIyLmR0Ygo+ID4gPiAgZHRiLSQoQ09ORklHX0FSQ0hfUUNPTSkJKz0gc2RtODQ1
LWNoZXphLXIzLmR0Ygo+ID4gPiAgZHRiLSQoQ09ORklHX0FSQ0hfUUNPTSkJKz0gc2RtODQ1LWRi
ODQ1Yy5kdGIKPiA+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1FDT00pCSs9IHNkbTg0NS1tdHAuZHRi
Cj4gPiA+ICtkdGItJChDT05GSUdfQVJDSF9RQ09NKQkrPSBzZG04NTAtbGVub3ZvLXlvZ2EtYzYz
MC5kdGIKPiA+IAo+ID4gQ2FuIHdlIGtlZXAgdGhpcyBzb3J0ZWQsIHNvIGJlZm9yZSBtdHAuCj4g
PiAKPiA+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1FDT00pCSs9IHFjczQwNC1ldmItMTAwMC5kdGIK
PiA+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1FDT00pCSs9IHFjczQwNC1ldmItNDAwMC5kdGIKPiA+
ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zZG04NTAtbGVub3ZvLXlv
Z2EtYzYzMC5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2RtODUwLWxlbm92by15b2dh
LWM2MzAuZHRzCj4gPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiA+IGluZGV4IDAwMDAwMDAw
MDAwMC4uYWQxNjBjNzE4YjMzCj4gPiA+IC0tLSAvZGV2L251bGwKPiA+ID4gKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9xY29tL3NkbTg1MC1sZW5vdm8teW9nYS1jNjMwLmR0cwo+ID4gPiBAQCAt
MCwwICsxLDQ1NCBAQAo+ID4gPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAK
PiA+IAo+ID4gQXJlIHdlIGdvaW5nIHRvIG1ha2UgdGhpcyBkdWFsPyBvciBCU0QuLgo+IAo+IFNv
dW5kcyBnb29kLCBSb2Igd2FudHMgZHVhbCBsaWNlbnNlIHNvIGxldHMgZmxhZyBpdCBhcyBzdWNo
LgoKRG9uZSBhbmQgcmVwb3N0ZWQuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBT
ZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2Fy
ZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
