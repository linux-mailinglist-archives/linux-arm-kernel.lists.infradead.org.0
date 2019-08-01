Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B331F7D6C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 09:58:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Up3nt1j68Coxp/FPbGe4Zt0RV3N6xtKmihG4SmL0Nk4=; b=CTLbdRlAJQ0IXu
	pZb5MbvAtmACslOLqzkmbI5Oxg2u57tXO5xV9/mK+fJCSo5Uztknt7+6pbKjYTl67/E/xvbx7MT9A
	RvJObUU4qKil/Ah0jMpXxc9k2V4JsbTUVTiL/exmt/mQRtzbKIvC9C742ob5zmN6iaIjNYY2ehzf/
	0uhjmzN1fOdNKsiNSH1EzTz/MAXgWHCSX8zW6HscikJqIizGNx0IWa3vgQwqZKAsQRVJv4UWrTif4
	hnfAHroYUetlHOQABTbqFRNuwajaTGCtgh5NpYT9qTr3/dIsDrJDbPVswvyBeaDQ8VND8YxrQ7GTH
	rOKIJEo1Wl9FksG0gTfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht5zB-00046P-Dv; Thu, 01 Aug 2019 07:58:53 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht5z5-00045R-23
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 07:58:48 +0000
Received: by mail-lf1-x144.google.com with SMTP id x3so49612871lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 00:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7KXLQpVfkqV0NkCYw8UjiB+5rejcfZgxPXsUmGm7V/0=;
 b=sSXfHrLbSWYOGs8KaK1hqPPLlLXMXxIBBJstsrMzQsi+667jQGLbwjDjxh3KfCrW0z
 UaDglwbPR5kBydRmx7Ii16KtUJWRC0S8laKgopb2JG0n6aqt8i3JIG26mCejzCDl/D5Q
 B8HBpZcM7oyex3pImWnL147wdh9OVEOWakkHgZPqJoW7iAipZyJqptfoDXg5Dwz8rLYN
 ibL9nInRk4c2y7VpkUWY/YaLrpk7NtZKIkmwoi5GVJymVpIzl3VLb21mY01uTBkNoINk
 Q9Eme1ddkFKjtiAvIQfyEDFFLuyYbm2t9cMc5NY9ZBFoUjWOeT2pVmazB3NNhsDnkP6l
 ifXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7KXLQpVfkqV0NkCYw8UjiB+5rejcfZgxPXsUmGm7V/0=;
 b=V622sFxeiMvUXhoa/CjienoGez5LAfMFNUQ79x+4VEGBMl0XJbpPu5jfgEBepCzTsz
 WLPqG8Iz5HTEZMSiu1NqM2IKdI9CmU9ALVqvNfFrETzTdOBwD9C6g9ZrrhTx2gpo1yDO
 53/d/ksN+j4XLLjnSFTcSWo40MlXhP0pHuZ3I03UvnZNdXhZ3D0SN6P2mHaMFis5Sx96
 ypd2kdTEEvfaLFwnPOV+drJLMwywfjtKZ4wtwjjjUuWiXF8lHM9GaeICBUY9CRY9nkij
 rAfrFbt6HTY8fylgq1fz37xTTSHAZUaMzYQLTumScZDw96u02hjM/R0dJ2X/D8utmKYw
 ux3Q==
X-Gm-Message-State: APjAAAVEVNQaV1hJisTntwnGbH07exxHEbQJygYMNmjyQoiMV849Rvob
 aP/9YBp/p8rL0lvMw1DJBqYI/QlHEpGlOFCO5I6l4A==
X-Google-Smtp-Source: APXvYqzXm1XrjRokfpgWPkB/SOz1fbBVy/r2Ctmt6xsQbSbqX8deM0MJ9AqgiLXstbE+nc9ZfgBbvIGVnLwZBWUdEY0=
X-Received: by 2002:ac2:5337:: with SMTP id f23mr61398922lfh.15.1564646323439; 
 Thu, 01 Aug 2019 00:58:43 -0700 (PDT)
