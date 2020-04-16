Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDD71AD267
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 23:58:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qSg+iFjUBBsWld1mZtZW3kAwGT/BJDpD0GLTUIwwGCw=; b=qf/CPF2DKxNPFQ
	GytqpkOvmhzThPsTzSTHxxEYfIoIIKMRNnVnpN8eQ89bkCsT4bthPZFFp9q/nR8ztZkbIRH5JysKC
	W0y98F1QLHAW0+CuYnHt19/u10jTFbV11D4fw/NMEKFOvl5gZVt0lTwx29uMcCTF/t05ghyaej0Sg
	ZUbsHdAhu/LDtopaMXR6YiZJQhRqvdmLlxyL5F7bSylYdBNuW8bZzOnGiZyhKzfLX9qN3rjRsvlry
	93aMefQsXX36UJnW6gVfb9l8d8BOHdMnmy8rxc7zMQH5tZKIHS0vCR2L/Y3Tm7OnsgT+BIzfAhzKD
	I00BHe1/vgUvoS1YBolg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPCWH-0007nH-5Y; Thu, 16 Apr 2020 21:58:01 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPCW6-0007lw-Cx
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 21:57:53 +0000
Received: by mail-pj1-x1043.google.com with SMTP id a22so138789pjk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 14:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vT/IDBelAw7Iy+8YBhPmkWx+lnZLFsGUZ4SFQAWcjxQ=;
 b=tVI41oESvCCPr8Ececz5o8F3KdRBC7ry8L7wX2JsvWBs2rUMz3AC+j2D0QQaMQIXQ+
 j/Dw/fBaNzWjW4FpDv5BLfX04j59jDFs5dVT9PbOH7w95HabJHDCG/tIQWBh5b8j9Is7
 PnkE9mCLHX0L+5oK4s90NNTjZPe8mDU68iD/kF9+HuOVKRAv9hPHVhyx7kh71YkdPjBm
 Xscz0SDkpHhvbL9/MLiUbqW90IdL/s6Por3L1aQK0dPM59Fpj7/biv1x6RK3CAdaDALC
 ixXtAGh9eqnys1xnn6fWeB9gPH9J7YTb89uKLieM2xNs9AuE3Etfgwe+YxCaEhnu4ewO
 OXHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vT/IDBelAw7Iy+8YBhPmkWx+lnZLFsGUZ4SFQAWcjxQ=;
 b=NS+r2TDePJV+FUrPQj+EaGqZXHC7lCnFWcab4jidUN2CE2/4DZvxpH5NWlqCppnwXf
 rwf7JBDWEPVsZ7nqwFpzY4TM+f1/BdwyGzkGCFf8V91VLmUL1HsKtWJ8FSquDApD6Tu8
 K/l3M11F18OdMn0v5Oh03ZTngg/xaPkt7jBuwVNi2evaO86ElCvaryMDwgl6H3F2rOp9
 5F1mGjjINxd64xWfDoyTImR7rvKNrk7uNhY1Lp/wSl12qECC6Elkb10K6AS1brBFmBqh
 YwPY8EQ+zjfr2xEoGddyTWfbTv9F8ak5+ZJXeUawVX/QRWbQd16pvPnmFQyhQkJcjVme
 3LGg==
X-Gm-Message-State: AGi0PuZ6zSMH921XwOxWXWuTkmkkXZ0KBJYJlNit3OSKBJ0jAYMbf/Ln
 OaBCGo07RuP/hOjkt7GjpUnS2lZ+/tobLEBw2pZecQ==
X-Google-Smtp-Source: APiQypKmFgSJy36kGS/EGXGzzpW3Ru3JFxbzm9/6qpvVJMa/1ZXMilvSBlxTsge8uhbeUdIh+hrcBbzEnpGrTTMcJoY=
X-Received: by 2002:a17:902:7e42:: with SMTP id
 a2mr289439pln.223.1587074269243; 
 Thu, 16 Apr 2020 14:57:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200416182402.16858-1-natechancellor@gmail.com>
 <CAKwvOdkCMsDUGK88xGqfsA5Nc1eNmR+PbLBoHE0dv65aimcJyQ@mail.gmail.com>
 <20200416202415.GA30964@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200416202415.GA30964@ubuntu-s3-xlarge-x86>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 16 Apr 2020 14:57:37 -0700
Message-ID: <CAKwvOdk3iQdqeLON8VNRb-9eHJruQPxi-7P5_aqt5M9oyz=GVA@mail.gmail.com>
Subject: Re: [PATCH] mmc: sdhci-of-arasan: Remove uninitialized ret variables
To: Nathan Chancellor <natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_145750_465384_57BEA673 
X-CRM114-Status: GOOD (  22.74  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 "kernelci . org bot" <bot@kernelci.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 Michal Simek <michal.simek@xilinx.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Manish Narani <manish.narani@xilinx.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 1:24 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Thu, Apr 16, 2020 at 01:16:27PM -0700, Nick Desaulniers wrote:
> > On Thu, Apr 16, 2020 at 11:24 AM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > Clang warns:
> > >
> > > drivers/mmc/host/sdhci-of-arasan.c:784:9: warning: variable 'ret' is
> > > uninitialized when used here [-Wuninitialized]
> > >         return ret;
> > >                ^~~
> > > drivers/mmc/host/sdhci-of-arasan.c:738:9: note: initialize the variable
> > > 'ret' to silence this warning
> > >         int ret;
> > >                ^
> > >                 = 0
> > > drivers/mmc/host/sdhci-of-arasan.c:860:9: warning: variable 'ret' is
> > > uninitialized when used here [-Wuninitialized]
> > >         return ret;
> > >                ^~~
> > > drivers/mmc/host/sdhci-of-arasan.c:810:9: note: initialize the variable
> > > 'ret' to silence this warning
> > >         int ret;
> > >                ^
> > >                 = 0
> > > 2 warnings generated.
> > >
> > > This looks like a copy paste error. Neither function has handling that
> > > needs ret so just remove it and return 0 directly.
> >
> > Forgive me for not taking the time to look into this more carefully,
> > but just a thought:
> >
> > Having functions always return a single integer literal as opposed to
> > having a `void` return type in their function signature is a code
> > smell.  Did you consider the call sites of these functions to see if
> > they do anything with the return value?  I understand it may not be
> > worthwhile/possible if these functions fulfil an interface that
> > requires the int return type function signature.  (It's also probably
>
> Which is the case. These functions are passed to 'struct clk_ops', which
> defines the set_phase member as
>
> int     (*set_phase)(struct clk_hw *hw, int degrees);
>
> so we cannot just change the return to void since there are other
> set_phase functions that do set a return value other than zero.
>
> > faster for me to just look rather than type this all out, but I saw no
> > mention of this consideration in the commit message or patch, so
> > wanted to check that it had been performed).
>
> Yeah, I should have probably mentioned that. I can do so if the
> maintainers feel it worthwhile.

No worries, I should hold my comments until I can give a more thorough
review, which I've now done. LGTM and thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
