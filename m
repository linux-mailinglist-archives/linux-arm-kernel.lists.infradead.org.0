Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2FA109767
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 01:59:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jyq+RqocZ79aa2Je4ldY2vH7MM500tWMekTZLOHvLvQ=; b=DRTkVFwSgbBhRb
	8c//8oHq9aWY94esZesGZOXVPnZ2fdQT8bmSJlzIhhd8k5LkhBWRsdx4YoRYTiOynRcsVbhuQWcGY
	4ZAFlLSg7I6tZAB7J9ZMMO1EmwSnG/3fu9kFaKGck2oIM2rhM6KWrNavTN4G6Bjyk947gBR8WZ/w6
	aOgZfivgSrzeneyEoykZkNblbwvZhtWs61kEloXXjznhKoWDZk+xUPeomr49ilvQ4tqTGSjIe5Bdl
	HXqiE5mbfw25QYodsxtSmPT75hgQ89Hhmc1n0iqwyVqvgPV+vzTW6VE8Tj1W578OJbBO8xWPjFL84
	UW3RIfs61ye2Dl29U6SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZPCf-0003XP-Tv; Tue, 26 Nov 2019 00:59:41 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZPCZ-0003Wb-Dm
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 00:59:36 +0000
Received: by mail-qk1-x743.google.com with SMTP id m16so14634447qki.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 16:59:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=m7XFzCWonYVHxuwP5fu1PxHNZ55RMRiDHqimUZntDh4=;
 b=DIUUFeWUjfSEHzwzxtnqA+xNH2Id50fnNM/fiBRukFlSKzmoT5qSKQJFnv4GuHOpq6
 71gU4R+PrKIedYDMQNEvHspR/u/S/UeN7YoHLzEi3ZRGmbuqRDp0szLHgOxQ2c+DuMdS
 BmuAqg6Z2B73TF+Td/X7g38Qz0Klg/3Muk4Jo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m7XFzCWonYVHxuwP5fu1PxHNZ55RMRiDHqimUZntDh4=;
 b=Ht7pPN60a4bOVGXJ3M4C6xrCqc9rwEUgMHaEcUw5fJaNZ/m/BLaAkpZwWR333J+xfw
 7aEPYUWrePk+jVkZUxyv+v9axRo1XlM6Z0/a0DTDOVCuf7r45QR2/Rf7BduNZLDsa3dr
 7f2y1KyZs0yyIJPekmaWuxByfmxWDkJ+D7sulJ4fAEujpXPTRJOuY7Ru6WMuunkD0Kxy
 kkBoGpPow3mVcEK6EF4X7JE3l2Jvqznr8gIBSZLHK4D7zVuHTrbq0b2H/plqEOdi9wle
 0bxjyIsm3KlqyKWuPSDaAwjWAQZyQKvT0bQmijrVIE8FaPiIbukDGwdfY7Q7XUqpOTsV
 VqyQ==
X-Gm-Message-State: APjAAAVwDY0duRSafRw7SD4I5g1VmDjxTpld0u1aoVwNdIMmRev8V5Cx
 43l6+CPAjkoQFXSj2DdVJLpD/aHiTSY9IRnsrkk=
X-Google-Smtp-Source: APXvYqzxouakbsyDuepwnrAYMPQWMY5b7/QqbsrmtOXq9S445ZLuU58+ueka4h/ftWC1n2cYQWh+IaXs6/v0/YH2Je4=
X-Received: by 2002:a37:ac05:: with SMTP id e5mr13396683qkm.414.1574729971439; 
 Mon, 25 Nov 2019 16:59:31 -0800 (PST)
MIME-Version: 1.0
References: <20191010020655.3776-1-andrew@aj.id.au>
 <20191010020655.3776-3-andrew@aj.id.au>
 <CACPK8Xcrc_2itUcGw6caa8Fp3sJE8oHBO5LJgBtqScwmVAuHJw@mail.gmail.com>
In-Reply-To: <CACPK8Xcrc_2itUcGw6caa8Fp3sJE8oHBO5LJgBtqScwmVAuHJw@mail.gmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Tue, 26 Nov 2019 00:59:19 +0000
Message-ID: <CACPK8XchwGdgE95jkdhwWbp0r+NHge7W3q6yQp-wzfxV3Kpajg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] clk: aspeed: Add RMII RCLK gates for both AST2500
 MACs
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_165935_766560_5620070C 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

On Thu, 10 Oct 2019 at 23:41, Joel Stanley <joel@jms.id.au> wrote:
>
> On Thu, 10 Oct 2019 at 02:06, Andrew Jeffery <andrew@aj.id.au> wrote:
> >
> > RCLK is a fixed 50MHz clock derived from HPLL that is described by a
> > single gate for each MAC.
> >
> > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
>
> Reviewed-by: Joel Stanley <joel@jms.id.au>

I noticed this one hasn't been applied to clk-next.

Cheers,

Joel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
