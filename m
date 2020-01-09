Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 810A0135698
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 11:15:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7MAeQxhT2aOUx4scpncZAy5P/7Tjnli5Tr4OHzNR8Rc=; b=N1/Z09Vacp/D7n
	M+sp4Z5h3tvR4pCnT0YoChh0rOaNX/Pnr7wDdefjqQruejBjh0gBrBoAM0XG54WABnnqxn/Z4k58x
	hIsxui0NNCWXXnuSvDSWczES/z6e9Sr56ymLo7QzbpNTfc67I+i5AfWKn6SD20qtBCSDUmYWawCfu
	fLVeF0hsGmPqygb0L3fN/fYPEByOxzOvBukUARNpxBx0zf4AGOo8XquCgJVPiLK6FuIYipOcNu+OJ
	E13+STiZUeO3f4eXbYYlfBkpNCMRUBiNDQHhNPF8XuXgdQ3c03igBiR3htS/PGzKmL0iGieB6xCAy
	E4lugldde7elW/1KmSJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipUqo-0000NB-6B; Thu, 09 Jan 2020 10:15:38 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipUqf-0000ML-Mv
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 10:15:31 +0000
Received: from mail-qt1-f176.google.com ([209.85.160.176]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MTOZQ-1jGsYF1D12-00TjSF for <linux-arm-kernel@lists.infradead.org>; Thu,
 09 Jan 2020 11:15:27 +0100
Received: by mail-qt1-f176.google.com with SMTP id 5so5417223qtz.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 02:15:27 -0800 (PST)
X-Gm-Message-State: APjAAAV50w/xW1jxi4lxi9Q6cztJ/NTdDlR0b7KGRA72+0OnB0dcapAX
 7PTWLgqx2/D+KilxpozDqMMytWhZwqlUt+moQH8=
X-Google-Smtp-Source: APXvYqzHV85HzfRjo8JlOR7BQz04so9X1K640UDSw+epDZK35idc8VpNX/nwHxi15Ydw7e0XfccuvrKcfiArbEs3SrU=
X-Received: by 2002:ac8:6153:: with SMTP id d19mr7257120qtm.18.1578564926199; 
 Thu, 09 Jan 2020 02:15:26 -0800 (PST)
MIME-Version: 1.0
References: <5c545c2866ba075ddb44907940a1dae1d823b8a1.1575019719.git.viresh.kumar@linaro.org>
 <CAK8P3a3=q2zX9xQo7eZKp7e70rAeNB8VoSjg2aE06QJuSw8y3Q@mail.gmail.com>
 <20200109093442.4jt44eu2zlmjaq3f@vireshk-i7>
In-Reply-To: <20200109093442.4jt44eu2zlmjaq3f@vireshk-i7>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 9 Jan 2020 11:15:09 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3wnn3E9DEfAoXNAurZ3Yop-Y3d_9+3mARY2v5y2B5dAw@mail.gmail.com>
Message-ID: <CAK8P3a3wnn3E9DEfAoXNAurZ3Yop-Y3d_9+3mARY2v5y2B5dAw@mail.gmail.com>
Subject: Re: [PATCH] firmware: arm_scmi: Make scmi core independent of
 transport type
To: Viresh Kumar <viresh.kumar@linaro.org>
X-Provags-ID: V03:K1:p2+wwXXmWHaRhAuvMtfuxsbnbBnu4JY4YTawsutckm5ZE2oTmh7
 gcAtKqBhgPb53BJhJ6yJl/6HwtR5LHpmrINxoDIPg/gC3f8tej88z83Yc0f1iouw2BgSBeq
 DjMsuABMFvcUDY2HC08sUjup43dKXVITP7eVqssTR7R3S2BBjBRJHutlS9JhWdHXjD2yKgk
 MrafgSROmQQKcAu738JDg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:hAFAjg5uYmY=:etowRwkc4YjS9NEN4lnHD4
 QZiyoUMBY4y6W9QupSeOnj0moJzBsShDdDJRBdpysMF+6d1IBf/dxkN/zM9SsoKIOSy+8i/z9
 V/JJEAoIYf02EMD5NzqWe619yWISNE+zYgui0CJaiFqC7oKnnTtAsxF2tSJRa++eHJE/UXkEs
 oLer8QiFV5PN86vREFq08NtDvbXb8h9NEH29eTkBycNF2uHIKy83JnAPi8vEEfh5NxdJ2iNxT
 JRZTLF0rCGAaZ4Cdf/P4+3OqA4K7MCnU7X8LwPuWJpDIEvgd/IhAlL5RHTXNVVLiTjvZTQdVx
 DlufM/5ajFry+RtBONb/e/VzWJVT9yousAyNECJi0GUKO9dkXClcPYZFlSCbEhVbsvGJnRfB9
 TL7fIADH3FBWgo0oSxUyQX4+0tBFqun/e8zLETNcEyw/nTCFW+xE+fuIXfob5TbNzGcuKgiNl
 /MWLkAeXoDCfPo8Jj3aXHQ3EKUMyEWGRwwBvFZOjFmdH/itI5kdkL98wqqIrVYmoue5GGceMZ
 coU6xOMCiiKKzdUnUKP4mC3cKGF6BaHcGdUAwXCNknDzYdYEhh7gcuutr5jOKqZFEvf8G4zFv
 BfvyPJTn9K+b7o32o85YTMgqos7YHL/yD4fPPNZFeO3gFPiC6LteW+R4usQuW0DzkMEH8DHv9
 F/Ct8Mnsu0mbBaa7FaPREWYBaQN1BMCIzwpuNYLzDqaduHChdUbBqZvKl4CVd8qhK+XuWOQrR
 SdNJzYAzD3EV3eiTNJBI3aVvn2QD/lK4KJ3ENW/H5r/h70AurDG2iCoFsstSkIVTlBTfhADzH
 0asSPyMFv8BSjPn439KdfRM8raZysfjlbvD5YPTv4jSDlzA4cIMsMXT6RxPQrfpmZiZViutvo
 xLE/gRSDOJ98al0ww45Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_021530_042363_6C4EA9DB 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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
Cc: peng.fan@nxp.com, Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 9, 2020 at 10:34 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> On 09-01-20, 09:18, Arnd Bergmann wrote:
> > On Fri, Nov 29, 2019 at 10:32 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:

> > This looks odd: rather than guessing the transport type based on
> > random DT properties, I would prefer to have it determined by
> > the device compatible string, and have different drivers bind
> > to one of them each, with each driver linking against a common
> > base implementation, either as separate modules or in one file.
>
> Since there are no platforms using the scmi binding in mainline kernel
> for now, it won't be difficult to add new compatible strings. So
> should this be done like:
>
>         compatible = "arm,scmi", "arm,scmi-mailbox";
>
> or just
>         compatible = "arm,scmi-mailbox";

I would keep compatibility with the existing binding and make a plain "arm,scmi"
mean the version with the mailbox, while for new transports, I would
require them to have both the existing compatible string and a more specific
one.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
