Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B4A831DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 14:52:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+0RisPNt8eA11ufglqN2oZFlscogUXalM3ItQDpOfM=; b=UOndvvqeF/WvNm
	EiYeoVp75yEwVJl9ryNh5EcYZU3HQo/UUfHQFNeJ44iXrZMgdrKqo86N75+4ZwZMXHEMzZdh67RZH
	VHeJ00SDYKMfL/xBVh6SU0E+Cvlqov7VCCLcrY8KnzWKUsUz5UZFIwg71bLrNhUeQjAHHBmb+RHjN
	1TPqp60pNL0OIfGxo7w1rCVmetuu+4X/A8/yMxNRZ37RAccJ/GmEhwiC5D8ViuB6JtosED18RXZAq
	503dc3z14BduZWq0guj2THQtvySGGMSFaYqCwIauCT+IPkJnuSa6+tz/XlbMVCm9kOgwpCyZwQ9cB
	xiCDIvxcbLgWx6eOZ5TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huywY-0002Tr-4c; Tue, 06 Aug 2019 12:51:58 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huyvV-0001i7-1M
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 12:50:59 +0000
Received: by mail-qk1-x741.google.com with SMTP id r6so62770014qkc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 05:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/P5o7bDpjWmN9ZebSBZsGlXpEvCnGcCbzXRf1g4vqlg=;
 b=skjdDU4dtUeHC+kMGTUC9fPCCNWSMbFGsd3aaAekUU7izdW2GKUeIP8Sc/7RaZ53a3
 c4WVPqMdHWjNyyW0UWhDJ0fecC+2XNYt9iZkVBq18GzQt0yMKpbUgS8dvW6mSIgHnbdh
 HgzihabMSOBMmrqfJECNcEsIof7X5520tUVHMvH5488p+gJmkSZPzVJSWkUv+6yiugI+
 dgv3Rs+IDXTYKez5jrRsEDothYUJaypa/tg0TDtMtCXOlx6daS632GYFAcAEFt4W2kE2
 cE7i2NUujJPjRXjOO6Plf8QlNLfVcl1X4iFP0PV0Dknt5Xu0vEfGta9zYRm29owweO/D
 Lcbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/P5o7bDpjWmN9ZebSBZsGlXpEvCnGcCbzXRf1g4vqlg=;
 b=la22hd4BR2nJYzvBPatT5SwF2BzmtLgTLE+cyS9mMwO+9Wq1BK/fFG1QYF83bHEG6p
 4J5NSSFMW5w78eAxkjo+iJMF2FyQMCTL86Rtt+KI4bGS2qDcg9BUkMVapN2wZ7ln9tQB
 rKnbV7kUrimGxL3OaqCezZFNSJCvmM9nd09chCNZCX3/tX1V9K378P6Kr5YGlQwtV+uZ
 eOQ1V6MXAd4DQ33NtWlm5OaDh2SEl60CkBPijtnYXwX7n8AJPVaXRtDBu4MMdhCmSwAT
 MOFjvY8AJO2sLTbrbgA0bGDd4UbFlgouqUExqhyFg1BnivGB8uqVmq7IBLxhL5tb/P7F
 CwZQ==
X-Gm-Message-State: APjAAAXNKjd65WQ9d/KDM8oRQSyuB/Tb/7tCZhlVmQejJPX0AyLKQIu7
 hiFL4QYL1eKa3IjIyTZHH/Yqa8SW2bpq3z2Eg9jWD74LJ3c=
X-Google-Smtp-Source: APXvYqwfWWN4YkKLQ+LRmVpH+VROfBQy2m9vp40Fsf+NNf7IJbqfFo2xpdZXFbe8bmZEplS9SM16o6+Vkfq7lHGwoQE=
X-Received: by 2002:a37:9a0b:: with SMTP id c11mr3120476qke.204.1565095852172; 
 Tue, 06 Aug 2019 05:50:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190806030718.29048-1-luaraneda@gmail.com>
 <20190806030718.29048-3-luaraneda@gmail.com>
 <194fe121-151d-0b64-b83e-e4d82c02efa7@xilinx.com>
In-Reply-To: <194fe121-151d-0b64-b83e-e4d82c02efa7@xilinx.com>
From: Luis Araneda <luaraneda@gmail.com>
Date: Tue, 6 Aug 2019 08:49:59 -0400
Message-ID: <CAHbBuxpM8YKxADGJv2PAPbyS-2FZ6xiwohJwGJ1DMPuGnDV-Jg@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: zynq: Use memcpy_toio instead of memcpy on smp
 bring-up
To: Michal Simek <michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_055053_216942_DD8A3981 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luaraneda[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Michal,

On Tue, Aug 6, 2019 at 2:42 AM Michal Simek <michal.simek@xilinx.com> wrote:
> On 06. 08. 19 5:07, Luis Araneda wrote:
> > This fixes a kernel panic (read overflow) on memcpy when
> > FORTIFY_SOURCE is enabled.
> >
> > The computed size of memcpy args are:
> > - p_size (dst): 4294967295 = (size_t) -1
> > - q_size (src): 1
> > - size (len): 8
> >
> > Additionally, the memory is marked as __iomem, so one of
> > the memcpy_* functions should be used for read/write
> >
> > Signed-off-by: Luis Araneda <luaraneda@gmail.com>
[...]
> I would consider this one as stable material. Please also add there link
> to the patch which this patch fixes.

I'm dropping stable CC (for now), as I'm not sure I completely
understood the process for inclusion in stable trees.
Do I have to wait for the patch to be on Linus' tree before CCing stable?

As for the link which this patch fixes, you mean
aa7eb2bb4e4a22e41bbe4612ff46e5885b13c33e (arm: zynq: Add smp support)?
where you added SMP support for zynq.

Thanks,
Luis Araneda.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
