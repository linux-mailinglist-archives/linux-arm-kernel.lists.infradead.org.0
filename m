Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DAB1918BE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 19:19:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CENrUgpU/8VrVfgAc6xhIHH/LQJvPCKh8X9Id9cR2gQ=; b=s5N/bFPgSuxJ7k
	81/G9SQ380RNod90vTa9AwU5JMEkOAxM5ILFzLm2WpyzZopa5jCuZRqgCXImMxQC1XxO/3cWNAV99
	9ZjCrPWfAffmPdJDnl/W9Casjrcze34E7isG0tMKMQeE+GpILs73aEHPZiXh5IVEgo+1csOoCXjJ9
	oNJYAlomAzYOFERODVpSxMoPc6TvbBi5eNhNhnZ6ur2OPEcsjAj30Y7xue7AfeiPJRfCpj7Qq6Yin
	GSVaW/znf5TUZYNwTTKZI2tfYPKLjEEirBQHTAWq/Y42GGTXDFbcvKBI7vqKCYtRMtLUWYpuxomqo
	2LesPcSsUdh42L3UoQ+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGo8d-0005yS-JC; Tue, 24 Mar 2020 18:18:55 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGo8S-0005pK-7V
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 18:18:46 +0000
Received: by mail-ua1-x944.google.com with SMTP id o15so4840249ual.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 11:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b8cHeEED3Z92a0ymNocC1wM2oY7nKh155USjPtUlk8U=;
 b=tQULf6iRNPtrwhWnpGrNRTC/RGfpdVv1KzNlJastPZALMPGl3mbmj1KkNDkkpF5Mxy
 lixTfrHNpsLM/X4FT9RkxlwmOS3LM/DO+X9aOaor10FOcK6r83pC3mbA+oy2nG2fMr9Z
 TSWgNKpSo4u0YGxvblpb7nv5keNyk+HW7/FiZC+ngRb8+MkN+mzP3tFATaolDmwakHxG
 KD8BsH3xzd9yKISmVML8u6OOOFaTQE7e1jRzcmtFV4xbTa8VcUitt4ddiz6OTA1aCToN
 5/UVt4DhilfXkDTi+MLVQ2VXDWoDB/pDK661FdUgmUssNmKOQ/ACrDQieWFmixwIh8fZ
 Adaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b8cHeEED3Z92a0ymNocC1wM2oY7nKh155USjPtUlk8U=;
 b=AvB3h8D4fFMHq9AdWQ+X6yhuWrktw8PlGyM/ZKjPMS5uklecoiQjKZ65/573T1tksW
 GHYGYk8blra/n6cQJWv8t8VW7Sv4ZD78GvMXlMkLjOnMqVa5kP2TT1hua+DD7ul0y5fE
 zFEO54Tmw99R3oXljkKz7SsEcuJxhhOujViKRPRorpnKTHP9HWo7LVO4ZUhqHWMiQdPo
 PL5ggvUPyIg11Xrizsk3sx7p86qqV+SCSQZ4eSG2Q9Zuz7clBL/ZhZ9A+RbW7WfflPAX
 P5SXcmEa8/cvYVPo+832OkxXlmTolz8JKOu29w0cjaZpYtlKUWMtI3+28gfD9HYbtWs0
 gMUw==
X-Gm-Message-State: ANhLgQ3mQY/P1ZGPSzOinhDcCK2sJalXGRsrAffz8TCfMauubZfKFSYo
 a+hgK6OIA9xnrmWUSNesKR0HevwNo7JbtCja4vI83w==
X-Google-Smtp-Source: ADFU+vvlSyqmWv0VfXpmbCrbzrodCyzdctPb60GOiITOQ8IyBRoVME1UEIqwWvolQznE5P1J/DvCNwQi1YMBK+tDF/4=
X-Received: by 2002:ab0:7556:: with SMTP id k22mr8587224uaq.104.1585073921836; 
 Tue, 24 Mar 2020 11:18:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200324041526.GA1978@asgard.redhat.com>
In-Reply-To: <20200324041526.GA1978@asgard.redhat.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 24 Mar 2020 19:18:05 +0100
Message-ID: <CAPDyKFqEQZU=xSKX8_D3a7JQ7rRKXP8Yq8wwq9j=YYGQsWv4-w@mail.gmail.com>
Subject: Re: [PATCH] drivers: firmware: psci: avoid BIT() macro usage in
 PSCI_1_0_OS_INITIATED
To: Eugene Syromiatnikov <esyr@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_111844_794656_8523C98B 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Dmitry V. Levin" <ldv@altlinux.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 24 Mar 2020 at 05:15, Eugene Syromiatnikov <esyr@redhat.com> wrote:
>
> The BIT() macro is not available in UAPI headers, so let's replace
> it with similarly defined _BITUL() macro provided by <linux/const.h>.
>
> Fixes: 60dd1ead65e8 ("drivers: firmware: psci: Announce support for OS initiated suspend mode")
> Signed-off-by: Eugene Syromiatnikov <esyr@redhat.com>

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

> ---
>  include/uapi/linux/psci.h | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/include/uapi/linux/psci.h b/include/uapi/linux/psci.h
> index 2fcad1d..87afdeb 100644
> --- a/include/uapi/linux/psci.h
> +++ b/include/uapi/linux/psci.h
> @@ -12,6 +12,8 @@
>  #ifndef _UAPI_LINUX_PSCI_H
>  #define _UAPI_LINUX_PSCI_H
>
> +#include <linux/const.h>
> +
>  /*
>   * PSCI v0.1 interface
>   *
> @@ -100,7 +102,7 @@
>  #define PSCI_1_0_FEATURES_CPU_SUSPEND_PF_MASK  \
>                         (0x1 << PSCI_1_0_FEATURES_CPU_SUSPEND_PF_SHIFT)
>
> -#define PSCI_1_0_OS_INITIATED                  BIT(0)
> +#define PSCI_1_0_OS_INITIATED                  _BITUL(0)
>  #define PSCI_1_0_SUSPEND_MODE_PC               0
>  #define PSCI_1_0_SUSPEND_MODE_OSI              1
>
> --
> 2.1.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
