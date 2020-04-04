Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED6519E208
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 03:08:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6fmlyJ4YQR304/NPraHmuN4ucAfW4LMV9OAASE46buw=; b=d2owHY4oU1OInT
	CGo/NVo8rgnb8uUep7eVqaws5qy4sfukoCT2oMuUF38eMM+TH7expK5OpnYdgsQLlf8apmXghAfMY
	A4QxOznkR9K3Mew80soxytglIDYprqNoBN9nRdtW44PTqTBYn2Ot04SVpW5WARt6+y9/lr2zX6e2Z
	PbBhsFeQQ3lNiOfuxe5zA1cJolhq1ToTo3oednH2fajoxNF/LYCIQtqXn8jxN+p1JFO0bv1e5sxFP
	6slapQb6G/LRX/fIscUitfR2F8xWzrJGciSzykr8TVRVEVpMuxtv4Zb5WpsnEf1hS3Ey9seswilKU
	nU+w7T/n7b0ONTg1TGHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKXI4-0003jj-5b; Sat, 04 Apr 2020 01:08:04 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKXHy-0003jO-Gl
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Apr 2020 01:07:59 +0000
Received: by mail-qk1-x744.google.com with SMTP id o18so7342925qko.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 18:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O6b2gnL33BXhVFyfbJth5+UU7eciSHYX3oxtDKEDuDA=;
 b=alUJeSWDQbazGmCHaD3vGtuEij3VFxX3HTi56q8fbqaiBp7/Y6J7p4a0acMrl7kInW
 X0JbVTtUVvSwa+p2769ApqQW7OcZsWyXCQkuQCxepnyx8UF3+h0nm3E2wSbAjzoh6pmH
 YX5cL9Gly/HX3522R8CBtJKjQTggV2WVU4SLc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O6b2gnL33BXhVFyfbJth5+UU7eciSHYX3oxtDKEDuDA=;
 b=oXfLu4C4l8qsvKZK8sFXY+PPp4aNVHBhujilx0lwCrq/ij+lj4b/3VrQP3RzDAh4qp
 QChK9me270T9M/y++Cze30xVdFallGt6n14hXD7/2/FwyVkL4iOqFbfagQ6Z7kboIolk
 Ach6zJiYP4ezomPfMYrvihaJnnOS2GEfYSxMsdbudIa2xJTroXLSKR2cIAnL0bSciELw
 LZmjHubGKXLtFf9xZm+U9jNGXWj1G8FvlL5N0LCH2SyThKRTKbLGnfchCKH5gZIJ/JDX
 Vb8IiUv+iZ/EZ/L/narqePohmesIgWXXDI1bcmguAs8A3H8lSndIOVwXLJe4ZjudTESW
 wqBQ==
X-Gm-Message-State: AGi0PubxhXnMeeKqMDthRW8PoBpuAVRZDV0ixsFjfQmn3bhEeN5KGH1j
 aU+fMpWy82tqzK56UQaHk2JO0+xnZVbcCw==
X-Google-Smtp-Source: APiQypLACBZcX0FJf1U6LnA0pHivFline7vQvmmnIfGAUfgkOUIWoN1MHs7lW4IlnPq/2YCxkn8RGA==
X-Received: by 2002:a37:e115:: with SMTP id c21mr11126025qkm.249.1585962476941; 
 Fri, 03 Apr 2020 18:07:56 -0700 (PDT)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com.
 [209.85.219.43])
 by smtp.gmail.com with ESMTPSA id x89sm7918016qtd.43.2020.04.03.18.07.56
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 03 Apr 2020 18:07:56 -0700 (PDT)
Received: by mail-qv1-f43.google.com with SMTP id c28so4579763qvb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 18:07:56 -0700 (PDT)
X-Received: by 2002:a1f:e546:: with SMTP id c67mr8715562vkh.38.1585962045690; 
 Fri, 03 Apr 2020 18:00:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200403052900.258855-1-evanbenn@chromium.org>
 <20200403162742.v2.2.Ia92bb4d4ce84bcefeba1d00aaa1c1e919b6164ef@changeid>
 <CAODwPW_iSK_d6EHCk7QUVF7=bHVLuUYHX5mfapf+yeyuHHdNZA@mail.gmail.com>
In-Reply-To: <CAODwPW_iSK_d6EHCk7QUVF7=bHVLuUYHX5mfapf+yeyuHHdNZA@mail.gmail.com>
From: Evan Benn <evanbenn@chromium.org>
Date: Sat, 4 Apr 2020 12:00:18 +1100
X-Gmail-Original-Message-ID: <CAKz_xw3W3xWBfspj0DmbR-p8qF9A+sSsuT_euqmYNbx=47HpoQ@mail.gmail.com>
Message-ID: <CAKz_xw3W3xWBfspj0DmbR-p8qF9A+sSsuT_euqmYNbx=47HpoQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] watchdog: Add new arm_smd_wdt watchdog driver
To: Julius Werner <jwerner@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_180758_556048_B226148E 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Rob Herring <robh@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 Guenter Roeck <linux@roeck-us.net>,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 4, 2020 at 9:56 AM Julius Werner <jwerner@chromium.org> wrote:
>
> > +       wdd->info = &smcwd_info;
> > +       /* get_timeleft is optional */
> > +       if (smcwd_call(SMCWD_GET_TIMELEFT, 0, NULL))
>
> How is this supposed to work? A firmware that implements this call
> would return the time left here which may not be 0 (maybe the watchdog
> was already primed by the bootloader or whatever), so smcwd_call()
> would interpret it as an error.
>
> I think the cleanest solution would be to stick to the same return
> codes in a0 and use a1 to report the time left when a0 is
> PSCI_SUCCESS. This is more consistent with SMCWD_INIT too.

Yes you are right, I have the wrong return code in the get_timeleft
implementation. It should use ->a1 for the actual timeleft, a0 is for
the error code.

Here smcwd_call returns the error code, which is NOT_IMPLEMENTED if
the firmware does not implement timeleft. The timeleft itself cannot
return error codes else we would just return that there I guess.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
