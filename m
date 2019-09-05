Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0818A9BDA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 09:31:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BP5omnC8Bws9UPNAQJHDUUqEntDLRx+T1HiLP4gE+xU=; b=GKxC31+V22BLDn
	jxZ17b8NqU5XMFvYMkrz/W4xcStLvFrjH09mcoF/uw2xFInxLFMbWLf1tsnAcD5WIjDmTiomabm8K
	uhJOeW9sFa4tzXGoNSs0fgnIJRrwNuDit6rcd7/oBxAVNXWikJxdy8W7FNON4NoZF16e1vQtJ4snh
	WWBh/8UA6gMWV1/hYRM8gHTWDhA1I7X8afn4hLd4LMDINabq/Iv5bEHLA0agRb1vBMCUksxl+aBqf
	hFu0igwBl9AYYyECxLMo6+DasBU374PQLvuxwbJR0+cwny536RxA34ID0elAUvG8S5HevfooiOnEt
	8ROJVs0GQOPrWIjuAxtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5mEn-0005Zc-1E; Thu, 05 Sep 2019 07:31:25 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5mDp-0005Y4-TM
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 07:30:30 +0000
Received: by mail-wm1-x343.google.com with SMTP id p13so1568556wmh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 00:30:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=HFlZwq0qxXTjPrcrj7B+tpd00WpauS+YbjV3gpTHZ3Q=;
 b=tjHmqDOv9YI9TmvdR+u5Vb9kn9GFHdw8cHJ9H/9JAbro7in1falYEmg02iMAG8Enm8
 qE55Q53zFDJKHdu6LvhJUIH5cbbzsSd/Oo8lKaAQ5QajB+NPccVu7Aaf5L6fB5e00gM9
 twb8h6FS2WzlMt+z5ZVv6/ahUp1mWrLTKUvPLGI+ZoBRaVza4fP9CdemlH0kwAB/QzAZ
 uHg1cfy6FBisXzVAf/igV6C4WLg1rJd3RIqXwY9BZAQ0KnhiiEvQ79E0dHBT/jQo7z6q
 wcJC/SOwldpyKNNRpOAcC1A5lzQEyzlonWx6MYXTmPUy/hhImJNgx30n1+Zxkyfd6y5p
 1sxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=HFlZwq0qxXTjPrcrj7B+tpd00WpauS+YbjV3gpTHZ3Q=;
 b=I4vZN9TwygTs/AB5etYWVDi/I9E+qAyrK4dMkf2Qkwd88UQ63XEzEe8cAqaWfNqgCI
 Nokk6cy6wVMIGijvMaULfWIaX/iZ3B4M9Lc9DLDUUz26vFTL5EGwv2ESb5NI31QwpuTk
 HknkXNFLkXLsSoP6DpBgRuKUJjcn8m55ZftQErIUlZSeB7nPhmdo5oS8ApLxs3v+7iFH
 rt/raGI04D0ZPlM+EnfFqEdbR8D++Vdc+jpmqR+LcT5WMsQzpHF3dGoRD/qCAueFUzbD
 pGdKVFb1urMb6bsk0QKrIE6ERE9j+KeavXbSVx25Z9EUYLLK4wuZWW8KLmidLZyC9B0F
 p4ew==
X-Gm-Message-State: APjAAAWKrJTYn6wn6AyaIufFe5JpgcLt9rzRxAAuNco8grz9Dmt3zLBF
 WZPbiUsP44QYz6+rQJEMqvcHbw==
X-Google-Smtp-Source: APXvYqx9hIKtXo2fKrV6NCZnQd9e6GpfPm9KrsYcmzaMgYNsj4Y9AZC4Dki6vbgrkFd5YqH8pvr6aA==
X-Received: by 2002:a1c:c012:: with SMTP id q18mr1787427wmf.116.1567668624199; 
 Thu, 05 Sep 2019 00:30:24 -0700 (PDT)
Received: from dell ([95.147.198.36])
 by smtp.gmail.com with ESMTPSA id 74sm1500110wma.15.2019.09.05.00.30.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 05 Sep 2019 00:30:23 -0700 (PDT)
Date: Thu, 5 Sep 2019 08:30:22 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH 1/1] soc: qcom: geni: Provide parameter error checking
Message-ID: <20190905073022.GY26880@dell>
References: <20190903135052.13827-1-lee.jones@linaro.org>
 <20190904031922.GC574@tuxbook-pro> <20190904084554.GF26880@dell>
 <20190904182732.GE574@tuxbook-pro>
 <5d704c9f.1c69fb81.a1686.0eb3@mx.google.com>
 <20190905064253.GU26880@dell>
 <5d70b193.1c69fb81.f9ce7.3447@mx.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d70b193.1c69fb81.f9ce7.3447@mx.google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_003026_409150_BC1F9536 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-msm@vger.kernel.org, agross@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwNCBTZXAgMjAxOSwgU3RlcGhlbiBCb3lkIHdyb3RlOgoKPiBRdW90aW5nIExlZSBK
b25lcyAoMjAxOS0wOS0wNCAyMzo0Mjo1MykKPiA+ID4gPiBCdXQgaWYgdGhpcyBpcyB0aGUgb25l
IHdoYWNrIGxlZnQgdG8gZ2V0IHRoZSB0aGluZyB0byBib290IHRoZW4gSSB0aGluawo+ID4gPiA+
IHdlIHNob3VsZCBtZXJnZSBpdC4KPiA+ID4gCj4gPiA+IEFncmVlZC4KPiA+IAo+ID4gVGhhbmtz
IFN0ZXBoZW4uCj4gPiAKPiA+IFVubGVzcyB5b3UgZ3V5cyBzY3JlYW0gbG91ZGx5LCBJJ20gZ29p
bmcgdG8gY29udmVydCB0aGVzZSB0byBBY2tzLgo+ID4gCj4gPiBJZiB5b3Ugc2NyZWFtIHNvZnRs
eSwgSSBjYW4gY29udmVydCB0aGUgdG8gUmV2aWV3ZWQtYnlzLgo+ID4gCj4gCj4gPGluIGEgc29m
dCBzY3JlYW0+Cj4gCj4gUmV2aWV3ZWQtYnk6IFN0ZXBoZW4gQm95ZCA8c3dib3lkQGNocm9taXVt
Lm9yZz4KCkRvbmUuIDopCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNl
cyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3Ig
QVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
