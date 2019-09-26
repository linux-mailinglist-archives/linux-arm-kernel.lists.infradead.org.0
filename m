Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2830BFB69
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 00:47:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3v7XB8WOCvKMzzrLzuTiaJ/2qPxcAXExo5esfhjVEQ=; b=Y8fqqGo9QgDjxa
	/uU0VWfvsXFgGuJAGiBhqQMQu/HzTtKQ6UZ5Kp0uyEklx4hAvyfabnpbfDTpg+3wDpy8oB/mTLf/b
	WFfk1o+988IAh6biqtkFuY0mppXVr8LAXD7imT9xYBCKxM7uDa8GcdGZ0H2xZh8GhtaU73aWnS63n
	5OduxjXQDSYy1poHdlzQGlpUX8cyB7W+KsZCsdi1MYVUYKk07hUNN2gHft/Tt3cZJQFv6R+ii/HO1
	WaZyMpu2DLcMTzF/w3c7faqQn7Vc4JDSrTyBiKgTw1fYcQlCyZcZwDkStpleC45VGlhQOP+zS543m
	iWIvRn7ZU3JhOp+NnDbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDcY6-0002zr-AF; Thu, 26 Sep 2019 22:47:46 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDcXt-0002yG-3P
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 22:47:34 +0000
Received: by mail-qt1-x844.google.com with SMTP id l3so4957629qtr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 15:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=SYDe/o2kLFR5SneKG6UQbh/y8tn28Z982DDnMOJdbek=;
 b=mlrCBvUOrlKqAzldrnB/bm30cDnNznI4nYgb+Kxyk+nhts4qaRjdCIK88d3kK0tks7
 9GmIWZ7zNMf/jpG7cruBS8VC6I4UewCaQEk4Ax7zlSOIYWES2xe5wbAneHuAyHypHh/B
 mBSulXPxoCZzkkEoj+Ve1eSZhJXSJNxh2cRmSOA7v84gbtsO2tr4xYsOMwfuYTX6DeDZ
 ENbytWggHdbVj8eh4QHquj741T9lK1gXsSCievOJuXBAK4pZrIgPkcxueKsgSHfepWxb
 Ez6L2p+lUynes77n7sEd5BImBQsAwmJoj5xYKOupCvr4UM/7ghkhq8N5GLTluxj9ZpJV
 AINA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=SYDe/o2kLFR5SneKG6UQbh/y8tn28Z982DDnMOJdbek=;
 b=JwSTgoCsPv2HSJqb145+fHihUijxBNjslwPyhk45bl9lDhTly3V7/hEmfA5F6+lLx/
 wCNgYtt5MkuPLRc6Y9/fOGw5o8duGF/aOuMoiwMKwvpnBL8rVtS3O0oRwr07e5jYxxlQ
 WLA5gEHkiU8WkSPfxhEOdMcYLmMIBPZWh5RV1dLD3zmTAtMtpwP55fGefgKTyuFiq7+m
 jGfnDvuelfdP2tS2OZJuk48r1lkslLpD2rJfM91QepITSgVFbY5vYbItYR3LR14wzhlH
 UQwMUSQZwgXYD/EMlgXcSa//OYSHQBEd6JaDYf215mbxbD9MXAx65790x3JsLxtivVk6
 U6wQ==
X-Gm-Message-State: APjAAAVtCdDwZpDljyDc8ms+JfEo6gmkQ25dt5HZcB4aHT3w0dnz7G52
 9fWoNiyYAB6qcLLa5DlH7Vg++A==
X-Google-Smtp-Source: APXvYqy1Y/XIttcdtZ3Wy5MYgHOKxq0uC8vN990QVXqdJlgTICSWdAf37n8LWS1SWgE0rxHPiXmPsA==
X-Received: by 2002:a0c:9846:: with SMTP id e6mr5221088qvd.114.1569538048482; 
 Thu, 26 Sep 2019 15:47:28 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id a11sm322826qkc.123.2019.09.26.15.47.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 15:47:28 -0700 (PDT)
Date: Thu, 26 Sep 2019 15:47:21 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Subject: Re: chapoly acceleration hardware [Was: Re: [RFC PATCH 00/18]
 crypto: wireguard using the existing crypto API]
Message-ID: <20190926154721.094139b0@cakuba.netronome.com>
In-Reply-To: <CAHmME9r5m7D-oMU6Lv_ZhEyWmrNscMr5HokzdK0wg2Ayzzbeow@mail.gmail.com>
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <CAHmME9oDhnv7aX77oEERof0TGihk4mDe9B_A3AntaTTVsg9aoA@mail.gmail.com>
 <MN2PR20MB29733663686FB38153BAE7EACA860@MN2PR20MB2973.namprd20.prod.outlook.com>
 <CAHmME9r5m7D-oMU6Lv_ZhEyWmrNscMr5HokzdK0wg2Ayzzbeow@mail.gmail.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_154733_147428_BA2CE146 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@toke.dk>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg KH <gregkh@linuxfoundation.org>, Eric Biggers <ebiggers@google.com>,
 Will Deacon <will@kernel.org>, Dave Taht <dave.taht@gmail.com>,
 Willy Tarreau <w@1wt.eu>, Samuel Neves <sneves@dei.uc.pt>,
 Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>,
 Netdev <netdev@vger.kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Miller <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 26 Sep 2019 13:06:51 +0200, Jason A. Donenfeld wrote:
> On Thu, Sep 26, 2019 at 12:19 PM Pascal Van Leeuwen wrote:
> > Actually, that assumption is factually wrong. I don't know if anything
> > is *publicly* available, but I can assure you the silicon is running in
> > labs already. And something will be publicly available early next year
> > at the latest. Which could nicely coincide with having Wireguard support
> > in the kernel (which I would also like to see happen BTW) ...
> >
> > Not "at some point". It will. Very soon. Maybe not in consumer or server
> > CPUs, but definitely in the embedded (networking) space.
> > And it *will* be much faster than the embedded CPU next to it, so it will
> > be worth using it for something like bulk packet encryption.  
> 
> Super! I was wondering if you could speak a bit more about the
> interface. My biggest questions surround latency. Will it be
> synchronous or asynchronous? If the latter, why? What will its
> latencies be? How deep will its buffers be? The reason I ask is that a
> lot of crypto acceleration hardware of the past has been fast and
> having very deep buffers, but at great expense of latency. In the
> networking context, keeping latency low is pretty important.

FWIW are you familiar with existing kTLS, and IPsec offloads in the
networking stack? They offload the crypto into the NIC, inline, which
helps with the latency, and processing overhead.

There are also NIC silicon which can do some ChaCha/Poly, although 
I'm not familiar enough with WireGuard to know if offload to existing
silicon will be possible.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