MIME-Version: 1.0
References: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
 <CAE=Ncrb63dQLe-nDQyO9OPv7XjwM_9mzL9SrcLiUi2Dr10cD4A@mail.gmail.com>
 <CAFA6WYPJAzbPdcpBqioxjY=T8RLw-73B_hpzX4cGnwVvm5zpJw@mail.gmail.com>
 <CAE=Ncrb23q++z8R8UMbjDE2epEq4YVcNGzrRD31eH3JAooYejg@mail.gmail.com>
 <CAFA6WYOKcOzSwakHhgshZcebD8ZBMSi7xQdjWYFS79=Xc+odOg@mail.gmail.com>
 <CAE=NcrYz8bT9zDhS_ZcvY84fpeTDxZ-KhJKeQGGyf=o4pG2J-Q@mail.gmail.com>
 <19d9be198619e951750dedeb4d0a7f372083b42c.camel@pengutronix.de>
 <CAE=NcraqD9FNM0Gk9UGhPGi3heVzZrAKGc1gNZxoe1OnDaQ=pA@mail.gmail.com>
In-Reply-To: <CAE=NcraqD9FNM0Gk9UGhPGi3heVzZrAKGc1gNZxoe1OnDaQ=pA@mail.gmail.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Thu, 1 Aug 2019 13:28:32 +0530
Message-ID: <CAFA6WYPt4q+jaJbaoauXKr2qKgBHvtQ663s4t=W3nuPJPe2xpw@mail.gmail.com>
Subject: Re: [Tee-dev] [RFC v2 0/6] Introduce TEE based Trusted Keys support
To: Janne Karhunen <janne.karhunen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_005847_107044_9AE9B8EE 
X-CRM114-Status: GOOD (  18.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
Cc: dhowells@redhat.com, Daniel Thompson <daniel.thompson@linaro.org>,
 Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, jejb@linux.ibm.com,
 Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 "tee-dev @ lists . linaro . org" <tee-dev@lists.linaro.org>,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 Mimi Zohar <zohar@linux.ibm.com>, Casey Schaufler <casey@schaufler-ca.com>,
 linux-integrity@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Serge E. Hallyn" <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 1 Aug 2019 at 13:00, Janne Karhunen <janne.karhunen@gmail.com> wrote:
>
> On Thu, Aug 1, 2019 at 9:50 AM Rouven Czerwinski
> <r.czerwinski@pengutronix.de> wrote:
>
> > > I'm aware of it - I have implemented a large part of the GP TEE APIs
> > > earlier (primarily the crypto functions). Does the TEE you work with
> > > actually support GP properly? Can I take a look at the code?
> >
> > AFAIK Sumit is working with the OP-TEE implementation, which can be
> > found on github: https://github.com/op-tee/optee_os
>
> Thanks, I will take a look.

For documentation, refer to: https://optee.readthedocs.io/

> The fundamental problem with these things
> is that there are infinite amount of ways how TEEs and ROTs can be
> done in terms of the hardware and software. I really doubt there are 2
> implementations in existence that are even remotely compatible in real
> life.

I agree with you regarding implementation specific nature of TEE but
having a standardized client interface does solves the problem.

> As such, all things TEE/ROT would logically really belong in the
> userland and thanks to the bpfilter folks now the umh logic really
> makes that possible ... I think. The key implementation I did was just
> an RFC on the concept, what if we start to move the stuff that really
> belongs in the userspace to this pseudo-userland. It's not kernel, but
> it's not commonly accessible userland either. The shared memory would
> also work without any modifications between the umh based TEE/ROT
> driver and the userland if needed.
>
> Anyway, just my .02c. I guess having any new support in the kernel for
> new trust sources is good and improvement from the current state. I
> can certainly make my stuff work with your setup as well, what ever
> people think is the best.

Yes your implementation can very well fit under trusted keys
abstraction framework without creating a new keytype: "ext-trusted".

-Sumit

>
>
> --
> Janne

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
