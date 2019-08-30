Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 337AEA3EA7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 21:48:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9/T5VrPoAbBmZbnANI6FHunWvvEfIebUvXmZx4rZqVE=; b=m1o3rzsMFakIMS
	ebY2Kbat3lZWAPqsCPI7sHf2s/iKivPSVGYXczM8c/jucy/f8/VVxhWzPUwiNhCKohpStkPAN1seB
	Il08r+OI/9vImRIT1ULYia6fAds9VwRqPzExTdRiFmYnkvqzvFcYz72/Cfm9/IW6/0BJfFj76dsGW
	X1G71gEqQInR0FqGMBEDxg0OIc09KRLezIOvV2zqWGeligFRc2xGamTFqhO5Z2ziQz3sJfgQLrmQD
	cGRlu6u99nb9CSUO4fQ19w7IGd7XBBOp+5+I6Ed5TQroeKNsYWTNM7orgt8AmMzFRB3VMaMJGCEls
	95uDGGdn8Fk1hAwQfxcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3msa-000512-7R; Fri, 30 Aug 2019 19:48:16 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3msM-00050f-VE
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 19:48:04 +0000
Received: by mail-qt1-f194.google.com with SMTP id b11so8870967qtp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 12:48:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BB2ZTWkq+EaDyWckifj0qVKz7I7sk65TBQYgyQWxVIg=;
 b=oPUnpN7WWPrSpYbTky3sUcTYilYuKDABWtJQCBHcF6kVVAnpAiiEEKj3qBFqTfOo8j
 2U/4O13hxg0Dw849vkLarK570H1rVd4ym8QttGtDgrXD52d8O1/ljbi+ecSKCphe7NQH
 WCFfU30sfrqvANKG61Wkq3mRrZYFkljGIhez99iTwmkDXBq9OGD6fOhSoR/+McOIFbTC
 tBrgX+OzRPwMNFf6xQL8mNSZsDsATN9YP3aANMDM6sqpJSLq9BsNc9t8Ys5Dq/nEuCIP
 JEjk5KwmychXwCh6dqO2cxW2Q8znQiofiMAuRx9OJl1A293o0IHGSQheqxvF9LD0fVdK
 Q46Q==
X-Gm-Message-State: APjAAAU23REwIxaAADm8OKAoAjyxHKCDHJtruUIka26/0Y62OysKLlOn
 /rrOdt3wmgJXPj3LsNAeH687MmH9/LmGfBsD+R4=
X-Google-Smtp-Source: APXvYqwLxlyC9JHKTDbZMznEmcS9200xsmhjbOQL4U7xThz9FW1Ev/osE30ZHBqw4qZwVyT3VqJ/DiJQ2nixCX4d8OQ=
X-Received: by 2002:a0c:d07a:: with SMTP id d55mr11175320qvh.93.1567194481740; 
 Fri, 30 Aug 2019 12:48:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190817073253.27819-1-hch@lst.de>
 <20190817073253.27819-15-hch@lst.de>
 <alpine.DEB.2.21.9999.1908171357180.4130@viisi.sifive.com>
 <20190830160404.GA26887@lst.de>
In-Reply-To: <20190830160404.GA26887@lst.de>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 30 Aug 2019 21:47:45 +0200
Message-ID: <CAK8P3a15WV-iNqTJxqgo_EYmTOp8HapTKrd56q0wziKePPMOtA@mail.gmail.com>
Subject: Re: [PATCH 14/26] asm-generic: don't provide __ioremap
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_124803_009181_1F001120 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: =?UTF-8?Q?Cc=40lst=2Ede=3APaul_Walmsley_=3Cpaul=2Ewalmsley=40sifive=2Ecom=3E=2C_Guo_R?=
 =?UTF-8?Q?en_=3Cguoren=40kernel=2Eorg=3E=2C_Michal_Simek_=3Cmonstr=40monstr=2Eeu=3E=2C_Gre?=
 =?UTF-8?Q?entime_Hu_=3Cgreen=2Ehu=40gmail=2Ecom=3E=2C_Vincent_Chen_=3Cdeanbo422=40gmai?=
 =?UTF-8?Q?l=2Ecom=3E=2C_Guan_Xuetao_=3Cgxt=40pku=2Eedu=2Ecn=3E=2C_x86=40kernel=2Eorg=2C_linux=2D?=
 =?UTF-8?Q?arch=40vger=2Ekernel=2Eorg=2C_linux=2Ds390=40vger=2Ekernel=2Eorg=2C_linux=2Dia64?=
 =?UTF-8?Q?=40vger=2Ekernel=2Eorg=2C_linux=2Dparisc=40vger=2Ekernel=2Eorg=2C_linux=2Dsh=40vge?=
 =?UTF-8?Q?r=2Ekernel=2Eorg=2C_linux=2Dhexagon=40vger=2Ekernel=2Eorg=2C_linux=2Dxtensa=40li?=
 =?UTF-8?Q?nux=2Dxtensa=2Eorg=2C_linux=2Dmips=40vger=2Ekernel=2Eorg=2C_linux=2Dkernel=40vge?=
 =?UTF-8?Q?r=2Ekernel=2Eorg=2C_linux=2Dm68k=40lists=2Elinux=2Dm68k=2Eorg=2C_openrisc=40list?=
 =?UTF-8?Q?s=2Elibrecores=2Eorg=2C_linux=2Dmtd=40lists=2Einfradead=2Eorg=2C_linux=2Dalpha?=
 =?UTF-8?Q?=40vger=2Ekernel=2Eorg=2C_sparclinux=40vger=2Ekernel=2Eorg=2C_nios2=2Ddev=40list?=
 =?UTF-8?Q?s=2Erocketboards=2Eorg=2C_linux=2Driscv=40lists=2Einfradead=2Eorg=2C_linux=2Ds?=
 =?UTF-8?Q?nps=2Darc=40lists=2Einfradead=2Eorg=2C?=
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 6:04 PM Christoph Hellwig <hch@lst.de> wrote:
>
> Arnd, can you consider this patch for asm-generic for 5.4?  I don't
> think I'll be able to feed the actual generic ioremap implementation
> to Linus this merge window, but if we can get as many patches as
> possible in through their maintainer trees that would make my life
> much easier.

Applied now, I missed it earlier when I was on vacation.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
