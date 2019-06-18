Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 648E14A7B8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 18:57:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i+AkXJUdfUiC7u/QKCEpV+AoJyru73JF80Ew4kjweg0=; b=UGlbxcNSwCoNMy
	gEE7KMp8wxGLwomaE/Sx64SxWPK2CltFwJyz9/BEAfHbx5JltYHujpZMfYZca+gGir1bmecClBnlx
	b1tQ5a0p6o6SBOkHACmmFHYsBuTO7HDQAbtmjQP1XRT5vc85wUHGZoq8RmC8J8xGsTw7zeXvqIg3i
	+LdJ7jj2tZbOzORN40T/p3SBbeFya1nREd6tQyyilqX7+B1TCwKFKUJ1GWonNQn42RbDVqTlcWjaF
	IwnCLTXHExUuluStRafNekk6nEoVs7oQlZZixcYgyNTQX5u3/prmA4AlJY8Do4+fZ+UA+elQvpQKJ
	npK+Xr15rXpLcQuYRZew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdHQT-0003Fz-ON; Tue, 18 Jun 2019 16:57:41 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdHQF-0003FI-1j
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 16:57:30 +0000
Received: by mail-io1-xd42.google.com with SMTP id e5so31554935iok.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 09:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xrJsxZ/IfKMP1AFfySPNnocTESP3c3IM1WrlKO+7sJo=;
 b=LRLHdT3Zc0vxsuSpsMh7E6xAiPxdYfHeiWb7tew+JOx8kBFp0kWayPKaQFnGUTr2UR
 sQ4zZxKO4lf17j7Et3Er6szcshZ8xZvpJ/dubyd9UwN5nuTqgZJ+Oe+aDOwpResrEs5I
 X20R0Ukbi7TYIax2IcOCn7p5yLF+xhCssXWp0wNLuIJl7Blfzqtk+31WT0glFpzcaEhw
 rcRwWIIzWVpqCK5iOguSh4ruorGDmM/YWwIWQIacgaqTPbDxiOLExFEQIWangupFPsKW
 AdqiOKnMzmcDPhRqqHFH7XI/nyX2LflNeH6119EsYU+BPfEjGjlEYDyP0npDFxH76fRC
 VS6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xrJsxZ/IfKMP1AFfySPNnocTESP3c3IM1WrlKO+7sJo=;
 b=roRLMSmaIVuu9QRw/M8HcfWTevF6lpFryXWnZopCqF9vkvFDtKpesxaQU0npKcG3Zi
 4HX+ToXesm+9l7Tv0ZQqDM/Lzo4Zkvx3+TL3TtEaJo1PHFOORZVvKBUuYxFfUHVkB/9R
 P9/aGzDdRI/zt5QBCbILIldg8g0Absow5dB5KV177tWV+LEFCcqz8fC3aAGW58jkujgk
 3liUDFTmv2D7I56gA9zNAaPn0BvwJ8OpPsDjz4GdCmP3bkndrsPOjl0V2ax+ZQicAUkb
 5yTazH7aqMrfSEGt9cJ/sRunx0eBg+C7oO9qd2bwZNEDEGnV6JIQN7DEgzDxgJleULYl
 MCfg==
X-Gm-Message-State: APjAAAUeFjelapA/2y+4rGefMMm8VgKBzHJJ7Hpi23gNNK1FYs+AEWNF
 xxB2N59+rD+P/ApghKbQCMSYcdSchyi4OKUkANVGPA==
X-Google-Smtp-Source: APXvYqyMZYgvkSgpjFYOYSD97Cjv1smwGOaNuCjsiFCWLy9P3EJDPKS7jGPSryG4ENqREkBd2GGzHG5tw909R8LYTNI=
X-Received: by 2002:a02:7642:: with SMTP id z63mr3888157jab.36.1560877046081; 
 Tue, 18 Jun 2019 09:57:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190615104440.94149-1-weiyongjun1@huawei.com>
 <20190617092253.167231-1-weiyongjun1@huawei.com>
In-Reply-To: <20190617092253.167231-1-weiyongjun1@huawei.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 18 Jun 2019 10:57:14 -0600
Message-ID: <CANLsYkyQMB5q9kavLLBwGjhq7sXLNBPPpWaaEip+6DnRahA4oQ@mail.gmail.com>
Subject: Re: [PATCH -next v2] coresight: replicator: Add terminate entry for
 acpi_device_id tables
To: Wei Yongjun <weiyongjun1@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_095729_020010_9A79929E 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 kernel-janitors@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 17 Jun 2019 at 03:15, Wei Yongjun <weiyongjun1@huawei.com> wrote:
>
> Make sure acpi_device_id tables have terminate entry.
>
> Fixes: fe446287ec9f ("coresight: acpi: Support for platform devices")
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  drivers/hwtracing/coresight/coresight-replicator.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
> index 542952759941..b7d6d59d56db 100644
> --- a/drivers/hwtracing/coresight/coresight-replicator.c
> +++ b/drivers/hwtracing/coresight/coresight-replicator.c
> @@ -300,6 +300,7 @@ static const struct of_device_id static_replicator_match[] = {
>  #ifdef CONFIG_ACPI
>  static const struct acpi_device_id static_replicator_acpi_ids[] = {
>         {"ARMHC985", 0}, /* ARM CoreSight Static Replicator */
> +       {}

Applied - thanks

>  };
>  #endif
>
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
