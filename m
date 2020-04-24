Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D731B6EF7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 09:27:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vW/xqVLF2XFYbPAXg3a5NKAdZFcPzv4xeiBEFVjUWno=; b=pnRLAYa8rOQG6t
	iqxNGmxIl7sSGvHyjuw+CHt2olWdcfXxgNtNL75UGlHc0cGybUcavNiAcAQfJVFDsI+bLpXi/Avq4
	uPJVfjqFhvgW3AH2egsg1cttONTxkNLvlNFalfhHXBP7vlzjydcRwHKXvea00nR41geOwge3CJGI+
	1io+2aAZw/d6dbCadX6LDWuBEqZBJDSob0cUnCiGqL0M5jd+I4Y8URxF6wlHW0BgwNE9BFVj3p+Wb
	PUh/p6qkqPzevqZ5YuzZ4qyO6KWdEmUReYi1yi9CYVojvGJ8X7/0b2KAR3Hloa6GyK9n9tTaV1y8T
	aQsEALGUGiIDEv4OzzGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRsjs-0007fM-5k; Fri, 24 Apr 2020 07:27:08 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRsjY-0007dX-Pa
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 07:26:50 +0000
Received: by mail-vk1-xa43.google.com with SMTP id d6so912944vko.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 00:26:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+BIpTFZwDV9BDmq6OiW0sWC6toNpxhZR4xYJQqWuvfA=;
 b=aMzixsUWwDAFCwL3AtMN2fxEWih8/ZmJjMxjEFOZu/vOtIdMp4LTCSRi0tDKo9cLU5
 yPoCc7MDuyUYqy0CI5Hhix53FVJXcNhM6aV3T1AkQsXHWPRMp32I9RFutRb8juCvtKlK
 WrEKM1l/JcMOScyOB5haRzFKinwBXi9R/APo0/hSdWL00fhkrffqvpB9ocEx9oFC9iyC
 6dH5W/MXVS0ABXV9JIC76VC9VNsSJJy/R/JbDZ8SH4n3p/28IM84mIsftp6B0D6xyqlp
 xGU1amGViZzeCp0ijFR4rxQOEh2Q4D7yaT7f/OHiTt8U89l+1rZcD/heYgZX4xUZdRmz
 c0sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+BIpTFZwDV9BDmq6OiW0sWC6toNpxhZR4xYJQqWuvfA=;
 b=jcJTcUKLnBHYx5l+n7hU4zAyiMAqh/Iz8Nmeq4nBm7sZLEUAbuyTDNGrm2JKxMiNeh
 wYbr0rlIl/7zG/wDejmq1HMj3JQN1z9stpX2n/jG3juTqrDW+6pG7oYrbxQJ3MSJzPKE
 0mLWTIu1mnsmeihJpPajvXGaLM3EtFVKiJXGk6QBJ/p8cNPFHM+bqf/D0LWUSrdKWWa/
 4nbuB6d0iv+Y7gewk8Oti50RtrEbQ6iiHc+9tvkhZTkGWue1cR5Ra69z+UEIlRAyi3VX
 B8BKCcWqyKpYlxm7Wq+sHH6IIc2vvoInUGxlekCc9JuxMZl9Ru2FbE5vIFqBSFFQhJI3
 qz7w==
X-Gm-Message-State: AGi0PuZoHuQStnVCPUZDJvXbt91OEM7pz1YE7OnrIaUlX8y/yZ9cTHC6
 yyxN8wYtJL9Pd9eUVY3GtUPm7G77OzVMslCJvMVUmw==
X-Google-Smtp-Source: APiQypJ+QX4k9HuY0Ti1jn86JMGfvJzrpNHxNyFIg5zy6QJOWNCY6tUkgkZIhrEaWrelYNh4n71oX+ltRV6qz8CW8t0=
X-Received: by 2002:a1f:5003:: with SMTP id e3mr6616467vkb.59.1587713206237;
 Fri, 24 Apr 2020 00:26:46 -0700 (PDT)
MIME-Version: 1.0
References: <408ebea1-725d-2f8e-7d26-a2cb4d7754d3@first-world.info>
 <20200422082836.GL25745@shell.armlinux.org.uk>
 <5a67104f-1286-2cb0-d01e-8aa61c9f7e48@first-world.info>
 <20200422111025.GM25745@shell.armlinux.org.uk>
 <50004568-09e5-719b-ec4a-c09882767a6a@first-world.info>
 <20200422113631.GN25745@shell.armlinux.org.uk>
 <268145c0-97de-cfd9-71bf-b698248d732a@first-world.info>
