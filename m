Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9512A6B17
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 16:18:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=84uOH2JOf1Ckg1ms1L3p3/SDG+ne1q9Jyq/mSFKbdmc=; b=avUzuWuryzYdNR
	YjmvzYbGdVthQx6fc7T/DAt3f40AGsEg4lrxbCUqOLBuqCGQdTBuD4ipM9eYVGz8/mnHHcBC7ajAo
	iiuoDSMZ3bg2dqaDVNAXaQDV4tPHtwAnePgDK88DSIBFT6kAOJmZpw1YsOHE9Beg0h8HZzIva6u40
	o5LN+e7yDMMQ1NpKW8d1Iem4QqduWBfU/hhpST+q55eq+qyv9LKIR9vLklYEJl1OLHC1L7YxJ5zob
	1vWhNZbUwxPxglzEQp91qChwZaWdHuIikTXmHG0ZH4lVskRcoUaXjAfpbDGKFs6r+sRwzOAd8ZmQT
	tZ0P57f8q912gTyS6anQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59d7-0000ol-UV; Tue, 03 Sep 2019 14:17:58 +0000
Received: from mail-qk1-f171.google.com ([209.85.222.171])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i59cw-0000nz-0e
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 14:17:47 +0000
Received: by mail-qk1-f171.google.com with SMTP id q203so6859988qke.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 07:17:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NBvHA58am235Kil4REO1DbmmyCPU05PPM7Vs0ryKTNo=;
 b=nEU0Na7kJsP/MYxu9oJV48/64FwhXcrOZtIhyBcAM3KegIRTKsISgVQUw6uxtGuLom
 LRQXkrjD6yaqGwUS4z+jAuMaN6XqQ6meJFAxoIJsKWJ+qxKtMtxhhH0RuywwpN2dXRm8
 JhJFB0IIMAALwcrhW+VbxDcFlodxHAyO6uk2h21klpPanv/RF4NFiZMYeQIR/DU5GRCV
 Dxxh9v4GVxnn4Zn0DYzvWcIaUQT67VTHxIvaxidPRA7KR5JyxT5RA0VgBIj7n6WPesMN
 LYUShiz8M6EV7v+QPdRx7Xgq9wgKWsdxLcA3FNXMlHBEjz4SR4QFs+AAoDOmzTV2IN05
 Ne9A==
X-Gm-Message-State: APjAAAVyKNRa2BmDkslIINcqwVxtI2PR22QdwIqTT2xqHW8rhFXTMp/g
 sjN3RHLlScEf8vl3szD+OocF9P5d2//L5wLIWVY=
X-Google-Smtp-Source: APXvYqwVhpns+/EW7fpsdQhggKdxH3/H/t+l4aj+6vVdTXMt4EPrOuqWUGnp7WY2QEGcRuvIcLyWQG01kiIpa+fcW6k=
X-Received: by 2002:a37:89c4:: with SMTP id l187mr6689014qkd.286.1567520264292; 
 Tue, 03 Sep 2019 07:17:44 -0700 (PDT)
MIME-Version: 1.0
References: <875zmhzjml.fsf@FE-laptop>
In-Reply-To: <875zmhzjml.fsf@FE-laptop>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 16:17:28 +0200
Message-ID: <CAK8P3a2whyE+GRg5Q-fDWHKRegnEybuGHY34B45WNkmx1pY9Mw@mail.gmail.com>
Subject: Re: [GIT PULL] ARM: mvebu: dt64 for v5.4 (#1)
To: Gregory CLEMENT <gregory.clement@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_071746_052988_C0E79842 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.171 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 12:09 PM Gregory CLEMENT
<gregory.clement@bootlin.com> wrote:
> ----------------------------------------------------------------
> mvebu dt64 for 5.4 (part 1)
>
>  - Add mailbox support on Armada 37xx
>  - Add cpu clock node needed for CPU freq on Armada 7K/8K
>  - Enhance CP110 COMPHY support used by PCIe, USB3 and SATA

Pulled into arm/dt, thanks!

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
