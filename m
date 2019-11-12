Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA2AF97B8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 18:54:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/70tbRySTTjCcjwlAXWLSAFCpGdVhhTaBVDldrtoj4=; b=Pw2GKJp/1dVp/A
	RH7z2odiwhpRB4YPXpa2M/S4ET4Zx0ACZrRAlqbKO0g3aoIq4T0/RJXN/4ePqvvlTOf4VGao4260l
	FuMeUS1AuVsZf2cpyifuiWxIUXgR7Df3OwJm/E6FeV4egJ59YnPgb3FxC2J64PDKyLBaojczZv08w
	pfEujR0voGuRuQvxfBECYZhP9/HwQccFZmTfIiYEcVZUhJWblA3p+hcLRr2Lxs9SflruuMcsfZ27N
	FLtrIMOtPHLt4cJRFP5QrG3HOOmSIj0PrzWitqZUPSf5dqWjdfagzbaa85wSCXVCFoLq5cZuZmflV
	DYmVm+GuDH+IDGv/MIXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUaNC-0008CM-Jc; Tue, 12 Nov 2019 17:54:38 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUaN2-0008An-4f
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 17:54:29 +0000
Received: by mail-lf1-x141.google.com with SMTP id d6so13187859lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 09:54:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C9/3cBw+s1St4spxQYIlofga3jANKje6wVfYU7Z8I14=;
 b=XArryZV/v4RmtTO4Uz8dg1dXkxZB1fxbh+wisjfXATawAXtZq8WaEDH0Xo5G0TfMHC
 GpvFN/7I4mKoAqw8+MhDIyW+CxF8fSw7n3q6QTJsVFKwHaHAuMEbhXUmfpTnaN/xr2Pe
 /LxmamUpQTbHpSF6mu+lfYlInTwgYktnh3+xc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C9/3cBw+s1St4spxQYIlofga3jANKje6wVfYU7Z8I14=;
 b=tc7+nb7Bf6YTxm9PBsqbzj4dHl5d2RK8mEiva9ZoDMxyx64FtsJL0wFYD8F/iB+jnU
 PJNxL5PO77AFDnEz8W6bi2rXAVYnIrshyk7KJzcR21F57tMO3QwA0aS34/uLNcbMdJ7v
 WoNYGhV+2ISCmPzyW8lYTkABYComhEkT4FHdLpIuxMtyk7kZ+DDfl75mroe2aiLIyNFn
 ipk66qAdJFFiKPn3vDcYFZmXtGabDGFl9WYLUweBv/BbWut1rGHjrgZEWdjMdg42tRPJ
 ucr4KDpYY86PUxN3lIdx4AuTdZwqoZaHQtrx49Dm6KsNpZRczySgI+yxrueHfZiFhYtl
 r5PQ==
X-Gm-Message-State: APjAAAWXncnzwobQfKOvjKYOf37avN1DTJMPh1sI05Ne5gA0CErGoYSR
 83DgbT3iXd3QXSL/oqIAzieY5gHiGhY=
X-Google-Smtp-Source: APXvYqyzDdsSvAq3QEZBPyLmZBc+RxpTwJ7HCx3QKaQ4cDh9/psqkn9W+DWL+7ozena/R8QUmF43uA==
X-Received: by 2002:a05:6512:62:: with SMTP id
 i2mr2721127lfo.187.1573581265172; 
 Tue, 12 Nov 2019 09:54:25 -0800 (PST)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com.
 [209.85.208.177])
 by smtp.gmail.com with ESMTPSA id w12sm6624484ljj.0.2019.11.12.09.54.23
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 Nov 2019 09:54:24 -0800 (PST)
Received: by mail-lj1-f177.google.com with SMTP id n21so18828890ljg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 09:54:23 -0800 (PST)
X-Received: by 2002:a05:651c:331:: with SMTP id
 b17mr21291645ljp.133.1573581263488; 
 Tue, 12 Nov 2019 09:54:23 -0800 (PST)
MIME-Version: 1.0
References: <20191112130244.16630-1-vincent.whitchurch@axis.com>
 <20191112160855.GA22025@arrakis.emea.arm.com>
In-Reply-To: <20191112160855.GA22025@arrakis.emea.arm.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 12 Nov 2019 09:54:07 -0800
X-Gmail-Original-Message-ID: <CAHk-=wi=LHkmw9SS066X_00TszjWzj-5t4F3ODua8W_tagVb=w@mail.gmail.com>
Message-ID: <CAHk-=wi=LHkmw9SS066X_00TszjWzj-5t4F3ODua8W_tagVb=w@mail.gmail.com>
Subject: Re: [PATCH v2] buffer: Fix I/O error due to ARM read-after-read hazard
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_095428_199626_A9DF35F8 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@kernel.dk>, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Vincent Whitchurch <rabinv@axis.com>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 8:09 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> While you can add some barrier here, there may be other cases where this
> can go wrong.

Yeah, that patch isn't going to be accepted. We don't add random arch
workarounds to core header files like that - particularly when it's
not at all clear that there aren't hundreds of other cases where that
cpu errata can trigger..

                Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
