Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C951D0F66
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 12:10:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LP3mr7ILuwVVJH6QwyypUwvXt2COYupz4Cx+Ml6feZ0=; b=d/C07xrJhysPnM
	wLC7/+iiG7FGBfagpcGvAEwHq7bpcUlJEBnBwmZ4LKoF5jLekL78OpusIKBGARz/mwALskqVrwfbo
	71g0jSrt5fpbwOPVnWnNmxFT/esmjOTBVxEdJQHsm9ReIA3glvfiYsUWJJrAqlIYZVcd7NhmafR8M
	99RudBBRxsY8XzoNLFo61q+Hd8YjuJd4nmKQcsAegPaZDmb8J2sQRo5ObZ06fNqw4nc1pjhoRpdmh
	zk+e5sHHOYeWjmdOaoCXvg/6eC8BVJhkRCPB2HNG/28JrHbDl0GcpMsekg+y8ej2qflmy5WGu6qGO
	i2W/jp5g0wuZR3tGiYkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYoLZ-00007m-7v; Wed, 13 May 2020 10:10:41 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYoLM-00006z-C4
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 10:10:33 +0000
Received: by mail-wr1-x444.google.com with SMTP id v12so20104621wrp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 03:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Kln4h5TjLT1rYbRFL6+I0gOBR5qgTfdeId+fz9C5vOA=;
 b=URlU1PHnV4AqNaLREDZ4zw9nB27Zcd+0jvX7P7KYiC/XaCp3ZGEERK7Sn31HBweRG/
 bm/CbcYSo3tkW9NOAIV1qc0IQuTSrkcE7Ed85lie6Czcn3KyVeWZqOJs90MMznoYjBTi
 eZUhDUTqKIWdg+Zk9udH+oZemYWMrD3YAbkOQ82EbOjIVU1nm2fa3wJsM1/PASSTAewa
 J2h0iCanTy6OPB9ap8+GLPWwxETK0/1XNLIMFYe/h3ZnoG3OLGsvc2SFr8Y93Ly+e7g/
 W6/9E5grAWoi9y6DgiEAJjeq/Yv2D5knCFtB6JnUu8PBo8dOFF1wEQwj1TT8fvDYtBNX
 Dc5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Kln4h5TjLT1rYbRFL6+I0gOBR5qgTfdeId+fz9C5vOA=;
 b=Bi6AjsqjbL61N/MnR7WJbWRJ6W+BmdjOP2O0nYNWH02JXLZ5ls6Tf0f+8IQpF36KaS
 YGN8OuLTs1cD4e5Vg2D5oEcnqOeyJOznnvZ+qs2xqdB5OSq55DvhAl0QUVLGZpu7OE+Z
 T96i1wh1opGYo4yqnLcXzn3wYz1CoiHHGQZoTo68QkI2YmUSGlydAyByaEukwljQSAvI
 vYqpgqMLn+lcEx3Rz2hnRcwPlUzS30qAvns5YGmY5K1YN5HDS4a2kzxlDskAADXcNLGq
 jEcjl2Q2MVsKyCXrOOMP8pet2Ek+tNzkcaRnEPkCrnJYAJYyaCDWLseDrYf/+1rjJ6IM
 X62A==
X-Gm-Message-State: AOAM533fnwsBYWR19t/j4KaPFEhvcXFVmf9IisNDxs1nc/uExVcqC2fM
 foNI2rOjXEF8306Nv97GDYFPuXca
X-Google-Smtp-Source: ABdhPJxgL9tpiq55O6Q30AmJZjScEl1dYlzNP+lcolwTwgr1fIRNSmkDPrLcHqBTDr3NyxoOjncpag==
X-Received: by 2002:a5d:6584:: with SMTP id q4mr9012757wru.12.1589364626822;
 Wed, 13 May 2020 03:10:26 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5?
 ([2001:a61:2482:101:a081:4793:30bf:f3d5])
 by smtp.gmail.com with ESMTPSA id q184sm35495597wma.25.2020.05.13.03.10.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 03:10:26 -0700 (PDT)
Subject: Re: [PATCH 02/14] prctl.2: Add health warning
To: Dave Martin <Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-3-git-send-email-Dave.Martin@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <93c5bfe6-fbbe-93ca-ef9c-91228c99d31b@gmail.com>
Date: Wed, 13 May 2020 12:10:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1589301419-24459-3-git-send-email-Dave.Martin@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_031031_181218_A2C6FA7D 
X-CRM114-Status: GOOD (  19.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Hi Dave,

On 5/12/20 6:36 PM, Dave Martin wrote:
> In reality, almost every prctl interferes with assumptions that the
> compiler and C library / runtime rely on.  prctl() can therefore
> make userspace explode in a variety ways that are likely to be hard
> to debug.
> 
> This is not obvious to the uninitiated, so add a warning.

Patch applied. But see my comments on patch 04. I may want to 
circle back on this patch later, since the wording feels a 
little strong to me (we simply must use prctl for some things, 
and not all of those things break user-space/runtime as far 
as I know). If you have some thoughts on softening the warning,
let me know.

Cheers,

Michael

> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> ---
>  man2/prctl.2 | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index 7932ada..a35b748 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -66,6 +66,11 @@ prctl \- operations on a process or thread
>  manipulates various aspects of the behavior
>  of the calling thread or process.
>  .PP
> +Note that careless use of
> +.BR prctl ()
> +can confuse the userspace run-time environment,
> +so these operations should be used with care (if at all).
> +.PP
>  .BR prctl ()
>  is called with a first argument describing what to do
>  (with values defined in \fI<linux/prctl.h>\fP), and further
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
