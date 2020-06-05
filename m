Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2DA21F00CE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 22:13:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qyzJHwLOg8ltefhrKNXaYNaMUtVMFDDne4B+UmcUS9k=; b=SS2BAWfxgYGmnz
	54AINPWj8J9O2KvZ0pCV2vpQ02gpDibrV0UY700Rg8Pd8J3lwSyhcWsiYYyXTruD5t43QGTDEg8Fh
	eK4I2djclsZwJzjM3dMEhT7EJOXbaniGX2BUPu3jaOTn0Utq1qSHasf3UX142LnDcXiTG0tVOvJlU
	KPDVArlmv9lKAZOhiF8Op+xvdOIwT8Oxb7XkFJmtjuqew3MgI+lHrdpzdb7N93dX39hLwbDU9eDDV
	BXRUpSDgBMwLhV1LtzLbGojaksfWI0eB/A2vh15pBaFvoKS8YyPJZPnPC0TT46fBHwOw/xq9Zr85f
	wuXbI5XYq6YMjiV4m/7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhIiZ-0000lB-RV; Fri, 05 Jun 2020 20:13:31 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhIiS-0000kh-L7
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 20:13:26 +0000
Received: by mail-il1-x141.google.com with SMTP id h3so10847470ilh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 13:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=juliacomputing-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fbtDa8Hyyhb6x5b5d5Nx0md1ru2BL65F2mqxRZhzXcQ=;
 b=UPRZ8iwg4vJd9gFsssWF5r7eJkNYGMKa39Ce0NJgJrH93DYP3cFgVjNlnCJvjSLR2H
 XeD9gT1iwoMRSjC7T/FjW3oud60hqKst9ypMRdJ0W8Vjl13eqk01QCwt59aq4RlYJjwn
 +x/sRbbHWppkoxprZfFaSnJydZhw5iwFSrRfU9qhaB7XaE9SqELsuUjAcjqYNfzbM/5q
 ic5DmMDUZ8J31SATAhHDs5mfs9wEVwzk9JL7/SwnTNfLAipq/BXo4CfOzRUHq4OgJMrL
 mOSXTEA88+hwlGjRxYNlVKlx3OfdtHCjsT6P/apLGQbVE3YIJnmVNnWCwoRlEpJvGirX
 /V2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fbtDa8Hyyhb6x5b5d5Nx0md1ru2BL65F2mqxRZhzXcQ=;
 b=lelFR/r/dZZS8aPh8XJXvw/HmFqq1DtMeyuQaa1PmL/hQ0sgC1gPQch/AtNbBu0rj2
 hRYZEHRApKO1r1MQsd1rjL9Gdazp2VWHjCCHF2Y5gzt2SuomLApKVQFOjXYgW3aUT9QJ
 UuA5u0Tx01uWZ8NOgGJKWHsr2m5wd0lNqwB8ueRs96/358grw53eQjWto3j5sxeZtEnH
 pWB31OxGqqshv2HVuLzGBxhaaUx6DfLQawvnavX4jGbHfvAdEJbPiWKERYXaeFqhy2Xq
 nLS5AG0BeM6oq4UyO4Orv6zdHl/rwTECDpxqyTVHZ7FN4YmCHgpYubD6iy86oBPdVEnT
 qEmg==
X-Gm-Message-State: AOAM531azJoI/dQody6lqNkxWO7MRtGo+/YppfOKC9NlI97remgH4LYK
 q4kaJdTUHC8bpN1ZlsmdToTvSsbInQ6QK/9Rq+X11A==
X-Google-Smtp-Source: ABdhPJyjLCEG+Zcai/fC8YoM9b8CwgLkdW9GJ8hGiOc8kYIzmZLMT2Z4UEw+ncol7Kyv2UMR2h6KfLFrz8boRdsMtv8=
X-Received: by 2002:a92:d1d0:: with SMTP id u16mr9998422ilg.2.1591388001139;
 Fri, 05 Jun 2020 13:13:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200603151033.11512-1-will@kernel.org>
 <20200603151033.11512-2-will@kernel.org>
 <CABV8kRwrnixNc074-jQhZzeucGHx9_e5FnQmBS=VuL=tFGjY-Q@mail.gmail.com>
 <20200603155338.GA12036@willie-the-truck>
 <CABV8kRxSjMY+d+F5aNzq1=5hXhVLGy6TbNLTUsCeSsAncwCzoA@mail.gmail.com>
 <20200604083210.GC30155@willie-the-truck>
 <fdce5355-8a85-7bdc-0fba-a2a6c08cb0b8@linaro.org>
In-Reply-To: <fdce5355-8a85-7bdc-0fba-a2a6c08cb0b8@linaro.org>
From: Keno Fischer <keno@juliacomputing.com>
Date: Fri, 5 Jun 2020 16:12:45 -0400
Message-ID: <CABV8kRxVHWcQ-RS1Xjt557Lzc=GpDxF_HHURRM6LNBdZevdtJg@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: Override SPSR.SS when single-stepping is
 enabled
To: Luis Machado <luis.machado@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_131324_892433_CDB330B0 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, kernel-team@android.com,
 Will Deacon <will@kernel.org>, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Luis,

On Fri, Jun 5, 2020 at 12:50 AM Luis Machado <luis.machado@linaro.org> wrote:
>
> 1 - x86-64 seems to get an extra SIGSTOP when we single-step over the
> vfork syscall, though this doesn't seem to do any harm.

Is it possible that on arm64 you attached to the original tracee using
PTRACE_SEIZE, but used some other method on x86-64?
That would explain this difference.

> 2 - This is the one that throws GDB off. In the last single-step
> request, arm64 gets a SIGCHLD instead of the SIGTRAP x86-64 gets.

I believe this is ok. The timing of SIGCHLD is not guaranteed, so it's allowed
to pre-empt the single step. I have seen some differences in signal delivery
order on arm64, but I believe it just comes down to scheduling and performance
differences between the systems, since these interactions are a bit racy.


Keno

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
