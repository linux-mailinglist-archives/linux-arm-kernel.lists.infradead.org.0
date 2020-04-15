Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F15B1AAC69
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 17:57:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jm45JINUC1rL7coeWX9nqUBhnxOF7rfwXkkSe8+juX8=; b=ZzlvCXmvhoXh7Z
	9Rq/TeWLOthXK4nDabCBlAursxCNR6mPwK7+/VSybB0MOyB7TVtJRbmHu9CNAruAVnlfvf6NKKYRf
	O0K8ImjdCKe1mh8bs/CXGBdR4opvdVu1SkMQXPFBGJDMtToj1mS/upYQrFXcYTnEfnX/6YGJ2afXf
	t+1hBcC8SxElF7BbuKNsCjmelbmcZw2c0HRdDQhGKITScFw17lNcQJiuo9rUih7l5dscCMQ9YzGO+
	du71AhHfdMMY/IeClNun+hqsnUEFQdLRojOg/uQk8lXxyTNyGG/gUZSmR7RgCyFwBg8ZsoMvlPS4y
	NqwXUrjpymw3nWp8eTRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOkPG-0002WB-BG; Wed, 15 Apr 2020 15:56:54 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOkP6-0002Vn-0b
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 15:56:47 +0000
Received: by mail-il1-x144.google.com with SMTP id d2so3836003ilc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 08:56:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B9MXhYCYetRAbTwmXzTq/cHtzrXsP07P1r9YbCMxRJ0=;
 b=RHXjl4nb/Oy28ie0zxV0vpLR6hc/Jq5ukBL/OcMix0dK3AqfaHCMr7TrVeSh2Ax14w
 bwM9eSAn98iU6hfOOjgyjHxAGs5atXlzY3xr9INwhtogNgLo0DPaPaeKFIZ9zrPBABpH
 au8zhHmONlmXyZf0MP6OblRKfls0mlkIY8oASo9BToM/Fja5/mLKmlY4YJ0b8dbeS6W2
 4FEb+/IZhvRRYARXtF1R0/MTMHdrlPKsL5UslgnKVPzhaHiDq0R1ZbfLOsOg7U38h15a
 aZza/MZHr329GSPMMY1HLeDxOdn66J8qUtE0DAmmkWATGa/TS7WfwfR/IRU0ZwAKz/Vh
 o7zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B9MXhYCYetRAbTwmXzTq/cHtzrXsP07P1r9YbCMxRJ0=;
 b=H7P32QjktZaeXId5yMlm4yhrSne8EvZULIS3eyUGOgjfOaQO3pLnR90DxgwPgPtV+F
 kB8VZmtARML7swAZXGZYbQVRvnS7H31NGNQfaFSuxAhaexWkzBav+QGIAY/bxWLDqULh
 A10UMhlvvaOE+q/XMjT7DNBKvEBJ/xD26+FYAx0z6ZzxnmNbIQpPRSwXAXsB/lKLsBOL
 QjIVKkyYIL1kQybQNmviFYec7+ue+Z3PjGoZVicmsvsgHZ4/fz42Lois+L/gqrkfSwxo
 yPqJ1EnhKa5GzKlEt9CNrHzp/Op8sNWiT3jRyki790yEGOvUBNbQ9EN+F6iCvKurlKtG
 DnQg==
X-Gm-Message-State: AGi0PuYG6Yx5SL9EN9O9z2DiTpPTUSZwsRh1+tP2WlzMoJdtb5YKsD6L
 kVqc7pNhbTevMLOy4A8tvqwKItJ2Pyle7v/eWX386g==
X-Google-Smtp-Source: APiQypKVzyuJcbicWAEIxRgg1A+gem0GWiCs2bZOAaL/EVmkJ0g+4v6HC8k/rcGL2d2Zuq9Nzb/jrRrpvcn69U+xglY=
X-Received: by 2002:a92:158c:: with SMTP id 12mr5984810ilv.58.1586966202755;
 Wed, 15 Apr 2020 08:56:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200409113538.5008-1-saiprakash.ranjan@codeaurora.org>
 <9a792e3e-5a17-156d-4b59-4a3ec8f9993e@arm.com>
 <1751aeabd22bee18d2eef0f643883265@codeaurora.org>
 <20200413171418.GB28804@xps15>
 <75ef334a7e2cc6d87deecadd12c74f59@codeaurora.org>
