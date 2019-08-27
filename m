Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5619EA17
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:50:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KxkJYFSswnWvJhwf5u61U1Naks+L0n6v51Qc1IZeCtI=; b=dzje9fiLmXjfkb
	XTYmj2WpaVnimcFM4UckYnnVWK5BSUaNyJVx/EoqXZBMpbhjZuBeCm85XjNgy8Kv1Y3DVNitEgwGv
	J3530x6C68BFdFLyShSYx3DoY2PE9gDDAYriQ70iDgXm1yDG1Z6EFCFaZ1ovFXWYJL5sAUV8BCc/F
	r3pQp1/sUVMGjx2RVFe2Iom7hEVKhwn8K+o+bSGdYNLo5aihg9T8kq9wGMIpKRBL2jzwOJMVH1ixp
	fBPxcevPGRicWck4T95HCjtqkOo+KJdzXO9B9Hbg1UOlQMeLqDuL9IYiCJh+H4eIO38k4/LLlphsa
	wKj02rwNnEIn5BwgJ1xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2brr-0006nZ-QB; Tue, 27 Aug 2019 13:50:39 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2brQ-0006JV-Jb
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:50:14 +0000
Received: by mail-vs1-xe41.google.com with SMTP id c7so13464851vse.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 06:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kTZR6LdKwcSbwfdwn93BfaDLAmGJGXIkCRnUZoJwcDs=;
 b=GTwmQzoFH+Tg9fKVZzfHe1WUyzKv1Pp5M6yGaUKuQYsscw4ybLHFf6AYfABE+HhDW2
 lvRV+wDzGtNmqV+SW8P/Ydpuj6VzRJ3V/NUGTiLSdkDTdO19tI08aecQo6a0ak8Uxz5p
 ZdCRCkWPYZepPS5r45I4qde4kPqs5XU2tDMK2PpVHbF+YCL6OsL+S4w9/ghPjKAiA1vE
 rLI2zhF//RHBqNm5xd82kQ5ZzTL1ZkXm0gEVszqeB5lp8C7BlKWOroqGH3p7py8vhHcU
 15UAVgSh1rt/XjgCBlHcok6zHQXNsxkDChbwxs6ItwvW+e2mjpFi2knd/ZvHqEpJPm8/
 6m7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kTZR6LdKwcSbwfdwn93BfaDLAmGJGXIkCRnUZoJwcDs=;
 b=ML55u8Otu6QjdCE7+A3k/ZaugPLNwfDZfQiQLkHeyo7uFQfMVwkw2KHUT+S+IjDDn6
 5aInhlVcTCtqnR44mGVJ4uijiJm/AyxurN844Zsap1SBR5QgvA0TL2FXQIjfgYdC1Ool
 bzb3cM6wBpKNDzaTg6LsUoREeiFgj0svDPqw4hezinq97cHzPd/NwvzkhryvS8E+9Mjj
 SsDu/+hxln6JOAFa8dGfvH4CX21hY2dNwp9eOLWYhFbpMSoX3dm1Zcs/eSuNSbQEAga8
 Q8bf42+j5P1A7THYw7I3TNh3bl+ONf3emPBoB+VwszkkWaq65UYr8+3PoMQFwqd5enUI
 rgjw==
X-Gm-Message-State: APjAAAWYUHS+Hbzns7wpLU0rdRj7XcyApzwnrzzdr3viT3k4o7Xvlpyi
 ciKhMGcFNxBUWVtJjoDr3kdY9MKegn1ZG8zc/Ls7CA==
X-Google-Smtp-Source: APXvYqxVAesgRp6go5fs5U5yCFtV9GAgU3Q6uXxLRPmT/g0zU/qhN39QHXlMiw6eTwbtXMYJIlbDKJyZBtiSgueVLDE=
X-Received: by 2002:a67:347:: with SMTP id 68mr13732654vsd.35.1566913811087;
 Tue, 27 Aug 2019 06:50:11 -0700 (PDT)
MIME-Version: 1.0
References: <1566628264-3289-1-git-send-email-wahrenst@gmx.net>
In-Reply-To: <1566628264-3289-1-git-send-email-wahrenst@gmx.net>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 27 Aug 2019 15:49:35 +0200
Message-ID: <CAPDyKFo6cWqRkJg=aoVzjHiR_Q6CWHe4et7QimWeWVZyLntQ9Q@mail.gmail.com>
Subject: Re: [PATCH] mmc: bcm2835: Take SWIOTLB memory size limitation into
 account
To: Stefan Wahren <wahrenst@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_065013_068598_908538BA 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Eric Anholt <eric@anholt.net>, Lukas Wunner <lukas@wunner.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 24 Aug 2019 at 08:31, Stefan Wahren <wahrenst@gmx.net> wrote:
>
> Make sure the sdhost driver doesn't use requests bigger than SWIOTLB
> can handle.
>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

Applies for next, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/bcm2835.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/mmc/host/bcm2835.c b/drivers/mmc/host/bcm2835.c
> index 7e0d3a4..7ec0d95 100644
> --- a/drivers/mmc/host/bcm2835.c
> +++ b/drivers/mmc/host/bcm2835.c
> @@ -1314,7 +1314,7 @@ static int bcm2835_add_host(struct bcm2835_host *host)
>         }
>
>         mmc->max_segs = 128;
> -       mmc->max_req_size = 524288;
> +       mmc->max_req_size = min_t(size_t, 524288, dma_max_mapping_size(dev));
>         mmc->max_seg_size = mmc->max_req_size;
>         mmc->max_blk_size = 1024;
>         mmc->max_blk_count =  65535;
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
