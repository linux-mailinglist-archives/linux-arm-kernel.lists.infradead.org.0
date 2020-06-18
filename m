Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C32861FF0EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 13:47:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=03XX+IFyLvqx38rMDbx9yB/mxTwXyre2CrLUXhQjaR8=; b=gppamWac6j5CdX
	kcHYM7MOvqW/8e8ACXMkAU8u2Fmm/JlZHz/a1YELovH0VWBk0yY5TLCkyIFCXwFd/HfXVyMjF6e/g
	2mOONA9W972N8rd3kxHzl74P7MsjSBb1ZeJdndvq24RFBzg1GIeB2HL8ef+6AnSvpKjYRIjFTZCcu
	y/w9tD15NoTc4+0QXMkw+Jn44qz24+XK+PGxvxDtzLvMdQj0IL0+oXpDnOswURW+L5qBj2RU+e/9A
	SN4gkLzHhbAo0ROZbO2HrTIhg1TjP258/c6QRjBROlIEDYf+TeIhjU/OQtreGxiZjUQ7s3kQSaH7H
	WfS/U6a3zxTFI+lKb7kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlt1D-0003mj-Ch; Thu, 18 Jun 2020 11:47:43 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlt13-0003mG-Tg
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 11:47:35 +0000
Received: by mail-wm1-f65.google.com with SMTP id b82so4889749wmb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 04:47:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=cFsUtUBh9aNFVLDZvQX6B8teUAK1O+/w59Gia3tUevI=;
 b=TRxJXFMe4b/r8ZcL+K+4pGYeW+0ijapOkunL87Z3QJ8t7QZm+VKc7IHK8cYeckJiIc
 I4DOad3u0YFEPj23Q7uXWkxv9Go4ktmDvBA5EkyMknYNNwjKKOweFTVTEFFUU5MB35Uh
 FPnP5qJ1tTwA3QUpxdL90E0E1dH7w35e+rVKPu0hkHVjenfXJzguV2IG4opgUplOlmdn
 tLB0Ia0pi66ElsO/AWh7t+yF5CnfS5FJC4mHQgJIJ35EcnruRlZpLwst6j4NsyNE9pHi
 2FMhuqdE4sizkeSUbBkB1fW/VLDeaKLdx/zGnqBmbbfvlgJMqrXh9klnwKFC7/QOS+IZ
 vC2g==
X-Gm-Message-State: AOAM5308T4mokY/j7OZ8lDYytGaY+9XGEtgOW+wC3cgU01j8ogK9/+IY
 uGeTRpDQUXaTA7KBOEBtChQ=
X-Google-Smtp-Source: ABdhPJwS415YB/rJb+NXaXvRVl2d4Aq2pYtG+WgCBUB3ffY8PwvYaxMgTUxFb9zCbuYH2eSiqEaltQ==
X-Received: by 2002:a1c:3b43:: with SMTP id i64mr3792942wma.112.1592480852025; 
 Thu, 18 Jun 2020 04:47:32 -0700 (PDT)
Received: from liuwe-devbox-debian-v2 ([51.145.34.42])
 by smtp.gmail.com with ESMTPSA id u7sm3299615wrm.23.2020.06.18.04.47.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 04:47:31 -0700 (PDT)
Date: Thu, 18 Jun 2020 11:47:29 +0000
From: Wei Liu <wei.liu@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 1/3] x86/hyperv: allocate the hypercall page with only
 read and execute bits
Message-ID: <20200618114729.bnut7gbj2j4uhjnc@liuwe-devbox-debian-v2>
References: <20200618064307.32739-1-hch@lst.de>
 <20200618064307.32739-2-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200618064307.32739-2-hch@lst.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_044733_953265_280C14CA 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wei.liu.linux[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-hyperv@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 Dexuan Cui <decui@microsoft.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Wei Liu <wei.liu@kernel.org>, Jessica Yu <jeyu@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBKdW4gMTgsIDIwMjAgYXQgMDg6NDM6MDVBTSArMDIwMCwgQ2hyaXN0b3BoIEhlbGx3
aWcgd3JvdGU6Cj4gQXZvaWQgYSBXXlggdmlvbGF0aW9uIGNhdXNlIGJ5IHRoZSBmYWN0IHRoYXQg
UEFHRV9LRVJORUxfRVhFQyBpbmNsdWRlcyB0aGUKPiB3cml0YWJsZSBiaXQuCj4gCj4gRm9yIHRo
aXMgcmVzdXJyZWN0IHRoZSByZW1vdmVkIFBBR0VfS0VSTkVMX1JYIGRlZmluaXTRlm9uLCBidXQg
YXMKPiBQQUdFX0tFUk5FTF9ST1ggdG8gbWF0Y2ggYXJtNjQgYW5kIHBvd2VycGMuCj4gCj4gRml4
ZXM6IDc4YmIxN2Y3NmVkYyAoIng4Ni9oeXBlcnY6IHVzZSB2bWFsbG9jX2V4ZWMgZm9yIHRoZSBo
eXBlcmNhbGwgcGFnZSIpCj4gUmVwb3J0ZWQtYnk6IERleHVhbiBDdWkgPGRlY3VpQG1pY3Jvc29m
dC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+Cj4g
VGVzdGVkLWJ5OiBWaXRhbHkgS3V6bmV0c292IDx2a3V6bmV0c0ByZWRoYXQuY29tPgoKQWNrZWQt
Ynk6IFdlaSBMaXUgPHdlaS5saXVAa2VybmVsLm9yZz4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
