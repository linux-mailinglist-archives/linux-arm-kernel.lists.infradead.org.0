Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0094C1C8CF2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 15:49:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=04bvabkzg2zGYNI7SkHVk6nvm/T2LIPXBWkvLizspsA=; b=VwDKNoZ05IIYJm
	6YBjgGr1BjZ7PFwG5db2xitAAnJSQ+O4SqLe1cRDiO1x06cE8Hic1aeXBZJ3d8ow9PE7A8ftU+k8m
	h2gJz1460+D2wGkzL3m0T23H0lDReD5964/78dlLjHXRBCCIJ2eBQQVL9x2PXJUOwcFGe0UMpqEH4
	FJF+pgZiZxWxjgV2m4OcAwGaTDlo50w2tckQXTUGpqvXh7huKBI56PLEXwcOlTv4FZHPcXsimxhVx
	DMk5WMpZDeZuIw11u5JVHX9EYbsADWpygF8EOhPjNfCsZ7EAm1UBU1b4h01N6km+4ffClU346Zv1c
	PWMNt1Jg11vwfwdvwK+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWgtv-0003yx-AU; Thu, 07 May 2020 13:49:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWgto-0003yL-OD
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 13:49:17 +0000
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
 [209.85.166.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6254520857
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  7 May 2020 13:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588859356;
 bh=Y80LahXgKe9aD4SesvsSscumeX54TGslpdqTZX/bqZQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=1BTed9ewcsXvnnDDcVvEElouNM72YH7BTToCr9y3v6Ch4jsDHMmG3XPaurACgCHWz
 FHC7eR7WU0fjyk46TlW49pQv1yYsHynYW/uhtzJkJeiT1RVXlZ/XyEBumKLe698v2C
 cXvsOhMOpr8FVDfSvJbPjB1j1EyNcQWiTXMxQKGQ=
Received: by mail-io1-f48.google.com with SMTP id u11so6298012iow.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 06:49:16 -0700 (PDT)
X-Gm-Message-State: AGi0PubF3LDNNCSCXgt+5wu7uylvErlUtxL52almb4pcfyXjlpbGnJ9x
 nsob87B4HrkpIcYRFJ6rp9NhSWrOnqO6/WdoXp0=
X-Google-Smtp-Source: APiQypL2NHEgs2rvwfrzhTk58JvNGGA087lX1dAPFABa6q/geCppW4/1rQCT4O5DS9ilqochTzOQyzniC1V91BeoMEE=
X-Received: by 2002:a6b:ef03:: with SMTP id k3mr14013067ioh.203.1588859355786; 
 Thu, 07 May 2020 06:49:15 -0700 (PDT)
MIME-Version: 1.0
References: <1588858868-18039-1-git-send-email-guohanjun@huawei.com>
In-Reply-To: <1588858868-18039-1-git-send-email-guohanjun@huawei.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 7 May 2020 15:49:04 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHGfW=OKLO1S1Mf__9TzNXkrZ5BNvD8H_QYUTtF+awwpg@mail.gmail.com>
Message-ID: <CAMj1kXHGfW=OKLO1S1Mf__9TzNXkrZ5BNvD8H_QYUTtF+awwpg@mail.gmail.com>
Subject: Re: [PATCH] ACPI: IORT: Add extra message "applying workaround" for
 off-by-1 issue
To: Hanjun Guo <guohanjun@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_064916_802881_7068D447 
X-CRM114-Status: GOOD (  18.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 7 May 2020 at 15:47, Hanjun Guo <guohanjun@huawei.com> wrote:
>
> As we already applied a workaround for the off-by-1 issue,
> it's good to add extra message "applying workaround" to
> make people less uneasy to see such message in the boot log.
>
> Signed-off-by: Hanjun Guo <guohanjun@huawei.com>

Hi Hanjun,

> ---
>
> Based on top of for-next/acpi branch of ARM64 repo
>
>  drivers/acpi/arm64/iort.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> index b011d25..f3d492a 100644
> --- a/drivers/acpi/arm64/iort.c
> +++ b/drivers/acpi/arm64/iort.c
> @@ -328,7 +328,7 @@ static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
>                  * Otherwise, things are *really* broken, and we just disregard
>                  * duplicate matches entirely to retain compatibility.
>                  */
> -               pr_err(FW_BUG "[map %p] conflicting mapping for input ID 0x%x\n",
> +               pr_err(FW_BUG "[map %p] conflicting mapping for input ID 0x%x, applying workaround\n",

This is not correct. The workaround is only applied if rid_in ==
map->input_base, so better to print a second line after the 'return'
below that is only reached in that particular case.

>                        map, rid_in);
>                 if (rid_in != map->input_base)
>                         return -ENXIO;
> --
> 1.7.12.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
