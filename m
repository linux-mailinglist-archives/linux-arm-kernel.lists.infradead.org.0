Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D5319528C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 09:06:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UsmZ8zx+gIxOGun7hwChwEilZf6GH1LNaTJQPX7RlYc=; b=pyKh/coKkCqkvO
	wb4vDE+dn2IMbYBCVJEn3BSPJxrj/2zTf4J5VFWuUnd86ZjGqTIoZeURjbis0sExKFA+8nswVXiZQ
	m+GVRf0Wn3YOtZXb9eDswEptSYdG7W5iIZiRqMwVRE+c2L98gji+GyZENDc2Tqc9tx1ojtvhc1/yz
	PXl+OozZMEnBniFiIBX9czlX0R+gjZSkZ4AUE2xL/gW3Xie814Ae6d9IoXD8agBF6Ep3mT6vF79KJ
	j07PbwULfY1hTppu+1H68b5H62EncKSLNG7NAZxlfnat9B/fmRDi3d7c1R9nHCXKIH5xfnt/T+GlB
	ovCN6T5Rz0rXqUQ9jMxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHk0j-0006Ci-BN; Fri, 27 Mar 2020 08:06:37 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHk0a-0006C5-0w
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 08:06:30 +0000
Received: by mail-lf1-x143.google.com with SMTP id c5so7096849lfp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 01:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vvHlmRwYbjigywMVXIQw36DoJoPEU1iHfIwX/rrx4Tk=;
 b=RGdQtOSG9W1yA9AW76iFiOea5j/ggU8mpWjFkFP46FMP6c0GIHT8C/C0JJQkMB6CdV
 rpMW4pUppBSD2ip3f8aAKPU9qzyjO7Jl1i2mL2ZWVzBOYSIzr4C5FysR+Ao02CprgtE0
 CMCQlmP8c9slHnXDoKUaSGvPDvXtDKjQJLWjSTibqRe4j8M7ArZrRqs0ZbWgE6SMBlTV
 kwE1hQ3rUSCI5e71tOf1mLaaNFqaaw8Swbbce0FO+n5/qhAjQ0Av1l3O9eyc9F8teClb
 zG+CtORIIjS/GmL0b4RREiW1CHGhQ1EAuv/KV3cRdyksHI44YgM70hFHxZOoHzea8+vw
 9tzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vvHlmRwYbjigywMVXIQw36DoJoPEU1iHfIwX/rrx4Tk=;
 b=cLjJ2RdWHp1kOPmhNdprsNOwyeqihfHqKO5y7XkKf51X9NXbNJ6zRjQ4wleu1GRXI4
 YUkA96n6/slBET1FDMDeIvqEHcWXaVyz9SU7+URBJXp8nVHYopkijfZ8CZJWE9VmezPO
 pvmMIQKhwVS3CYBxdyiqajouODnl+ebX4cT+qv2wjjNd4ocOOUiTTFULnc3i4mmwpe/v
 GOiBIEFKbT0gD/k+IBWrQl8+MLzrw1UFusrk6jF+czbQRWoOpVk2w03oWgN0h7XWzn72
 drUvv3CnelsxhesvzfPgi/xV/wXn0UD5j0X4R/v4fXT4mxp4LTWSazjy6TJgIe0D3mAE
 jj5Q==
X-Gm-Message-State: ANhLgQ0x8R5bocvlqzYWXi9zQC/vAYnESdfsFql+njOzOSAPlghiReyc
 Fj7+O9/4SU4QN4g/eULVjzDnpFt1wYLpUxffOlbMQA==
X-Google-Smtp-Source: ADFU+vv4of0XzoIftpR/eMuHY/eLbaCa1oIV7Nacwuz9pc29WnUsFXNNkRMg7ZWa0hcSqBzi/v0PQBrfEUrIHYXSDbQ=
X-Received: by 2002:ac2:5608:: with SMTP id v8mr8289766lfd.189.1585296384519; 
 Fri, 27 Mar 2020 01:06:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200229210225.173084-1-linus.walleij@linaro.org>
 <20200302042205.tonnru7ysr46fht4@vireshk-i7>
 <CAK8P3a3CkAfozaMMNsGk5VDib53veMhm7ExWZT+A2gc+J_GqWA@mail.gmail.com>
 <CACRpkdaYo0w8Zy4MjxC9Hqhyv7rhOMzSf_t1ZqWnyXW=9Q7iJg@mail.gmail.com>
In-Reply-To: <CACRpkdaYo0w8Zy4MjxC9Hqhyv7rhOMzSf_t1ZqWnyXW=9Q7iJg@mail.gmail.com>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Fri, 27 Mar 2020 09:06:12 +0100
Message-ID: <CAKfTPtDU9rOaq69YNMSSwQ3iK63jbROAUnSxETqqCyDOLFB-jA@mail.gmail.com>
Subject: Re: [PATCH] ARM: config: multi_v7 Use schedutil cpufreq
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_010628_210717_98E51503 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, SoC Team <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 26 Mar 2020 at 23:08, Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Wed, Mar 25, 2020 at 5:28 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > On Mon, Mar 2, 2020 at 5:22 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> > > FWIW, I have tried something similar for arm64 earlier.
> > >
> > > https://lore.kernel.org/lkml/af12e002bc165844101830c0eb00e283b536a879.1510813288.git.viresh.kumar@linaro.org/
> >
> > I've dropped this one and not applied it for now after rereading the old thread.
> > If there is a broader agreement on what the default should be, please
> > collect more Acks and we can apply whatever you come up with.
>
> I think there is a more compelling argument: if I understand correctly
> the energy aware scheduling and HMP on big.LITTLE only works
> correctly if schedutil is used as cpufreq governor (correct Vincent, Viresh?)

EAS is disabled while building scheduler toology if schedutil is not
the cpufreq governor

Quoting from kernel/sched/topology.c:
/*
 * EAS can be used on a root domain if it meets all the following conditions:
 *    1. an Energy Model (EM) is available;
 *    2. the SD_ASYM_CPUCAPACITY flag is set in the sched_domain hierarchy.
 *    3. no SMT is detected.
 *    4. the EM complexity is low enough to keep scheduling overheads low;
 *    5. schedutil is driving the frequency of all CPUs of the rd;
 *



>
> That would make the default multi_v7 unusable (or misbehaving)
> on e.g. Vexpress TC2.
>
> Thus I suspect the Vexpress and other machines using HMP
> and big.LITTLE should just select
> CPU_FREQ_DEFAULT_GOV_SCHEDUTIL in their Kconfig.
>
> That will of course make it percolate up to multi_v7 by default
> as well.
>
> If more magic configs are necessary to select to make a TC2
> work properly I'd like to know these as well so we can just select
> them all by default also for these targets.
>
> Yours,
> Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
