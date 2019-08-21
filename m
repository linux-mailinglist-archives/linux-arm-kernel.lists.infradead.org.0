Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D96AB976A6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 12:06:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0tXJizOoYWfgeXO6nr5T4FzKJFwUyTNHYwBDwN5hQjs=; b=bUPFjXauJ6+AvE
	C0TS/MKa0kuu4wNEnJERf1Q37rVjGZUutfkljLZwazHxJgNz3rTBzajwNh5wgQHkAuF473qFX3nW5
	nsV8uuJVAJ0JIuds48q6S4/qRgrHCt9YGPOKMTMaQ+SA2YsdN27fkoMvIGfdAqGXJZ2yNRyvpAQKS
	uo79OiXXApZQroN5COZlaB1b78+mPifoLdnZSSw+G+KSrpLVCox1ispoZe/LgCXK9obp/rhm1BC9Z
	S21NHSefYV82Wk/qCn0MdPiBPO9+3fRULqAgKQ7lWqN73XZRn0N7rbUxsk4SpygYhsgpntSeXNifo
	invFJdfSR+Di8UNrWUTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0NV8-0006NO-BP; Wed, 21 Aug 2019 10:05:58 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0NUP-0006N3-19
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 10:05:14 +0000
Received: by mail-lf1-x141.google.com with SMTP id s19so1338539lfb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 03:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=m1f2HiISSaidRsiBte5wZoNhW3uuVsn+JOSHikJRLKM=;
 b=p6cokKjopghFW0uPUX4eglH6ytwAHYRurXCzgZZIt1aZPpSL/CcrWzI/EjzZ8gr9d7
 Jt/ily/6v0u1JXheWsQ2YpIYwiw7LAPiRusN0e1BC63/K0911V8HL3C4i8hJ7weQD2E4
 bY2s+VAbDKhFunCj8/qf2vxrSYpBp4hBX5Oifu8S20n06e7CHjj13SiUNf0Wx6gRsRcq
 dxo10MAKRJwgCKxBLDBTLN1DEI4J5g/FcI/unRLd4Gj8Wm2Azdk3dgXDH1f0qaGrZjeh
 7wrTIRSKLJIU2cXxrCgky5PHkzomRnf388IvVSGAsFXQJ2hGwLE1qUF7IiwRAfGPPs7r
 6u5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m1f2HiISSaidRsiBte5wZoNhW3uuVsn+JOSHikJRLKM=;
 b=PiP5QZAZbpXQV72sAVLJoZFLergFnscPzlklNxhN9xOJD0Cndqq00i3q3CfRKcRTpz
 fsVdHcrGU9+gpqctrpCOmYXxuoGm1ekleMzdLaQ6C/t+i57DbRQJy6ZvP2Z3NCBL9PuB
 CWM+PnONg8OqJFZAkzCWk8fIoWANv3kO8x924AVhr/exZ+gH8a1WJJmFvby9OQfYbWpi
 Ap8hhyk31RqZMdcySeGU10HDU3bK/m1dZp3DOBn4BRgNkXJ8dTZffxwasdaWVymHmwu4
 lNRdA/9NpDi6QmnTc+k7MWUBqVCmpVMJmgBlJ3G8aQhf5P5Wsyor+ShWtCDHzhlNLwUZ
 j4ow==
X-Gm-Message-State: APjAAAVffmI9d8OpBB8/KKA1CvKV7RSOm/3R9ygdpDU7OxGMDWpBS2Td
 S4QiE5vGDajowb7PV22USM9rhcoJPS+yYq3pxMTYsQ==
X-Google-Smtp-Source: APXvYqzlFpwgtUN1/ODTvZFOvLQ4eLRvTCMKs2bpqwwkwySlDtut76JVRBYwgvUd9xNe5dwZoPTCvPOuggx1q9LsPn4=
X-Received: by 2002:a19:e006:: with SMTP id x6mr17408408lfg.165.1566381911384; 
 Wed, 21 Aug 2019 03:05:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190815060609.3056-1-nishkadg.linux@gmail.com>
In-Reply-To: <20190815060609.3056-1-nishkadg.linux@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 21 Aug 2019 12:04:59 +0200
Message-ID: <CACRpkdZmNMf_k0jHhDoJEouYWMN49=oCs3aEQVXjKXKz6LdwXg@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: st: Add of_node_put() before return
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_030513_081793_3B42E35C 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Patrice CHOTARD <patrice.chotard@st.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 8:06 AM Nishka Dasgupta
<nishkadg.linux@gmail.com> wrote:

> Each iteration of for_each_child_of_node puts the previous node, but in
> the case of a return from the middle of the loop, there is no put, thus
> causing a memory leak. Hence add an of_node_put before the return in
> three places.
> Issue found with Coccinelle.
>
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
