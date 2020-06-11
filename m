Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7321F6D81
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 20:31:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AbmGyzv+qLDC7gwJlfi81v71CyoWgFIJnuApRICqKxg=; b=dLhLVIRQjmYmMD
	ImW2O1YCDDnhPIUnq/dFYY6TAMX5RPXDa/UscQsvmQaYBYaE2fuVHJOzHg1hQbbp889F15V3dDF2H
	daF8ps8tALqqimiYA+N0fvTpMMfSWFhjr/ZqtXIM7+eL+YqQfnhfd9/59smCwA8PkBjY2FhCI6fwu
	F9XhzwLjrJtaWMy02ffb4nXtw0rf8cKm9cHX6qujuF+4a/IOaRerFcX2QAMHuXOzCx0KBiSxYAU8y
	XzoIFTDrJPNeioGaNRAc2zc5/MusoHNhudTL8k4Q5xJP7DmQALMDnon6xvHIvMjx5NGyeQI80onh9
	HeVsh5hSJEqpxDUvRy/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjRzC-0004zG-1J; Thu, 11 Jun 2020 18:31:34 +0000
Received: from alexa-out-sd-02.qualcomm.com ([199.106.114.39])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjRz0-0004yu-V5
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 18:31:24 +0000
Received: from unknown (HELO ironmsg-SD-alpha.qualcomm.com) ([10.53.140.30])
 by alexa-out-sd-02.qualcomm.com with ESMTP; 11 Jun 2020 11:31:22 -0700
Received: from gurus-linux.qualcomm.com ([10.46.162.81])
 by ironmsg-SD-alpha.qualcomm.com with ESMTP; 11 Jun 2020 11:31:21 -0700
Received: by gurus-linux.qualcomm.com (Postfix, from userid 383780)
 id 1176E1603; Thu, 11 Jun 2020 11:31:21 -0700 (PDT)
Date: Thu, 11 Jun 2020 11:31:21 -0700
From: Guru Das Srinagesh <gurus@codeaurora.org>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v16 00/11] Convert PWM period and duty cycle to u64
Message-ID: <20200611183120.GB9335@codeaurora.org>
References: <cover.1591136989.git.gurus@codeaurora.org>
 <20200611165505.GA9335@codeaurora.org>
 <20200611182430.GA2293927@ulmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200611182430.GA2293927@ulmo>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_113123_026956_4F3CFA61 
