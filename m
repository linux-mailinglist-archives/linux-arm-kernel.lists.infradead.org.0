Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D802F2DD13
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 14:29:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aBmw3Z9b5bUkvBirW7jnSwUXkzoC/o2aDIvfOWDDccI=; b=XkcFUePKUSiS5rZ0kL1UpOPoo
	rVXtlKWCru+ghnV2oShlB0JtTKylmiBH7DO7+Clxbsao8BJB3AD05h9tLBYOlWCq2ZinS4A6m2g8A
	/ka1D1L3qoesNDS91dTJSzgxasXN4EyFwuatBaysFg0sxGtg7/ocBnM3E1HkyFSTTZpWki2IdBLjO
	V974k8+RWb2nIx8ZeP1a1uhuJiKpMTSEoijKXy+TVXvWCXJ9tBpCLc4pPcWeRsU6xEv0t+CTCULOF
	qdV8EguEDqzHGepv44vCH25t9TMFjtouVZ3r/HZ0nmhsUa38ND3Y4Cge+/hkz55P0FcI4OACMuuOf
	gMPkKjXQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVxiK-00056o-TZ; Wed, 29 May 2019 12:29:52 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVxiB-00055r-Vz
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 12:29:46 +0000
Received: by mail-pg1-x544.google.com with SMTP id h2so1303693pgg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 05:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=D0hd+8IlrFbrljX6rJkpYHeRy73O1oI/e5niWGIamB0=;
 b=mAcxVAnnohWG0y0fKP3zZRtJ9Mq0fbqgBgbd4Te568VAQB3iC2NRJZx8MOVbhSgVcr
 q8uc64x9OhD6j9rUpMYGLmCNyP1h1cV+BfcIG4EojhVN5o8jt392WMo/kv8XytBo80xK
 OV2w3cwm+8XzT0+SIxTZUNxaRlzRRs+o5qOu4+ZMdypBR3n0PABL/WxuFy4P9cP/yfC1
 iDYaaGIzeDN6KAeKfiT0f7VIwfPdr15Su8dUO3rpVjmSIzAZp/vZJE3qkB7R1FCCbcUJ
 khffaKH2byom1uPVcgLmy/EwaNhHiFU7slPfaxV6E4CjL4IEwznlwVjYiciKcB7hzmVG
 nYSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=D0hd+8IlrFbrljX6rJkpYHeRy73O1oI/e5niWGIamB0=;
 b=hceEh1DKF7DB3p80uyOTGPsGqJpyDtJpp3yJYlMkBS9W/V3Cucl7IkOrrH8mLn46Br
 MY34Lpj4jYRv+rzqxPCYGBPDTY7UmarTPao53dKnsGRKSt0MS3OBi3V2WLGXGe4i3dmR
 YMiC7DuOftAEJb1ZDn/TOeL1nQbfCt20riGdvJsb+QlvEvkCWDoqNEczwzrruLikBPry
 jsfM41pyoAHCmm4K+D+s53AA0G+ktVrlpbyIOmz545+1rLKvgW1zV4XYaKNNceTKmHRF
 anPc2eWDydh7noCIV8zwSmv9cT5i09KlDr32HfAmiRR7xR4be7fiTR3Q83vAemo1FT95
 Jd+A==
X-Gm-Message-State: APjAAAWko9zUUC6HRvapokkyaghOrMM5aqfd/MH+SAEzS+0Ry5dP4Oab
 Ux+6HR25blBa6yma93v6XCA=
X-Google-Smtp-Source: APXvYqx5fy9AgEt2qQxAINvAfQ7/rstW4D1Ukhfvs2SC4vzPunCtOtYiz4IblPd8BUa9WuA1D242cg==
X-Received: by 2002:a63:d04b:: with SMTP id
 s11mr138152208pgi.187.1559132978396; 
 Wed, 29 May 2019 05:29:38 -0700 (PDT)
Received: from [10.44.0.192] ([103.48.210.53])
 by smtp.gmail.com with ESMTPSA id y16sm17439175pfl.140.2019.05.29.05.29.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 05:29:37 -0700 (PDT)
