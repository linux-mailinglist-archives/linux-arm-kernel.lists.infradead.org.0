Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2D17BECB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 13:03:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Pd+2bknaCNhdYuILh8W5fJEf9cmF6KtK16cAre6w0A=; b=tGTVEEnILTuO8F
	q3mDr8CyDgR7RgVIil+Dfoi4EmbWJzNqpF7EaUuHDL0Fz31Frk4OMLCM7/MGSvTUsNwZnhoxY3tF1
	JHR1AjLJ/W5NKmTio/qmyHfdfNHTV0C/FNrB2cyRLypqH2QElrDCDT5RTa88p72zan+xJj8xWP5js
	THpgMofcvmPmNFDuJqRFW6JjdtY6+id642ktv57pv1giTm+QtFLZ5dV0w21bsKGeXX8d3gmNrYKQ+
	/dwZkeBITgVj1KhKxOHvsoupryosxKvd6X7WodcDf5YsDp7IhC/WqZnDxrEmOGEoN9WTYdZFA2ePu
	9gsux/y/xYhv31Yz4j3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsmO3-0000B7-Fy; Wed, 31 Jul 2019 11:03:15 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsmNu-0000AZ-FF
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 11:03:08 +0000
Received: by mail-lj1-x244.google.com with SMTP id y17so40591365ljk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 04:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IFRGzyEL5FegIt7aRlMOhE1NrhMFglg5rQhwfiI4MTU=;
 b=t3yZ6aH2FGBHy+wItFkigTDbGuodvFqDBP9LLZ1ezF/hRA9iBG+tI8Y6yqDtmaQ3yb
 CgfYFWmgAsPe3H2r/B9xtkHmrbxuM6xu8di2tSUcH6nrX9f4tOD+q1v96H4WMDjn7WhF
 IduAU2KNawBQKquPtTshfKt1InFmcmlcAl93N4w5Q+Anqdx//0pEDNk/tkrFdNKMi801
 a6zWOJL9lKr8IvCERg5QZjBrccmirkTUK6jiLrQhn7earUZz4+yLbUekT7u0LbAEKCwi
 FnP/5JpZDZgJ4RriT/3pt1GfJ41toYMcI++Y67bUJ7mUubYbdoWbliSjj5eaj/Yhacz6
 FLuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IFRGzyEL5FegIt7aRlMOhE1NrhMFglg5rQhwfiI4MTU=;
 b=ox5DwZsb7hoQIl7UhrzVE/O0B8Ad2lkJgg1trWJt2O7tX2wlnMl7TicyIIEIk/nWe/
 ODXuQ5wMsLYRRjeURtx0nPaOGkwsQKOIGIDLwBZF7VjaA07I9cVSS892RmGttUeHXWDh
 hijGTPmQdX34GyLMF2kPwSmNxolXsBQyRdrv4xJJU/Glo8qLgWy7m73dYBP0wtn+gC/d
 rKENtrfcwdmQf4+HqFS0/JZfO4zaMxVp3+UBkhszKMRjD6z/LgvW3zoSjorwujZUT190
 AYyZ7mvDYoBsKqbVqw7gTz/0s+86iymWN024fk8rIbtMbxSc1Qfbuy2XDwgkQaom8Oth
 Yc1w==
X-Gm-Message-State: APjAAAWt0fvQscZysr/GJBs+X9xOKy+uk22XO/Dn8bxfXMBqQKuVltnA
 x3eBN+a9CXh2BVA3P4OR+5I3CdCH3wzQ8U9m524=
X-Google-Smtp-Source: APXvYqxN2K3v5gLjmpzGiaVvo7hS3EevA6OWULpgUCjzPqTrwdrg+mN+g/JP+riwWs36n/w7jJKvYH0piH3zz1jK4KQ=
X-Received: by 2002:a2e:864d:: with SMTP id i13mr56738466ljj.92.1564570984704; 
 Wed, 31 Jul 2019 04:03:04 -0700 (PDT)
MIME-Version: 1.0
References: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
 <CAE=Ncrb63dQLe-nDQyO9OPv7XjwM_9mzL9SrcLiUi2Dr10cD4A@mail.gmail.com>
 <CAFA6WYPJAzbPdcpBqioxjY=T8RLw-73B_hpzX4cGnwVvm5zpJw@mail.gmail.com>
In-Reply-To: <CAFA6WYPJAzbPdcpBqioxjY=T8RLw-73B_hpzX4cGnwVvm5zpJw@mail.gmail.com>
From: Janne Karhunen <janne.karhunen@gmail.com>
Date: Wed, 31 Jul 2019 14:02:53 +0300
Message-ID: <CAE=Ncrb23q++z8R8UMbjDE2epEq4YVcNGzrRD31eH3JAooYejg@mail.gmail.com>
Subject: Re: [RFC v2 0/6] Introduce TEE based Trusted Keys support
To: Sumit Garg <sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_040306_537567_6B59C05F 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (janne.karhunen[at]gmail.com)
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

On Wed, Jul 31, 2019 at 1:26 PM Sumit Garg <sumit.garg@linaro.org> wrote:

> > Interesting, I wrote something similar and posted it to the lists a while back:
> > https://github.com/jkrh/linux/commit/d77ea03afedcb5fd42234cd834da8f8a0809f6a6
> >
> > Since there are no generic 'TEEs' available,
>
> There is already a generic TEE interface driver available in kernel.
> Have a look here: "Documentation/tee.txt".

I guess my wording was wrong, tried to say that physical TEEs in the
wild vary massively hardware wise. Generalizing these things is rough.


> > I implemented the same
> > thing as a generic protocol translator. The shared memory binding for
> > instance already assumes fair amount about the TEE and how that is
> > physically present in the system. Besides, the help from usage of shm
> > is pretty limited due to the size of the keydata.
> >
>
> If you look at patch #1 and #2, they add support to register kernel
> memory buffer (keydata buffer in this case) with TEE to operate on. So
> there isn't any limitation due to the size of the keydata.

Ah, didn't mean that. Meant that the keydata is typically pretty small
in size, so there is limited benefit from passing that in via shm if
that complicates anything.


-- 
Janne

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
