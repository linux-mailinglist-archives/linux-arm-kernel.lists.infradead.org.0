Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B1C1820D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 19:31:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZbTASI2KkebhljSx1srO+hlqJYdEFiAfd98cNqI75v4=; b=pjXY1nVcIAq6qK
	PJBWN9qLh54TgF3XrGTbCbcy53xpZJRVIBy+vj2cdPPIF/o4NXWl/R342pdZKx8cvdiZDrUCmVK6I
	Ny9EfA5XXJsUExT9miG+oYcu3gf6b+5I+IcvPnvYUKWZ3wJE6hA0D1qWyPbfjvzdWFxFYpadbrcPY
	V8eFw4ldjbH9dVO4N2oIdy44c/NvlRvLAruilkxQKz/Fq/wsYoZP3M6pHssX78MD+9mWrGqZdiv2x
	83y7busC62p2c6bIbHKLxIYVy2Ug35KmJjsCoz2xsaOR2Stmq2M7hDUQfscbeYEpDgloMy3O6rW+z
	DycF10J1u/NVgms+IwcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC68Z-0008Rs-De; Wed, 11 Mar 2020 18:31:23 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC68S-0008RM-3j
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 18:31:17 +0000
Received: by mail-pl1-x642.google.com with SMTP id a23so1493802plm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 11:31:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8Iqh7YiU1WCa8iFIZ350TOhDUP5JUQC2PJuS43lrAIc=;
 b=sCBNaIvcQUpuWnWFUFlhtSUd+3jwTL2Zn0qWMLjvQTngEKPn0Ajd0dY+z6q1pIxry8
 z3r3c7CZGkRKRSWTzdU3uHAP2hC0vpVKFtbAIYPLnRPP8K+vMdOGgbr8z+oJi/5HoRG2
 C50D+CKEw3y43Id+4rMs325yfEDGEwOzKhaNh13qKk111D9ix3Wuexp/R8cOJ/HfUH2n
 VAEtJ4mLqcs60m22Lyu0yDVsD2OkogPq6j9A78Ku7AVsu+F51iSSRmbGKKhmloCpMT5T
 ZP3teFRJjBaFPpQsy3EQlafwkNQN84Lo8cJnAOte5TNI/aY36t6yDR+PFNEc0G3B44mz
 UP4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=8Iqh7YiU1WCa8iFIZ350TOhDUP5JUQC2PJuS43lrAIc=;
 b=IeBEWpJLm6pLU6aiJ9Ey5vzNPC/ePJB3DEPC/ZhSWLBFNWLekgli1ZW0DTDmCDxowc
 pHPdPcpCO/D/wfgdVIhrhJpWunWnPa/9yqddhsSj7+G4vlUkTKTcLCjIJp5R7N5tKSbR
 bNLbUE0FjrIs3F1pqhVbqgi548R/rdLRMDk61eRTwrRg9Zqb2wf8GF+cGb4HQd9bdv2S
 CdoFgJ0BvXhVYYEj0u1FcNOGNirXPi9UldJXT38GI1PgtqoQrjEeMfzX/sV40MYY6uF3
 3R7MC67CjM9mpljdaJOFv3s3BBJFObLmyLVMW1Sx4D0wYrlY4ixFmSi8JkNAOqjmZq4M
 4+Wg==
X-Gm-Message-State: ANhLgQ2xD/1cfbI4cWzyPhXkqByPnaIj4CX9UsFNR82BO96XkvwJCh5G
 yULXkhIJlPAD5hmbqLVNmfk=
X-Google-Smtp-Source: ADFU+vtR3A8/gUhTR53MDaQSvdcpPtSN5EFirqyWWfjgN2TcJ+Cyl/pgjnRxBWp4OoDBoR/OrmldAg==
X-Received: by 2002:a17:902:208:: with SMTP id 8mr4322464plc.103.1583951474983; 
 Wed, 11 Mar 2020 11:31:14 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 p14sm48927616pgm.49.2020.03.11.11.31.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Mar 2020 11:31:14 -0700 (PDT)
Subject: Re: [PATCH v3] ARM: smp: add support for per-task stack canaries
To: Kees Cook <keescook@chromium.org>
References: <20181206083257.9596-1-ard.biesheuvel@linaro.org>
 <20200309164931.GA23889@roeck-us.net> <202003111020.D543B4332@keescook>
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
Message-ID: <04a8c31a-3c43-3dcf-c9fd-82ba225a19f6@roeck-us.net>
Date: Wed, 11 Mar 2020 11:31:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <202003111020.D543B4332@keescook>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_113116_173498_C3C7BA5F 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 kernel-hardening@lists.openwall.com, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, Emese Revfy <re.emese@gmail.com>,
 Laura Abbott <labbott@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/11/20 10:21 AM, Kees Cook wrote:
> On Mon, Mar 09, 2020 at 09:49:31AM -0700, Guenter Roeck wrote:
>> On Thu, Dec 06, 2018 at 09:32:57AM +0100, Ard Biesheuvel wrote:
>>> On ARM, we currently only change the value of the stack canary when
>>> switching tasks if the kernel was built for UP. On SMP kernels, this
>>> is impossible since the stack canary value is obtained via a global
>>> symbol reference, which means
>>> a) all running tasks on all CPUs must use the same value
>>> b) we can only modify the value when no kernel stack frames are live
>>>    on any CPU, which is effectively never.
>>>
>>> So instead, use a GCC plugin to add a RTL pass that replaces each
>>> reference to the address of the __stack_chk_guard symbol with an
>>> expression that produces the address of the 'stack_canary' field
>>> that is added to struct thread_info. This way, each task will use
>>> its own randomized value.
>>>
>>> Cc: Russell King <linux@armlinux.org.uk>
>>> Cc: Kees Cook <keescook@chromium.org>
>>> Cc: Emese Revfy <re.emese@gmail.com>
>>> Cc: Arnd Bergmann <arnd@arndb.de>
>>> Cc: Laura Abbott <labbott@redhat.com>
>>> Cc: kernel-hardening@lists.openwall.com
>>> Acked-by: Nicolas Pitre <nico@linaro.org>
>>> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
>>
>> Since this patch is in the tree, cc-option no longer works on
>> the arm architecture if CONFIG_STACKPROTECTOR_PER_TASK is enabled.
>>
>> Any idea how to fix that ? 
> 
> I thought Arnd sent a patch to fix it and it got picked up?
> 

Yes, but the fix is not upstream (it is only in -next), and I missed it.

Guenter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
