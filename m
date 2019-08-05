Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC0F8195C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 14:34:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x0lnG0BrVvruU+NK7ssE2cPZJ5jLICm0iYhxl9UMY4E=; b=RUHIWqEpQC70Z+
	F8vL8f+3QDNM+8XHHHbbKOhTgbp+DcbHvjpgDbelBnS2VaiJVdOGiegWOh24vjFzh/PkLoGvGDVxG
	bAhi+k8Wzwnx0q+HCp7fg+QwknrgUV9y5cgZJbZmkA0CpPOMpssOcoJzpUrP9qLpaIiWW8nj4qpdf
	Kw8p7NfLXTvUqiB+mt2IKc/c99tmcldMSEAR4xtGxIvsoSry35kpt4syXCEVeNaICsBf33SFltTNq
	lZEYj+i97/XeWb2UnsSXHWcnGOMqrxd6dIMiu5TKT58+oJG1aRvFml8yPs+btA8FuP8Z6n4m8HNhp
	WJ2bCNpolDtv6vnn4GCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hucBs-0001Ob-CZ; Mon, 05 Aug 2019 12:34:16 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hucBi-0001OI-3p
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 12:34:07 +0000
Received: by mail-lf1-x141.google.com with SMTP id c9so57760665lfh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 05:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PFq8Cl73tLG4+pSCio9gqyV6ILbsyB08y8V4KloCMss=;
 b=qb8ENpxDn1mCWZhT54r9bq1+0CIKvSbaMm0QFAX6pxht+cd7JaOGJydVCItL3UHRgb
 yB30aeWpB9+iekLe+s6wXqpwZuWRzCIDohg6tyRUOp45/E8t9KvTQpSiVALAeNoVjufI
 AbwHWChR/0wu4yepBB4BQpWal8tVU4Ce5mlGPHD7fY9y4WeaqFGhCjwmYP+HYSfpOt7s
 jl0e0Rz5FekBob9Hmp82mJ6ZTs6D41AX5dV1CGTEOzthTSQd05Yi1CVQe5lhZPDemSYj
 hCW8Lr9BV0hCZBbFU4EhVhe+Bim2DCzTubCWo70dko8uujlkowJqzLH8XWRTg8ELeECO
 c2qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PFq8Cl73tLG4+pSCio9gqyV6ILbsyB08y8V4KloCMss=;
 b=WuDyn3SOCwEk/3oNU7uC+UfP9Kwf/XwFOYkfSk6VrBQhvJ9JCpJ1UiozmQQjzRDzE3
 04Esi3yi/8d2fPmk1QXCzgDyNWByFiIuH/1tjb7Mt9ehu+BQEybeabHmPggoizJfMHzW
 JAoNey07j04ncl81YUJHgM/yoA5YJ7PQuKyAwh8FYahwAuyBXlkmDYkrZ6RyKCmnkhcT
 7DduSUeriLuAsHLZc5pSKBs65KoHnpuWnuvT5/D7wLw91fLAMlg5j594XM/SjvfW+Q+k
 mCI0/Ia4ZsNVeSaB/gJhSIv3gjFkf22LKt9aQa8smimdYkaYKbrevcFR9XdjCiC2sz7o
 qFqQ==
X-Gm-Message-State: APjAAAWulxbBAaIgJw/B7ocx053OefiGRG7VTnDZfPFhx6Bq0Y1BtLzJ
 /XB1yXGFjQyIGAKHMNXUucomXC1Y34AB/cB5f9KtOg==
X-Google-Smtp-Source: APXvYqymitYgepyvOK+JBZy7GrH60GHKLfiwb1GSsoco0V37RW1vdVWTSekr1srhCc8x8sy1Ia5WB5n1Q1D0K0/ub9k=
X-Received: by 2002:ac2:5976:: with SMTP id h22mr3729701lfp.79.1565008443805; 
 Mon, 05 Aug 2019 05:34:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190726134531.8928-1-sudeep.holla@arm.com>
 <20190726134531.8928-7-sudeep.holla@arm.com>
In-Reply-To: <20190726134531.8928-7-sudeep.holla@arm.com>
From: Etienne Carriere <etienne.carriere@linaro.org>
Date: Mon, 5 Aug 2019 14:33:53 +0200
Message-ID: <CAN5uoS_TA5ELTLtHnUbWhaOHyUDjoKZz0S8SfmXBfR+n-=_M3w@mail.gmail.com>
Subject: Re: [PATCH v2 6/6] firmware: arm_scmi: Check if platform has released
 shmem before using
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_053406_220776_9AA6D6B3 
X-CRM114-Status: GOOD (  17.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>, linux-kernel@vger.kernel.org,
 Bo Zhang <bozhang.zhang@broadcom.com>,
 Jim Quinlan <james.quinlan@broadcom.com>,
 Gaku Inami <gaku.inami.xh@renesas.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Sudeep,

On Fri, 26 Jul 2019 at 15:46, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> Sometimes platfom may take too long to respond to the command and OS
> might timeout before platform transfer the ownership of the shared
> memory region to the OS with the response.
>
> Since the mailbox channel associated with the channel is freed and new
> commands are dispatch on the same channel, OS needs to wait until it
> gets back the ownership. If not, either OS may end up overwriting the
> platform response for the last command(which is fine as OS timed out
> that command) or platform might overwrite the payload for the next
> command with the response for the old.
>
> The latter is problematic as platform may end up interpretting the
> response as the payload. In order to avoid such race, let's wait until
> the OS gets back the ownership before we prepare the shared memory with
> the payload for the next command.
>
> Reported-by: Jim Quinlan <james.quinlan@broadcom.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_scmi/driver.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
> index 69bf85fea967..765573756987 100644
> --- a/drivers/firmware/arm_scmi/driver.c
> +++ b/drivers/firmware/arm_scmi/driver.c
> @@ -265,6 +265,14 @@ static void scmi_tx_prepare(struct mbox_client *cl, void *m)
>         struct scmi_chan_info *cinfo = client_to_scmi_chan_info(cl);
>         struct scmi_shared_mem __iomem *mem = cinfo->payload;
>
> +       /*
> +        * Ideally channel must be free by now unless OS timeout last
> +        * request and platform continued to process the same, wait
> +        * until it releases the shared memory, otherwise we may endup
> +        * overwriting it's response with new command payload or vice-versa

minor typo: s/it's/its/
maybe also s/command/message/

regards,
etienne


> +        */
> +       spin_until_cond(ioread32(&mem->channel_status) &
> +                       SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE);
>         /* Mark channel busy + clear error */
>         iowrite32(0x0, &mem->channel_status);
>         iowrite32(t->hdr.poll_completion ? 0 : SCMI_SHMEM_FLAG_INTR_ENABLED,
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
