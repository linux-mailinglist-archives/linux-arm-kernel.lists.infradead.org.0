Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB0CE9EC1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 16:20:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QShOFhXe/z17p3lg+Grvf+tjfwFAPKX/h81tSPOi1k4=; b=h4bOZUthrzOCz5
	+E4ke+Q+etFxCnEjyZxTOhBwe05TgYdulU8GSG1wh+Y/h648r5h41/oELYA67C+GmNxFjk3vifJL4
	en3WjvSTmBjZim3Tg5FZQsALwBe5a6gTfd0Et2SXOCKC3onK2adXsJHa2RTBnhIWZg/+fx21sFxZO
	ZwNoLInGERKToz7swiZHFXulhSWh5jIsGK7/SsLRLqfklwvASkeIGzpjLB5sLUaWZD0M2EgQIaUEI
	SP+b/AJk/a3ZRPQ54hQ7sT5H4mo5b29asmixDdRo6L53cNdIuioBjdooxO+d3TunIXWLczv3MX0Vf
	tCRYgU5iWSxBQN886OsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPplP-0001NW-4T; Wed, 30 Oct 2019 15:19:59 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPplB-0001Mi-4a
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 15:19:46 +0000
Received: by mail-io1-xd41.google.com with SMTP id w12so2931337iol.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 08:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7YNXyj7f8rW8+zjDkawxxyLGJtQwCp34SKVerNZRPbQ=;
 b=oWsbYVn2wH21E81tjjJ3l6Iq0ORB/qlP3WR+Q8r9Z2fUjpbg/uUl9HaP6IzyxnYvVH
 WKmf9Rh+YOwz8WuIcq//YSJmAZD7YV4XP3/kSQFRTSz6C0I0Io0QAnLsOfHciN7ppMzq
 SYuesKoavkQkd03pGl0yhQoo60VYnyfRdJucp9IcL/tuKLm7e5HN1XpIFNp3wYLh5UcY
 bdgym8PGD+cNTB/boNti3JS3zsSRAMNelmsCtMiVsCUujfHKuhVkpS/uXaHhuTmCfr3e
 5RRWn2T+sQ/VNSmZq9Tj7hidfFMMrTf6wFnH9cIkxYKWtjlEKRlOEUgsWgDTnQ9mhjDi
 gzPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7YNXyj7f8rW8+zjDkawxxyLGJtQwCp34SKVerNZRPbQ=;
 b=AzRoMJDs+0RuEPm6rWly8LGF0YZAy8ACSo74Dg5ie8QPDaMIQuLRXHl/8b0xiUNEa0
 ILTz9PfKHi2WgY24RRe2HiJwZpcLWJJHWyMtsZjNrlB8y8AYCONruEqB0z9zE4IFrV1C
 rSvEiQjJkJk++LiRTejzQlImQ0fitvkDRbnWUO4NwLBol7WgBbSwD62HY2ozwjHkgiLw
 A3cOGLMLgyBzAQgWfM1lh71v0mQlaG/7jCcb+H89PopmN4i63TEqyQca/QenDwoZj7Bp
 HfgSQFLg5zLj24JDq0CagGdDQK3qcCFMPEy1eqe1ytgMP65SjQFEMK91dqQtHchf7oiV
 eXYw==
X-Gm-Message-State: APjAAAVdrDL9rc6jTxztOCaprobBIOLZ9lqNS440Jlcy3UjYktJAGy/s
 BaIkPQ9+aOkoesWkSgaZwgUeMbomHUnAUg27F0tDww==
X-Google-Smtp-Source: APXvYqyKGgTnRfDLHHdkSB7llCvZ5cVDKjpUAmAFIAQromO+MWT4WMhJv0CW7Uy5syPMKhupsj3GiXgNXpc5RVQa4ak=
X-Received: by 2002:a05:6638:392:: with SMTP id
 y18mr165770jap.98.1572448783867; 
 Wed, 30 Oct 2019 08:19:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190829213321.4092-4-mike.leach@linaro.org>
 <20191026202633.835854-1-rikard.falkeborn@gmail.com>
In-Reply-To: <20191026202633.835854-1-rikard.falkeborn@gmail.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 30 Oct 2019 09:19:33 -0600
Message-ID: <CANLsYky8WozdqOFrD7Q46P3uxWo4dcBjOTpwo+33u9W36WRA5g@mail.gmail.com>
Subject: Re: [PATCH] coresight: etm4x: Fix BMVAL misuse
To: Rikard Falkeborn <rikard.falkeborn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_081945_184566_95E1C007 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jon Corbet <corbet@lwn.net>, Greg KH <gregkh@linuxfoundation.org>,
 Coresight ML <coresight@lists.linaro.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 26 Oct 2019 at 14:26, Rikard Falkeborn
<rikard.falkeborn@gmail.com> wrote:
>
> The second argument should be the lsb and the third argument should be
> the msb.
>
> Fixes: 62ab9bce3bc7 ("coresight: etm4x: Add missing API to set EL match on address filters")
> Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
> ---
> Spotted while trying to get compile time checking that the order of the
> arguments to GENMASK macro is correct (BMVAL uses GENMASK).
>
> I have only compile tested the patch.
>
>  drivers/hwtracing/coresight/coresight-etm4x-sysfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> index 3fc12ac44270..ce41482431f9 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> @@ -1246,7 +1246,7 @@ static ssize_t addr_exlevel_s_ns_show(struct device *dev,
>
>         spin_lock(&drvdata->spinlock);
>         idx = config->addr_idx;
> -       val = BMVAL(config->addr_acc[idx], 14, 8);
> +       val = BMVAL(config->addr_acc[idx], 8, 14);

Good catch - thank you for that,
Mathieu

>         spin_unlock(&drvdata->spinlock);
>         return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
>  }
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
