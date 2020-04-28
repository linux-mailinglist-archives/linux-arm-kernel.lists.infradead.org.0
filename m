Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F0D1BCD48
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 22:18:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZURAwPO8agg9sC+m7HDM+W0zN82ZB3DKTOhjfTgr1MI=; b=TqGIcl43zMJZBt
	Xx2aanxb3p8/rvuYVXdLSqFVkr0i3WZOiPNMbmHfBBDGs5b5jMCpzqfzuwfwI/eRhrRuCH6xuQylZ
	2ZvXsOkN5BCbULnwQPHo9JXB/aFdqKTl7mwPkOZ3XX1puWsXJ74zcRBG/NfoVLsdgJkYJTleQJJ0o
	KV22mJFjKvGLGp/7R5YIiOe68WtlKBaAd973dD4Gvl9MkZm916b62gCemdVPT0HS/nmL0+Jalu2Xv
	I4D4LdIqax3HMEy4rCPT9zPshQAMAuxdv0DZNG57P+vRRM6VzQfKfM1DU6lsLyqZq30BHL7eohTfu
	MDnTrZ2qmRsDehCgm/og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTWgd-0007AO-Ck; Tue, 28 Apr 2020 20:18:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTWgS-00079Z-W4
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 20:18:26 +0000
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
 [209.85.160.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0ED9B2085B
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 20:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588105104;
 bh=k3bnp2JrBwznUcVuhHk66Arlp2a+C2BbQvoBabGvyFY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=G2OG7F8m3cFnoZLp2hppCZsznH4vEyao4eA9afgJRIxkVozlBJuR4lYGhKchEo9QR
 /tGiP1VXlOng04bdZlyYw/JUKPeDolxScTfCCWmlDUPdldRhi5oDdxCw4PF2ygvR49
 teZM0c6IF1J3q2/MiNEFVI0oPjaLzn52gboRrRFM=
Received: by mail-qt1-f178.google.com with SMTP id t20so6418863qtq.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 13:18:24 -0700 (PDT)
X-Gm-Message-State: AGi0PuatLx7p56246hTYnPljEoSCNICLI6wPKeJKjLKxGhxqNKwphKdG
 UUUFZI5cBuOZk4AkxQs90odK9prdRNSwmhzUbg==
X-Google-Smtp-Source: APiQypJpZYBertwu91oC2RsdbhG8knfP1M2ukw7TDQa6uJ+Zu1++Po7yYlxazeBSwzXG4N3dCbdOLZrpqLM7FZI1kMI=
X-Received: by 2002:ac8:4cce:: with SMTP id l14mr30537890qtv.31.1588105103128; 
 Tue, 28 Apr 2020 13:18:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200427210806.37422-1-cristian.marussi@arm.com>
In-Reply-To: <20200427210806.37422-1-cristian.marussi@arm.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 28 Apr 2020 15:18:02 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKV8j8Jm_7B7no6SsZ9AAv=WjqOx9EmCp3fomUXRO-FzQ@mail.gmail.com>
Message-ID: <CAL_JsqKV8j8Jm_7B7no6SsZ9AAv=WjqOx9EmCp3fomUXRO-FzQ@mail.gmail.com>
Subject: Re: [RFC PATCH 0/3] SCMI System Power Support
To: Cristian Marussi <cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_131825_074305_70949CEC 
X-CRM114-Status: GOOD (  22.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, james.quinlan@broadcom.com,
 Sudeep Holla <sudeep.holla@arm.com>, Lukasz Luba <lukasz.luba@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 4:08 PM Cristian Marussi
<cristian.marussi@arm.com> wrote:
>
> Hi all,
>
> this series wants to add the core SCMI System Power support and related
> events' handling logic: the protocol support itself is trivial and boils
> down to some bare initializations and supporting one SCMI System Power
> notification event meant to carry platform-originated System transition
> requests. This is patch [1/3].
>
> On top of this a new SCMI driver has been developed which registers for
> such System Power notification and acts accordingly to satisfy such
> plaform system-state transition requests that can be of forceful or
> graceful kind.

I needed this 7 years ago. :) (hb_keys_notifier in
arch/arm/mach-highbank/highbank.c)

> In order to comply with such graceful requests, and co-operate with
> userspace entities to drive a clean shutdown/reboot, the logic of the
> driver relies on the same orderly_* API methods used by ACPI when handling
> ACPI Shutdown bus events. This is patch [2/3].
>
> Patch [3/3] is a mere JUNO example of the minimal DT bindings needed to
> enable the protocol at the DT level and is NOT meant to be upstream as of
> now.
>
> A viable alternative method (not implemented here) for communicating
> graceful requests to userspace could be to use instead signals to PID 1
> init process (e.g. kill_cad_pid(SIGRTMIN + 4, 1)): this method is supported
> out-of-the-box by SystemD and (to some extent) Android, and, maybe, could
> be interesting as an optional alternative, since it avoids the dependency
> on usermodehelpers introduced by the internals of the orderly_ API calls
> above.
>
> Such alternative, if deemed worth, should clearly be configurable via DT
> (also in terms of which signals to use), BUT all of this work is not done
> in this series: and that's the reason for the RFC tag: does it make sense
> to add such a configurable additional option ?

Which process signal to use in DT? I don't think so.

> The series is based on SCMI Notifications Core V7 (still not posted though)
> which in turn is based on top of scmi-for-next-5.7 and it's available (with
> some additional debug on top) at [1].
>
>
> Thanks
>
> Cristian
>
> ----
>
> [1] http://www.linux-arm.org/git?p=linux-cm.git;a=shortlog;h=refs/heads/scmi_system_power_V1
>
>
> Cristian Marussi (3):
>   firmware: arm_scmi: Add System Power Protocol support
>   firmware: arm_scmi: Add SCMI System Power Control driver
>   arm64: dts: juno: add SCMI SystemPower Protocol support
>
>  arch/arm64/boot/dts/arm/juno-base.dtsi        |   4 +
>  drivers/firmware/Kconfig                      |  12 +
>  drivers/firmware/arm_scmi/Makefile            |   3 +-
>  drivers/firmware/arm_scmi/driver.c            |   1 +
>  .../firmware/arm_scmi/scmi_power_control.c    | 359 ++++++++++++++++++
>  drivers/firmware/arm_scmi/system.c            | 146 +++++++
>  include/linux/scmi_protocol.h                 |  17 +
>  7 files changed, 541 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/firmware/arm_scmi/scmi_power_control.c
>  create mode 100644 drivers/firmware/arm_scmi/system.c
>
> --
> 2.17.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
