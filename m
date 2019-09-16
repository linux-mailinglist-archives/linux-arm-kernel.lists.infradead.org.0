Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C78BB3DDA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 17:44:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y2ZBsHP0/9B3+H1GqaYXLmTH4teESIdZZknkHnKW+TM=; b=u7R8P9bklAc52+
	biscBfmU1ZwGMhTmrOysAqxofmJNKPidRhAAcIrZem/9c2woYP9CVN3C11Tp2IAbxabFZgQYSorM7
	zO5QdR9WoodnGNMGco+UUYZOJ6HGskQuF6/2k7i3MLYTYbNaVDIvbjhJB9o8eNTVO6IrZyzKSmzxC
	uOdCz5GeYExIcqJdnfI5JHSMjHNmdnK3JFfC88WR5+Dj5i6tSuvlLQUeiHDDAY+hpKxcW2SugYVZU
	xAPb8ZetAgNuMNOcEwUn+5svVTjFOmzkbRNrdk9Gcz3dK4uYsOuaCup/0GJGA8eTVJ4q33iX7gy0R
	dUuA3fflK48bjF8YO9iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9tAY-0004e0-7r; Mon, 16 Sep 2019 15:44:03 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9tAC-0004dE-Cz
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 15:43:42 +0000
Received: by mail-pf1-x443.google.com with SMTP id q5so104415pfg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 08:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GIKTiyEj4N0Tk5F27SiQQIDS5N8HwkMtaseA3IamvV4=;
 b=JPd+kuMRkI2hyka5aobdVqsgU5OzRfLwXigswG+wwo96vSE8DXOebxg2e1XNYJZBsf
 59bDUGGC7oi5JbEuuWjRdZxbg/K0OZX5XOJicvXosVR3JbCO1p8bdFMoPD/depZ2O1u6
 NpV4abQFpjO+ytgnmHQuNOVMxs9ELWhv7MmvQFSP6Bo3Lv4x1hnIQuNLKaEROSYCptgq
 rxSTEfQk9BduAkK+fypO8uzRLfmDuuI4A7e/38REN+iJ4EGnGfThYlQUPCOcCCMGnWvB
 wyAf2EVEbGUs6Ow33skONvtObFJN83ChEks9cPcEcP3UweycIwBOPhXkAMePm3NuOGJE
 RFzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=GIKTiyEj4N0Tk5F27SiQQIDS5N8HwkMtaseA3IamvV4=;
 b=DxboKwi6K0XIFo+pyHI6jMeo2+SWQxcwBW5KZms7nM0mdJGgD0NkmlQGVoY7Ore63X
 3KlUJvwJRs6VESpwCs+iG3yEXYw4d70gYxCS7qKTxEQtnnCa/wQdKuDaFE0AbEfq0lgW
 vIkpCeJ8QoBslbAlCobCn12uyerfark2YCK71GBsJN0AemIzQoqD+LaMcPwyPibsnk76
 vimrTilX943DcfVJF6JOjAxg9W+2AB0uhC7X32oiQdQjMOGOtQKQ8oYRjmSL+l9psz8P
 kaNqDVZzx1t6mIf/uUGqFvLc769ZENBCLwX1ip29O9CFAErtWxb2qMnBCqp+j2pf+zDQ
 8NmQ==
X-Gm-Message-State: APjAAAVf7JeAHR5dTmYyyo6QNBK4Yac/J9Bg4npHv7yptvrj4USxIVaz
 SrxSrzm06n9jTNWgtOo5O4rFdJI6
X-Google-Smtp-Source: APXvYqweEKNe6aDL2/LMO034hvNQ2czMevJUdslQ+3U9k2rktGL8GiKf/o0Mqi4l2pInj+Kdp1R0KA==
X-Received: by 2002:a17:90a:b013:: with SMTP id
 x19mr403482pjq.58.1568648619545; 
 Mon, 16 Sep 2019 08:43:39 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id p189sm57462133pfp.163.2019.09.16.08.43.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 16 Sep 2019 08:43:38 -0700 (PDT)
Date: Mon, 16 Sep 2019 08:43:36 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 0/6] ARM, arm64: Remove arm_pm_restart()
Message-ID: <20190916154336.GA6628@roeck-us.net>
References: <20170130110512.6943-1-thierry.reding@gmail.com>
 <20190914152544.GA17499@roeck-us.net>
 <CAK8P3a3G_9EeK-Xp7ZeA0EN7WNzrL7AxoQcNZ8z-oe5NsTYW6g@mail.gmail.com>
 <056ccf5c-6c6c-090b-6ca1-ab666021db48@roeck-us.net>
 <20190916134920.GA18267@ulmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190916134920.GA18267@ulmo>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_084340_445779_89470BD5 
X-CRM114-Status: GOOD (  25.69  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 03:49:20PM +0200, Thierry Reding wrote:
> On Mon, Sep 16, 2019 at 06:17:01AM -0700, Guenter Roeck wrote:
> > On 9/16/19 12:49 AM, Arnd Bergmann wrote:
> > > On Sat, Sep 14, 2019 at 5:26 PM Guenter Roeck <linux@roeck-us.net> wrote:
> > > > On Mon, Jan 30, 2017 at 12:05:06PM +0100, Thierry Reding wrote:
> > > > > From: Thierry Reding <treding@nvidia.com>
> > > > > 
> > > > > Hi everyone,
> > > > > 
> > > > > This small series is preparatory work for a series that I'm working on
> > > > > which attempts to establish a formal framework for system restart and
> > > > > power off.
> > > > > 
> > > > > Guenter has done a lot of good work in this area, but it never got
> > > > > merged. I think this set is a valuable addition to the kernel because
> > > > > it converts all odd providers to the established mechanism for restart.
> > > > > 
> > > > > Since this is stretched across both 32-bit and 64-bit ARM, as well as
> > > > > PSCI, and given the SoC/board level of functionality, I think it might
> > > > > make sense to take this through the ARM SoC tree in order to simplify
> > > > > the interdependencies. But it should also be possible to take patches
> > > > > 1-4 via their respective trees this cycle and patches 5-6 through the
> > > > > ARM and arm64 trees for the next cycle, if that's preferred.
> > > > > 
> > > > 
> > > > We tried this twice now, and it seems to go nowhere. What does it take
> > > > to get it applied ?
> > > 
> > > Can you send a pull request to soc@kernel.org after the merge window,
> > > with everyone else on Cc? If nobody objects, I'll merge it through
> > > the soc tree.
> > > 
> > 
> > Sure, I'll rebase and do that.
> 
> I've uploaded a rebased tree here:
> 
> 	https://github.com/thierryreding/linux/tree/for-5.5/system-power-reset
> 
> The first 6 patches in that tree correspond to this series. There were a
> couple of conflicts I had to resolve and I haven't fully tested the
> series yet, but if you haven't done any of the rebasing, the above may
> be useful to you.
> 

Maybe Arnd can just use your branch (or rather part of it if you would
split it off) since you already did the work ?

Thanks,
Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
