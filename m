Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DFD1D0AED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 10:37:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eHk1NSy6R4bQGio2fyxR6q7Cho9Bx4iNtQ4RKYsm8Sw=; b=IP0FViwqcyj1qa
	IffZZo77tOoX6R6A9gD4XYxF1gYXUblany95BVYIN0myGiI6CA9NOzNqzaAbhrKEyD+pHF5miB7ok
	hTeOzR1/mkgxmZ2c9VnORKBc0QSJqwiCPURxvV2PZbfpFWkI8d/ljpx5agrp5pHh7zLLt0zW26+dp
	mmSp8061SAg0gXQMDfhaBE8Z1yTQdmH1z4/kIwbzrQZABO1Utp75dlP0/vBShUpoCHbhMU07RLxA1
	akc0Pq+a06VLjMv3ANqaVhUHqf0tRR6t5ELnPlDpdaBFUyLa/E/Xhxo1XNwoU6f7e+7WDZht4enMl
	dl/oPTnjnOfXeMqAB0Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYmss-00041I-MQ; Wed, 13 May 2020 08:36:58 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYmsk-00040X-PE
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 08:36:52 +0000
Received: by mail-wr1-x442.google.com with SMTP id y16so12597230wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 01:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=9RyZJv7HY0Ixg7ftiF9ixqiE/9e7o2gZum7cB+e4h0Y=;
 b=WVP/C7F+2cJKAcbrifCxGKV7t16e5sHZQL3vut7Hfp5rd+UyGwtmjdvAW1voAeqolu
 5ugydIP1OQohKqJvisjZ4lB2qpQTxAmc07MvBs5I7OksQ/Gi3GEEpMk5eXjn/5vbqW+O
 o6Ang5Hy6kGv3D+aZIGzxQG57Uh5Rw5YZjET9GUtNInPuYdpB7Fy76Hpfndfxhk33i+s
 DDQrnk1paUDAx7+5eBq1cSO0Cx9CQqz2upP6KO9SLql/cOhsDr413fk7OqDsmkpp3WMP
 L1CXbRYpuzQ3e7SbY/W1R2BaXVn9XJVss5Z9ecL56Xn/zmsk+6XS55KIq0kxa4u/ggRB
 0dKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9RyZJv7HY0Ixg7ftiF9ixqiE/9e7o2gZum7cB+e4h0Y=;
 b=N4+W7uLOdeyMgVriYGtYzZT1kvGmO7sQwxdswZaiP82F45j8hxG4gdeA31Knt7FOhI
 HSbvQ0TBGxy5xFzh8tjU1XxTrwt4cxI3OSWtVdox0vq9gIOvbUkKX7EJs35U5H816IBl
 +tRPgVTU//cScqB1RfBLuzrorcachYnCvPSnbFX/cpsGx+vHaxkEEWbXbS3nn6KmDTh3
 IRsfDgRR+tqZOwBLHlzRms4LacQoVdyGZ99USBT9FK2f7+6wtzQTKfJhN59FZxRym+tr
 DRi5PukZBL07x0SdhiJT7O2Zao4bosdE4yZ2/0U0Ja5OezP4A58Sni1b+qzxX/cdWUg1
 8Cbg==
X-Gm-Message-State: AGi0PuaTTbCqfj2sfaRzCa5Vgvz31k4vQoKz241jfGsoIAH44JQQJZdL
 ksfvZz/9JJoonVOgMBDTAtFPWwqu
X-Google-Smtp-Source: APiQypKBfhCCUB9bek4i/DCgmt07/TQF/wJbvJEj9l00SAnbye5VS6xrLivOh50PqZsHdYfmkcJEmw==
X-Received: by 2002:a05:6000:1010:: with SMTP id
 a16mr27919089wrx.291.1589359009404; 
 Wed, 13 May 2020 01:36:49 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5?
 ([2001:a61:2482:101:a081:4793:30bf:f3d5])
 by smtp.gmail.com with ESMTPSA id z7sm26435557wrl.88.2020.05.13.01.36.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 01:36:48 -0700 (PDT)
Subject: Re: [PATCH 03/14] prctl.2: tfix mis-description of thread ID values
 in procfs
To: Dave Martin <Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-4-git-send-email-Dave.Martin@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8e93c847-9fea-26f0-f872-42cf35d5f8f4@gmail.com>
Date: Wed, 13 May 2020 10:36:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1589301419-24459-4-git-send-email-Dave.Martin@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_013650_843399_03756919 
X-CRM114-Status: GOOD (  16.29  )
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
> Under PR_SET_NAME, the [tid] value seen in procfs as
> /proc/self/task/[tid] is mistakenly described as the name of the
> thread, whereas really the name is on /proc/self/task/[tid]/comm.
> 
> Fix it.

Thanks, Dave. Patch applied.

Cheers,

Michael

> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> ---
>  man2/prctl.2 | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index a35b748..9736434 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -808,8 +808,10 @@ and retrieved using
>  The attribute is likewise accessible via
>  .IR /proc/self/task/[tid]/comm ,
>  where
> -.I tid
> -is the name of the calling thread.
> +.I [tid]
> +is the the thread ID of the calling thread, as returned by
> +.BR gettid (2).
> +.\" prctl PR_GET_NAME
>  .TP
>  .BR PR_GET_NAME " (since Linux 2.6.11)"
>  Return the name of the calling thread,
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
