Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 263B7118B7E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 15:50:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ap+WWS1wv5VDcvggWwPYfrCdkn2gn+gMmbpawZQ0rTc=; b=jLrQ+IxMhsnCjH
	DBsoO4N3dg7pe4jiLIizNfGSgbirHTJtnre7BcFLfp3QLlvx0oDJiyiCxcEbU4EZdCyjAk7flYiCy
	jqsHBDVSclg3DJKFXhKAP2S9bcldcdDutU/FvE6cFhCe7ycHtVzOG/ZqL4O2rscaqvpTAZzOGaqsL
	sLAUcfA+Oaemukuj3mI7EYjTrgYot6pBTQhcjWsmd5LItVcxAAB8QVveGbdfuyJehZOjri7fZFoVR
	TGuMiqNye82dGlACW8U1Ba795huewuutxBFCPvaPA3LZUu4BRqjWF6QNTAOJQKigEdJ7POCyjoGMp
	lXsC6EWVx6WvDbcpI88w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegqH-0004Vo-JL; Tue, 10 Dec 2019 14:50:25 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegq9-0004VQ-Sh; Tue, 10 Dec 2019 14:50:19 +0000
Received: by mail-io1-xd44.google.com with SMTP id v3so2031752ioj.5;
 Tue, 10 Dec 2019 06:50:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EopU7gHpRZaFwvjzHn1zzfgni4g/N/UohJ2TWwA1/m0=;
 b=vYOET9ni2r/x+WsiXrE22CAhuCTJnazMZnB6tLnbsJJvL+/CzhU1nqV1u6g92L2TNW
 9sAEay9IDtRMUHOayxwKfjT2r9lN4koXTLKoLVKDzZBZDWLgiNin4xODz2NgytLN1/72
 hSSQLiWGAvpQ7f2Y//zUXwIJC82LiIBHDcfAmnjHonbk5FQwzEZiOjSEo0561jYZhJQq
 9yWghFa/pG9x9CtBfd3VU/Oe4JciVfoezbgYDgf4VpZQxVfHPdKyvhhMhqOAQUU3XcXu
 VPxq27c1c96xJRk8NXIqa8i9pLr3WYopimSbG/2WEAdS8VXGN5q5zikx6CNmL00QOCP9
 dCMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EopU7gHpRZaFwvjzHn1zzfgni4g/N/UohJ2TWwA1/m0=;
 b=XlbbMlwjjB2P1+8xjF8aGVZOYAqZw7JdxKFKGsTE6Okts41O3sQWkMNjA1qgs/nDOF
 yu7XOUMvXuSRpgekk8cN2IgSCxyLim/ousX07ZTk7gHuD7cXnij+zrdp8J8vlxmRx/N4
 JRrSC7K1mTT5R5DfLPH902On62+hp/zo80OX76sih397TDtx7L1JdBjO7UVKfTI376AH
 8EJiXQvn1dpsrhhu04Y7OHFg/qfJKqvP6LvcQX/b45WN7Xjg+XqhiwOCRoH2eULdtmpt
 vXAR73Aqb0Wo+5dqgyVq+v4fEvAeDbImg40WIanCBatnU0/KFbJqGrcu8siIuJo96vZF
 /fUQ==
X-Gm-Message-State: APjAAAWAzIzIRBW66L0Jlxkc4iqRMUgYKpbC5Smh02apgD816SuSAroI
 bXuOWGnUQqtPvxBbAOcsf/b08shn7D1lGkyhwFI=
X-Google-Smtp-Source: APXvYqyg+Q4PiSVD+TRIfNYYQb9a80Ve7CWTpf0XRMvR2kxSQvCVSYQFM+LAKN06jjFUHKWALrHPxHKTq7zl/ShAp7s=
X-Received: by 2002:a6b:e008:: with SMTP id z8mr24398133iog.246.1575989416712; 
 Tue, 10 Dec 2019 06:50:16 -0800 (PST)
MIME-Version: 1.0
References: <20191101143126.2549-1-linux.amoon@gmail.com>
 <7hfthtrvvv.fsf@baylibre.com>
 <c89791de-0a46-3ce2-b3e2-3640c364cd0f@baylibre.com>
