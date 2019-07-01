Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEF15B39D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 06:34:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLgEs5JyxO4GBS/TD4ZRwIzltr7eSf35Ssusd9ZxPls=; b=cs/H/F91B8e/O4
	x39Lpdzx09jO6LOOdzZZNfjNFklPC0qX3GFrnrm4jBcJfR00D3+t6JoECbQi9aeWPpxz5kaILp4dM
	uadI+CxNzz/pIzmXvvAHrhnZ1UrQPGQIuSDHfsRMocVDWTSofLP2ltCIkS0m913X98c4tR8ft7MRs
	hjE3TP6KB/oeKEYiZlecouPQlH3uQNEr8FQVZNggS1iVGcE05M8iD5UingXE6sZNOtLUb/TH64Epl
	ro8StKGraZPzODxMW0OtNT84LdRasa9fWlapEu8G0cXSHD3I7Nr/VU0dqxuje3DQDgi7Db80FNMVV
	HnT0laznIz5Ke4G4quEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hho1E-00068i-TA; Mon, 01 Jul 2019 04:34:21 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hho0y-00067n-0k
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 04:34:05 +0000
Received: by mail-qt1-x844.google.com with SMTP id j19so13242556qtr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 30 Jun 2019 21:34:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j4LijnemKoLKQMl/B23h/AFjsTibtIxnLw1/ziD/okk=;
 b=YVFFkZJj/CNI+ghOb+Ya0Nzz514913rZbQ1YwSPyXWJG0iedMSqToFMHZSnvnPuPT0
 O8cxNkk5ThpOsJF6gBM/kMDq+25cqP4doJFO4stISlZcxnEC15ROlJ6RTv+tUb36RMUP
 oJiNOHbUBSYf7k9M2h1kSEXdcBrPmOJGKebzY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j4LijnemKoLKQMl/B23h/AFjsTibtIxnLw1/ziD/okk=;
 b=ONWhygaOqRkGieIHfUSPXB+3ejqSsVZR3qxsRmGj7Dcys9+iokROzGV+cI/Vf/Mphx
 tfLgcc3wYRLiwkNAgz77zEwJVZ8pnTK3pNe3n7HRpz+9eFbJIVGhPdCC0bnT1OjR7KKF
 H0VbKtEtCjO6rlyKVNLXeBooQkRNmJSW0URQrrqptVTrJXimGi2fAjfnb+gXF2nLpr0X
 nuVwrkJYiJvZMznM6LnKASre9uT4R8jR3uwD/bhMeRyFwfvmUKkQyo5vclqoa2lTrubF
 s7rVXCD6FlwtwSARgPzOE2UpOyxor+a7L0zSr9hh1syHJMHWaByc4RC+zEXzBNqC69Ql
 c0lA==
X-Gm-Message-State: APjAAAUkFMD2VcSgAm1WubDxesEf1P6VS4rhlTQU2qtDjR2q5By58ULj
 YnMh6QsZA1CqkDmhpq4w16GnP4WWjPj1Wx9dLeXI0A==
X-Google-Smtp-Source: APXvYqxyxJ+qsb/SSss0UK1hGoxcUxWom7jpMAM+lCcXcmwPccZYE52XG+D0cY4RU1de6kdV4cOwi/jxIN29tjlaZDo=
X-Received: by 2002:ac8:4601:: with SMTP id p1mr18877187qtn.181.1561955642169; 
 Sun, 30 Jun 2019 21:34:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190612043258.166048-1-hsinyi@chromium.org>
 <20190612043258.166048-4-hsinyi@chromium.org>
 <20190628094251.GC36437@lakrids.cambridge.arm.com>
 <CAJMQK-iRKkOS9q-qGVj-3o6BVMeANrBoF_4MWQ1g-=4_6HRdbw@mail.gmail.com>
In-Reply-To: <CAJMQK-iRKkOS9q-qGVj-3o6BVMeANrBoF_4MWQ1g-=4_6HRdbw@mail.gmail.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Mon, 1 Jul 2019 12:33:36 +0800
Message-ID: <CAJMQK-g66_G3M9j1b2fBiMQrr5H7w4WQ5ZVy+aDdsmjb4A1==Q@mail.gmail.com>
Subject: Re: [PATCH v6 3/3] arm64: kexec_file: add rng-seed support
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_213404_085642_1293E81C 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Yu Zhao <yuzhao@google.com>,
 Kees Cook <keescook@chromium.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Will Deacon <will.deacon@arm.com>, lkml <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 Miles Chen <miles.chen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 James Morse <james.morse@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 7:47 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:

> >
> > If the RNG wasn't initialised, we'd carry on with a warning. Why do we
> > follow a different policy here?
> >
(Sorry, please ignore previous comment)
I think this part should be same as kaslr, since they are both adding
random seeds:
If RNG isn't initialized, we won't be able to set these seeds, and dtb
can't do anything else to deal with this, so carry on with warning.
If fdt_setprop failed with no space, create_dtb() will try to setup
dtb again with more space.
Other failures are setting fdt's error, so returns invalid.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
