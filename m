Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F5B1CF150
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:16:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HWbuflUpWzjbRQ+WO9La03Spko36T4jiEpUd+jxjY2k=; b=huVY/OyM7v6voh
	qWI6NlQjx9Z5eWdkpYeHaaMauYxYlXi0xB4wtwAG587HDf5Q+FfB8/1Cmm+ftIx09ARTSbCodlQHA
	g24khIkwhHsXSp35e1n4P7dNccvqBGWP9eFRAKbTd9nTHLM58T5zshyHIit2e/DMM6hyVjL4BuK2a
	dtKDEnANsJ6QdBdUVljWgpaSFcC92UzzbTF0eZPJ3fX0h6MUhH4XADdfs4roJIeD49qbwDXkxtoF2
	EKZcyv1pbX86LrWMlgGYF1XB4/XyuU38E4xhBww0KHnaOyXZDofhdoqzsI6DynyUV+twv1T7eRrst
	E7gar0+vKQImWQ6nNFXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYR16-0003Yj-3G; Tue, 12 May 2020 09:16:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQr9-00077O-E8
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:05:45 +0000
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
 [209.85.167.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 35E9920714
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 09:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589274341;
 bh=HS+53ZodqD34omUaUnfZGaaf3rHBhijbLO2ygOHvWBs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=z5s6zPoUUzxvR8qdd57Vjpx+i5DWghLNc9KIZ5neo+iBD64HzEyZi8RxetyQ6FgAf
 p/3OXO0bk3sgpbGnbI5D8i6vos1yEge44MH1NFdXwmPDlDgqUHr3Ee8bPHRUxKlnUI
 xMjhjGCrlwmh7TZSetaFhmkh+6r9aiDJRhJaMysw=
Received: by mail-lf1-f54.google.com with SMTP id 8so7193490lfp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 02:05:41 -0700 (PDT)
X-Gm-Message-State: AOAM533nrAipO0DBj7ulGJ9vbBz0ZlH2PJjAuQkKurQsP3xkIsijii4F
 ki37WbbbaOT3yxaFQns8lWiUCM4kb0DJLZm2pJQ=
X-Google-Smtp-Source: ABdhPJyrJVrAT8momuEFoaiqxBUOKAS3w1MEWaOBVANtVD6B7+0T1Wih7oQd+8Fm3Od1tfwC7O0GXietblUkp8+w3O8=
X-Received: by 2002:a19:f00b:: with SMTP id p11mr13835301lfc.210.1589274339295; 
 Tue, 12 May 2020 02:05:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200508131338.32956-1-bernard@vivo.com>
 <20200512065023.GA10741@kozik-lap>
 <e762ce12-eff0-d3a5-f083-2b592921de59@arm.com>
In-Reply-To: <e762ce12-eff0-d3a5-f083-2b592921de59@arm.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 12 May 2020 11:05:28 +0200
X-Gmail-Original-Message-ID: <CAJKOXPekrkyDf2TMCnX7Nvbdaj-JQwuyqrsurFM4moALqVx8Sw@mail.gmail.com>
Message-ID: <CAJKOXPekrkyDf2TMCnX7Nvbdaj-JQwuyqrsurFM4moALqVx8Sw@mail.gmail.com>
Subject: Re: [PATCH] memory/samsung: reduce unnecessary mutex lock area
To: Lukasz Luba <lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_020543_580453_C94D61E6 
X-CRM114-Status: GOOD (  21.69  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: opensource.kernel@vivo.com,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-pm@vger.kernel.org, Bernard Zhao <bernard@vivo.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 12 May 2020 at 10:47, Lukasz Luba <lukasz.luba@arm.com> wrote:
>
> Hi Krzysztof,
>
> I am sorry, I was a bit busy recently.
>
> On 5/12/20 7:50 AM, Krzysztof Kozlowski wrote:
> > On Fri, May 08, 2020 at 06:13:38AM -0700, Bernard Zhao wrote:
> >> Maybe dmc->df->lock is unnecessary to protect function
> >> exynos5_dmc_perf_events_check(dmc). If we have to protect,
> >> dmc->lock is more better and more effective.
> >> Also, it seems not needed to protect "if (ret) & dev_warn"
> >> branch.
> >>
> >> Signed-off-by: Bernard Zhao <bernard@vivo.com>
> >> ---
> >>   drivers/memory/samsung/exynos5422-dmc.c | 6 ++----
> >>   1 file changed, 2 insertions(+), 4 deletions(-)
> >
> > I checked the concurrent accesses and it looks correct.
> >
> > Lukasz, any review from your side?
>
> The lock from devfreq lock protects from a scenario when
> concurrent access from devfreq framework uses internal dmc fields 'load'
> and 'total' (which are set to 'busy_time', 'total_time').
> The .get_dev_status can be called at any time (even due to thermal
> devfreq cooling action) and reads above fields.
> That's why the calculation of the new values inside dmc is protected.

I looked at this path (get_dev_status) and currently in devfreq it
will be only called from update_devfreq() -> get_target_freq()... at
least when looking at devfreq core and governors. On the other hand
you are right that this is public function and this call scenario
might change. It could be called directly from other paths sooner or
later.

> This patch should not be taken IMO. Maybe we can release lock before the
> if statement, just to speed-up.

Yep.

Bernard, you can send just this part of the patch.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
