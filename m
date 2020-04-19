Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3401AF935
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 12:05:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TbNb5p45V9CYwUsaFwo0j9N1W3tgxjx+3NP/5Et7n5c=; b=HwKTP8Gx52JQzv
	eRY5rIel5LSN2kIXCuIXgk6IfxZkUfIkKtPcGIKchdM/FOBwZNaEO2ctHw7/SHtlY9DghVAb0EMs0
	1/9R7h1IWMp0AYi6ifJjIedOWdJNYWMuYzuiDkBCv0VzYX75uRrEfOPnuiviYrBWk453v8PqPZfTk
	onaQS7jrYHwrabbl3mEdUxxbFXy3VsTMMl95Dfw13aXoZTbxcnq/A97YLFmk9CxtNTf4LEMs1vLmB
	4+QjUXeN2BQEPLTKg/OT+lZWwYUZObmq6qpV1oDh8uIsQlUjgvpN4KakL5UcylU2RI/PWHieoKOic
	xDF7dLlGzxUridWx80vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ6ol-0007bG-Tc; Sun, 19 Apr 2020 10:04:51 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ6ob-0007a3-Jg
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 10:04:44 +0000
Received: by mail-lj1-x243.google.com with SMTP id l19so4132352lje.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 03:04:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Mn8Jy9OU+/ODYHMM533ScviapxYAJChTEy00gYjYFX4=;
 b=a9WZbHk5RzEBex7dd652HoTFjjdnCjIVayXCWuekivqrga0QBbBg7kMsBuJPeBkwgD
 NzkqyBX6lJ2I9ixUYeJCycAjSDJcfQExDCMF6gIblXdWNi/4ykzInWmmmolFWbwa0MVF
 z/OPG+JffSYIvoPkx2b+IsOJ5w6gTQykw2S+AeA+E/hDd3S4EQtm6mWADybgti0BrP1x
 xN8CQ8sBPz++9NXeAtUS1xFC32P8CGStcezsrq5RxKrlJZVGyzIkdUTp/O243RHJw+hi
 bzeuHQwjNNy4j5I+rrkCl83mbxfAFKYu7oJSgnqlzhTzkNvh75q6nU+EKTKKKY+cMIY1
 bxjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Mn8Jy9OU+/ODYHMM533ScviapxYAJChTEy00gYjYFX4=;
 b=ALbyqlo1465oALD7SJqbWpZLvxfRtQ3UsF/GItqmtfab7Ync3ndx418GMJSrU30MFk
 qLdTD7eWwtLajtzcMs6yS2FLwvzpWg9yRJCXxuPUm+mxoePGjRfhVKkqu6qeDtzF4ox7
 CkUF0QdG3OW7I7Wv0Q7Ct7gjVwBLOMaZ4Ifnz0jGF+GQGllZOh1N2Tvg9bE6dp75Gr3t
 vUoaXOKoxr6HlMx+EHXgo9hCFNmUW3gKNlEg5FNEuWj4eWLytdp+v/orl/TPf1BXQbLD
 pIE3JKXHi5h73Ipi3Ff/VZ7uDEA0P2f8i90fp+uw/ew5rmeJHcqXfUXc3rUb+Nw4jPkK
 3fIw==
X-Gm-Message-State: AGi0PuZc1QifzGyitg0FFBwRlILmBOIZpq641BNriw5IdIUEsZfZjFio
 drJoEplYy0EGsG20yTksHAr+ecXqMubpE4Rmb3CWFw==
X-Google-Smtp-Source: APiQypIzAd77FCnROu0bVmZaX4JXkStB+/ueD8Y9e5fFHRcGeXniZ/4z4uwE+8/cyakm6MKkFt83kKov2oxk3Lyv06A=
X-Received: by 2002:a2e:7215:: with SMTP id n21mr807335ljc.199.1587290678009; 
 Sun, 19 Apr 2020 03:04:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200417103232.6896-1-sudeep.holla@arm.com>
In-Reply-To: <20200417103232.6896-1-sudeep.holla@arm.com>
From: Etienne Carriere <etienne.carriere@linaro.org>
Date: Sun, 19 Apr 2020 12:04:27 +0200
Message-ID: <CAN5uoS8vGCABXvscR160=Dy_iZytinB2y+E2wbp6_KyQMFW5Tg@mail.gmail.com>
Subject: Re: [PATCH] firmware: arm_scmi: Fix return error code in
 smc_send_message
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_030442_169135_99FAD262 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Peng Fan <peng.fan@nxp.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Sudeep,

On Fri, 17 Apr 2020 at 12:32, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> SMCCC can return one of the 2 return error code here: NOT_SUPPORTED(-1)
> and INVALID_PARAMETER(-3). Map them to appropriate Linux error codes
> namely -EOPNOTSUPP and -EINVAL respectively. -EINVAL is also returned
> for any other return values.

Reading back the SMCCC spec, I see that INVALID_PARAMETER(-3) and
SUCCESS(0) are Arm Architecture Calls specific return values.
The only generic return value that applies to any SMCCC call is
NOT_SUPPORTED(-1).

As for an SCMI SMCCC transport layer, any other value than -1 means
the call is supported and one should rely on the statuses provided in
the shared memory buffer related to the function ID.

>
> Cc: Peng Fan <peng.fan@nxp.com>
> Reported-by: Etienne Carriere <etienne.carriere@linaro.org>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_scmi/smc.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/firmware/arm_scmi/smc.c b/drivers/firmware/arm_scmi/smc.c
> index 833e793b5391..a8b5ecb8927a 100644
> --- a/drivers/firmware/arm_scmi/smc.c
> +++ b/drivers/firmware/arm_scmi/smc.c
> @@ -114,7 +114,11 @@ static int smc_send_message(struct scmi_chan_info *cinfo,
>
>         mutex_unlock(&scmi_info->shmem_lock);
>
> -       return res.a0;
> +       if (res.a0 == SMCCC_RET_NOT_SUPPORTED)
> +               return -EOPNOTSUPP;
> +       else if (res.a0)
> +               return -EINVAL;

Related to my comment above:
I have no strong opinion on that as I guess SCMI SMCCC transport layer
in secure world firmware could ensure output argument a0 is set not 0.
That said, I might be nitpicking but I still think th 2 lines could be removed.

Is there any strong reason for testing finer return status from res.a0?

Regards,
Etienne

> +       return 0;
>  }
>
>  static void smc_fetch_response(struct scmi_chan_info *cinfo,
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
