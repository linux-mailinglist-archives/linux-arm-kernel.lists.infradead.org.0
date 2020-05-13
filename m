Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CAE61D0FFC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 12:39:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xCT+Xj3T7nUyNCqcUSlBjG0GrE53RkuhXWPtpVIaCzY=; b=b9PXk+w5yV4ezM
	+/Yu+wA4nuUnk6Ki+bAjWYCRb4rTfPIzvvoSbVfvg2MsUyhulZ8RmXczMY+XtoGUr48cYbrx4ccsA
	rbZKBXlqo/37NBEtghyGN1nKPfrvCtQjSJoWJKuHgYGQWweXjUuamlVtEMaGfjviYbneKjGgReXRh
	RsinMiQ67QaCqzdBLi/x1QVcERCXSfCXfKWArTz4si4W3eeJ+b3HP2SAWvwqDb3ZL3UweEdhhvDnI
	bN5oaK5SVkzFmW8QLTG2iu21Jp3YhE+4pF88uRwDgFIJFpdu+jjtcE8pGXtsahTAQWYVzX4BuJOMB
	BJc4W1thVrY/wRIcUzyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYoht-0007qT-Dp; Wed, 13 May 2020 10:33:45 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYofF-0005e4-OZ
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 10:31:04 +0000
Received: by mail-wm1-x344.google.com with SMTP id f134so13811390wmf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 03:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=enpUZvjkQss8gHomlUnSJVUnHMRo4OMFu6aNUmI7cJ4=;
 b=YJZXUtqvodAsDEAf8liUg5EebEMCVfcwdF+S37QudHwBTaFeVTXICF8fmGc9hsSbEU
 6mO1q2+iQpPOvTiAgtCtWscTusqwUk4WfIO/+P9a7N60X8ffCDAdslOtQUNe4T/4d99k
 iqxgILhx9JssUqZp7/yNm92/C8mDTTISFKYlX9hfZFgwBf5OhMuAUsWaAvbnjbycyZJD
 CQqmOQj2dFgywfolXjGcPfHc/ZF7Qiuo2oeNvkcVYzamt5i6FQtsixGNVm2L0JTGKbh9
 JMBAY1IIDLnYLDdp5CHPoOfg58WTWRhVdp7GX6IFdJEULr3wPb+5XSP0aBcZ5S9yoGAg
 g0kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=enpUZvjkQss8gHomlUnSJVUnHMRo4OMFu6aNUmI7cJ4=;
 b=aZQEtMk/FVNaT/cmLnQXJU7tnzaJKTW5+DBnFHRnk2bOh9z61WHfW5JMbMrnZCf+6P
 9ZuGtY2Tq2PVe5bLYd87+PJ4zmtuwfOKF26FbM4jcQroIPAEqym12Kg/ie1cqcS/qQYc
 iSNAfUB5wV9bnBNKSPsR0hBuosQCJjxfJ5a/Db/1wy30tzSHvakkODxLnkh/EDyuPBeL
 r05vlOXMC0s+y8gHQqWQ6qc/Z3l02jvHTw6lek3+RbShpFoUD5hGxE7J2D7TVe67fDRO
 5Q4BiqRKvWEL/CfVWFwM5xG893esKc83+sum0yqz8pO/+R4E3vUzB7iyRTjo3wNqSpXf
 9FOg==
X-Gm-Message-State: AGi0PuasO3k6RqtXjTJCMR39UaI0DaJlp26eoNat3z8mquKkisaYsU0r
 juOGo4EpCBl1rREbnjZjYS8Go6h9
X-Google-Smtp-Source: APiQypJQORUtkZqQlGqp/s6dtCIjUd8w0QNwTR/GG97rIJs3hRduo1O9Z1SpkPRdRxCUbOTLcXc4Zg==
X-Received: by 2002:a1c:b354:: with SMTP id c81mr34844461wmf.136.1589365859942; 
 Wed, 13 May 2020 03:30:59 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5?
 ([2001:a61:2482:101:a081:4793:30bf:f3d5])
 by smtp.gmail.com with ESMTPSA id h20sm14642904wma.6.2020.05.13.03.30.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 03:30:59 -0700 (PDT)
Subject: Re: [PATCH 08/14] prctl.2: Work around bogus constant "maxsig" in
 PR_SET_PDEATHSIG
To: Dave Martin <Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-9-git-send-email-Dave.Martin@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4f7bee2a-1db6-1cf5-6561-b24397c33707@gmail.com>
Date: Wed, 13 May 2020 12:30:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1589301419-24459-9-git-send-email-Dave.Martin@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_033101_836066_044FD3A6 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
> The description of PR_SET_PDEATHSIG refers to "maxsig", which is
> apparently intended to stand for the maximum defined signal number.
> 
> maxsig seems not to be a thing, even in the kernel.
> 
> Reword to use the standard constant NSIG.  (Discussion of SIGRTMIN
> and SIGRTMAX seems out of scope here, and anyway is not relevant to
> the kernel.)

Thanks, Dave. Patch applied.

Cheers,

Michael

> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> ---
>  man2/prctl.2 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index a84fb1d..1e04859 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -955,7 +955,9 @@ will operate in the privilege-restricting mode described above.
>  .BR PR_SET_PDEATHSIG " (since Linux 2.1.57)"
>  Set the parent-death signal
>  of the calling process to \fIarg2\fP (either a signal value
> -in the range 1..maxsig, or 0 to clear).
> +in the range 1 ..
> +.BR NSIG " \-"
> +1, or 0 to clear).
>  This is the signal that the calling process will get when its
>  parent dies.
>  .IP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
