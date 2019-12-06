Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C8B114E82
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 10:58:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=azdJHL1BLZif8NfTgnO7BNaClZhKOeFEI+y5Yo7JJSM=; b=ncZFOr/7woEGGG
	MJH7p3kLFtN+tPVReOlEy9KoCAO37Ie9T5sJfEfWN33eO16WmPD2XdqZn2EHuqyWKeBarydwGyndi
	r05hwkDqALTC4pbPaevaxHJxr31VEJdt3x9gpVn7EZVy4NW5LfcENJOSVXdm1VSzCwpf5Er+XPQKD
	YjBVDv36aBJS5BQtVMD2mjtuSa7lrdhUK+b0w1L1IJiwtHHjGK3A1VKe6vB4HRcz76zaXx4yHwz8j
	c0pEP0mKhng1Ae/UnyxnNhGJkYBt6tbRvu8MBpVrII2FA3mqq+fQ0BEi68nNoWQ4q2YI6UN7hnGuG
	QznM/crj3Yrw/aNWO4Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idANC-00016J-VT; Fri, 06 Dec 2019 09:58:06 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idAN6-00015p-7M
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 09:58:01 +0000
Received: by mail-oi1-x243.google.com with SMTP id a67so5648532oib.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 01:57:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Bd3b8s9M4GfmWGy+FhxvfH9623GW+Z7GHq6ZS9FSEio=;
 b=GRcBYNyOoDchHsvsxvVKzhiW2zFeqsSCfSe3TO1ffjwaO9eHhr8zq6aGVHQbXsaFiu
 jiUOuSU4mtLfxy+snruKr/D40IY6hvP5oRadabynf3MXktNB79rPfpKgwwAjGCA4DNOb
 AZj6s1+HOUvDL4oay8vA+ka9LOQ3DmRsPInjIh4NS+Sb0vXy/eZZ1fqyrCMi8cGmu+9O
 6+Vq6nAyzw7qSjBuWHi/JdVG0fuIs/psUwBnC6WK7FnSWOL+ul4f6cFdFc+YJe9eWo6Y
 okE6HhRKVctWvIGv+hd7ywhVLUB0lNE3/2SaB6Zjhig2uKA8ZlZAjIJneiRdY6h4u6Zm
 AJ7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Bd3b8s9M4GfmWGy+FhxvfH9623GW+Z7GHq6ZS9FSEio=;
 b=pMquEIcUfzhMi94jG4eVEe7sMB9eyXC47E4yMV4j0McGwyO2w5S3Tlt1niP2ZTEXXF
 4wFD2hILzCrAJlGcmeC2qKeodwN+tYLgKgL7XzT7tgdvo2+670I42hLVSyzTtRZRlZOO
 NPorlhdhUwVx1i7AgBdonEiRrPEhSwy0qnogeXUyJ+rV0yEqh7Yf1TjHRsyXwM9sUZkm
 lkT28J9mru7cWxgZ4BPsgq9W/XQRIt2RYExniz88WW97tz65809DlIUE5dEr0Z220Vc2
 I70BwOKLswCvW49wkL6jWW1phrejOgqJ1P+5Jdf3guGM92HlRiB/3CHchLrCayturQHq
 nRmA==
X-Gm-Message-State: APjAAAUV/53Q412HiWOKaLLSQlfj1WopNKP/apbE0a2Glsq0D6EWUy5o
 x5BmRREF8SWjE8mEcMEaTYSSZTs0nB3sez/4Z3+G3Q==
X-Google-Smtp-Source: APXvYqyDnLc6uv7xzZtApm05mqm0a04G/D0I7RYMQbOUqCTBzRSrVF5EQQbhaRJRrabLzCvuAJo9T7WdLIzjmjrm6MU=
X-Received: by 2002:aca:de03:: with SMTP id v3mr6077838oig.162.1575626278605; 
 Fri, 06 Dec 2019 01:57:58 -0800 (PST)
MIME-Version: 1.0
References: <20191115105353.GA26176@jax>
 <20191116234048.oas2rlfwxlz65jvp@localhost>
 <CAHUa44EQ-1SUd0dDBp43_EGPMPArq_g8=1hSKZ3EC0uELUKH_A@mail.gmail.com>
In-Reply-To: <CAHUa44EQ-1SUd0dDBp43_EGPMPArq_g8=1hSKZ3EC0uELUKH_A@mail.gmail.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Fri, 6 Dec 2019 10:57:47 +0100
Message-ID: <CAHUa44FaxiMrGwOLPrej_zMrVFyBExfPTqeHfYfocpc8x8LzLg@mail.gmail.com>
Subject: Re: [GIT PULL] tee subsys fixes for v5.4 (take two)
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_015800_263808_27F92E41 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: soc@kernel.org, arm-soc <arm@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof,

On Sun, Nov 17, 2019 at 3:22 PM Jens Wiklander
<jens.wiklander@linaro.org> wrote:
>
> On Sun, Nov 17, 2019 at 12:45 AM Olof Johansson <olof@lixom.net> wrote:
> >
> > On Fri, Nov 15, 2019 at 11:53:53AM +0100, Jens Wiklander wrote:
> > > Hello arm-soc maintainers,
> > >
> > > Please pull these OP-TEE driver fixes. There's one user-after-free issue if
> > > in the error handling path when the OP-TEE driver is initializing. There's
> > > also one fix to to register dynamically allocated shared memory needed by
> > > kernel clients communicating with secure world via memory references.
> > >
> > > "tee: optee: Fix dynamic shm pool allocations" is now from version 2 which
> > > includes a fix up with a small but vital dependency.
> > >
> > > If you think it's too late for v5.4 please queue this for v5.5 instead.
> >
> > Hi,
> >
> > I noticed you based this on -rc3 -- all our other branches are on -rc2 or
> > older.
>
> I'm sorry, I thought -rc3 was old enough. I'll stick to -rc2 or older
> in next time.
>
> >
> > Anyway, I brought this in to the fixes branch, it's the only thing we have
> > queued up at this time so I'll give it a few days in -next before I send it in.

It looks like the two patches in this pull request
(https://git.linaro.org/people/jens.wiklander/linux-tee.git/tag/?h=tee-fixes-for-v5.4)
are still in -next and haven't got any further. Is there anything
wrong? Something I should fix?

Thanks,
Jens

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
