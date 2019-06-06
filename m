Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B2937B58
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 19:46:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWIn2knk09yquGFVYKxeeZ3/fRYkwNKA1KRaC9wCAXY=; b=kIL40lGy4CSAKg
	QElfjb2b0JWNfoYSGXuD/av6phjTIG0xm+9m0Sw5XPwyN3bMLaslNsHkidat504dafVuSlR0Lky2z
	hxFdoV93MngvbEEFVbiEmZ6ks0O3rMWUXt1pGhg/Zj9c7JD4hnIN6aij+6uwY285SX9zTcrhgriyV
	CakphW8/w973hkFzJnlhYGEt+ejUBQdoxezGDGsvtajeqt8Iuh8nrF2eKh4KheaELgwojp+tDzbhu
	52scSWE3LovH9a5wXnxGKduoBJlETrpvUUqISvHS26tSnwiviNB1t+EKT6KFIL3pQhWIWZQbAe2rC
	msC1OQb0e6kd8zsUFyKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYwSv-0001VI-7K; Thu, 06 Jun 2019 17:46:17 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYwSn-0001Ul-U1
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 17:46:11 +0000
Received: by mail-io1-xd43.google.com with SMTP id u13so906797iop.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 10:46:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KvkYFowUPbeEHURIVPFTeOuezo0JubDu3K6Z4gWHsgU=;
 b=LBOQimidhAhrLkqiMsKpoSU0PlpuLNBPxsbyhQIBD5A9ymD+Jvv/MT2Hh7jXxe+K//
 RrM8/XZkyOAW8P7P+Ppu2A+hcymclwd6W/xUIz/2YsGnI9NVnB6XkJdEFtR27lbf4o31
 PRKEAOR8vGRa+koJj4qvR/s9UGtS/z+BM/gDq6pXcW2VW3EZaPEaEUhGcqD3KnZR7eUV
 3V4nTXOYKQNhjSIJQY6EmD2g/LOABI0MmDfdcpfjomyXMnMkAzoHWXXR4AsYY4CVzlNF
 VwPtxqGRLNXeb/Y3YL8uOOEzBtgLL02BTi12B+wFlDFhfmq3CYwXYGbG68VfyrDDsfTs
 jRxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KvkYFowUPbeEHURIVPFTeOuezo0JubDu3K6Z4gWHsgU=;
 b=MiKXiTgB13c9pWv4m8s0yL18DlohAyOnL5dn3UQWTO19AhDm5VK8NMnbQc/+hPk+Qq
 +E7aKQtHgA5kYp5XJSp5xmvwaD+KqWtc0QG+KlaRwLevx7BQFvosvinWk7CHKED3esoG
 vz+LcTo0uAAm3FqLUdKhNGo/TtldFej34x7FIofndHXcACsF5/FhbHXWRX3Q5nVSM8EB
 MhnVd2vrjxFWqihE/flfVs3wRHfJQdfPsfZtMtYSkrZncGbm5fqQp3ll1Nez+euYIdH3
 C78oTWQKpO2JT570Cj3ZrU1C1YHBRL8KhUx6b8RZl0R1ZkfhRsXIs+Xd+46Rb3BjNZKM
 JkeA==
X-Gm-Message-State: APjAAAUjb5QKGVPk7TONDyQnM68wKFPopcgAldkeMxEc8la5ePOSUvbZ
 4TF3b1dElIxrp9Cw6NAAsr4fKVk3iqJxhS8LzcrS3A==
X-Google-Smtp-Source: APXvYqwmD4ggrtkmIFBXoKDoJ1uKSyV+n4k8vJsHPpAY3J0d6WIlI57qmGrXj9rbkv7we61YRWJ4KhjJSXCKE3NPnGY=
X-Received: by 2002:a6b:2c96:: with SMTP id s144mr16027727ios.57.1559843168538; 
 Thu, 06 Jun 2019 10:46:08 -0700 (PDT)
MIME-Version: 1.0
References: <1559578875-1302-1-git-send-email-suzuki.poulose@arm.com>
In-Reply-To: <1559578875-1302-1-git-send-email-suzuki.poulose@arm.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 6 Jun 2019 11:45:57 -0600
Message-ID: <CANLsYkzZMZJYv5jJi1d-hbw7A2ZbSFw_h13gfH21bOLETjBVpQ@mail.gmail.com>
Subject: Re: [PATCH] coresight: Add dummy definition for of_coresight_get_cpu()
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_104609_983435_E4E48BFB 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 3 Jun 2019 at 10:21, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
> For !CONFIG_OF case, add a dummy definition for the of_coresight_get_cpu().
>
> Reported-by: Mike Leach <mike.leach@linaro.org>
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  drivers/hwtracing/coresight/coresight-platform.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
> index 6fef873..3c5ceda 100644
> --- a/drivers/hwtracing/coresight/coresight-platform.c
> +++ b/drivers/hwtracing/coresight/coresight-platform.c
> @@ -307,6 +307,11 @@ of_get_coresight_platform_data(struct device *dev,
>  {
>         return -ENOENT;
>  }
> +
> +static inline int of_coresight_get_cpu(struct device *dev)
> +{
> +       return 0;
> +}
>  #endif
>

I have applied this patch.

>  #ifdef CONFIG_ACPI
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
