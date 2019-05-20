Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0C02433E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 23:56:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1KFmanD8yCLUT1i+1LVQ3XGCiSFEqc7Jgy3MJupuKCc=; b=s0twS3RNUu9thZ
	gTpuMRTQOvtq1LbCFyJZhJG8nwwrfIkO+Es8/QaKro6exqFU9wDmU5W4wUtKcmGmKVJO8z+O+Obfe
	d/KxBP+RXE4ZIj/nXBD5Z8ZUV/UYtLQNN48xtUP4S++ruo65fqkkORyL14sweKaO7yXqSlep5gL8a
	B19F3dQgrhTQVrThxHNNTFGXbPOnSYm5UyYd7FsDzorKi5XhQqgDPjSncKm0fENJMmrY5tfZXz7qv
	U5ZYmOaATfpVUm1lLi6brLRgg3pH4HriYTclvk7PbkXDctlX3AZiIj1N58pvVJpOr0YvIAqHQ+UKG
	kvd5Nc13G5qfot6iI2sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSqGo-0007gO-2m; Mon, 20 May 2019 21:56:34 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSqGg-0007fs-V0
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 21:56:28 +0000
Received: by mail-lj1-x244.google.com with SMTP id w1so13985170ljw.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 14:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fQ4KeHf0p+vNIrYYtj0hF0egs+JpVxpzz0DY2WetVec=;
 b=NPWgBS+H1DcqLncApEZaEOk1dHll5azPVd0ixXvpRlmFqlMhfZmz304tqIbdMwA8yg
 uVjba8+qaqevsdzt7R5gnbFe5bs3+xpBww/L9XUehLWmm6d7/sXWHd977uKFWKzOMCkH
 kHshbhnNfTMIPrUdjZ/mhIpg0w2QHKsJFeRYrZaVK6e32ZLSbteQyEE9rjEAowwA+t1s
 Mug/Oj3QBV0ec/3kt3dG+jtzXbu9ljXxc46/GtS2jVOPh5G0FAgY7FtZMY+vcPXDAHry
 fDM/qEBVQ6/vbsxVbLR1uPYr56Dd6uT1B0EPPVxU0NipQ8AHcsnUB7rgmbngMee1gvTl
 p2qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fQ4KeHf0p+vNIrYYtj0hF0egs+JpVxpzz0DY2WetVec=;
 b=Us3TqlBUomOIxCnZJUCP0pj8lFhshFrJVUaJllnNYqHU6Wu3ew3Jav7T+4n2u2O8wS
 46QWS5sklx7DWRUsplTytoejTnMqFRsfxoosOwp9LNa+DKLQ9+ZekPtmJ8I3yIHBwP6C
 vTv8GbRm74r64tsocZAYRNga/T6YNq8Q7saW+cOiuLY7KinYgd0hczwrt0kADkQJG5ev
 mAo2jvh5KaCFQxncRoEjgeSu7/Dn34OtJV1hEtHPcxmnPRkUufeRuFf2uWmAV2DzJ4ug
 wftQ3d9v+MNMRjj9UTYyV0+g116Po3BNZL+iqGlsUTVVNQXvla3HMWlkctt0+riZZcWl
 nolQ==
X-Gm-Message-State: APjAAAWT1sB4P41mF1QzZB5f8bOkRfoaFkdBZk9tE/nBMwGXlhybHsMo
 apGWr0MaK6RVtMrn1kof9Wjwh34zuV9f68v4MbLIrA==
X-Google-Smtp-Source: APXvYqxh21iCFOO2IrTWYQZAbtOsCc3tfRmM9ybuXFfyKPTB0poOeDnP4yUUl0wxpBYSTa8u6LEnFRbCQmfyOjYiaXE=
X-Received: by 2002:a2e:9192:: with SMTP id f18mr26205190ljg.112.1558389384826; 
 Mon, 20 May 2019 14:56:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190516064304.24057-1-olof@lixom.net>
 <20190516064304.24057-2-olof@lixom.net>
 <CAHk-=wj7uZ+rLecwEP+U3jRRPWRoB1QVTr8pHzTcmQadE=Ngvg@mail.gmail.com>
 <CAK8P3a27zgq3c_iWHVfypAc-hLag06Bs=Q2D7bn4i4nVfPQSyw@mail.gmail.com>
 <CAOesGMgQ9kF08PDzA3LSjsXt-ETB8vAnqo2EjtbKEMJ5UrnJnw@mail.gmail.com>
In-Reply-To: <CAOesGMgQ9kF08PDzA3LSjsXt-ETB8vAnqo2EjtbKEMJ5UrnJnw@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 20 May 2019 23:56:13 +0200
Message-ID: <CACRpkdYBYHSgc_WRcCHobSCrLu0nN-Y9i=j7PFKtAPA9PbTwmQ@mail.gmail.com>
Subject: Re: [GIT PULL 1/4] ARM: SoC platform updates
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_145627_007576_3CE93579 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-alpha@vger.kernel.org" <linux-arm-kernel@lists.infradead.org>,
 ARM SoC <arm@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 7:10 PM Olof Johansson <olof@lixom.net> wrote:
> On Thu, May 16, 2019 at 8:53 AM Arnd Bergmann <arnd@arndb.de> wrote:

> > > I'm going to remove that #ifdef in my merge, because I do *not* want
> > > to see new warnings, and it doesn't seem to make any sense.
> > >
> > > Maybe that's the wrong resolution, please holler and let me know if
> > > you want something else.
> >
> > As far as I can tell, that is the best fix, thanks for the cleanup!
>
> Yeah, this was entirely on me -- it was found and fixed on linux-next,
> and Linus Walleij sent patches. However, as I was staging these pull
> requests, I applied them to a branch of fixes that I'm collecting for
> later this week instead of on top of the one I was sending.
>
> Thanks for fixing it up.

Oh well Linus wrote the bug and then Linus fixed it and then Linus
fixed it.

What is good to know is that no matter which Linus you use, you will
always get the right fix.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
