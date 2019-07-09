Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A909B6334F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 11:12:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Naso7UPcnf71XqYRgM+Uo3lKpdxTdh1OstSYuGAole8=; b=KC6e7apPAABMJM
	2i3vGCneZTOEMHEzaFC79njNa168uOrTJQmWRg2ExfvqSrCH6fPEzMbXvHQJCSasPq5itWlOfkbi4
	QQjGjRA00B9n1x1MD3G3MApkujwBRRoOXoPUah4w+XPHQ6CF48noXCJHBT4r0t4UBsH23/iNJLZCE
	j1hJ7o5RGiUn+4G+Nv9umX2LMBc54r+s+bMDAN3vLM8Lmtn6M/jmF31vG8hdefsnTt4FQxqftuOla
	KYbQ/hs9AVCEXG0GJ/dPyW7flEU1y0cWeYTHfTtZs/BXetTK2Rwed5a7Z3sRSEn+ZjPxPYhIVQms9
	a8rDW+IyDL/RgqH9fLLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkmAN-0006Uo-4t; Tue, 09 Jul 2019 09:12:03 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkm9q-0006Qm-Rz
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 09:11:32 +0000
Received: by mail-lj1-x244.google.com with SMTP id k18so18799730ljc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 02:11:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9LTtPPOn4Ak8eK9FW8AabXZcBEJh0Lnb8xIdmS0/IJU=;
 b=QpsAKtUKi/9eTxa+EeMW6C9efPOxUkmSK+eftMzIKmxy/utKmzJkDuPGkCNljZhsc5
 7iGyYTINlQH1eyfo1fjveiJ4DUGoW55nFZnlng1tG8AIyVg2vFN0ut9eN0lBIMq1EkE5
 f++VbpJFM+hwEokcwO+WXfLlCQwI9IaiH3l1EKg0RMDB27aXHmOLIUwRPhlh6FZ3KSnm
 qSa1D99CUlPAR/fI5sejfEI19alRwKz0FrBuodUW1DWIJEu95TRxrWHXgnLm9HGrVJ1q
 BQZX54uMeqpe7Fe0u9LObF19YHlaNubRtH+zSJfn1UwBuWYpB+mxCouPVukEYPIuEhFj
 14Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9LTtPPOn4Ak8eK9FW8AabXZcBEJh0Lnb8xIdmS0/IJU=;
 b=i5MVxN1LrIzXBMP6e9+LTGRRDyRITNwFSYrPEgViYIsrSNULdK6nAbwrPuPanxJia3
 A0L0f6PIHDtUAIKJ9xWfiNKLQqLaNeIXI9s7u+JgH8em0uGJOxUVR1wrAhQI7Q1RKDbr
 R8OIRcRgJxUZRsxwVszrUOaMBmFBtkT/GVcLaZNdanbk7veoGDKKzR4QMM4f3ElwSLq6
 Iz8NP4twU/+48Ff2ZDG80v62NPjKzeCH7ABT1b/+9pmirBYrhOyW5q/WWeQ6OCkQpXuN
 Kejk0SjUsZBkPD8X9Q8XwDdOyWfUfXO5AWTRjnHeBXC+8Tm3GaXOx0s+Ys8vXrhcBqXP
 O0YA==
X-Gm-Message-State: APjAAAUgkF3CgetzxamH5yv3qOhLeWbWgIZhQ15ITUnBu/k/Kc3NQnfP
 mupjam2sEctQFg8EWtL98iqE2gMZEBkwgFgSV+kRMw==
X-Google-Smtp-Source: APXvYqwiB3XqZd0MLimd/C9W++RvKxUs5C/lBSsyMkteU5OX/BLh17CZP9xgh8x3if6F4yr2ncjHO1cjnBQHMatTz0c=
X-Received: by 2002:a2e:9593:: with SMTP id w19mr10055087ljh.69.1562663488615; 
 Tue, 09 Jul 2019 02:11:28 -0700 (PDT)
MIME-Version: 1.0
References: <1561671168-29896-1-git-send-email-opendmb@gmail.com>
In-Reply-To: <1561671168-29896-1-git-send-email-opendmb@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 9 Jul 2019 11:11:16 +0200
Message-ID: <CACRpkdbgMyYYm1v4BeFQBCz8jZVLE_0oZiKu5F3Rt6=ccfVnYA@mail.gmail.com>
Subject: Re: [PATCH] ARM: mm: only adjust sections of valid mm structures
To: Doug Berger <opendmb@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_021130_968151_C26B4DBF 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Rob Herring <robh@kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 11:33 PM Doug Berger <opendmb@gmail.com> wrote:

> A timing hazard exists when an early fork/exec thread begins
> exiting and sets its mm pointer to NULL while a separate core
> tries to update the section information.
>
> This commit ensures that the mm pointer is not NULL before
> setting its section parameters. The arguments provided by
> commit 11ce4b33aedc ("ARM: 8672/1: mm: remove tasklist locking
> from update_sections_early()") are equally valid for not
> requiring grabbing the task_lock around this check.
>
> Fixes: 08925c2f124f ("ARM: 8464/1: Update all mm structures with section adjustments")
> Signed-off-by: Doug Berger <opendmb@gmail.com>

Cc: stable@vger.kernel.org ?

I'm not smart enough to say whether it is the right solution, but
I also want to test this on some boards I have. I suspect this
may be part of the problem I have with mounting root on a USB
stick on some early mpcore machines, so I might come back with
a Tested-by.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
