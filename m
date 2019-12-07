Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19774115B0E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 06:08:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W75EPlTEZqFhjy4yUoPFfAGmUpkdjrRb9nPIv0E8vxc=; b=qJ2NFx/ueh9f1X
	4whUC4h16ZvmhXhHRQzLdmUPVDbo0Tc9pEGZ4lhuKTTsMr2mUKNAW+n2Ibo6O9Zsd6tk5L6FA5dPX
	XfLj3SBh0wGwN0+ry/giS4sFSPuHCn9fclzE3vVCS/QkzwszykLjIl+Wf68yg1Qg97aZMfjAQzz8Y
	AQLhogcnfgWlugIeBCVe58qKaCaCul3U37R6QNEoaNcRY34QoymgFaFeUiskFng8///Ack9S8zMO0
	hqw7732PYJYqPabeTpjA+oDPzKnw5DTk+BtZmcosjYNnQG5G7JKDZZiffXaU9bGYTi6MopzBJMf9u
	BJVE8oEc0FdDPXbwX1mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idSK9-0007dY-EX; Sat, 07 Dec 2019 05:08:09 +0000
Received: from mail-io1-xd30.google.com ([2607:f8b0:4864:20::d30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idSK4-0007cj-8U; Sat, 07 Dec 2019 05:08:05 +0000
Received: by mail-io1-xd30.google.com with SMTP id c16so9512681ioh.6;
 Fri, 06 Dec 2019 21:08:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WZjCU4j3sL53untxnLZNdDSh0qNqfLN8e+bQHEuZ5dE=;
 b=e/7O6x16LI/cuCQ9VTwPI5Qk6hyKut98AIxqbVAVLXFnPUZszlL1F8MV0zeOlzDw98
 HNsphd3/kuZeVUnk/l+0GmPBjf3+I51JSETHKJ5xNFY202XDoSOAIsX0gWRf/m7vu3Xq
 kMmZ2dECX7IZhWY9XsT+MbFZCfSxV9drsJHQUEd+wbcl5J3b7Lo/a8seWTM7Yq3dzOsP
 U9oQc4brO84vwhqY+ZCjjwQ1qi2dc8fnhzkTFfZeHrPLoO7umCQtmN5/Kbz8MZ5tlSON
 rnwU7Z5V8M3R6LRjkh3sGIAllgXm1L8stfF4hlxW/dyYp8s2KF5q91MoguFmdFMmmYeH
 6ohg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WZjCU4j3sL53untxnLZNdDSh0qNqfLN8e+bQHEuZ5dE=;
 b=LMFai1iPAetOd8WDOK0S1ost2wD9PRtLFYh9tIkU1Cp4edVhb9Z3tdjHaWOyBaiG2s
 X16F42w6QlAB15fvX6jUteonBTiPybikjrTPnhHqp3WEOp0AVL05u33WuVxUNxhLMnBb
 z7yMPmo3hmm+ABWz9EeWYeopEcSaaSkVidN7kqSZizRbB1mtiyKRZn0EgCiHWUM2AOxS
 NV+svqi9BDiWAFMNYVPy+aJ42N3P84/ubM5OEK0oSPAt3uzdaqFZTOs65ds7mxBWfHSt
 Ttt+fl1srtCYkbAQCxQcVyxP8YkYiFwim4+97H0bSW1S58cFKX/3JQROrl81FTSFr41j
 sMIw==
X-Gm-Message-State: APjAAAVLfwj4gdYeFs189iDnAI0DG3kA9GaPQZJcacrFPtUcGHLx2DUY
 c2xzsYDJUvi4cJr58ST4lAZR3VbhK5JMWLmOuZg=
X-Google-Smtp-Source: APXvYqyhs07MAWwbyQaZm+/Kp7saX8qenn+0uk1OjJl5k3oO2GPkxDDzBSxlGDoe37fLgle+eEbXq0/21fu5UFYXzcs=
X-Received: by 2002:a5e:9314:: with SMTP id k20mr8633311iom.6.1575695281133;
 Fri, 06 Dec 2019 21:08:01 -0800 (PST)
MIME-Version: 1.0
References: <20191206184536.2507-1-linux.amoon@gmail.com>
 <1765889.rfqrfT1PbY@phil>
In-Reply-To: <1765889.rfqrfT1PbY@phil>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sat, 7 Dec 2019 10:37:49 +0530
Message-ID: <CANAwSgT_k5VgtQcP_vOX4Goa-9_B6GmXP+i-hAwpZuTRVTPt_Q@mail.gmail.com>
Subject: Re: [RFCv1 0/8] RK3399 clean shutdown issue
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_210804_325344_C53EB7A6 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d30 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Daniel Schultz <d.schultz@phytec.de>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Heiko,

On Sat, 7 Dec 2019 at 04:02, Heiko Stuebner <heiko@sntech.de> wrote:
>
> Hi Anand,
>
> Am Freitag, 6. Dezember 2019, 19:45:28 CET schrieb Anand Moon:
> > Most of the RK3399 SBC boards do not perform clean
> > shutdown and clean reboot.
> >
> > These patches try to help resolve the issue with proper
> > shutdown by turning off the PMIC.
> >
> > For reference
> > RK805 PMCI data sheet:
> > [0] http://rockchip.fr/RK805%20datasheet%20V1.3.pdf
> > RK808 PMIC data sheet:
> > [1] http://rockchip.fr/RK808%20datasheet%20V1.4.pdf
> > RK817 PMIC data sheet:
> > [2] http://rockchip.fr/RK817%20datasheet%20V1.01.pdf
> > RK818 PMIC data sheet:
> > [3] http://rockchip.fr/RK818%20datasheet%20V1.0.pdf
> >
> > Reboot issue:
> > My guess is that we need to some proper sequence of
> > setting to PMCI to perform clean.
> >
> > If you have any input please share them.
>
> The rk8xx pmics may not on all devices be responsible for powering down
> the device. That is what the system-power-controller dt-property is for.
>
> So that property is there for a reason - to indicate that the pmic is
> responsible for power-off-handling.
>
> Heiko
>

Ok, my intent was to have common framework for
shutdown, restart, suspend, resume routines.

-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
