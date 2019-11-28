Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A8010C83F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 12:54:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JTsl//RminJ3izqWvx0Yhc6YNx5R7zMQ7EfP+4vB+2w=; b=XwU0i9ocrwffvR
	JlEjNXrksN6DRtOK5dhZkKjeSZGXEk12pl4Ygnp3k6fiej0F8nmBIMfcj45DiQyjXhG5/8K+pDAGS
	rJrtzS81MCf8PRnAxwcRELOZNAbp8YenvxvAwlTjRrT1LWrSjE6jzS31vSX5f0q6A6fs/tLyBR2i5
	QLXuU3AbyqCcBi0KQVBlD6yOemWWTShTFQnHP/94IoK+aeJJuc9YEVHy2mh5mMiyEwf16JkqwUF8z
	5HIeHahqu4btSWr8+pkPRrDyTlZr6e2V70rg7NDQ8KDSFiwGCd1a+nLzi0qKfaza0uCL1Cnl3cVom
	TJBdsb4nVkdTA5CT/E4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaINr-0008DN-MN; Thu, 28 Nov 2019 11:54:55 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaINi-0008Ca-6g
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 11:54:47 +0000
Received: by mail-ed1-x543.google.com with SMTP id cy15so14936354edb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 03:54:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fJ1qEAjftKv4KFT+qYxhcQRrloDrH252fRzp4v2mOIA=;
 b=HWQcb5fISvzc7dzW/LwSkYoYP72pXvepeXpeq0QChIvEEvJQZMv/9tsCBDDRZIS35Q
 zL3ZMkuWSYUO/EyFXpermAZ9RZWZSkvu0pQto62bpXxuU6PIyE00l3ozUeZ7nIw7zgAB
 g1Ro4CfkyjLTjaRQflNljm5GdxYLQMtvxlIt9yMX98x0ScmyqVc7n1lMfeaoWRLL1DJS
 IhLbu5FosIRb1jQ7RwtCZMAqqJV4tR6TCGaIKnafsf8EmkQYedojHJxSp2XzaaBBgNLs
 YCfHQ5o36094vUyplRqwjbwGQ/JHETvxtHkY5r4y+p084JRDCDIYJSQ0od55wJjU6nuv
 Vafg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fJ1qEAjftKv4KFT+qYxhcQRrloDrH252fRzp4v2mOIA=;
 b=knT//IpUp5pqbKsH4UC8lKohXt0JIJUsc5YrcLrkF8ryFpymgDJqjHASgQ9xUTEmwU
 9DLFq1C9DuXbT+PSCQLTY0FtBQ61bONniv9euBATmU+2HenBnIMXeh7ey5D/CoAsnF/4
 o7d+RFRP3LINU3MJXGNOSnfwQaWKl9lJRU7IJru4mJtwO0OXmb5g0xabVWPtfQ0wN1sw
 MeffRwOkXrhpeE20lyhOivTNwzECDcMUvlvD7l3Q6gL6d1jdr1WOrdcoxuracFU43l9R
 eeMmcfg5Zu3oc97cVobVmalxhjS4TbjEmZDcKi4ebFaf4t8VYbnaFlXt0xBQnyZLw/pn
 VL9g==
X-Gm-Message-State: APjAAAXOD8oQm06aoYdxoH2j4y3TI54PLSvLnbkU2hvmSr9jRlPAY/FK
 v1a2yzMf0Hz+CAXsBGbFGRsbOzfGFbLifxstBkoQG4M1
X-Google-Smtp-Source: APXvYqyLp6/hXTjbnJ1ipBT5cREkaCmbhUdK6K4O2YMDxHaFUlhpK/aPWwzMePKrShDjywJgigpgYguLM50HKPA9rLM=
X-Received: by 2002:a05:6402:3cf:: with SMTP id
 t15mr37391787edw.21.1574942084243; 
 Thu, 28 Nov 2019 03:54:44 -0800 (PST)
MIME-Version: 1.0
References: <20190131213957.11568-1-alex.williams@ettus.com>
 <CAKfKVtFM1zPb-MjBwY8WREy4xoHW60JrjZ-LnSzBvJ1Yv_zgsw@mail.gmail.com>
 <CAJZzcDiv8BGDa8pj-2gP+BWiu=CfrsDi15xHr=UUFwCwE-E4zg@mail.gmail.com>
