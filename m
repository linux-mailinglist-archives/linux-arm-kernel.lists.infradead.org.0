Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 106927379D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 21:16:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+4mE3lvexMwrkPZvfd5uPXdKViPL3cL0wZnbQNN1v3A=; b=g6zhpeEATPijXO
	sk2qpBnGNdZaG8SVJ65hLV1VAMo8RZeBu6iue+7TwV3Yay1qptfrPOcWjTeHYgsu97BRqXoAgPl4Q
	UkSHsnsi6Ukdi2egT6+aKGX3vL1PK07HQwQczaX/8oqJiDLsqodBgfkN/LZt6XweXUrCdAj8U6jEe
	2L3Pbsca+PlPF45qzNfe7UnuLjhJsPhuEDale6z0Ox3Qz+2D52b+NsTNLimfsmqeJXQw/CLCWvbRr
	SoiT0JGalyKl5GdqwbRUzYJn2T+rkWstAGMeDNkEwqcR33dWb404hVstMq8eoKeoQe8S+N/0Vuanc
	4++vC5guf7+DXyM7JL4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqMkb-00008m-7k; Wed, 24 Jul 2019 19:16:33 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqMkO-00008L-0K
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 19:16:21 +0000
Received: by mail-wm1-f66.google.com with SMTP id l2so42580552wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 12:16:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=LNAmuM+7si//N0400TDsq2MUrZ/1PI7eiz92D6aickY=;
 b=thKGd57yE6ecXMm9F4jX69m+DrxVRfSYHME1unf1vAUw0OvqGB1kkxGbJqzZao3iPi
 ikIZ2rNVaqaunGNYcU0NmDGTXkNN+nxOIWEQK/k+CwM9qeAG7oxQUskj5x5MgG9sre1s
 ccTUDJ90WpuuNYKmV/Wy0YmbDhDpKyXOiub1LxFgAnrgtLmXDzizI3m75hrPbq3gVnDE
 VcLldIjlc6j2skr8uKiHUG0yLuq01dDvFrJiyiQjEC673OO/iUzNI1Ple42GWUj7BX92
 MT/ecbjfch0+wFm6nfh+vIoU4xPF9xVJEtYo1s8ViRJoluTbJDT6skgzhEW7IkZbNRZi
 XcXQ==
X-Gm-Message-State: APjAAAWgfeXfP6TD/NJnDPy8cmqKD5+HBKgf1cft4LIsIVF/MzRRz+h4
 7jPtBEwtWjyox5wPGiH1VNc=
X-Google-Smtp-Source: APXvYqznKz1ACVYFK8RxfQFmQ7H1Q2wBIzpGBssnn1iwZQnb6SjaP8h75HCTkprLc/WEfC65AVtrsg==
X-Received: by 2002:a05:600c:da:: with SMTP id
 u26mr73188753wmm.108.1563995778325; 
 Wed, 24 Jul 2019 12:16:18 -0700 (PDT)
Received: from kozik-lap ([194.230.155.239])
 by smtp.googlemail.com with ESMTPSA id f70sm56473772wme.22.2019.07.24.12.16.17
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 24 Jul 2019 12:16:17 -0700 (PDT)
Date: Wed, 24 Jul 2019 21:16:15 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Artur =?utf-8?B?xZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>
Subject: Re: [RFC PATCH 06/11] icc: Relax requirement in
 of_icc_get_from_provider()
Message-ID: <20190724191615.GI14346@kozik-lap>
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122026eucas1p2acf705de2a47ba54f383d916f5383144@eucas1p2.samsung.com>
 <20190723122016.30279-7-a.swigon@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723122016.30279-7-a.swigon@partner.samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_121620_043523_42B0970A 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

T24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDI6MjA6MTFQTSArMDIwMCwgQXJ0dXIgxZp3aWdvxYQg
d3JvdGU6Cj4gVGhpcyBwYXRjaCByZWxheGVzIHRoZSBjb25kaXRpb24gaW4gb2ZfaWNjX2dldF9m
cm9tX3Byb3ZpZGVyKCkgc28gdGhhdCBpdAo+IGlzIG5vIGxvbmdlciByZXF1aXJlZCB0byBzZXQg
I2ludGVyY29ubmVjdC1jZWxscyA9IDwxPiBpbiB0aGUgRFQuIEluIGNhc2UKPiBvZiB0aGUgZGV2
ZnJlcSBkcml2ZXIgZm9yIGV4eW5vcy1idXMsICNpbnRlcmNvbm5lY3QtY2VsbHMgaXMgYWx3YXlz
IHplcm8uCj4gCj4gU2lnbmVkLW9mZi1ieTogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHBhcnRu
ZXIuc2Ftc3VuZy5jb20+Cj4gLS0tCgpNYWtlcyBzZW5zZSB0byBtZToKQWNrZWQtYnk6IEtyenlz
enRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9m
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
