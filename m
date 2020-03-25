Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73EF1192E47
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 17:33:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MVV5wXVNCOl++gcs9+pXmPCrO8JpOIk2Fw7pi1WbqKI=; b=SFhD7lZsiegqlx
	lTKVNqQV+tjq41YfnzQMOwfuYX4CyY3HDlxpMPSB+vOWtVo8uE6xy3hnAmbaIcd0RGuf+49J1ZLpn
	54LHyZaKyJWgupeIHTqgJc2gllYuGnAT4ouFI1sbl6pLlxNPmeFcTsmdxP4Forgtw+waSWEj/W9af
	OucT8L0V6c5D8RUe+RgEH4WUd3bNlMsWETgN4BHdOh623kl56FLM15vV7ZS6gknBUbIZ5Et+CnbOE
	c21a2TCdZqY9Sd3kyxDPk0YtXz9a2mNHNG89zkcb8dWR3b8JKq9yRdJf0Jnsx9pANgokrrAZ22ylH
	Y93+y3wyfrdpcJ3LwQCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH8yE-0000XI-Vy; Wed, 25 Mar 2020 16:33:35 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH8y3-0000Wl-Gs
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 16:33:25 +0000
Received: from mail-qv1-f46.google.com ([209.85.219.46]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1M89bP-1jBvx728nb-005G9j for <linux-arm-kernel@lists.infradead.org>; Wed,
 25 Mar 2020 17:28:14 +0100
Received: by mail-qv1-f46.google.com with SMTP id p60so1363940qva.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 09:28:14 -0700 (PDT)
X-Gm-Message-State: ANhLgQ34g7Qi8ObCHSfxzkj0ia4YOgs146xFjlNRaPELcjBbhbNOFjF0
 R06UNC//TzImXAU81EmPEenxvHm7Lthg1kYdIDY=
X-Google-Smtp-Source: ADFU+vu51VjmtUzae86h9PXxe7pD8L7fItRMU/8zRZZij4CahDqYjzg0IfGLHpAakG7vC7pRvnlTJWH0NV1IThui9Uk=
X-Received: by 2002:a0c:a602:: with SMTP id s2mr4030668qva.222.1585153693416; 
 Wed, 25 Mar 2020 09:28:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200229210225.173084-1-linus.walleij@linaro.org>
 <20200302042205.tonnru7ysr46fht4@vireshk-i7>
In-Reply-To: <20200302042205.tonnru7ysr46fht4@vireshk-i7>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 25 Mar 2020 17:27:57 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3CkAfozaMMNsGk5VDib53veMhm7ExWZT+A2gc+J_GqWA@mail.gmail.com>
Message-ID: <CAK8P3a3CkAfozaMMNsGk5VDib53veMhm7ExWZT+A2gc+J_GqWA@mail.gmail.com>
Subject: Re: [PATCH] ARM: config: multi_v7 Use schedutil cpufreq
To: Viresh Kumar <viresh.kumar@linaro.org>
X-Provags-ID: V03:K1:yL+4YutDYK1H9sPghiLxN9yjlPZKX9GhQ4LvjkYxx7CPUs4zQcG
 TYixAkZ4V8PDuscLOtdKJnmqpEVR473gz5MDivTUiOcykeo96Tvq6AWHfj1YXp2q5jTtzpu
 ISBZIME3J6qK+vmxwtWI2GN6GfN/SKsAl61iEKyjkrNSwPjHBePGiBYOuUaU+kt5UeKpjba
 s1QU7iEYnVmhXIEU7FnWQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:njF1TR8ty80=:owvNlxo/tOJFmwo1tY8Qor
 IIWZw7esNB7QNC9AvWUEjiJbDGL05C6QKp1SSjy5eN4GGYA51vh5Bw8xdqJQNTuB0zbu7yb5H
 NfOabCbV39kQ1SDQwlLnFSQLKldErDXvVBlz8f58lF7jaCUcXDLIvjOPcEZU++x4cPuWVbLNB
 aawNhVDzE3OWPY1hzWHnYqY91ZySr9OyqOIHDNjfz/rmpr6JJrX6nNuVcTl6FYr2YGwUCFXUj
 jkEi8/CLuSFdAJCPVjtq/ps61ddfF8MnPAGSWNuBg6VWpy7jox80M30/mIRvEV9Uz2JM+R02O
 k0SDVlK1SHTKjLtWAcuccAxddv+k462QdgQDFCVlCtCskN1bX7KpahjSXTmmc/ISAEZVrKh26
 oJFh5RPIfRUro8CN5Ps/gdndlZJPNY7emxzbtsKs9bmUygTkAhk9XCTY2MvGdxUyMgmYcE337
 24AMmvyRQvmwJ/UL7D0Omy7vWn1ItYRAaYukd/ClGGBmZgKJNUwrrM5X1BD6NKX7N/dtjbQsJ
 ik2OIeTlo3n5qtGSMRfS9ipWJ86+vLKvRMpogiM0bWTxhZrbVxnRu8lzQ9S1Xsr9i8WE83k5E
 FVjdlGjzVqbqemNQEmWHgHtGFFVoqCZcjJ4FBDKph/8+jrKYP1dgJgRbUf378q0tiBQ1oGUEv
 sGyZoSltRp8yKXJEVTf4O/dBPNYTszlbr5KmrtCxWlrp7JUxmpFRXeLhSJz+MtE9zR1ivp3Rc
 E2+pbboYiC6wTXbkwukVIgiv+xhuUJuAHG5B3dwifLZqbemoMuZ8CSWriLaZSbfMesjxxkB71
 RvYkYi1/CRkxnfPR47dlC1rnhoE+wM22vL6ZGypNvHG9XVvYDI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_093324_367168_660ECB6E 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Linus Walleij <linus.walleij@linaro.org>, arm-soc <arm@kernel.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, SoC Team <soc@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 2, 2020 at 5:22 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> On 29-02-20, 22:02, Linus Walleij wrote:
> > The multi v7 config is using the ondemand governor by default,
> > but the schedutil is mature and enabled by default in other
> > defconfigs, let's encourage schedutil as governor but keep
> > ondemand as compiled-in instead of the other way around.
> >
> > Cc: Rafael J. Wysocki <rjw@rjwysocki.net>
> > Cc: Viresh Kumar <viresh.kumar@linaro.org>
> > Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> > ---
> > ARM SoC folks: if you agree please apply this directly. I think
> > putting this in the multi v7 as default is a good way to
> > actively encourage this governor, unless Viresh or Rafael
> > objects.
> > ---
>
> FWIW, I have tried something similar for arm64 earlier.
>
> https://lore.kernel.org/lkml/af12e002bc165844101830c0eb00e283b536a879.1510813288.git.viresh.kumar@linaro.org/

I've dropped this one and not applied it for now after rereading the old thread.
If there is a broader agreement on what the default should be, please
collect more Acks and we can apply whatever you come up with.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
