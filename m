Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A36C2023
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 13:52:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RREzDSp60RhljyxWhsrZV9WTW4IOJUOHk8XDPlPMu1Q=; b=qDa/Y62GGO1xDn
	etnmpyqItex8uuGEBkziYvt+UvjhtexOv4pJrfPBWaNeev1IBcoAtGjp+r8FzFOJnmknBmQKDF9ne
	TIg1gTe9DzgOQI86Mzx1iQsXzmHETeCk+NmgHxYZ4XVIzC8V75AMFDwtJXb0cUgeSfipx1tcSYwcX
	inKxJ1Os4s7EoTFrrEoe0tfrPxzC087sU/ryxyf643nnITI6Oz3lW9njNRfu27LuTwlsG2LK30hgx
	HkJQ7htDNX6lGsGzL3hTUThznOX3UWzo0AQt+5TV9B9jD65GFhmyl04JW38U9D5G0HtJdwm0jXsA6
	Q8KRyTLDL0WAj9eR+nTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEuDk-0005Ko-8h; Mon, 30 Sep 2019 11:52:04 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEuDb-0005Jx-6a
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 11:51:56 +0000
Received: by mail-wm1-x342.google.com with SMTP id 5so13061119wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 04:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xCv6dTbvnMB8SFeV9cl5+3jUQ6kSDfEgdA6pLywECvQ=;
 b=aFUbZShVUOmZJo92jk2pfKp/Cdp/oRyOyVvqKqRLjsGCciLpXxi35+HGugTDn8COUK
 1z5SwHPf29fCWO+NL1OJxS2BickZ+RzuxZCTYq3jtBn3wBnOPel4ArRAwsFSPOOfDFRW
 7Oz8ejoQHJ4VJQhE/Up9+sj/cNgXYo8msfuDXFECqV+XENolW7P13O2XA/avg3lqgxJ9
 deXQj9noPxVa1MLjPczHDL4mcjktJu9DPg9e1xqV8CtP4M0uBL+QgouLDaim3BBlZa6t
 Gwrv7Qyxxy3gCkCydHAc1YlY/PtumfQfmKNNWXDnwNFPF1qmobK4Q5e1ZvJzOVeYQrLN
 AGnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xCv6dTbvnMB8SFeV9cl5+3jUQ6kSDfEgdA6pLywECvQ=;
 b=DDuUZSyr12EcV1QBeO3misuV7TSvwLaMdNU4h4y5g9P8I3TRjsdniCPV5karhskxJC
 BW4+qFk4ASo7hi291//gThFHsM7SrOUvGH6PWnZ/P9JpTcOPy7+a2vSv2jdS56j3Cx9m
 5IozzTOZDYhQOy9sZKQwCyGZfyn2wwQ2VvyeZgpgVUg2rXAtjCrTiQFy4ejlAeXQJoTZ
 VFO+InEyNHeoJacdmMv/gHnCY8qhSj6+UMnnsHQ+ceZga0eiHfo0Ejk0mJwEi3kVfRSP
 BVZp8SSf4xT1irbJLaZb85Q6u4HxABV1w53iBD0V+oKV7qhu5fFP7jVWy7ieBzdCNjh1
 88kw==
X-Gm-Message-State: APjAAAVtXP0T74faA3+U7zjzuG2Mh0/GCcEhJM7qFf4ZwJnyg7BUp7Pe
 aC2HSeh3wd3ygHmAtBcycIi4ZMbaVaIjly/yc/4uQg==
X-Google-Smtp-Source: APXvYqynkRE1OhQvv5mNhErEeJpUfsCrVWxWvxzycgxMVCdC4RtlIG+fMFRDY2pXsJwieVzyRlUyEv38DsEHLdJujbs=
X-Received: by 2002:a7b:c451:: with SMTP id l17mr15223458wmi.61.1569844314003; 
 Mon, 30 Sep 2019 04:51:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190929173850.26055-1-ard.biesheuvel@linaro.org>
In-Reply-To: <20190929173850.26055-1-ard.biesheuvel@linaro.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 30 Sep 2019 13:51:42 +0200
Message-ID: <CAKv+Gu9=b2VRGo7MZxuSEPZH0Sm67nd1wKd1JVpp45wNkgL8Sw@mail.gmail.com>
Subject: Re: [RFC PATCH 00/20] crypto: wireguard with crypto API library
 interface
To: "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_045155_252676_5D2D5D66 
X-CRM114-Status: UNSURE (   7.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Eric Biggers <ebiggers@google.com>, Martin Willi <martin@strongswan.org>,
 Greg KH <gregkh@linuxfoundation.org>, Samuel Neves <sneves@dei.uc.pt>,
 Will Deacon <will@kernel.org>, Dan Carpenter <dan.carpenter@oracle.com>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Miller <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 29 Sep 2019 at 19:38, Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
...
>
> Patches can be found here:
> https://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git/log/?h=wireguard-crypto-library-api
>

Note: I touched up some minor issues spotted by the build robots, so
if anyone pulled this for testing, you may want to pull again.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