In-Reply-To: <CAJZzcDiv8BGDa8pj-2gP+BWiu=CfrsDi15xHr=UUFwCwE-E4zg@mail.gmail.com>
From: Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
Date: Thu, 28 Nov 2019 17:24:32 +0530
Message-ID: <CAKfKVtE8zaQhcYCOSjO26u9MjTJhLDO_R_L2Nca7_EbzBz8DEg@mail.gmail.com>
Subject: Re: [PATCH] i2c: cadence: Handle transfer_size rollover
To: Alex Williams <alex.williams@ettus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_035446_270097_5701CF1C 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (shubhrajyoti.datta[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
 Alex Williams <alex.williams@ni.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 mical.simek@xilinx.com, linux-i2c <linux-i2c@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ,
Apologies for teh late reply,
Somehow replied only to Alex.
On Fri, Feb 15, 2019 at 8:59 PM Alex Williams <alex.williams@ettus.com> wrote:
>
> On Fri, Feb 15, 2019 at 2:53 AM Shubhrajyoti Datta
> <shubhrajyoti.datta@gmail.com> wrote:
> >
> > HI Alex,
> >
> > Thanks for the patch.
> >
> > On Fri, Feb 1, 2019 at 4:22 AM <alex.williams@ettus.com> wrote:
> > >
> > > From: Alex Williams <alex.williams@ni.com>
> > >
> > > Under certain conditions, Cadence's I2C controller's transfer_size
> >
> > Any help in reproducing the conditions would be appreciated
> >
> >
> > > register will roll over and generate invalid read transactions. Before
> > > this change, the ISR relied solely on the RXDV bit to determine when to
> > > write more data to the user's buffer. The invalid read data would cause
> > > overruns, smashing stacks and worse.
> > >
> > > This change stops the buffer writes to the requested boundary and
> > > reports the error. The controller will be reset so normal transactions
> > > may resume.
> > >
> > > Signed-off-by: Alex Williams <alex.williams@ni.com>
>
>
> One possible related errata is here:
> https://www.xilinx.com/support/answers/61664.html
>
> In our case, we only needed to hammer on i2c to reproduce in a few
> minutes, with a script like this:
> while true
>     do date
>     cat /sys/class/gpio/gpio882/direction > /dev/null
>     cat /sys/class/gpio/gpio883/direction > /dev/null
>     cat /sys/class/gpio/gpio884/direction > /dev/null
>     cat /sys/class/gpio/gpio885/direction > /dev/null
>     cat /sys/class/gpio/gpio886/direction > /dev/null
>     cat /sys/class/gpio/gpio887/direction > /dev/null
>     cat /sys/class/gpio/gpio888/direction > /dev/null
>     cat /sys/class/gpio/gpio889/direction > /dev/null
>     cat /sys/class/gpio/gpio890/direction > /dev/null
>     cat /sys/class/gpio/gpio891/direction > /dev/null
>     cat /sys/class/gpio/gpio892/direction > /dev/null
>
>     cat /sys/class/gpio/gpio894/direction > /dev/null
>     cat /sys/class/gpio/gpio895/direction > /dev/null
>     cat /sys/class/gpio/gpio896/direction > /dev/null
>     cat /sys/class/gpio/gpio897/direction > /dev/null
>     cat /sys/class/gpio/gpio898/direction > /dev/null
>     cat /sys/class/gpio/gpio899/direction > /dev/null
>     cat /sys/class/gpio/gpio900/direction > /dev/null
>     cat /sys/class/gpio/gpio901/direction > /dev/null
>     cat /sys/class/gpio/gpio902/direction > /dev/null
>     cat /sys/class/gpio/gpio903/direction > /dev/null
>     cat /sys/class/gpio/gpio904/direction > /dev/null
>     cat /sys/class/gpio/gpio905/direction > /dev/null
> done
>
> In normal usage, we have code that sets up a number of i2c GPIO
> expanders and pokes them for values as it initializes devices.
> Occasionally, the transfer size register will roll over, and the ISR
> will cause memory corruption, since it doesn't stop writing at the
> requested boundary.
Reviewed-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
