Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D0B1B3EDC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 12:33:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SCmqzWTtV/6w1QmUwucJmexGCxhGI0VYKQ1uhOiky8g=; b=rOsK95/mgsmHnV
	+ejjrgFfGRj29+3m2CsAx1pMGG1dmLaxstxnzxP0JX+bTSAwn5FzJqNzBt/fnYiFloq6Ecn7YgxTS
	jE4tLL4Ji0yfkvIG32qdbuTLwDbhYdjWVLdyJhBJUazPWMcbLj44LFEdgJblN9YTg0lcTNmYxi5IC
	YIdg00hIBuNa0ZpufIRYB9EExCsUa1geQhcdiO/eAtYHoKlGQKVHlAtPZQ4TfQsq4Z9tLQ4POMbSb
	rPSfc5MDTo2PQ5BzWDa6ppV2dztFYOb1lyWVenlj0TdAkWB3VWnkr2y6m/UpskueLH+fUmhYcR8ev
	7NDyR+upQFf1RQB0bI/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRCh2-0005S8-55; Wed, 22 Apr 2020 10:33:24 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRCgm-0005Qi-9w
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 10:33:09 +0000
Received: by mail-vk1-xa42.google.com with SMTP id 10so481969vkr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 03:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xM8Q7T6rdjH9e0uGDvlqHrRRLXPLFjytVZpcaXFHZdE=;
 b=THhL3ijJQL1p3tRF1MmaLpAi1ocdrrVuBVCXvpYEJW+FqGjb6E+2801ObV4nYOi67o
 0dDWVukcYXGc9Qx2rdh9HFLQgth/4J/j6ZM0mzV76SG3+DvrWMJmo+LEi/pGdjegRAp0
 M0a//fmFE5hMHa2G0h+xh07camJ6b6Eco734bI8IJZbFcTqDvBcU3GOkSV6TziTkkDON
 Wztb9c3dazycUTD7mDJqvrLtztRZv8O72MJue1/RTLrfyhyJBWumEWndLGi+SaRWA6Kd
 jZM79N/bXRVY+r0ReX8uvMSVLDK5qSEnyBDe6E6R8YsDgoDYk+K7z8y9Dw2FDBo7TO1n
 adkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xM8Q7T6rdjH9e0uGDvlqHrRRLXPLFjytVZpcaXFHZdE=;
 b=R7Jip+1itm+QtkY2NDtRHY74xVk6QOhcDWs39Q4HoXGX93+t+GYCVmLn9TAx/MioR2
 RJdFmtCBWWTI2fQcPrsaId0Xtc2VqvggnvvH3kpbLA43u+f1+570omE47WKrQzU5vLmN
 8rHg9IcTqZC6/pQNqlkwktdrB7sEULHTjA0WZs3VHkYT8LMkylBFtVRvk9LZB4foF0Ix
 SRVvYn6B0vwmAX9Kseitf2Fuz8PJKrsZYwcN8VwsmgkEELEL9AF4+KgqxXl7XtrYZStl
 AhdiItl7gn9yTXiB16Q7+EmC/1ujKycjpbc+CBa7XVOXtyVVH0OgzNcuKrMqVCh8FwvR
 bMLA==
X-Gm-Message-State: AGi0PuY02qUs+bhouHtZSs2U1Bn2xRLihCZqdw7heZOYTk7D8xMlogyw
 f/YJb5vxUPITyQj9in7WF8/ghZX1kr9VEXxQo6Ta8w==
X-Google-Smtp-Source: APiQypK4t+PF8tt/SGAM8xALAG/aAG8RF3dYqDnfYxjk7JSdykupBOiWh+ZYe+V26P1bNFYl7z37eN37H5JA/ap7zUw=
X-Received: by 2002:a1f:ff11:: with SMTP id p17mr9338065vki.25.1587551586524; 
 Wed, 22 Apr 2020 03:33:06 -0700 (PDT)
MIME-Version: 1.0
References: <408ebea1-725d-2f8e-7d26-a2cb4d7754d3@first-world.info>
 <20200422082836.GL25745@shell.armlinux.org.uk>
In-Reply-To: <20200422082836.GL25745@shell.armlinux.org.uk>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 22 Apr 2020 12:32:30 +0200
Message-ID: <CAPDyKFqCLN9-Wq8aYDRp4xYUQLa_1J1fMyiaE=CuANLbvDUYRw@mail.gmail.com>
Subject: Re: 2 bug repport
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 alpha_one_x86 <alpha_one_x86@first-world.info>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_033308_358443_C45661FB 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Hu Ziji <huziji@marvell.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 22 Apr 2020 at 10:29, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Wed, Apr 22, 2020 at 03:03:57AM -0400, alpha_one_x86 wrote:
> > Hi,
> >
> > On mcbin platform I have uSD problem, repported but no reply on linux kernel
> > bugzilla, https://bugzilla.kernel.org/show_bug.cgi?id=207083
> >
> > Any idea what patch try?
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

In v5.6 the following commits were introduced - and it has turned out
that a few other sdhci controllers had issues with them (which we have
fixed now).

Perhaps you can try a v5.6 kernel and just revert them and see if that
could help - as a start

533a6cfe08f9 ("mmc: core: Default to generic_cmd6_time as timeout in
__mmc_switch()")
ad91619aa9d7 ("mmc: block: Use generic_cmd6_time when modifying
INAND_CMD38_ARG_EXT_CSD")
24ed3bd01d6a ("mmc: core: Specify timeouts for BKOPS and CACHE_FLUSH for eMMC")

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
