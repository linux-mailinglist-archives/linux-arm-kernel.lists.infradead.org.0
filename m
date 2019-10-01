Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F41C3E58
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 19:14:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kxcwCQIj88L4GZ0j37BjEF/IDav+FSYhb8YZZodU7rc=; b=NmQBdau9iZoMi9
	NoC5xNYKFpLUL6MNUKBhxNGd0PFOARhTVMMONRHtHMvL/TRGp0JJugOJ1v/0JYNZ/XVJrgsbglEM8
	5tV7bQuib2JX9zgfBL0gc0Wb2d1jZzlyI2TlyZZcwteFin48UTMHut/l2OjZx925VZ0voidrylWyL
	POxJZABGqmeZEtqoq6d5kZeHGsiqq2CEIoNn2RulqTjgpAYtpde4VAWORXXqcsotieDuSUYRhzdVC
	t6zRi6lODpwMKJCzchR1iCpq+qpdCrZ73CwbdsBNgB3OKFCWruSQHRQAG6eKgoEU+zr7Y86+m3oJc
	fjS35sKF0/yFzjsxkFAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFLjR-0006tn-Fy; Tue, 01 Oct 2019 17:14:37 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFLj7-0006fr-1P
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 17:14:18 +0000
Received: by mail-io1-xd43.google.com with SMTP id q10so50034787iop.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 10:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XyW5421FuW5ERt/Ce918IFZBepV74zAfugKBY/uP7Sg=;
 b=vK3LWLU7yuz8B7Zud46nqKCjNTu81dzKhZrSHYSXRvB/IgwKwR6w1i5/fCVhXRbbt5
 4k41JFWg6X8g3p3uDJ07Wq91J7n/TR2bFueBJLFbc/dZY3xpRhkn99yDcuJ1JmDQ8Ou/
 KDvshQLRVZzp4Ldk+vJyVLnaApjyqx+YWWCiz4bwBtLZ1trdoblGfg0JF8rPin+2oqBb
 GgyMRoYqGvOnb30gxZMNrYKyn9xzJJXpuZsf0A4h6vsfKrwh/PCR108f6YmocjA6ftRF
 RvKDbiG3AaYk5Ee+tO+fc4r+Nc6+vhF9gg6z1agcVtrk/oeAna/4XWZfDKy0+JeAT5Xf
 3Gew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XyW5421FuW5ERt/Ce918IFZBepV74zAfugKBY/uP7Sg=;
 b=ZJyUdmR9wYT80Hbyu2k0v1XL9A8HhqmyV4MT6kw7T/wm1czec02NtdD+9FGOccue43
 QkHOsNsUrDusiHamkV7SPJrh3/LGx4GAkqQF2P2uedqcuAkux1ozuQ4DczayfQa7D8A3
 3q7K+OdMNIb4/qRyG/hvVHDOItjId2GNWiN0goqR/8aGsFnJnNxRMXtlPSuGNjwW5gTM
 xBG/nXCtaTgBOCB4HMMmHIIdNbJQDsmufVruSLNbTo6eWkAbsKcqx/HWPnaFbhxQ4Y8j
 Udfd11kNR7EwVQmWJkoOkWU2tBve5qg+dQ+6qDS9CcMfeMCjDGMfP3GT8Y0uTWKGcRTv
 scqg==
X-Gm-Message-State: APjAAAUW5fd9iP/asXiyf6J/bCmtmQzZ9PIXA3eSfOYKdY0C2hkyvhS4
 1sLZmtnwn82DsMc/pzFVWmfcV4OYH0Scaan7GBQ=
X-Google-Smtp-Source: APXvYqyhUoMGDelw2H4alAIycEnclkAErTmS481biaJKBo0W4fbZxP1K4s6I7iegwA83GAipXqeecDL2qPXmAAwsEPo=
X-Received: by 2002:a6b:da06:: with SMTP id x6mr3828288iob.42.1569950055032;
 Tue, 01 Oct 2019 10:14:15 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <90114e06825e537c3aafd3de5c78743a9de6fadc.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <CAOCk7NrK+wY8jfHdS8781NOQtyLm2RRe1NW2Rm3_zeaot0Q99Q@mail.gmail.com>
 <16212a577339204e901cf4eefa5e82f1@codeaurora.org>
In-Reply-To: <16212a577339204e901cf4eefa5e82f1@codeaurora.org>
From: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Date: Tue, 1 Oct 2019 11:14:03 -0600
Message-ID: <CAOCk7NohO67qeYCnrjy4P0KN9nLUiamphHRvj-bFP++K7khPOw@mail.gmail.com>
Subject: Re: [PATCHv9 2/3] arm64: dts: qcom: msm8998: Add Coresight support
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_101417_099554_976CA75E 
X-CRM114-Status: GOOD (  16.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffrey.l.hugo[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rajendra Nayak <rnayak@codeaurora.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 MSM <linux-arm-msm@vger.kernel.org>, Marc Gonzalez <marc.w.gonzalez@free.fr>,
 lkml <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, Andy Gross <agross@kernel.org>,
 Sibi Sankar <sibis@codeaurora.org>, Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 1, 2019 at 11:04 AM Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> On 2019-10-01 09:13, Jeffrey Hugo wrote:
> > Sai,
> >
> > This patch breaks boot on the 835 laptops.  However, I haven't seen
> > the same issue on the MTP.  I wonder, is coresight expected to work
> > with production fused devices?  I wonder if thats the difference
> > between the laptop and MTP that is causing the issue.
> >
> > Let me know what I can do to help debug.
> >
>
> I did test on MSM8998 MTP and didn't face any issue. I am guessing this
> is the same issue which you reported regarding cpuidle? Coresight ETM

Yes, its the same issue.  Right now, I need both patches reverted to boot.

> and cpuidle do not work well together since ETMs share the same power
> domain as CPU and they might get turned off when CPU enters idle states.
> Can you try with cpuidle.off=1 cmdline or just remove idle states from
> DT to confirm? If this is the issue, then we can try the below patch
> from Andrew Murray for ETM save and restore:
>
> https://patchwork.kernel.org/patch/11097893/

Is there still value in testing this if the idle states are removed,
yet the coresight nodes still cause issues?

Funny enough, I'm using the arm64 defconfig which doesn't seem to
select CONFIG_CORESIGHT, so I'm not even sure what would be binding to
the DT devices...

>
> It is not merged yet. They would appreciate your tested by ;)
>
> Thanks,
> Sai

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
