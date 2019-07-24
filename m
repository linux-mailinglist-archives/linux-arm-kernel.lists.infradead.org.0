Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E35BD73706
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 20:53:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7HKLMwJvGnMUiIMNyEMLXXTDWhojqKZPw4LnJUiqY6M=; b=CcaZM1q2RQLPVW
	KoURteHPEuWLaEfY89BcXLUnwMgf+v2IiWZ6D27Q0DZDyQC2DvZzT27OVAvc5GbmHancMATDmcN37
	z3LPuHmngDiX3uxIqJ6YnkbyIbS+guSjr5QsMXztB+y85s/gr8dd+LIfpPOa6TrvkNXXe0rWg9xsa
	3ulEtlmQ19O9+a31Hp9w8Zw8kc32VuYC0OHeye/241f1BwYeynBC79w3wIZmTLbeRfHHInxEZIJFq
	d1DGVKLNSHIPc76EhlFEJ6BskRmoRV6fGVHAi0vuu2C5Uy40cdIWKA8d27xX4B6BK2+xXuwY6HFsi
	vp+UPWwk9gc7SX+BgocA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqMOW-0006QD-MV; Wed, 24 Jul 2019 18:53:44 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqMOE-0006PJ-So
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 18:53:28 +0000
Received: by mail-wm1-f65.google.com with SMTP id v15so42762104wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 11:53:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=2zNZEJTuzMPjlqBT9RJzY55tpYLVrNhwFI08koZCEQw=;
 b=qMxgIftgRONgnXXcNPvh0ohdUrWeOqF5CBDRaqQeFin+73P3Vgx+8xww+cnlRDLMv8
 gLBx5cl1NwbyF/qSvFQMPf7hmrBt8XIfAw33REF9771jhvmjzBagWK1BNRND3ofuEjxr
 9tx9G/5XAWtqfv/sqaCqCYPGLnRUUnKFbRR3XY9bjRpXrtecepg3XJUaiv5RQU+LWlVN
 JdK4jnpt8SSg9meFqFQ0PvofAh30AvB2aRju3f7VLRv1lT4iaIMxbgwYkiyZPNOIjG2d
 Xs2OPNx+WTRaJOhe1nulk8OsE4l7SAVaUR4i/OAFJKOjg1W4eUPIAZ8NH+0Fn9pVpjyy
 6D0w==
X-Gm-Message-State: APjAAAVabOfxkT6NoAHG53kTV+Bt5c67o0Uj+W9HJ4MwT9xUq3eVaq9f
 Gz8gYX3DD/vOFH52aSiPa6Q=
X-Google-Smtp-Source: APXvYqy0xTyUlF8khzfhL9sfMsBdP0ddDmFskR3W6aToym1NthS5JiFwI9kJq5H93SLqHuER2lIIBg==
X-Received: by 2002:a05:600c:c4:: with SMTP id
 u4mr75602252wmm.96.1563994405214; 
 Wed, 24 Jul 2019 11:53:25 -0700 (PDT)
Received: from kozik-lap ([194.230.155.239])
 by smtp.googlemail.com with ESMTPSA id a6sm34609206wmj.15.2019.07.24.11.53.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 24 Jul 2019 11:53:24 -0700 (PDT)
Date: Wed, 24 Jul 2019 20:53:22 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Artur =?utf-8?B?xZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>
Subject: Re: [RFC PATCH 00/11] Simple QoS for exynos-bus driver using
 interconnect
Message-ID: <20190724185322.GC14346@kozik-lap>
References: <CGME20190723122022eucas1p2f568f74f981f9de9012eb693c3b446d5@eucas1p2.samsung.com>
 <20190723122016.30279-1-a.swigon@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723122016.30279-1-a.swigon@partner.samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_115326_927934_A11D284C 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
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

T24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDI6MjA6MDVQTSArMDIwMCwgQXJ0dXIgxZp3aWdvxYQg
d3JvdGU6Cj4gVGhlIGZvbGxvd2luZyBwYXRjaHNldCBhZGRzIGludGVyY29ubmVjdFsxXVsyXSBm
cmFtZXdvcmsgc3VwcG9ydCB0byB0aGUKPiBleHlub3MtYnVzIGRldmZyZXEgZHJpdmVyLiBFeHRl
bmRpbmcgdGhlIGRldmZyZXEgZHJpdmVyIHdpdGggaW50ZXJjb25uZWN0Cj4gY2FwYWJpbGl0aWVz
IHN0YXJ0ZWQgYXMgYSByZXNwb25zZSB0byB0aGUgaXNzdWUgcmVmZXJlbmNlZCBpbiBbM10uIFRo
ZQo+IHBhdGNoZXMgY2FuIGJlIHN1YmRpdmlkZWQgaW50byBmb3VyIGxvZ2ljYWwgZ3JvdXBzOgoK
TmljZSB3b3JrISBHb29kIHRvIHNlZSBwcm9wZXIgc29sdXRpb24gOikKCkJlc3QgcmVnYXJkcywK
S3J6eXN6dG9mCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
