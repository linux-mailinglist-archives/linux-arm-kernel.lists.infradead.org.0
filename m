Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9491C79FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 21:12:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HWAttS27tUOy0xck0PTYg+7Sz9PHzW4dy9C4+z1LARA=; b=NzeYUeG6H5DBao
	dVhljzkcOyCqS4/hKx+RObx5R4RF/hBhYxeg2Xlrazl3DK3VTE0IYqdkiwzMBBp8iQ88GdHSypsHC
	4VVwUNAeX0ebZzV9+atlmovT1GP51CDa9IOMAWV1UTEGvM4BeJBlXH5vM7DM4mw4UnIr+B/tujTn8
	1A4qFtmkyGLsbwlEz1pNGoU8s+o+a/UXQi/9FgDXlb1YHw6wixbSvVeLDIMvbIBbQfjjD5kTmfVqo
	nc4q8g9QkYC02bHUUdXgmlz+1DZyDsxdwxibGYpm+3J1Lq9H2Vwi/IKXykuSh5Tacbpu7lBvOQUMs
	e5gGlpJl0AHKKb06I1nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWPSf-0002Hz-Ke; Wed, 06 May 2020 19:12:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWPSY-0002HL-Lf
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 19:11:59 +0000
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
 [209.85.210.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 46217208CA
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  6 May 2020 19:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588792318;
 bh=citGFZi6S2DjQsJEvhMOJMQ8CN0QUttWidsX75r3OJo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Aw+gB5NtkkvlBUT7tXLIY/bYcAizk6f9IGQJPWdCXny2TLOJ+j3hSmvuTidCcV4ys
 UCWAKL3K0zdSWI0xW0kdLCH9au34dMI9aEQ9F7w0AuQjiZCsqhUy/A5QX5cG8DG7cM
 eT5n0dkz5cT7NNBedDpp64YAk3Tk0zFm9c2t5MTM=
Received: by mail-ot1-f54.google.com with SMTP id 72so2322020otu.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 12:11:58 -0700 (PDT)
X-Gm-Message-State: AGi0PuZWETUMma81v3iYFaYzVFrc+GhV6F2GiEQUrX9/LgFbEW+h/ge5
 ePqfI1o91DkyR2rJyfQppTgjqXs09tBmaXnI4A==
X-Google-Smtp-Source: APiQypLrUw5swnxye+W3hdYYDWTGz5iKhNQMAHolEI0hjg6JYAgHL6gBXXl6Wxn72fX//SnrpbedExiEb0XoVH4kQ08=
X-Received: by 2002:a9d:1441:: with SMTP id h59mr7797620oth.192.1588792317532; 
 Wed, 06 May 2020 12:11:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200427210806.37422-1-cristian.marussi@arm.com>
 <CAL_JsqKV8j8Jm_7B7no6SsZ9AAv=WjqOx9EmCp3fomUXRO-FzQ@mail.gmail.com>
 <DB7PR08MB3657577B2251084FF2B4A0EF9EAA0@DB7PR08MB3657.eurprd08.prod.outlook.com>
In-Reply-To: <DB7PR08MB3657577B2251084FF2B4A0EF9EAA0@DB7PR08MB3657.eurprd08.prod.outlook.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 6 May 2020 14:11:45 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK6+2c9jXfsipqH0qakTGrszSGN4+kZqGstOmkWj40JGQ@mail.gmail.com>
Message-ID: <CAL_JsqK6+2c9jXfsipqH0qakTGrszSGN4+kZqGstOmkWj40JGQ@mail.gmail.com>
Subject: Re: [RFC PATCH 0/3] SCMI System Power Support
To: Cristian Marussi <Cristian.Marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_121158_729377_0C1655A0 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 <linux-arm-kernel@lists.infradead.org>,
 "james.quinlan@broadcom.com" <james.quinlan@broadcom.com>,
 Sudeep Holla <Sudeep.Holla@arm.com>, Lukasz Luba <Lukasz.Luba@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 12:23 PM Cristian Marussi
<Cristian.Marussi@arm.com> wrote:
>
> Hi Rob
>
> thanks for the feedback.

Plain text for maillists please.

>
> > On top of this a new SCMI driver has been developed which registers for
> > ----
> > such System Power notification and acts accordingly to satisfy such
> > plaform system-state transition requests that can be of forceful or
> > graceful kind.
>
> > I needed this 7 years ago. :) (hb_keys_notifier in
> > arch/arm/mach-highbank/highbank.c)
>
> ...better later than never
>
> > Such alternative, if deemed worth, should clearly be configurable via DT
> > (also in terms of which signals to use), BUT all of this work is not done
> > in this series: and that's the reason for the RFC tag: does it make sense
> > to add such a configurable additional option ?
>
> >Which process signal to use in DT? I don't think so.
>
> ... beside the awkward bad idea of mine of configuring it via DT
> (which I'll drop possibly using modparams for this config), my question
> was more about if it makes sense at all to have another alternative mechanism
> (other than orderly_poweroof/reboot)) based on signals to gracefully ask userspace
> to shutdown

gregkh will tell you no to module params.

If the signal is not standard, then we probably shouldn't go that route.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