In-Reply-To: <268145c0-97de-cfd9-71bf-b698248d732a@first-world.info>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 24 Apr 2020 09:26:10 +0200
Message-ID: <CAPDyKFraDafpJbRF9Ee9e2k1fhn7Mf1ezvUcJPEcwEBn5xBZ9g@mail.gmail.com>
Subject: Re: 2 bug repport
To: alpha_one_x86 <alpha_one_x86@first-world.info>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_002648_842174_B956F2F1 
X-CRM114-Status: GOOD (  27.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ziji Hu <huziji@marvell.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 22 Apr 2020 at 20:17, alpha_one_x86
<alpha_one_x86@first-world.info> wrote:
>
> I had tested Linux 5.6.6 no change.
>
> Other idea?

Yes, try a couple releases between 5.6 and 4.20. For example, 5.5.

Kind regards
Uffe


>
> On 2020-04-22 07:36, Russell King - ARM Linux admin wrote:
>
> Adding back those who *need* to be copied.  Please be more careful
> with your replies.  As I said, those others are for your benefit,
> not for mine, as they are more likely going to be able to help you.
>
> Thanks for confirming that it is indeed a regression with 5.6
> kernels.
>
> Over to the Adrian/Ulf/others now...
>
> On Wed, Apr 22, 2020 at 07:15:18AM -0400, alpha_one_x86 wrote:
>
> Hi,
>
> On multiple hardware I had tested 4.20, 5.6.6, again 4.20, 5.6.6, again
> 4.20.
>
> The problem is only with 5.6.6, never with 4.20
>
> On 2020-04-22 07:10, Russell King - ARM Linux admin wrote:
>
> On Wed, Apr 22, 2020 at 07:00:11AM -0400, alpha_one_x86 wrote:
>
> Hi,
>
> It's regression because on the kernel 4.20 all is working.
>
> PLEASE do not drop the Cc list.  The Cc list is for YOUR benefit.
>
> You can't say that without going back and checking.
>
> SD cards are flash media, and they fail in weird and stupid ways.
> Flash media itself only has a limited number of write cycles before
> the memory irrevocerably fails.  SD cards have firmware on them to
> manage the flash media to perform wear leveling.  Firmware can be
> buggy and cause problems.  I've had SD cards become completely
> inaccessible because of a firmware failure.
>
> So, after finding a problem on a later kernel with SD cards, you
> need to confirm the regression by checking whether the previously
> working kernel continues to behave correctly (indicating a kernel
> regression) or whether it behaves the same (indicating a failure of
> the SD card.)
>
> If you're not willing to do that, I'm afraid we will have to discount
> your bug report since it doesn't contain the information necessary to
> make a proper evaluation of what may be going on.
>
> Cheers,
>
> On 2020-04-22 04:28, Russell King - ARM Linux admin wrote:
>
> On Wed, Apr 22, 2020 at 03:03:57AM -0400, alpha_one_x86 wrote:
>
> Hi,
>
> On mcbin platform I have uSD problem, repported but no reply on linux kernel
> bugzilla, https://bugzilla.kernel.org/show_bug.cgi?id=207083
>
> Any idea what patch try?
>
> I think that's a question for the MMC people.
>
> If you go back to your working 4.20 kernel, does the problem go away?
> If so, it sounds like a regression in the MMC subsystem.  If not, I
> wonder if it could be the uSD card going bad.
>
> However, I suspect the former.  I've seen one instance here where a
> Clearfog GT8k (Armada 8040 based just like the mcbin) running 5.6 with
> the rootfs on eMMC completely lost the ability to talk to the eMMC to
> the point that the machine had to be power cycled to recover it -
> merely rebooting did not.  I don't know the cause - the initial failure
> had vanished from the kernel logs, and because the eMMC was no longer
> accessible, the rsyslog files did not contain the details either.
> I've since setup remote logging, and I'm currently waiting for it to
> happen again.  I couldn't say if _that_ is a regression because I
> haven't been using the GT8k until very recently, and I tend not to use
> eMMC/uSD on the Macchiatobin that runs 24x7.
>
> --
> alpha_one_x86/BRULE Herman <alpha_one_x86@first-world.info>
> Main developer of Supercopier/Ultracopier/CatchChallenger, Esourcing and server management
> IT, OS, technologies, research & development, security and business department
>
> --
> alpha_one_x86/BRULE Herman <alpha_one_x86@first-world.info>
> Main developer of Supercopier/Ultracopier/CatchChallenger, Esourcing and server management
> IT, OS, technologies, research & development, security and business department
>
> --
> alpha_one_x86/BRULE Herman <alpha_one_x86@first-world.info>
> Main developer of Supercopier/Ultracopier/CatchChallenger, Esourcing and server management
> IT, OS, technologies, research & development, security and business department

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
