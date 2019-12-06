Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 538E1115682
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 18:29:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D1evpgNbgl2U6YS3shDBuOTxP2MdRjNoxfdbTLMGIBI=; b=Jo/BeIzsrlAaKL
	Kpo+9fAimUTTCcsmUBdgpCDhIUV1Klg7VoaiatQmEX0Hr+fCiYHSbA5UQtbXFyPdaoNy4gKN9Xu0g
	9fK6Pr8TX3ay6YregZflGHQ+D1MsxKVCw/nW7Qyri4gZtBik8ZnxYW+t2ry020RixpTP0Z57VKRi5
	HvcMNPZeIkeVWXVAIcuU8vT0lBO/VQ62XV2eyiYALd64nHSMN67v1K/Ydo6VmyfuV/TU2InuOHDpE
	VESWODWeOr5L3vlEG6gilwmw5DtBHWbf0FV08+7+rS2Fib7w3bPGLgB+oEcV9x6dtwudCCLGwzdCP
	ulDqcJ+P6NSc0n3Qma4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idHPc-0007mf-Qw; Fri, 06 Dec 2019 17:29:04 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idHPT-0007lq-P7
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 17:28:57 +0000
Received: by mail-pf1-x444.google.com with SMTP id x184so2229108pfb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 09:28:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pYg4WaewSYxl4/E7hvxWoaqhGSiMuoN2AMdqqblwD1I=;
 b=OhNEObPQprG+BMiYBmvy8Vgv59VBLOp26wdu+gfSzY1V9hZ7XrNKNWboHj+JjU9Z95
 Gnt5xKXEt9dC4gl2g7fRrII4QS1WPOmIZN4Y1Yy6Iu4wxhftD25X1RNNsUKU5mEn8qOo
 X1e/6jUixgcELBsD/1NAc3enOCntPmTCiDG3GT+1CzfbW45yWH4LwSzvUcjH5O1Hoe3C
 0XAtLtu8+qn+tnBfS7w1AbfBmUdRmpngDC1AEkneiW3nRmAvAIvYtGA+rfLVxQfnnAgR
 286d+gXZAyIbZFSy44/xg80ShWH/4Eg3auyHNnyW4tITlEiOhdVx9ohrTZM7cPja4lNy
 AwnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pYg4WaewSYxl4/E7hvxWoaqhGSiMuoN2AMdqqblwD1I=;
 b=dsrBlqeH3DKAH6IMYemt6ai2vPtNQXPJvzZck47wCizcSBhGNI6L/qcgyG5qFySOYN
 RvWDGWjxICTjW0PAWk4ctpB4uFv0iPHEYTQZJFUYjic5CP+nc8RK9Lysr3Z7w4+3i6lv
 llPGBCwrjMyswOp8YPUeLrbCVyZJvOLtAb7++OGiXUkxgUG56o6Z2HTtL00UoxReCsnj
 9y6tQmlxW6517OyOY2asRkmCEFnn44egLWxEbX2gXPBbhR9kUO/VA2X1NlHMUnchYNJ1
 xWeghD8pmjzZE6TuwSCWub/aImneHlBVPy1LzlrqnxveqLAZYyvuLDsLpwZ7hoiCWcUV
 sZ5g==
X-Gm-Message-State: APjAAAWsz3jVkOo7a/S9sdx8Y05QHb1kw8ghAzLD2cqWL+NCrJEGW2o7
 It8PrMb39y2xGwxumV5gjSQSYg==
X-Google-Smtp-Source: APXvYqyq7iz4wtkQUNbqVjPFpRs/B3Rx/PJOGMbVHuA7E7amQYm+Hc9G8fpaaA87q4T3AE235JNkyA==
X-Received: by 2002:aa7:870c:: with SMTP id b12mr15682376pfo.82.1575653324580; 
 Fri, 06 Dec 2019 09:28:44 -0800 (PST)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id s27sm17332406pfd.88.2019.12.06.09.28.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Dec 2019 09:28:43 -0800 (PST)
Date: Fri, 6 Dec 2019 09:28:41 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Olof Johansson <olof@lixom.net>, amit.kucheria@linaro.org
Subject: Re: [GIT PULL] Qualcomm ARM64 Defconfig updates for 5.5
Message-ID: <20191206172841.GA10830@tuxbook-pro>
References: <1573068840-13098-1-git-send-email-agross@kernel.org>
 <20191106220406.4aoq5suvwww6c3ov@localhost>
 <20191206050222.GC289401@yoga>
 <20191206163237.t4ohf7fviz4ywkck@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191206163237.t4ohf7fviz4ywkck@localhost>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_092855_819992_BB3641E1 
X-CRM114-Status: GOOD (  19.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: arm@kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 06 Dec 08:32 PST 2019, Olof Johansson wrote:

> On Thu, Dec 05, 2019 at 09:02:22PM -0800, Bjorn Andersson wrote:
> > On Wed 06 Nov 14:04 PST 2019, Olof Johansson wrote:
> > 
> > > On Wed, Nov 06, 2019 at 01:33:56PM -0600, Andy Gross wrote:
> > > > The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
> > > > 
> > > >   Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
> > > > 
> > > > are available in the git repository at:
> > > > 
> > > >   git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-arm64-defconfig-for-5.5
> > > > 
> > > > for you to fetch changes up to a36612b7469cf76953cf237a2b9a62f6c97730bb:
> > > > 
> > > >   arm64: defconfig: Enable Qualcomm watchdog driver (2019-10-20 23:04:59 -0700)
> > > > 
> > > > ----------------------------------------------------------------
> > > > Qualcomm ARM64 Based defconfig Updates for v5.5
> > > > 
> > > > * Enable Qualcomm cpufreq, watchdog, prng, socinfo, SPI, and QSPI controllers
> > > > * Enable SN65DSI86 display bridge
> > > > * Enable QCA Bluetooth over Uart
> > > > * Enable various Qualcomm remoteproc dependencies
> > > > 
> > > > ----------------------------------------------------------------
> > > > Bjorn Andersson (6):
> > > >       arm64: defconfig: Enable Qualcomm remoteproc dependencies
> > > >       arm64: defconfig: Enable Qualcomm SPI and QSPI controller
> > > >       arm64: defconfig: Enable Qualcomm socinfo driver
> > > >       arm64: defconfig: Enable Qualcomm CPUfreq HW driver
> > > 
> > > 
> > > Hi, this turns on the driver as =y, when the option is tristate. Other
> > > cpufreq drivers are also modules. Is this driver truly needed to be
> > > a built-in for a generic defconfig?
> > > 
> > 
> > I see Linus merged the arm defconfig PR today, but afaict the patches
> > from this branch is missing. Please advice on how you would like us to
> > proceed.
> 
> I think I was waiting on the promised validation of using =m for the cpufreq
> drivers and an updated pull request.
> 

Sounds reasonable, I would however like the CPUfreq driver to be =y;
there are several other drivers doing this and lately work has gone into
ensuring that this driver probes as early as possible.

In either case, I presume we would change the =y to a =m in an
incremental patch, in order to not have to rewrite the branch?


@Amit, have we done any validation with the SDM845 CPUfreq driver built
as a module?

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
