Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F13184C3F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 17:19:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jbkq1jzZwx6rg/tBVu/mbTuiSxQeWYOxAs0GfJCTHPM=; b=rgcp+xHopw8GFE
	tvkiIeTdtUsZDdHawSv18VarBTCtO/CGrypUJc19Yv2B/GmGMMuhYYE6/f0H0e+iB6Ny38Z3I7P1t
	oXstBm+mU67bayIjb0esFCVPKIED/qZGOZWRZERWtDUriQV7jJ6xf+bgEfDcqezkWcDsspAWaOhld
	Mvp6h+D6HByvLWWvYzQb8fprafkWAzEmd9y+KUBPHbfP6gF+cKRRuwaNX8IizFi2DHT9PmHPo6wvr
	iN8Uw1ZiFiCRj3mvfBlknP/wQMDJbJO1Prwv99Pq2HOWq0SuTEpr1pgfq3rUytbUZ1jUBMwivKup2
	WMFQCtYPTuqA/wfDJT+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCn2F-0000Ru-3n; Fri, 13 Mar 2020 16:19:43 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCn26-0000R4-Pe
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 16:19:36 +0000
Received: by mail-wm1-x341.google.com with SMTP id z12so1759733wmf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 09:19:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=DzWpdx6328OZ0aH4x17MPaDC7GHF6Gljp2V0qUX/DXo=;
 b=UaJGqhaStKvtpmCHIX3kKDpHnWc+X5jToC5SA/qFSF367bfEjsz2TVGFQPWSP8HeUx
 GRLu8BKAOod/fH4D9Sowc0g+v0PGZvefYUcatrjW7Hns/gHMn0/5MvDT//4Z9EWPhYvQ
 KJah4mfhH2zRxGewD8tH3WSFEYvcHtW/vfQO6ucpmC8zuWcsqvQ5w246yKiWspujo/Ly
 vdN9l8dgYdikc6SF9YTp5CKa4Mi8ppQT3A9PbDL/lzQqsfGXhMpz8T50Q2WliEJDvN7x
 nJt9rp5Tyx77XMF6/Rv1OlehOLOIkgQL2QYO5J0J0WTA4aa++VluIhkdS0C3yTOp8PjN
 Y+nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DzWpdx6328OZ0aH4x17MPaDC7GHF6Gljp2V0qUX/DXo=;
 b=B/Gr++Kis8CJ67Bb1sXHVz3JJaFrdM5DctssltcbFVfXV2pvOH6gqTx4mBHQ8S1HoP
 IGr6GcS853WaYmxEp6kXPypdUTsqYzjj1Mj5r598rWAnjkMfVW7hMX8zBbTT/Rl4xtT5
 HW8OEMkAzDqUqqo84bITh/xS62gfB4qXdcGOFdKVF5QypnHkjsZFPVf8wkq63YxolzKI
 IcdxM2sy2CzSO5krkDfgWEaubvA9aDffqSSL7v+0OG/EXr0m6wtzbB/5Fn7D+DwVa/z+
 kwDR0NjSumcMyepjXQFMs7qWWdceQOSDKrcQRhDt5ZDiJ1Ts38F8zEIc/rHSrDKjYY/V
 3kUg==
X-Gm-Message-State: ANhLgQ1bHaqGp8N39bnNlFDdmc8WE3fb6fT5vJJz2xCONqa0k1fK7UEH
 tARCEOB1TDRr+kT8vt0CNCM=
X-Google-Smtp-Source: ADFU+vsq06fil7othF27XQT8Yzw4TwrwXBYm7m6KjdoRKe730VpT0nmboNEJS30sUYpx7sh4hoWlkQ==
X-Received: by 2002:a1c:791a:: with SMTP id l26mr11500620wme.103.1584116370132; 
 Fri, 13 Mar 2020 09:19:30 -0700 (PDT)
Received: from [10.83.36.153] ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id w1sm16365071wmc.11.2020.03.13.09.19.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Mar 2020 09:19:29 -0700 (PDT)
Subject: Re: [PATCH v3 00/26] Introduce common headers for vDSO
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 clang-built-linux@googlegroups.com, x86@kernel.org
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
From: Dmitry Safonov <0x7f454c46@gmail.com>
Message-ID: <693b6a61-b5f6-2744-1579-b356e6510547@gmail.com>
Date: Fri, 13 Mar 2020 16:19:23 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200313154345.56760-1-vincenzo.frascino@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_091934_838515_FBCC9E65 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [0x7f454c46[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [0x7f454c46[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Peter Collingbourne <pcc@google.com>, Andrei Vagin <avagin@openvz.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vincenzo, all

I like the idea, but I'm wondering if we could have less-grained
headers? Like, AFAICS the patches create headers < 10 lines and even
mostly < 5 lines.. I like that header's names perfectly describe what's
inside, but I'm not sure how effective to have a lot of extra-small
includes.

Or maybe there's a plan to grow the code in them?

On 3/13/20 3:43 PM, Vincenzo Frascino wrote:
[..]
>  create mode 100644 arch/arm/include/asm/vdso/clocksource.h
>  create mode 100644 arch/arm/include/asm/vdso/cp15.h
>  create mode 100644 arch/arm/include/asm/vdso/processor.h
>  create mode 100644 arch/arm64/include/asm/vdso/arch_timer.h
>  create mode 100644 arch/arm64/include/asm/vdso/clocksource.h
>  create mode 100644 arch/arm64/include/asm/vdso/processor.h
>  create mode 100644 arch/mips/include/asm/vdso/clocksource.h
>  create mode 100644 arch/mips/include/asm/vdso/processor.h
>  create mode 100644 arch/x86/include/asm/vdso/clocksource.h
>  create mode 100644 arch/x86/include/asm/vdso/processor.h
>  create mode 100644 include/vdso/bits.h
>  create mode 100644 include/vdso/clocksource.h
>  create mode 100644 include/vdso/const.h
>  create mode 100644 include/vdso/jiffies.h
>  create mode 100644 include/vdso/ktime.h
>  create mode 100644 include/vdso/limits.h
>  create mode 100644 include/vdso/math64.h
>  create mode 100644 include/vdso/processor.h
>  create mode 100644 include/vdso/time.h
>  create mode 100644 include/vdso/time32.h
>  create mode 100644 include/vdso/time64.h

Maybe we could made them less-grained?

I.e, time32 + time64 + time.h => time.h?

Thanks for Cc,
          Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