X-CRM114-Status: GOOD (  29.15  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [199.106.114.39 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org,
 Daniel Thompson <daniel.thompson@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 David Collins <collinsd@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert@linux-m68k.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Joe Perches <joe@perches.com>,
 Subbaraman Narayanamurthy <subbaram@codeaurora.org>,
 Lee Jones <lee.jones@linaro.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 11, 2020 at 08:24:30PM +0200, Thierry Reding wrote:
> On Thu, Jun 11, 2020 at 09:55:05AM -0700, Guru Das Srinagesh wrote:
> > On Tue, Jun 02, 2020 at 03:31:04PM -0700, Guru Das Srinagesh wrote:
> > > Because period and duty cycle are defined in the PWM framework structs as ints
> > > with units of nanoseconds, the maximum time duration that can be set is limited
> > > to ~2.147 seconds. Consequently, applications desiring to set greater time
> > > periods via the PWM framework are not be able to do so - like, for instance,
> > > causing an LED to blink at an interval of 5 seconds.
> > > 
> > > Redefining the period and duty cycle struct members in the core PWM framework
> > > structs as u64 values will enable larger time durations to be set and solve
> > > this problem. Such a change to the framework mandates that drivers using these
> > > struct members (and corresponding helper functions) also be modified correctly
> > > in order to prevent compilation errors.
> > > 
> > > This patch series introduces the changes to all the drivers first, followed by
> > > the framework change at the very end so that when the latter is applied, all
> > > the drivers are in good shape and there are no compilation errors.
> > > 
> > > Changes from v15:
> > >   -  Rebased to tip of for-next.
> > > 
> > > Changes from v14:
> > >   - Collected Uwe's Acked-by for the pwm core patch.
> > >   - Addressed comments in pwm-clps711x.c.
> > > 
> > > Changes from v13:
> > >   - Pruned cc-list and added same (reduced) set of reviewers to all patches.
> > >   - Added Lee Jones' Acked-by to the pwm_bl.c patch.
> > >   - Added Jani Nikula's Acked-by to intel-panel.c patch.
> > >   - Added Stephen Boyd's Acked-by to pwm-clk.c patch.
> > >   - Addressed Geert's review comments in clps711x.c patch.
> > > 
> > > Changes from v12:
> > >   - Rebased to tip of for-next
> > >   - Collected Acked-by for sun4i
> > >   - Reworked patch for intel-panel.c due to rebase, dropped Jani's Acked-by as
> > >     a result
> > > 
> > > Changes from v11:
> > >   - Rebased to tip of for-next.
> > >   - Collected "Acked-by:" for v7 (unchanged) of pwm: sifive: [4]
> > >   - Squished stm32-lp.c change with final patch in series
> > >   - sun4i: Used nsecs_to_jiffies()
> > >   - imx27: Added overflow handling logic
> > >   - clps711x: Corrected the if condition for skipping the division
> > >   - clk: pwm: Reverted to v8 version, added check to prevent division-by-zero
> > > 
> > > Changes from v10:
> > >   - Carefully added back all the "Reviewed-by: " and "Acked-by: " tags received
> > >     so far that had gotten missed in v9. No other changes.
> > > 
> > > Changes from v9:
> > >   - Gathered the received "Reviewed-by: " tag
> > >   - Added back the clk-pwm.c patch because kbuild test robot complained [3]
> > >     and addressed received review comments.
> > >   - clps711x: Addressed review comments.
> > > 
> > > Changes from v8:
> > >   - Gathered all received "Acked-by: " and "Reviewed-by: " tags
> > >   - Dropped patch to clk-pwm.c for reasons mentiond in [2]
> > >   - Expanded audience of unreviewed patches
> > > 
> > > Changes from v7:
> > >   - Changed commit messages of all patches to be brief and to the point.
> > >   - Added explanation of change in cover letter.
> > >   - Dropped change to pwm-sti.c as upon review it was unnecessary as struct
> > >     pwm_capture is not being modified in the PWM core.
> > > 
> > > Changes from v6:
> > >   - Split out the driver changes out into separate patches, one patch per file
> > >     for ease of reviewing.
> > > 
> > > Changes from v5:
> > >   - Dropped the conversion of struct pwm_capture to u64 for reasons mentioned
> > >     in https://www.spinics.net/lists/linux-pwm/msg11541.html
> > > 
> > > Changes from v4:
> > >   - Split the patch into two: one for changes to the drivers, and the actual
> > >     switch to u64 for ease of reverting should the need arise.
> > >   - Re-examined the patch and made the following corrections:
> > >       * intel_panel.c:
> > > 	DIV64_U64_ROUND_UP -> DIV_ROUND_UP_ULL (as only the numerator would be
> > > 	64-bit in this case).
> > >       * pwm-sti.c:
> > > 	do_div -> div_u64 (do_div is optimized only for x86 architectures, and
> > > 	div_u64's comment block suggests to use this as much as possible).
> > > 
> > > Changes from v3:
> > >   - Rebased to current tip of for-next.
> > > 
> > > Changes from v2:
> > >   - Fixed %u -> %llu in a dev_dbg in pwm-stm32-lp.c, thanks to kbuild test robot
> > >   - Added a couple of fixes to pwm-imx-tpm.c and pwm-sifive.c
> > > 
> > > Changes from v1:
> > >   - Fixed compilation errors seen when compiling for different archs.
> > > 
> > > v1:
> > >   - Reworked the change pushed upstream earlier [1] so as to not add an
> > >     extension to an obsolete API. With this change, pwm_ops->apply() can be
> > >     used to set pwm_state parameters as usual.
> > > 
> > > [1] https://lore.kernel.org/lkml/20190916140048.GB7488@ulmo/
> > > [2] https://lore.kernel.org/lkml/20200312190859.GA19605@xxxxxxxxxxxxxx/
> > > [3] https://www.spinics.net/lists/linux-pwm/msg11906.html
> > > [4] https://www.spinics.net/lists/linux-pwm/msg11986.html
> > > 
> > > Guru Das Srinagesh (11):
> > >   drm/i915: Use 64-bit division macro
> > >   hwmon: pwm-fan: Use 64-bit division macro
> > >   ir-rx51: Use 64-bit division macro
> > >   pwm: clps711x: Use 64-bit division macro
> > >   pwm: pwm-imx-tpm: Use 64-bit division macro
> > >   pwm: imx27: Use 64-bit division macro and function
> > >   pwm: sifive: Use 64-bit division macro
> > >   pwm: sun4i: Use nsecs_to_jiffies to avoid a division
> > >   backlight: pwm_bl: Use 64-bit division function
> > >   clk: pwm: Use 64-bit division function
> > >   pwm: core: Convert period and duty cycle to u64
> > > 
> > >  drivers/clk/clk-pwm.c                      |  7 ++++-
> > >  drivers/gpu/drm/i915/display/intel_panel.c |  2 +-
> > >  drivers/hwmon/pwm-fan.c                    |  2 +-
> > >  drivers/media/rc/ir-rx51.c                 |  3 +-
> > >  drivers/pwm/core.c                         | 14 ++++-----
> > >  drivers/pwm/pwm-clps711x.c                 |  2 +-
> > >  drivers/pwm/pwm-imx-tpm.c                  |  2 +-
> > >  drivers/pwm/pwm-imx27.c                    | 48 ++++++++++++++++++++++++++----
> > >  drivers/pwm/pwm-sifive.c                   |  2 +-
> > >  drivers/pwm/pwm-stm32-lp.c                 |  2 +-
> > >  drivers/pwm/pwm-sun4i.c                    |  2 +-
> > >  drivers/pwm/sysfs.c                        |  8 ++---
> > >  drivers/video/backlight/pwm_bl.c           |  3 +-
> > >  include/linux/pwm.h                        | 12 ++++----
> > >  14 files changed, 77 insertions(+), 32 deletions(-)
> > > 
> > > -- 
> > 
> > Hello Thierry, Uwe, Lee,
> > 
> > Gentle reminder for this patch series :) Earlier discussions on next
> > steps were as per [1] and [2].
> 
> Hi Guru,
> 
> I ended up deciding against queueing this for v5.8-rc1 because I want
> this to soak for a bit in linux-next. I'll apply them early next week
> after v5.8-rc1 is out.

Thank you for the update, Thierry.

Thank you.

Guru Das.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
