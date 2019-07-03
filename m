Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6079F5E38D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 14:12:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dYhvyeGXcyt1ugHrli7Ptmroid0kHLeF4XAVVfwguR8=; b=K8Sy46ZDB4M2qn
	PLcYzXG+TY583NsXhtaGe2/+yyHC6fkKS7hicxg0iZLDDb1tidUlA4ORVQkhb9dGiMAyZPa8Y9EAk
	SSQNPJ0EqpkBDYCDYBh23fprV33RB0PDOxUknAuBynPBjRerAVdiTnuStRb6axI5k1+vLOYi7gj19
	q1uQmdQuAq+gyAHY3BmFRH0gty2tEYZppJATuZZRKwYsgbIP+6aWBeyvVaOJrECfal1dvgSAkwnPu
	lUMpvz/R8LWSbAGS4aaLNV6mP7FkttAcGZt5VvHTxGsm9QAyB/9Hdz2geo6hOsl+NdosK6kyT7hXX
	bFz2GDWJxOBkYjHeh8Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hie7x-0006Hg-QB; Wed, 03 Jul 2019 12:12:45 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hie7l-0006H7-Um; Wed, 03 Jul 2019 12:12:35 +0000
Received: by mail-ot1-x341.google.com with SMTP id z23so2047545ote.13;
 Wed, 03 Jul 2019 05:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mH2lyxDMkrD7XdLOxAFWGZyjvyOXaNVi0/ntCaxja1Y=;
 b=CtYhWINebh0TkuL+oXcaXo183wNNBg6jq4kBnoqD4X5Lt4Vhcyoochri/u/cY6y6El
 y76PWe4b0agnkFCB5lWeO8QXTRw3iGVqZZnJYEKjpsmZ7tJHeLFeqpuaVad8p+SH1MBj
 uRdE5wjDx/nrBSZ10/v1tsRnVD0XmuND8FsBFiZ72mPWKT3YUGrtXrR5nB8bxKuHNoPn
 qI1/geq5LfbEluFVoreQC/bhwvWszF4iHfZxMBPzbpfQC78N0z9RQ42vIMUgGFw7Wozb
 EbeOWgaoRnO3AqXqn0PXEC1DwnGGeQXLqJy8UQguQvty39kol54Blk3MoAAsxP7g2Olj
 18cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mH2lyxDMkrD7XdLOxAFWGZyjvyOXaNVi0/ntCaxja1Y=;
 b=hcFblAIkOqlvvG7pfxOTffb4iAEUeTu1bQrbqzh8PcCfMDjTzpjs/zsCCaJfjUjXCr
 BPzhMRElxddNnNjuAm9uT6ujxKgWYrw5w6N87JkEnTxyMqU1vtFjPpdaagT8H1ICuV4L
 pRPjNaXulFHjtahBuHtTAzvVxEvVDSBnUYzoAmqt3fdcMc9k7mtxen6ceScH+5EM1en1
 pJu5STkWGLerHhkGuWdlcz3qYt/jIhKyze9+688b1P3Kwh3ft7TIn+2j68d9gVtarPDN
 Yof0/3xbK9SeDeSY08DsXLHg8X+/azbHoHlqeSshbL2Sd7SOTTz/9MtBwjjNn64soPNF
 /oDA==
X-Gm-Message-State: APjAAAXFJ/kG5PQultaHo4Sp1wGJln/scttMnPzPORkxlzzQBo7HOPUd
 gcYa6DJT2qBKJ7ykByB6CXkrce1xQ/6AUYwmcsIJdg==
X-Google-Smtp-Source: APXvYqyHjGppN3tIIiaPddI2WT4l1OOcds5DkRdEgJQOZDr9uZ31b+RJY1XmKW37lEvv3kuJ9imk6UwFGNQZzxqlDPY=
X-Received: by 2002:a9d:226c:: with SMTP id o99mr27745852ota.42.1562155952743; 
 Wed, 03 Jul 2019 05:12:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190701091258.3870-1-narmstrong@baylibre.com>
 <20190701091258.3870-12-narmstrong@baylibre.com>
 <CAFBinCBg57gh1x3CKs-YrCvTD0WR2s5zVGWtycb=RGqMiQ-VgA@mail.gmail.com>
 <7acdafc1-39e7-a2ec-886f-ca337c60dfe7@baylibre.com>
In-Reply-To: <7acdafc1-39e7-a2ec-886f-ca337c60dfe7@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 3 Jul 2019 14:12:21 +0200
Message-ID: <CAFBinCC1sJxBA8NgDNzLaWJV7Y+fARVczy31rHkbtkj58XKUUQ@mail.gmail.com>
Subject: Re: [RFC/RFT v3 11/14] arm64: dts: meson-g12a: add cpus OPP table
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_051234_019950_AE025350 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Wed, Jul 3, 2019 at 1:53 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> On 03/07/2019 01:47, Martin Blumenstingl wrote:
> > Hi Neil,
> >
> > On Mon, Jul 1, 2019 at 11:13 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
> >>
> >> Add the OPP table taken from the vendor u200 and u211 DTS.
> >>
> >> The Amlogic G12A SoC seems to available in 3 types :
> >> - low-speed: up to 1,8GHz
> >> - mid-speed: up to 1,908GHz
> >> - high-speed: up to 2.1GHz
> >>
> >> And the S905X2 opp voltages are slightly higher than the S905D2
> >> OPP voltages for the low-speed table.
> >>
> >> This adds the conservative OPP table with the S905X2 higher voltages
> >> and the maximum low-speed OPP frequency.
> > have you considered all three as separate voltage tables?
> > you're other patches are assigning the OPP table to the CPU in the
> > board.dts anyways, so it's easy to use different OPP tables for
> > different boards
>
> We can't assume the board and the CPU type :-/
OK, should we assign the OPP table to the CPU cores then in the
soc.dtsi (instead of board.dts like the other patches from this series
do)?

> Kevin told me about cpufreq policy, where we could add a policy reading the
> eFUSE and changing the max frequency, then we could add the whole OPP table.
we can still do that in a second step, so I'm all for starting with
the "conservative" OPP table and then improve performance (by having
detecting the SoC and using the correct OPP table)


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
