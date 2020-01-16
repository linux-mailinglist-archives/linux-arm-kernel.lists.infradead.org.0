Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A0C13F7D4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 20:14:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZUuMXKKBLsoBNbYCW7rFZ7S96dWITH9vxb1xZ3w4xW4=; b=YFujrgaaUadwtZ
	+AsAjYEka4H3qC9O8uhFx/rDnqjlTkMLAFuKzdBJMIhInPoI+0LCgd+r5aadi+/kPAwRiUxFWOIV0
	hdrtXUTobcibZPvUOhl7ZmTbDZhadJ7Vp13TDOcw2NIEf1EiJz04zDVDYS9GBPgkui/C0IhgGRSu8
	Q3qbbg1+xKx+bEtET8XjG1+AM4aVURnfOoKQSow6xYntFdN4Yrj40LSAGiWAV4F5wE4Scqe9xej/+
	HQjHBUOFtvAZj2SXVrG8y2CFAs0s5W0fAGmQbUlAs2mjcNl1sJp05qZYXMEp0UcJFzIFPsoPlUZae
	NPWSvC8/S4LZL7Ez8lkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isAbI-0000qJ-MG; Thu, 16 Jan 2020 19:14:40 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isAaz-0000oY-1u
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 19:14:25 +0000
Received: by mail-ot1-f68.google.com with SMTP id b18so20448536otp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 11:14:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f1ec9yhp1dLONmQKLtmwYwMMUOtHKCG6eqQo9yTWOQE=;
 b=krw7JPpWOMBG90+ciMIxXk535L2MX0kiapuIjQ7F0hM4YMeOpBupk5Dq6PgsSbOhvj
 FtuagaIEWvByKIHUfqCwOWAM9nOVjvTFmRAvO2RzHhE9qZavxdsjQO0OqcI4/+6IqlFZ
 TAyfwnFc6ioE7Ibdvme9e7N/4lCRnCzmb4Z5hjjPZDtX9KNQ3ZxLMnyonEiuMCww4H6+
 BXZBroMrznqZkbu6q3vXysmEjUmPewGKqbEpTHog7DNWv/RSyoUCuQ+kMO86zJZrFbkY
 Ny0x19echkdww+KB3+wSGPjdYnSylxOKH1SkrqfQzeNfguVGTxHoeQDSdJH8vscuLJRl
 bzgQ==
X-Gm-Message-State: APjAAAWAkoYilIr1wyKRa2CMr1UcEjW+KMLK8og6vKOVdn11nXUdF9fP
 SEV5+QjmZ+NlBp7O8vmcnna8PC0z
X-Google-Smtp-Source: APXvYqwFbpBwP7v1iMQAKde1h7nneqaDYu3q+NFx9QseAlp23tpZbgM7VncnGTkwQ1fwLMuFEOvGVA==
X-Received: by 2002:a9d:68cc:: with SMTP id i12mr3252625oto.207.1579202059133; 
 Thu, 16 Jan 2020 11:14:19 -0800 (PST)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com.
 [209.85.167.174])
 by smtp.gmail.com with ESMTPSA id d7sm6995288oic.46.2020.01.16.11.14.18
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Jan 2020 11:14:18 -0800 (PST)
Received: by mail-oi1-f174.google.com with SMTP id 18so19870363oin.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 11:14:18 -0800 (PST)
X-Received: by 2002:aca:a9c5:: with SMTP id s188mr486067oie.154.1579202058353; 
 Thu, 16 Jan 2020 11:14:18 -0800 (PST)
MIME-Version: 1.0
References: <1578608351-23289-1-git-send-email-leoyang.li@nxp.com>
 <20200116183932.qltqdtreeg4d2zq7@localhost>
In-Reply-To: <20200116183932.qltqdtreeg4d2zq7@localhost>
From: Li Yang <leoyang.li@nxp.com>
Date: Thu, 16 Jan 2020 13:14:07 -0600
X-Gmail-Original-Message-ID: <CADRPPNQm2ZK+trtKCo2Mjr+ga2vKCR4hWMoFXd3AMMxRQZ_4ZA@mail.gmail.com>
Message-ID: <CADRPPNQm2ZK+trtKCo2Mjr+ga2vKCR4hWMoFXd3AMMxRQZ_4ZA@mail.gmail.com>
Subject: Re: [GIT PULL] soc/fsl drivers changes for next(v5.6)
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_111421_094654_CF4B6462 
X-CRM114-Status: GOOD (  22.34  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: soc@kernel.org, arm@kernel.org, Shawn Guo <shawnguo@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 12:41 PM Olof Johansson <olof@lixom.net> wrote:
>
> Hi,
>
> On Thu, Jan 09, 2020 at 04:19:11PM -0600, Li Yang wrote:
> > Hi soc maintainers,
> >
> > Please merge the following new changes for soc/fsl drivers.
> >
> > Regards,
> > Leo
> >
> >
> > The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:
> >
> >   Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)
> >
> > are available in the Git repository at:
> >
> >   git://git.kernel.org/pub/scm/linux/kernel/git/leo/linux.git tags/soc-fsl-next-v5.6
> >
> > for you to fetch changes up to 6e62bd36e9ad85a22d92b1adce6a0336ea549733:
> >
> >   soc: fsl: qe: remove set but not used variable 'mm_gc' (2020-01-08 16:02:48 -0600)
> >
> > ----------------------------------------------------------------
> > NXP/FSL SoC driver updates for v5.6
> >
> > QUICC Engine drivers
> > - Improve the QE drivers to be compatible with ARM/ARM64/PPC64
> > architectures
> > - Various cleanups to the QE drivers
>
> This branch contains a cross-section of drivers, including those who are
> normally sent to other maintainers/subsystems. I don't see dependencies that
> make them a requirement/easier to merge through the SoC tree at this time --
> for example the ucc_uart driver updates are mostly independent cleanups.
>
> Am I missing some aspect here, or should those just be merged through
> drivers/tty as other driver changes there? At the very least, we expect drivers
> that aren't merged through the normal path to have acks from those maintainers.
>
> Mind following up on that? Thanks!

Hi Olof,

Some of the driver cleanups are dependent to core QE changes.  Some
maybe not but could have contextual dependency with other patches.  I
will be easier to have them all go in from the same place.  We have
collected the ack and confirmation from all the related maintainers.
For the ucc_uart it is not a formal ack.  Quoted the confirmation from
Greg below:

"On Wed, Nov 13, 2019 at 12:24:09PM +0100, Rasmus Villemoes wrote:
> On 13/11/2019 12.19, gregkh@linuxfoundation.org wrote:
> >
> > This is a note to let you know that I've just added the patch titled
> >
> >     serial: ucc_uart: explicitly include soc/fsl/cpm.h
>
> So, I was planning on having all 47 patches go through Li Yang's tree,
> I think it's easier that way. So if it's not too late, can you drop
> those six "serial: ucc_uart:" (numbered 28/47 through 33/47) patches
> and instead give your ok (not necessarily a formal ack if you don't
> have time to do a review) to Li Yang picking them up?

That's fine, all are now dropped from my tree.  Li Yang, feel free to
take them in your tree if you want to.

greg k-h"

Regards,
Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