In-Reply-To: <75ef334a7e2cc6d87deecadd12c74f59@codeaurora.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 15 Apr 2020 09:56:31 -0600
Message-ID: <CANLsYkxVFMrAOtZhNgQ+uPE5mgt1z8RNa_yAxX2ju7DYrbvBZw@mail.gmail.com>
Subject: Re: [PATCH] coresight: tmc: Read TMC mode only when TMC hw is enabled
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_085644_572466_2F5C63A3 
X-CRM114-Status: GOOD (  28.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-msm-owner@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 Apr 2020 at 09:47, Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Hi Mathieu,
>
> On 2020-04-13 22:44, Mathieu Poirier wrote:
> > On Mon, Apr 13, 2020 at 01:55:30PM +0530, Sai Prakash Ranjan wrote:
> >> Hi Suzuki,
> >>
> >> On 2020-04-13 04:47, Suzuki K Poulose wrote:
> >> > Hi Sai,
> >> >
> >> > On 04/09/2020 12:35 PM, Sai Prakash Ranjan wrote:
> >> > > Reading TMC mode register in tmc_read_prepare_etb without
> >> > > enabling the TMC hardware leads to async exceptions like
> >> > > the one in the call trace below. This can happen if the
> >> > > user tries to read the TMC etf data via device node without
> >> > > setting up source and the sink first which enables the TMC
> >> > > hardware in the path. So make sure that the TMC is enabled
> >> > > before we try to read TMC data.
> >> >
> >> > So, one can trigger the same SError by simply :
> >> >
> >> > $ cat /sys/bus/coresight/device/tmc_etb0/mgmt/mode
> >> >
> >>
> >> I do not see any SError when I run the above command.
> >>
> >> localhost ~ # cat /sys/bus/coresight/devices/tmc_etf0/mgmt/mode
> >> 0x0
> >>
> >> And this is most likely due to
> >>
> >> commit cd9e3474bb793dc ("coresight: add PM runtime calls to
> >> coresight_simple_func()")
> >
> > Ok, so this is related to power management (you can ignore my question
> > in the
> > previous email).
> >
> > Regarding function tmc_read_prepare_etb(), the best way to deal with
> > this is
> > probably make sure drvdata->mode != CS_MODE_DISABLED before reading
> > TMC_MODE.
> > If there is a buffer to read it will have been copied when the ETB was
> > disabled
> > and there won't be a need to access the HW.
> >
>
> This works as well, thanks.
>
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c
> b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> index d0cc3985b72a..7ffe05930984 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> @@ -596,6 +596,11 @@ int tmc_read_prepare_etb(struct tmc_drvdata
> *drvdata)
>                  goto out;
>          }
>
> +       if (drvdata->mode == CS_MODE_DISABLED) {
> +               ret = -EINVAL;
> +               goto out;
> +       }
> +

We are back to your original solution where the ETB buffer can't be
read if the ETB itself is not enabled.  It _is_ possible to read the
buffer of an ETB that has been disabled.

To fix this consider the following [1].  Take the block at line 607
and move it to line 598.  As part of the if() condition at line 619,
read the value of the TMC_MODE register and exit if not in circular
mode.  If it is in circular mode continue with disabling the hardware.

[1]. https://elixir.bootlin.com/linux/v5.7-rc1/source/drivers/hwtracing/coresight/coresight-tmc-etf.c

>          /* There is no point in reading a TMC in HW FIFO mode */
>          mode = readl_relaxed(drvdata->base + TMC_MODE);
>          if (mode != TMC_MODE_CIRCULAR_BUFFER) {
>
>
> Thanks,
> Sai
>
> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a
> member
> of Code Aurora Forum, hosted by The Linux Foundation
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
