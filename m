Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D50A75FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 23:12:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vfEGzUzx/LoxuvBTaia6eNL6HZab+DqHQbkJ1SLTbxM=; b=FamFJyS2jfce9Q
	K5hk2Tm38cUxXnJ5alV23KORfKihp4ueDix7Zr7JrgNrgbudEm5gcJ9n+9H1FQM7WyW6tCBQZ6fXf
	5TPUkf4WZVuUVOksVFkDiR8h0ujPP/OAsznBgIIBrYbtdblvmoZLALEf3hwGKqErx1gBEZUrnv641
	XMJKJex7BOf9/LfMOh5Sm/vwFnVcTHR39hH2/3XsoAFIojNtHjuhQTtcy4dD+9x/qfPgu6KgIyTiF
	AjnBI4QFs140f+RtqIKSKqwkeVeFoGhwafWjeNDFvkp2ARpQMnQ7tP7R/v+zBNPBddersUv5C07RS
	p0rb7QDWRFtXjmB1Th1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5G6C-00046O-18; Tue, 03 Sep 2019 21:12:24 +0000
Received: from mail-qt1-f177.google.com ([209.85.160.177])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5G60-00045w-FW
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 21:12:13 +0000
Received: by mail-qt1-f177.google.com with SMTP id y26so21869735qto.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 14:12:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ALj24+CT+pJaNLHiDhThCAT8qBrR7lJgfrtxsY9x2Lw=;
 b=sVOOqfoFYDZw6mImCUWKOwnSWiAhdxiqC17H16qP3cg02LvRIO0nYxCJFJ8X6hFyPz
 jTAnRpLIQo8t+i4zxbP7M0vdGJpOYcfH+rfB1YyPfk2ZMKkk1yfeKuhoBCvjIW7gWRjR
 dXrKH6dN3Xz2h0BJLP3mwEOqJb0k3DedpG56bokSar4tHetyTHilUvCZqLTaMBcsoYn2
 PLv+z5B+s3EeGmVWHVNJeML2NZTFyHTE6ChOOhLra8ilatcgz5FdAQjhdb5BTGalKbK9
 bNJNNPPWRgj8YCWEt65XPApohqYFNLY94Lrdaa3WnLXNAuv+L3FKdqmSwM5TZ8o863EY
 cb9A==
X-Gm-Message-State: APjAAAVexBjMpD2RwRT26RBhx9vze4PkGHLwXRatE5q+9T4ISe8tPRUy
 vCfCMiXC5qLDBoAWS1CX8khT+I9zle0imw1HaLM=
X-Google-Smtp-Source: APXvYqyWPDIgWmrZjSJZnCB0qr3Jn+X5ZS5cPeP6LQ3epHt1ZTyQrq083Gpgu3VycLwutxEgU0vnsLComt6ieWJHzls=
X-Received: by 2002:a0c:e74b:: with SMTP id g11mr23130799qvn.62.1567545130828; 
 Tue, 03 Sep 2019 14:12:10 -0700 (PDT)
MIME-Version: 1.0
References: <8e00ba70-9403-4bf7-2870-a94758e37346@monstr.eu>
In-Reply-To: <8e00ba70-9403-4bf7-2870-a94758e37346@monstr.eu>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 23:11:54 +0200
Message-ID: <CAK8P3a15728rfKN4u2Zvh2KH+-Tn2ZvBFcOxAFDYA=x_5noQEw@mail.gmail.com>
Subject: Re: [GIT PULL] ARM: soc: Xilinx SoC changes for v5.4
To: Michal Simek <monstr@monstr.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_141212_518091_428C85B6 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.177 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.177 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 linux-arm <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 3, 2019 at 4:19 PM Michal Simek <monstr@monstr.eu> wrote:
> ARM: Xilinx Zynq SoC patches for v5.4
>
> - Fix SMP trampoline code when FORTIFY_SOURCE is enabled

This looks quite hacky, but I don't really have a better idea here either,
the problem was already in the way it uses ioremap() to map
what is presumably just RAM. (if it's not RAM, the patch is also
required for other reasons).

 ----------------------------------------------------------------
> Luis Araneda (2):
>       ARM: zynq: Support smp in thumb mode
>       ARM: zynq: Use memcpy_toio instead of memcpy on smp bring-up

Pulled into arm/soc, thanks!

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