In-Reply-To: <c89791de-0a46-3ce2-b3e2-3640c364cd0f@baylibre.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Tue, 10 Dec 2019 20:20:05 +0530
Message-ID: <CANAwSgQx3LjQe60TGgKyk6B5BD5y1caS2tA+O+GFES7=qCFeKg@mail.gmail.com>
Subject: Re: [RFC-next 0/1] Odroid C2: Enable DVFS for cpu
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_065017_951976_7E1F284C 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil / Kevin,

On Tue, 10 Dec 2019 at 14:13, Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> On 09/12/2019 23:12, Kevin Hilman wrote:
> > Anand Moon <linux.amoon@gmail.com> writes:
> >
> >> Some how this patch got lost, so resend this again.
> >>
> >> [0] https://patchwork.kernel.org/patch/11136545/
> >>
> >> This patch enable DVFS on GXBB Odroid C2.
> >>
> >> DVFS has been tested by running the arm64 cpuburn
> >> [1] https://github.com/ssvb/cpuburn-arm/blob/master/cpuburn-a53.S
> >> PM-QA testing
> >> [2] https://git.linaro.org/power/pm-qa.git [cpufreq testcase]
> >>
> >> Tested on latest U-Boot 2019.07-1 (Aug 01 2019 - 23:58:01 +0000) Arch Linux ARM
> >
> > Have you tested with the Harkernel u-boot?
> >
> > Last I remember, enabling CPUfreq will cause system hangs with the
> > Hardkernel u-boot because of improperly enabled frequencies, so I'm not
> > terribly inclined to merge this patch.

HK u-boot have many issue with loading the kernel, with load address
*it's really hard to build the kernel for HK u-boot*,
to get the configuration correctly.

Well I have tested with mainline u-boot with latest ATF .
I would prefer mainline u-boot for all the Amlogic SBC, since
they sync with latest driver changes.

>
> Same, since the bootloader boots with the max supported freq of the board,
> there is not real need of DVFS except for specific low-power use-cases.
>
> And still, some early boards still use the bad SCPI freq table, we can't break them.
>
> Neil
>
I will leave this to your expert domain knowledge if you want to
enable this now.

Here is output of on the latest kernel.
*cpupower*
#  cpupower frequency-info
analyzing CPU 0:
  driver: scpi-cpufreq
  CPUs which run at the same hardware frequency: 0 1 2 3
  CPUs which need to have their frequency coordinated by software: 0 1 2 3
  maximum transition latency: 200 us
  hardware limits: 100.0 MHz - 1.54 GHz
  available frequency steps:  100.0 MHz, 250 MHz, 500 MHz, 1000 MHz,
1.30 GHz, 1.54 GHz
  available cpufreq governors: conservative ondemand userspace
powersave performance schedutil
  current policy: frequency should be within 100.0 MHz and 100.0 MHz.
                  The governor "ondemand" may decide which speed to use
                  within this range.
  current CPU frequency: 100.0 MHz (asserted by call to hardware)

*powertop*
# powertop
            Package |            CPU 0
 100 MHz    47.1%   |  100 MHz    41.5%
 250 MHz     0.0%   |  250 MHz     0.0%
 500 MHz     0.0%   |  500 MHz     0.0%
1000 MHz     0.0%   | 1000 MHz     0.0%
1296 MHz     0.0%   | 1296 MHz     0.0%
1.54 GHz     0.0%   | 1.54 GHz     0.0%
Idle        52.9%   | Idle        58.5%

> >
> >> Patch based on my next-20191031 for 5.5.x kernel.
> >> Hope this is not late entry.
> >
> > Re: "too late".  FYI... when you post things as RFC, it means you're
> > looking for comments (Request For Comment) but that it's not intended
> > for merging.

Ok  thanks for this input.

> >
> > I didn't see any comments on this, but I also didn't see a non-RFC
> > follow-up, so I didn't queue it for v5.5.
No problem.
> >
> > Kevin
> >
>
-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
