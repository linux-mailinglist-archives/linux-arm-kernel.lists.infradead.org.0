Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B01D1D0ADE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 10:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EG627S3RJfojDXdrROFCeoC4L0pvO6R+xExcJqixE04=; b=GUR4uVAV/CUljP
	dbGXJPf5THx1rISJTsHWza6y92c8jMGD6uvDlKEBADUXnyoloFMW9Tn7lgZ2/+HnAHQjQjE0Y9K2Q
	2Mjf43NcxAohhJlW2OlLJynyrEPuMvr4Nv8p8utj7UtzVLxd9YoRs2HZ4FoeZh+/kyaxwcyr7oa3S
	h42NaNKGlUdZciX0vbckfXvPMc6d+PssbSuDFvgiI22+7PkLt2mLvWBSdgQQQ4f4YU7HzakJDpy+E
	BsH6bREm+40WkLVdZH8onuuGA0MuoMLdB9wupLJ7092XF4KwSEqQo/IuLoILL4TBkkbHxxK7lMV4H
	6QSh1bCBmSjzZ9LCVRvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYmmi-0000j0-HQ; Wed, 13 May 2020 08:30:36 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYmma-0000hp-2b
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 08:30:29 +0000
Received: by mail-wr1-x442.google.com with SMTP id s8so19753426wrt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 01:30:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=8l9HrcUFnk7kl0t2CmIVlAAJuCz/BXpTPIzI3hkWiBA=;
 b=uAEo1oCd3RKQgeafKRTc6XK3toSohfZ6YY2sfQqvyt4dH/Li/8vuIjRhFVyOaRkb8N
 bubv6gLtqn9Ncd4b7xp721kIvVZgOGrOq6P2h1jvK5CqCRXoj79JX6r3svZZMddLRSad
 TNbP8ga3zem/nujg/vrQBYTjViwQiEUXfxZWVa7bSdh56BXtNYexy+3rRRFeu7O+JwRT
 v8cGEVbxGMHCboZ0EbrKjpgKczEhIuhk8OVPSbqGqSuig6whJBXagLNzkMcifalny+2T
 oGED0+LeRQnKI7jcrmZNrRekmAqjaq93DpVzxLo9bymt/4mHLmNnrkrEzUoSaMP4QSoF
 gDHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8l9HrcUFnk7kl0t2CmIVlAAJuCz/BXpTPIzI3hkWiBA=;
 b=To9C5GbMxUwmVnyze5aPbDjaW8YIH/0U2QA1Ab0rbOVnALUkgeoLpVvwrudawGoJrb
 exl5n66al0ufR2B9oFA1BIfIK04msOL2TMm898ieKJoEOiIDlAlsuVqJZ7khaOiomN6Y
 6torN+aiHECVQ3fpgPFgGdeaZd7zJVwy2llTzbqHQ2dCCObc+SR7MctgFC8GuG3v+XL2
 L/v291oIAmD64jLE4O4lsstrHwaSJulmIKQR73kw6Hd4zZf/teSa9Zz9fOGWd3DpTlFa
 EEps+Ws2jQmw7aYNk49t6nfiuGeDcfVOwLM3a2J1C+dlBzW77ZZ82Sh1Ipc77vQVN57H
 ITsw==
X-Gm-Message-State: AGi0PuY4J+T7UJOqshhbsUoLrnocwjYPZCBt73lLmkR9ZIoHDZbfpPDY
 s/ou5Wg2Uasl3n/UyfEMI+aRT2EA
X-Google-Smtp-Source: APiQypKYBs2sCuo3l1m1ENhx2oY7S1cH2Eu8OgQj7ADDfIbfWFZEz+SFvHs5upX8JcAk98tGebUI8g==
X-Received: by 2002:adf:a285:: with SMTP id s5mr32533885wra.60.1589358624147; 
 Wed, 13 May 2020 01:30:24 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5?
 ([2001:a61:2482:101:a081:4793:30bf:f3d5])
 by smtp.gmail.com with ESMTPSA id v124sm35279304wme.45.2020.05.13.01.30.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 01:30:23 -0700 (PDT)
Subject: Re: [PATCH 01/14] prctl.2: tfix clarify that prctl can apply to
 threads
To: Dave Martin <Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-2-git-send-email-Dave.Martin@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d15dd1a7-4358-f08c-9149-4a70a7c339ee@gmail.com>
Date: Wed, 13 May 2020 10:30:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1589301419-24459-2-git-send-email-Dave.Martin@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_013028_120242_439FE1B7 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mtk.manpages[at]gmail.com]
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 mtk.manpages@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/12/20 6:36 PM, Dave Martin wrote:
> The current synopsis for prctl(2) misleadingly claims that prctl
> operates on a process.  Rather, some (in fact, most) prctls operate
> on a thread.
> 
> The wording probably dates back to the old days when Linux didn't
> really have threads at all.
> 
> Reword as appropriate.

Thanks, Dave. Patch applied.

Cheers,

Michael

> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> ---
>  man2/prctl.2 | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index 7a5af76..7932ada 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -53,7 +53,7 @@
>  .\"
>  .TH PRCTL 2 2020-04-11 "Linux" "Linux Programmer's Manual"
>  .SH NAME
> -prctl \- operations on a process
> +prctl \- operations on a process or thread
>  .SH SYNOPSIS
>  .nf
>  .B #include <sys/prctl.h>
> @@ -63,6 +63,10 @@ prctl \- operations on a process
>  .fi
>  .SH DESCRIPTION
>  .BR prctl ()
> +manipulates various aspects of the behavior
> +of the calling thread or process.
> +.PP
> +.BR prctl ()
>  is called with a first argument describing what to do
>  (with values defined in \fI<linux/prctl.h>\fP), and further
>  arguments with a significance depending on the first one.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
