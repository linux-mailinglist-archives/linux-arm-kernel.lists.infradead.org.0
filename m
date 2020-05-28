Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B57001E573C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 08:05:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E4tHGhVR4ORy0OXsxO4p708KbYpiAKDAtRQVy9544CU=; b=bzPzhc4M3fq2MT
	vbcmZsgCDKXfqkqpPGc1nAAkMXVdcW6EXR2qFqABO9xgNj5rR31tFc+7rIhvCILmAU6VvcQqgZSR8
	PwH1rsiNahvh0S0fOdFeI/mDVsqiCFOFsM5mq89GEDgcae7OljvgVZ1CgnNjezP4oz7/PaRyCdrPQ
	pavBw/mPHuupQh35v+TlCHrTnkbs0psnhA8lcWo0+jBQCo8Us3uYBwyve2DDIQsV1sG3gZW13sGcO
	+trSlIFGkPothregp5QJk15dt+eWtk3Aqr+WkvGjaFekEPIvM03wnsM/hIVuHnfcnOuIfttA4XhyR
	HFWB8OoeNa0jKq2Ym3jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeBfT-0002w8-Ol; Thu, 28 May 2020 06:05:27 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeBf9-0001Eg-UA
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 06:05:13 +0000
Received: by mail-ej1-x641.google.com with SMTP id k11so5507554ejr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 23:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Gr2QJjfQwZw9TOoef9/CtZwlj2xaVVZ2MosCnhi+D4Y=;
 b=uT664BfCKD11g59N8NxYNnQAplKNgks3tcQJtPsg7EMK8v+bHKLWEx+us61PDVoIEF
 Etojnh0KAUk3Dq74XioSiL2SIkDcVQ+r6Rkyyvux71cTcPX3s1pUMcrqZoRwaanfkGHv
 t2PCfR6IovtThJ5/d29Kw3XIRWcd+gcesYcP1jsxf6lxI3y/CuVMVYWxxedyuqzRixZJ
 HNIMCiPmwjFwo78VSSDRn8+VRvoUBBD1qmpniDXb1FUt8U58R+5uDnH0Za+/3aWCUw+x
 +kufOH7t5VY7XVfBrlZ6rMBI6a2gdAW7ZOzjAN7I+4McB4v8L6QP3+kiJ/mKcMNOiI4a
 0QWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Gr2QJjfQwZw9TOoef9/CtZwlj2xaVVZ2MosCnhi+D4Y=;
 b=Ve6lTR6yFZuLsKkVl3CEY6Y803t2wxUpvCSCnEHXNpvnr+1HEL30Lr49zSiio8CjuP
 SoJ7z4vNaTQ2MJTBhycI2w17nRxr1+M9jeeMq2d86q4gslEoU6RFLXW4rEroVwix62Ey
 JAOQvhhUX0AFxETxDZy6WMgk3fa6W/0q35p946iQgOhTg6jPRKvHqLifcB9Vf4uQz6iO
 6PvLgJnBcZ80ORsMZCxSekTybUtdWSTnHxRq0NLKOm/7VJTQyFR7b6/NXMqlOd70c9Af
 JCNG44MOf8sgRrrlutt+sObivrM7VjJeG9+mvuxNu/x1mCDMUM1XjyUMzy0sLFPdl3cH
 yp+Q==
X-Gm-Message-State: AOAM533dPwKB1RiLUxw8Jw7TEZ+FMvTCDnqMCCf1tqOrbaYOuC/UnYy5
 exxFxFix+V0PXZtJiwBmB1OrzoJRwIk=
X-Google-Smtp-Source: ABdhPJxjVLMKxzwXsFiCP+cJ7nLEssCwZug0h9DUfmwi6L1qHjlZIWcNchUGODktXsRFZRS6d4H40Q==
X-Received: by 2002:a17:906:4088:: with SMTP id
 u8mr1634002ejj.422.1590645905844; 
 Wed, 27 May 2020 23:05:05 -0700 (PDT)
Received: from ?IPv6:2001:a61:2516:6501:a84b:ccd6:785a:2f0f?
 ([2001:a61:2516:6501:a84b:ccd6:785a:2f0f])
 by smtp.gmail.com with ESMTPSA id nw22sm4561913ejb.48.2020.05.27.23.05.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 May 2020 23:05:05 -0700 (PDT)
Subject: Re: [PATCH v2 1/6] prctl.2: ffix use literal hyphens when referencing
 kernel docs
To: Dave Martin <Dave.Martin@arm.com>
References: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
 <1590614258-24728-2-git-send-email-Dave.Martin@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <43a7fb5b-7626-0f05-a13f-a4d35eb3289f@gmail.com>
Date: Thu, 28 May 2020 08:05:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1590614258-24728-2-git-send-email-Dave.Martin@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_230507_997014_B31031B2 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mtk.manpages[at]gmail.com]
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 mtk.manpages@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/27/20 11:17 PM, Dave Martin wrote:
> There is one case of a cross-reference to a kernel documentation
> filename that uses unescaped hyphens.
> 
> To avoid misrendering, escape these as \- similarly to other
> instances.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> ---
>  man2/prctl.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index 968a75a..dc99218 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -1261,7 +1261,7 @@ This parameter may enforce a read-only policy which will result in the
>  call failing with the error
>  .BR ENXIO .
>  For further details, see the kernel source file
> -.IR Documentation/admin-guide/kernel-parameters.txt .
> +.IR Documentation/admin\-guide/kernel\-parameters.txt .
>  .\"
>  .\" prctl PR_TASK_PERF_EVENTS_DISABLE
>  .TP

Thanks, Dave. Applied.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
