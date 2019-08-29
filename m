Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E816A1F4D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 17:34:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ScZs5iZ3LcnZBlBGY3mf3Kqpbzcjys8KtC5LeNCJi/g=; b=ScH15ExzXwb4/m
	7Wnjy2pgm1gt+tt2RQK+kleXWNMKqHTfDVSXL0zEthd7MJm8PBwe+4HM2IN3lro1EuPNUEjbiK5m+
	wl/YKgzelEOvaQL8BqSN1MouDntv5CAVjq22eBCfZ3EUpUMbiC5/YnpAbI3T/6FlKbxDvN/11Qr85
	+D1mMm1OS610hV37pn6y3wM5sBj5hqy2EBMymmZjIRtNS8kR05nE3LOGhjd6aLU2RegiwKT4kiU2l
	pvlgmghoJEDcjtXo7em2tGvdUFPAVv+s1Uor8DU6sXdCqbos8ONUKoDudjtM0UpCXQ7AdHfu3+Knb
	PSSEpiOM25LmVpteqAJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3MR8-0003m0-IJ; Thu, 29 Aug 2019 15:34:10 +0000
Received: from mail-qt1-f182.google.com ([209.85.160.182])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3MNl-0002pe-7d
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 15:30:43 +0000
Received: by mail-qt1-f182.google.com with SMTP id g4so4103610qtq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 08:30:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/FoBysFaqzqICEWiRQ/TV9K7v3A2OTBhwnE/9s+lZuo=;
 b=Gu1rlYHZQ7SrIanJmhGSKwyM7XllsC+wbgLKRTqMgII97/1rzrylnBTE26CvehNr/P
 uwaqcOUgeKJycWZLq8rvfLKTszVT/r5k+dBUwakf6BjuIOzNRMurguDCcG4iHA3NIXQD
 sVBeHgg9SX6GbY+sOjDWp2IvftkzCFPhysGHbfQ4xuWez/jdhMKiD7NBIO8dFLXstU4x
 8eQusmPHk29YJtAHnQwo4mk2tZ2euyIB8VsGr5U5xS9FlIzTscB2l7P39WHoVy82aj9O
 MPEWBDv4n5qcFV91T0v5+m6zUdOnXhIkv2SnRgrt8cpOs97hs69WS6AJXKF2dtwwkN2R
 ufew==
X-Gm-Message-State: APjAAAWblaxG/TQWRlCNYhhjQeR0NTjh6tyFk0l60f3pdn5FTuvnxl9w
 CjEppQkTJsmBBeZNWt1llyBIWsX/9X7EP332D58=
X-Google-Smtp-Source: APXvYqyqWMeZ6Yt6fwrJUIwBw4biAdTNuLCRer65P7P/TTJtXYj7S94Y9Ml8qCmS6c/VyvKXwHqEYU08eTFKLOyIFp8=
X-Received: by 2002:aed:2842:: with SMTP id r60mr1045726qtd.142.1567092639770; 
 Thu, 29 Aug 2019 08:30:39 -0700 (PDT)
MIME-Version: 1.0
References: <8c04a96b-4a75-4e1f-b3ac-05fe091f251e.lettre@localhost>
In-Reply-To: <8c04a96b-4a75-4e1f-b3ac-05fe091f251e.lettre@localhost>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 29 Aug 2019 17:30:24 +0200
Message-ID: <CAK8P3a0dG6hEAZjc0GDZB=uC44xDW2b0zi1HM=JtkJkk7X9jXw@mail.gmail.com>
Subject: Re: [GIT PULL] Allwinner Fixes for 5.3
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_083041_666389_9C4945E0 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.182 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 11:27 AM Maxime Ripard <mripard@kernel.org> wrote:

> for you to fetch changes up to e32db73c5aca895a43061cf6621076aa798530e3:
>
>   MAINTAINERS: Update my email address (2019-07-23 11:24:12 +0200)

Pulled into arm/fixes, thanks!

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
