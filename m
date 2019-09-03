Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3E6A7330
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 21:08:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=obAQ5rWcmj7+rvsvE9zL8/pXoo5XixL+KEHrcF/EDeM=; b=PJuQXIZC3S0Mju
	bd+6Oz5G/GmdRerk+Cl+BfnSb6Zs1JjUdf+p08UEoJPRJRSqPJSPizDFvMUmgoWxJdDHTWLnrEVjQ
	zcZnqyOa5EnjvdESjDw85Inl5hXZTOVp7nKR0f7qRpPhImS5HHntr5pA4vmaU3F0PhAX/tY6tYbTe
	6VKT/5ZCEItwsDeXNpyHSyIRTjwaSCYDHYOjBtCfkfC/HQcRFmxLI47JEtGD0gSNyrNgTLB3jYTcP
	GmFy4HvBR/tycGTMK7GgRQzQ2Ogs1ipW7q8CC+mDGZqlzyPILqd5lVOgXuDWVjQDOzRfvcuTgjkLL
	SgImMeWFmCE+8rWG/4MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5E9v-0002h2-0E; Tue, 03 Sep 2019 19:08:07 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5E9i-0002g5-7D; Tue, 03 Sep 2019 19:07:55 +0000
Received: by mail-ot1-x344.google.com with SMTP id r20so17930122ota.5;
 Tue, 03 Sep 2019 12:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=p3aev7x2FcRIqe6J3Q1VipxXTWXY2gzdFLeKEuyXyxo=;
 b=RWHc3SRbRf5QRAyWscodVJW+0S24fkLuby1zUP0KJ2evYT4MuYyJVvDvhtCv94QE1E
 /Uz1SOL5M/Cdqpk0ecIJA5VaRb8gHQCeGBJXFsmftSOdIoOpoGUdvDljHcNNWIh2jhYQ
 SSE9+TR+lnXwuf3HClCbH7pRSsO/eZrPWRfrE54N/rTfKOLMBc4JInagPEAmuJJcBktJ
 0/aRZMIhe+kp+C8v/nWZHMSJwcG+f4pPpdsJq+HO0x+vkHZmQE+cFhi4srB4KE+K/jLg
 LdtyrfqDRa5afybHrxgE+emhUsLuambMWuxdaJX3YbvEwnqlDf8gaLRh9p9EWbxLHUp+
 2/Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p3aev7x2FcRIqe6J3Q1VipxXTWXY2gzdFLeKEuyXyxo=;
 b=H6iTNcxb46gpMLi1N+Cp2k51MShLVX3Fv8UKJMHQT8oo2ud7rh3+99S/rNATZFXTEw
 /ZTdXj9iSN/ZUXXYAfMzKL7aAKSl1GNNFrf0KuXx+BtitUAoYLu6fHoCCvuajMe7sOYO
 qf/C8usMYIqYWKlPiMEKsbSEzHzfZDFm45TUKhE5wvzat289NXqS1EIT4b88Rg5/HD0/
 DEEshHNfVMHtnr4uBut/EgDAliAroUyoPVuQ0wBcIa2CGjNNZ7t3OTrBHgmjWtrn2alb
 lKeQK+M0aKkaPBuRVtrtjFg4K5ZkkvXEDwFQrs+ctxeeUfMuTW7ijiUAHTZSTdTrAEIR
 nWxQ==
X-Gm-Message-State: APjAAAXvMBEL5vXofapXy/Q8vWK9PVA23Rar3/xHc67iet9W6LVEtAOm
 AIDlWaXyJnVdUGoHszB7WvpQVIWRNc4Fk1hdT6s=
X-Google-Smtp-Source: APXvYqx4cEcKC4Pu7goYArzcWb/HJXhNTrOtWlDYALGS5Yz4pLIh9S3YA3UNWoxmkLOmC9OR33nyeXRzwkdcKmC+A3k=
X-Received: by 2002:a9d:1d5:: with SMTP id e79mr621031ote.98.1567537673321;
 Tue, 03 Sep 2019 12:07:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190828202723.1145-1-linux.amoon@gmail.com>
 <8c40f334-c723-b524-857c-73734b7d0827@baylibre.com>
 <CANAwSgShr-K-44UzdxFC7pvpTye_pbEMdS6ug1eWwYhnsVNGdQ@mail.gmail.com>
 <101a12ac-1464-8864-4f8c-56bb46034a08@baylibre.com>
 <CANAwSgQwZg_AXAnAY4KwDzHpwcSA9up7SrR6jyv5Bem24wtaJg@mail.gmail.com>
In-Reply-To: <CANAwSgQwZg_AXAnAY4KwDzHpwcSA9up7SrR6jyv5Bem24wtaJg@mail.gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 3 Sep 2019 21:07:42 +0200
Message-ID: <CAFBinCBY9SJKOaVYCV2HzDOrjngtcreM4Ftvk+hgr8KAGV_V+Q@mail.gmail.com>
Subject: Re: [PATCHv1 0/3] Odroid c2 missing regulator linking
To: Anand Moon <linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_120754_282821_1BE8183A 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anand,

On Fri, Aug 30, 2019 at 11:34 AM Anand Moon <linux.amoon@gmail.com> wrote:
[...]
> > SCPI works fine on all tested devices, except Odroid-C2, because Hardkernel left
> > the > 1.5GHz freq in the initial SCPI tables loaded by the BL2, i.e. packed with U-Boot.
> > Nowadays they have removed the bad frequencies, but still some devices uses the old
> > bootloader.
> >
> > But in the SCPI case we trust the table returned by the firmware and use it as-in,
> > and there is no (simple ?) way to override the table and set a max frequency.
> >
> > This is why we disabled SCPI.
> >
> > See https://patchwork.kernel.org/patch/9500175/
>
> I have quickly enable this on my board and here the cpufreq info
[...]
> Almost all the test case pass with this one as off now.
I suggest to send an RFC patch to (re-)enable DVFS on Odroid-C2
I find it easy to miss a DVFS discussion inside a "missing regulator" series

with a separate patch you can also get feedback from other Odroid-C2
owners who can help testing
coincidence or not: on Friday someone asked in the #linux-amlogic IRC
channel why Odroid-C2 didn't have DVFS enabled and what to do about it


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
