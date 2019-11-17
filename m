Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85391FFA35
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 15:22:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j2yTAcAOQkA7AQmGBHi30U5MVzl1i/3KP30efXDXMp8=; b=TvrW6/OIYjTL/V
	1tWilUV6rToauGOneFzD6m/AMNNpdAiY2W9lUdoYDlo6AW2GO2Jv5GQ3E8KtC2QZT4OhoSno21u2b
	m7uqGUREEjQMZUvrHPzDipaDvbHm0SuUU/KegHP1h9vcNkRKOFcXOyxLxkkq0kjV8nTGFNXDWeOCB
	MQyFlZlXW95238cEC060Q7GUZ48akx+PnEaFTD5dZiOhjp2F3NYf1gvX4kVuEvpcCbBbYp7iigWb8
	n7Kb5+OaiktKq10tekJIBGK5rkiVGgjXVZk7XnJJXe1YcXyVFKJ5isB5KbuJ0g/dGUMIKPZ3UI6Qy
	7VkWL/rwtE6k3CjaQP6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWLRk-0002M7-8j; Sun, 17 Nov 2019 14:22:36 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWLRc-0002LM-HG
 for linux-arm-kernel@lists.infradead.org; Sun, 17 Nov 2019 14:22:30 +0000
Received: by mail-ot1-x342.google.com with SMTP id b16so12195843otk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 17 Nov 2019 06:22:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qBBWYG/+c5ldPryHsf5eFGeS1K4sMEdoNycmM/BbPSs=;
 b=eVXLRxQuz/44ibheIO1zBi5Zd82/vwRtZvSJD8oQhmt2N/MJKJxuk3mbOogtVtPOdC
 sNPpD/RqzFELI0IHUxQjqsOEEBj7jWOPI0pyy+9bUClF0EiyXOEFew0fKsItQ5HKg+YF
 YrZr2GVvndUbsjQsk6+ug1ZFaNyqt+6C3YZtXfQfvLWHNFSavV1xLMli6fDg7CnNhMZz
 6eqCxy56Hvs4889Y+ya4/BxzxsfuyysdK2mTS/bo7gKchr0efYbVAEsX4tW4B0M8fm7/
 u3Pu4A9o3PqoT73GNjO43SrYuCw0EqGBY9uha6GxjU1wavNGrxxt9lzT9RSa5KY/3BpE
 Upcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qBBWYG/+c5ldPryHsf5eFGeS1K4sMEdoNycmM/BbPSs=;
 b=VsU+C26q+1Q9zMCFcSh2e9ftvxL7NmJ0u/oJ+tUNXqaW7gNpI/lIntcRj/LQQxryBC
 RBo+vTSshtpW6TCrMKpwpM6B3dxtPt/kAasrlDK2qGY1QZV0S/8oWLup9YtgYKGET0pT
 BYLzQW4k8sSYAYL4Pe0hHFO8wf98kfoE6gCbrVxCI5SxrDFVbiRBG1FxKlUBwZR8SI2Y
 hhqq0Pk4hdvwTmhtzO5bkagiX1+oqX04H1V+6nWePIQFCrzRGr8N29iG9itZXhdvmtwO
 ctFYfhlFzgULpq4zPyXu1ksl/0mSQG6R8yJjzgpsHaK/g4B+TW1TJuAL1UcGeLu9X9pg
 w+FA==
X-Gm-Message-State: APjAAAXEKUOZO9GwT43SyH8g2QBrtRMpp1HZatk2/A25EII1VIJFMnoi
 TcshqyzD/5tNkWjebyKoaEvz8bc1SItneGvgpPa6Zw==
X-Google-Smtp-Source: APXvYqzse67pl4kqu/siCg0wumffzj5GbqEiS5VUx5pi2k8HHFVyi+mrwc9OoyE2LcCldd3coboHUuNiy3JdCrimPUI=
X-Received: by 2002:a05:6830:2371:: with SMTP id
 r17mr19318806oth.324.1574000546502; 
 Sun, 17 Nov 2019 06:22:26 -0800 (PST)
MIME-Version: 1.0
References: <20191115105353.GA26176@jax>
 <20191116234048.oas2rlfwxlz65jvp@localhost>
In-Reply-To: <20191116234048.oas2rlfwxlz65jvp@localhost>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Sun, 17 Nov 2019 15:22:12 +0100
Message-ID: <CAHUa44EQ-1SUd0dDBp43_EGPMPArq_g8=1hSKZ3EC0uELUKH_A@mail.gmail.com>
Subject: Re: [GIT PULL] tee subsys fixes for v5.4 (take two)
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_062228_699992_2C5E2EBD 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: soc@kernel.org, arm-soc <arm@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Nov 17, 2019 at 12:45 AM Olof Johansson <olof@lixom.net> wrote:
>
> On Fri, Nov 15, 2019 at 11:53:53AM +0100, Jens Wiklander wrote:
> > Hello arm-soc maintainers,
> >
> > Please pull these OP-TEE driver fixes. There's one user-after-free issue if
> > in the error handling path when the OP-TEE driver is initializing. There's
> > also one fix to to register dynamically allocated shared memory needed by
> > kernel clients communicating with secure world via memory references.
> >
> > "tee: optee: Fix dynamic shm pool allocations" is now from version 2 which
> > includes a fix up with a small but vital dependency.
> >
> > If you think it's too late for v5.4 please queue this for v5.5 instead.
>
> Hi,
>
> I noticed you based this on -rc3 -- all our other branches are on -rc2 or
> older.

I'm sorry, I thought -rc3 was old enough. I'll stick to -rc2 or older
in next time.

>
> Anyway, I brought this in to the fixes branch, it's the only thing we have
> queued up at this time so I'll give it a few days in -next before I send it in.

Great.

Thanks,
Jens

>
>
> -Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
