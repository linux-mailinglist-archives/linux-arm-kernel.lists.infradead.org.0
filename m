Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 538CA1A6799
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 16:13:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3/j0BtqlBlP2N9YI5RFqHZKvTc0rBB2m7SZGKHNbrA=; b=BofOtAy7Um/7Tj
	pJb4Om9v0tqA4gPVBo2tcxPu1ecxyIWY4d3uGgh96doyHlJG5maQLr/z/j4fN13621S/v5dqm14b8
	SwtgkpaGz+mzkzQHdS1uE4LtYurPFR1LEckdxDWpEQZhKKB8unV+JhjG8c2SlRc+zrMFhaqORL4mu
	Irt9aNvTrTrjGIQTWhoWzg8LLuPwTkmASgcgXn3zj7yHPjFwK/MdpxTHMHbEfTumhOBD/iXoKnDqc
	rkh/4K4nKUIEJbPSAASjcyJjBBzZWRQdfL6jCcuRtIKTU8XWEnqJIXcbxUJMASVWN6De6Ti9c5HlU
	InR+Is7Vd73Sjm3awICg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNzpb-0003TU-NJ; Mon, 13 Apr 2020 14:12:59 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNzpV-0003T1-3J
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 14:12:54 +0000
Received: by mail-ed1-f65.google.com with SMTP id ca21so9779230edb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 07:12:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qwii8YlQE8mee1Z5xIVhf603RnvUDTx/2KtWa57lsHE=;
 b=rAs6UZQBM9G3W60SSjns2K08pwwdYQp2/rVcEphk+FqtxOR6Q8o4sS1VUEyriUX/O0
 arDg7ODEaEwzKp1pnGIKeNUb/9hwhY4ydIa3KORLCVUsAZQjSgi0/hGEmVsA4rq8mzLP
 zcRMip1P/sF541NseOfSG0XuMtckun5KfbT4rilrIWaJqgmo4mC3fFbJa0F3zpMDK8eM
 Kd+o6H+aKrCAoyK4fYfKF8fvv+dXbVBHJjS5VQ0yQQWwUKLrZNip++bgpRTLSUS4rasf
 rw2FHvtB13Totjquf1P1H70SGoc0/sT05l13u7ESKBa+nYkgsnugi8aQEN3KnCJNTL/w
 zAeQ==
X-Gm-Message-State: AGi0Puadbf9AUJP/8xULqpFnNO2VBAYKXMutqgr3r4402asAPnj5mPa2
 zlBWpG6FxbRQ8RJvffgylpLKgdkhXKo=
X-Google-Smtp-Source: APiQypJCFYilwdM8KyepVAxB91io9pezHPmwo0I9ltMDUohClRXql2f2IkDR2sIatWVd5OUjQfg31w==
X-Received: by 2002:a17:906:d291:: with SMTP id
 ay17mr15576790ejb.183.1586787170754; 
 Mon, 13 Apr 2020 07:12:50 -0700 (PDT)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com.
 [209.85.221.45])
 by smtp.gmail.com with ESMTPSA id q29sm847500edc.40.2020.04.13.07.12.50
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Apr 2020 07:12:50 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id j2so10277835wrs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 07:12:50 -0700 (PDT)
X-Received: by 2002:adf:f04a:: with SMTP id t10mr6751961wro.64.1586787169975; 
 Mon, 13 Apr 2020 07:12:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200413095457.1176754-1-jernej.skrabec@siol.net>
 <CAGb2v65qetxxVX1yoCjyduM4zRTyF3YKX1g9CuaHZkF_Z+AKQg@mail.gmail.com>
In-Reply-To: <CAGb2v65qetxxVX1yoCjyduM4zRTyF3YKX1g9CuaHZkF_Z+AKQg@mail.gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 13 Apr 2020 22:12:39 +0800
X-Gmail-Original-Message-ID: <CAGb2v66LxhqTBeA_Br=kUrTq83hocEcAzYYC6nXpASvkkjn+1g@mail.gmail.com>
Message-ID: <CAGb2v66LxhqTBeA_Br=kUrTq83hocEcAzYYC6nXpASvkkjn+1g@mail.gmail.com>
Subject: Re: [PATCH] drm/sun4i: hdmi ddc clk: Fix size of m divider
To: Jernej Skrabec <jernej.skrabec@siol.net>,
 Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_071253_140791_440370D2 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 6:11 PM Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Mon, Apr 13, 2020 at 5:55 PM Jernej Skrabec <jernej.skrabec@siol.net> wrote:
> >
> > m divider in DDC clock register is 4 bits wide. Fix that.
> >
> > Fixes: 9c5681011a0c ("drm/sun4i: Add HDMI support")
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
>
> Reviewed-by: Chen-Yu Tsai <wens@csie.org>

Cc stable?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