From: Greg Ungerer <gregungerer00@gmail.com>
X-Google-Original-From: Greg Ungerer <gerg@linux-m68k.org>
Subject: Re: [PATCH] binfmt_flat: make load_flat_shared_library() work
To: Arnd Bergmann <arnd@arndb.de>
References: <20190524201817.16509-1-jannh@google.com>
 <20190525144304.e2b9475a18a1f78a964c5640@linux-foundation.org>
 <CAG48ez36xJ9UA8gWef3+1rHQwob5nb8WP3RqnbT8GEOV9Z38jA@mail.gmail.com>
 <6956cfe5-90d4-aad4-48e3-66b0ece91fed@linux-m68k.org>
 <CAK8P3a0b7MBn+84jh0Y2zhFLLAqZ2tMvFDFF9Kw=breRLH4Utg@mail.gmail.com>
Message-ID: <889fc718-b662-8235-5d60-9d330e77cf18@linux-m68k.org>
Date: Wed, 29 May 2019 22:29:31 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAK8P3a0b7MBn+84jh0Y2zhFLLAqZ2tMvFDFF9Kw=breRLH4Utg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_052944_035053_F8F147CA 
X-CRM114-Status: GOOD (  22.54  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gregungerer00[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gregungerer00[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nicolas Pitre <nicolas.pitre@linaro.org>,
 Sergei Poselenov <sposelenov@emcraft.com>,
 Linux/m68k <linux-m68k@vger.kernel.org>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, kernel list <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 29/5/19 10:05 pm, Arnd Bergmann wrote:
> On Tue, May 28, 2019 at 12:56 PM Greg Ungerer <gerg@linux-m68k.org> wrote:
>> On 27/5/19 11:38 pm, Jann Horn wrote:
>>> On Sat, May 25, 2019 at 11:43 PM Andrew Morton
>>> <akpm@linux-foundation.org> wrote:
>>>> On Fri, 24 May 2019 22:18:17 +0200 Jann Horn <jannh@google.com> wrote:
>>>>> load_flat_shared_library() is broken: It only calls load_flat_file() if
>>>>> prepare_binprm() returns zero, but prepare_binprm() returns the number of
>>>>> bytes read - so this only happens if the file is empty.
>>>>
>>>> ouch.
>>>>
>>>>> Instead, call into load_flat_file() if the number of bytes read is
>>>>> non-negative. (Even if the number of bytes is zero - in that case,
>>>>> load_flat_file() will see nullbytes and return a nice -ENOEXEC.)
>>>>>
>>>>> In addition, remove the code related to bprm creds and stop using
>>>>> prepare_binprm() - this code is loading a library, not a main executable,
>>>>> and it only actually uses the members "buf", "file" and "filename" of the
>>>>> linux_binprm struct. Instead, call kernel_read() directly.
>>>>>
>>>>> Cc: stable@vger.kernel.org
>>>>> Fixes: 287980e49ffc ("remove lots of IS_ERR_VALUE abuses")
>>>>> Signed-off-by: Jann Horn <jannh@google.com>
>>>>> ---
>>>>> I only found the bug by looking at the code, I have not verified its
>>>>> existence at runtime.
>>>>> Also, this patch is compile-tested only.
>>>>> It would be nice if someone who works with nommu Linux could have a
>>>>> look at this patch.
>>>>
>>>> 287980e49ffc was three years ago!  Has it really been broken for all
>>>> that time?  If so, it seems a good source of freed disk space...
>>>
>>> Maybe... but I didn't want to rip it out without having one of the
>>> maintainers confirm that this really isn't likely to be used anymore.
>>
>> I have not used shared libraries on m68k non-mmu setups for
>> a very long time. At least 10 years I would think.
> 
> I think Emcraft have a significant customer base running ARM NOMMU
> Linux, I wonder whether they would have run into this (adding
> Sergei to Cc).
> My suspicion is that they use only binfmt-elf-fdpic, not binfmt-flat.
> 
> The only architectures I see that enable binfmt-flat are sh, xtensa
> and h8300, but only arch/sh uses CONFIG_BINFMT_SHARED_FLAT

m68k uses enables it too. It is the only binary format supported
when running no-mmu on m68k. (You can use it with MMU enabled too
if you really want too).

The shared flat format has been used on m68k in the past (it was
originally developed on m68k platforms). But I haven't used them
for a long time (probably 10 years at least) on m68k.

Regards
Greg


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
