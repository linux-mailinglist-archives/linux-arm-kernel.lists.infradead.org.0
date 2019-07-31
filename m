Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 231F47C4D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 16:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BaS5cxBmzO6K8qKS0Py1fCG97/NPBi5iVGY4dREePTI=; b=k1a5I0FGjotjQN
	1U+3xKLQAZv3tSIodlux6/U9QzCP6fnmsyol0l01VWoXhEw7DclmI6hCv98/mZzkxKuPpiHF0QcAO
	wm2iaawQcZD8jOhlRUGkEfTWwDbLEL9cZj3tT5mHwXyCBLTB85+W0+ZmkA/dcqX9oUUJfiREEzu9r
	7vJttWtsPXgOqIm8le43SDLIko5Mby5Or+HrmxBYenIRA26o6kihANLlgT1SbjK862GPTed7GIVEm
	s6kWg5KsZvU4+HyzKTLBEZitr+cmeCZLGRUdVG4olUX/bX+i47XrC60DWHzmSrYlStmoeesH5T5cb
	u0puQbT/7P5jXgBcbuFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hspVr-0006kV-Eb; Wed, 31 Jul 2019 14:23:31 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hspVi-0006a5-7U
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 14:23:23 +0000
Received: by mail-lf1-x143.google.com with SMTP id x3so47692547lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 07:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6Mwmelmzw6bH/7dTu0yxXhnmtM+/gvfBNAeELEGk+uk=;
 b=b7ckL2eSD9hJ7+SslSVgXgqXaYtTrghJzWVqnzRH5arC0as5UaAex1ADlOstZ0ZAgH
 w5ZSSbXXNcoX8jtKyrctiyVtd6HsBbsFQtSIzZfS28PPueiU1cGACGc9zWiXCdQJ0wpk
 DuLQOPY6YkD5kUNXs40RHrruT+f6kC9kF/wo6v+T1ORrj4UiuM6wfpvSj2z9NXqnYLZx
 HgBwJ+wmjHC5w/e9yaL+cigyFxUP3EOJu/ohNtfLocTQL4WpgiRDQdhC4JvAcqraz54h
 jeVh4ugy80tt9CPL8cyTLUzJDd1ZgLNDIcSfQc8LqwcMzYNldlPqEfbX2KUc9A9DpGGy
 yiGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6Mwmelmzw6bH/7dTu0yxXhnmtM+/gvfBNAeELEGk+uk=;
 b=FV4pixspevlpzI4MRRe4SJhlmxzNJBmD5KO+E2D+rR+HriqcM/aoR/dubfExoxCfcv
 70WfpITSSbyEcqQ8C5taSVdg6E0i2kR5LgcZufOCtqRL4kkRmPM/VSPNTkC4gvHSGZAT
 +B0JtmjB7OrtBoF/06WeYjMXKxZVeZrkjsDZJnFYaDJtt4TLAz2y+Lwnspvi1S4vU0Qf
 VBJKuk9FJTa0peUcdDvy1gcx0Yz6hDb7OzQoJz4AamNfKNp+Aumdd5HvoFBPzMATzoRp
 dCTSYVbmAyzMWsA16YBDKlWnVq9S8FfhaObG2Sf8aeIyF9jSOX+etOMDBl+08BzLWQsh
 8W5w==
X-Gm-Message-State: APjAAAWJEL3Io7541nQFdmpBkOvHMjO2Tyj8twXKrT31+hs9RyewCoDo
 vC7AATybjFqyvbumb6jDOQmi6sk0e/GV+fW3xwKs8A==
X-Google-Smtp-Source: APXvYqzO1Rb1XuGHlY4gc7gehMJjpGhQ7bcBJg5KgrHrj/rbdrN0MlhufGWBshlYJcrDu7aQUEzfCCAGZ0ad3gulmm0=
X-Received: by 2002:a19:c7ca:: with SMTP id x193mr3049727lff.151.1564583000498; 
 Wed, 31 Jul 2019 07:23:20 -0700 (PDT)
MIME-Version: 1.0
References: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
 <CAE=Ncrb63dQLe-nDQyO9OPv7XjwM_9mzL9SrcLiUi2Dr10cD4A@mail.gmail.com>
 <CAFA6WYPJAzbPdcpBqioxjY=T8RLw-73B_hpzX4cGnwVvm5zpJw@mail.gmail.com>
 <CAE=Ncrb23q++z8R8UMbjDE2epEq4YVcNGzrRD31eH3JAooYejg@mail.gmail.com>
In-Reply-To: <CAE=Ncrb23q++z8R8UMbjDE2epEq4YVcNGzrRD31eH3JAooYejg@mail.gmail.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Wed, 31 Jul 2019 19:53:08 +0530
Message-ID: <CAFA6WYOKcOzSwakHhgshZcebD8ZBMSi7xQdjWYFS79=Xc+odOg@mail.gmail.com>
Subject: Re: [RFC v2 0/6] Introduce TEE based Trusted Keys support
To: Janne Karhunen <janne.karhunen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_072322_289035_5CDC0FE1 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "tee-dev @ lists . linaro . org" <tee-dev@lists.linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 jejb@linux.ibm.com, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 James Morris <jmorris@namei.org>,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dhowells@redhat.com,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 Mimi Zohar <zohar@linux.ibm.com>, Casey Schaufler <casey@schaufler-ca.com>,
 linux-integrity@vger.kernel.org, Jens Wiklander <jens.wiklander@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Serge E. Hallyn" <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 31 Jul 2019 at 16:33, Janne Karhunen <janne.karhunen@gmail.com> wrote:
>
> On Wed, Jul 31, 2019 at 1:26 PM Sumit Garg <sumit.garg@linaro.org> wrote:
>
> > > Interesting, I wrote something similar and posted it to the lists a while back:
> > > https://github.com/jkrh/linux/commit/d77ea03afedcb5fd42234cd834da8f8a0809f6a6
> > >
> > > Since there are no generic 'TEEs' available,
> >
> > There is already a generic TEE interface driver available in kernel.
> > Have a look here: "Documentation/tee.txt".
>
> I guess my wording was wrong, tried to say that physical TEEs in the
> wild vary massively hardware wise. Generalizing these things is rough.
>

There are already well defined GlobalPlatform Standards to generalize
the TEE interface. One of them is GlobalPlatform TEE Client API [1]
which provides the basis for this TEE interface.

>
> > > I implemented the same
> > > thing as a generic protocol translator. The shared memory binding for
> > > instance already assumes fair amount about the TEE and how that is
> > > physically present in the system. Besides, the help from usage of shm
> > > is pretty limited due to the size of the keydata.
> > >
> >
> > If you look at patch #1 and #2, they add support to register kernel
> > memory buffer (keydata buffer in this case) with TEE to operate on. So
> > there isn't any limitation due to the size of the keydata.
>
> Ah, didn't mean that. Meant that the keydata is typically pretty small
> in size, so there is limited benefit from passing that in via shm if
> that complicates anything.
>

Ah, ok. Do you think of any better approach rather than to use SHM?

[1] https://globalplatform.org/specs-library/tee-client-api-specification/

-Sumit

>
> --
> Janne

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
