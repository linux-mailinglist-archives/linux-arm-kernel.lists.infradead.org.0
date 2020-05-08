Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 887E21CA57F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 09:59:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4oQAURP4rskRyKpXgszC2YE+C4ZZK0ygorEuMOmUrMM=; b=I0LIXttNe90gpO
	5QjnpDpaUo8S8K/gotslAOs5FVDkJ/p6y1z41cHkQDKCBq4BgOUMs4ei6OD07GbgVWdRRWh8YuqQU
	DSwbGbNdOypEl8qLPWbI4C5/EuL6RA5YW3LPTbZ8tTeXMRt1+w4o/vPJpjpCITd95Zzh3DeYXDRW3
	e8z98BtlJvvnnq+dynlE7tW8bcvNGdWXxc4svb8HKsfd8EKf0oqYN8/qfgcdnazMY7gt0ByutJUx4
	hjDraCmdf/Y90AUTCVgPsVjRQGoKN8t87kdrYz4IEGUF13ZI0eorQGS6DopNzCU2jjBktykPvH8fP
	f+sq2Ohoxp64xSde3XYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWxuX-0004vN-Qx; Fri, 08 May 2020 07:59:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWxuQ-0004ug-Eb
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 07:59:03 +0000
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
 [209.85.166.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ABB3820CC7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  8 May 2020 07:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588924741;
 bh=oGLEQ5sAjvnz3eUh91xK8a09DsPMMmKTJ2Z6abxsvqs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=fJ6a5/nygGEvyU53DS1Y8VM3K42UYD7C7HjbWyC04G9tCbBSmG4hC/4c6QcRVtbbe
 gOm0RU4eJ29lyPVkPOjPI4QefMVl7E/FIqKTm4r43Qb9k6ou0ObCR8OFprvMWr3Yby
 IAzSSw07c1FrZxgtyj/F/ItAoyHiItR1Vukq3MyY=
Received: by mail-io1-f52.google.com with SMTP id i19so927419ioh.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 00:59:01 -0700 (PDT)
X-Gm-Message-State: AGi0PubdZHZOWkOY9W9AOj13gwAKN2jIqQO9mLLfnp1LsqQyKN4tpzlC
 0byyvFoq9tn8b/+FsQg9DpnXG+s9Qb0uhm3OV/s=
X-Google-Smtp-Source: APiQypIdqjD5MGoadJoDKdb0EEAop2TdCCcfVbYoPrrjr50p4id0tTbt7KPkrhFZmg0fsYMjDM9rX29PFEvt6RhhNfk=
X-Received: by 2002:a5d:9b8a:: with SMTP id r10mr1417623iom.171.1588924741105; 
 Fri, 08 May 2020 00:59:01 -0700 (PDT)
MIME-Version: 1.0
References: <1588910198-8348-1-git-send-email-guohanjun@huawei.com>
In-Reply-To: <1588910198-8348-1-git-send-email-guohanjun@huawei.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 8 May 2020 09:58:50 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGoe4aar3g3Qu7LU85JSdd1QqOMYp2mGtO1p2h_KiDb7g@mail.gmail.com>
Message-ID: <CAMj1kXGoe4aar3g3Qu7LU85JSdd1QqOMYp2mGtO1p2h_KiDb7g@mail.gmail.com>
Subject: Re: [PATCH v2] ACPI: IORT: Add extra message "applying workaround"
 for off-by-1 issue
To: Hanjun Guo <guohanjun@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_005902_508515_8A628CAC 
X-CRM114-Status: GOOD (  16.62  )
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

On Fri, 8 May 2020 at 06:07, Hanjun Guo <guohanjun@huawei.com> wrote:
>
> As we already applied a workaround for the off-by-1 issue,
> it's good to add extra message "applying workaround" to make
> people less uneasy to see FW_BUG message in the boot log.
>
> Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
> ---
>
> v2:
>  - Print the extra message only for rid_in == map->input_base;
>  - Still based on top of for-next/acpi branch of ARM64 repo
>
>  drivers/acpi/arm64/iort.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> index b011d25..6e445bc 100644
> --- a/drivers/acpi/arm64/iort.c
> +++ b/drivers/acpi/arm64/iort.c
> @@ -332,6 +332,8 @@ static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
>                        map, rid_in);
>                 if (rid_in != map->input_base)
>                         return -ENXIO;
> +
> +               pr_err(FW_BUG "applying workaround.\n");
>         }
>
>         *rid_out = map->output_base + (rid_in - map->input_base);
> --
> 1.7.12.4
>

Acked-by: Ard Biesheuvel <ardb@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
