Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE471D21EA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 00:21:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TuD2pT+UhIVzliDvPzHpIWxW+lRmRSwKOJrpEdsmqFQ=; b=cthM133TviIrmX
	7GsOpR0adKVG4YZ4E5nz4CZobd+UIB/8w7iKmraT2NaUgGvBwk+8Ns1VtloNSfDTwCDbDk0H4MUpz
	ynNhz2iHhnSd6QpmFmHCvDKpFADXsFl3EfscKq1JfnCEl8UtWFXjkziruCV+MPrwpcvAfnnM6JgJi
	G8NAImilF4xVFpRzwPrj4kVHlse/+IqpUgugakxObx8xopHb2lh9nwk6O4v//Y/D8700srab4apSH
	fC2G6E2LhDsQhV+wlmZmV4T1Dpv+zqsk6fPptkTL9O4k3xYZqjxNUlduNnDJ3prUXiXraM2IEX1mZ
	v7p+7/VvpEnZoGVF3ybg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYzkQ-0004iJ-UR; Wed, 13 May 2020 22:21:06 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYzkJ-0004hn-HY
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 22:21:01 +0000
Received: by mail-vs1-xe44.google.com with SMTP id m24so782492vsq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 15:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Febjjj5+WWTqUCbI65lFaOFBjwVkcmzD8E9a3lP4Uv4=;
 b=MdNrrrwcMt5bs37DshmUmoyIMjjh7CB+k9Wk9SQHhdVkyuYOcacp3SASS2JGHQkFZW
 6P6GOR6UyQqrQRzKsmKoQSVSn7Da1sS+IwByJS+VlE4ZThLUdat3cJX4oYY+x1vwVDhw
 NmSmxRfrdXNGNnbQoAWb8hoQ2cIcKtJQ1wkp7+KFnJyqi23qBsaYS/ixGdP3ELSYcwwX
 s3ql3bAdCqGCUM/QoI9AMgSpIlwTlRO9nzyXflHlPNHCw0QL3jewdGahAjnXxpi6JuVJ
 r1cotSeMPSwWva2uv4VGiN7NKdQlUDyGwkvenaCmnDDpOr3mIi1vo8nCILZTJWYz4Zy8
 b4qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Febjjj5+WWTqUCbI65lFaOFBjwVkcmzD8E9a3lP4Uv4=;
 b=KkgYshH8mDu+kBRnpxDQoJerUMs9/yI2JkMyrdJVsK49gsSO9LIP3tI/OwxEQyLTqY
 ScsxPyMgBrRWB4t3UHqJ6+j7/FKdq+cdXndKyUrissxxLEktcA7WrK7NfvVu1HcpVLwT
 IXGuJjB9FNH7Dwh1+7JqW8q1pieLOAakPjVqVdOJWyW2x2jek1TEhFjv7Mc+MS0sHJxP
 lCGQgIRWWMK/C4SHiAySEa9ZjF9OBxDPHAV/sylVepkI8EQn7jS/AfQuoOhJrJSp7Tom
 2pRi6q82xDs5xBVehHtmVcXP2JG0i2/8wJlfiPUW1gGuRdIxjrd9WtdbGNdcVIiT6CIG
 q2og==
X-Gm-Message-State: AOAM533a0xGCipdcDwfynHUodF4fMus7Nv7NVoB5RLbhKSEGLEOA+QU6
 PUSUh81kObqbvKao4olIXsjDvI0y6Ovyw76yb2Y=
X-Google-Smtp-Source: ABdhPJxo9EuLqhoKWxflAPUvXZF3mOIP4Fla676O86ZIxPbhYie0qT8N7NxiarKZvsbsx8aJvfTXSAykTIcU6rJym2E=
X-Received: by 2002:a67:c482:: with SMTP id d2mr1227981vsk.37.1589408457816;
 Wed, 13 May 2020 15:20:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190731124349.4474-1-gregkh@linuxfoundation.org>
 <20190731131045.GB147138@dtor-ws> <20190802104633.GA14823@kroah.com>
In-Reply-To: <20190802104633.GA14823@kroah.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Wed, 13 May 2020 23:18:15 +0100
Message-ID: <CACvgo52+Uqx4GJFwadJoFzzt5EMc69HcW-+K9uxv9t25TtSDBg@mail.gmail.com>
Subject: Re: [PATCH v2 00/10] drivers, provide a way to add sysfs groups easily
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_152059_606022_C2884A58 
X-CRM114-Status: GOOD (  22.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [emil.l.velikov[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: platform-driver-x86@vger.kernel.org,
 linux-fbdev <linux-fbdev@vger.kernel.org>, x86@kernel.org,
 "H. Peter Anvin" <hpa@zytor.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Tony Prisk <linux@prisktech.co.nz>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Borislav Petkov <bp@alien8.de>,
 linux-input@vger.kernel.org, Darren Hart <dvhart@infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, LAKML <linux-arm-kernel@lists.infradead.org>,
 Richard Gong <richard.gong@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg,

On Fri, 2 Aug 2019 at 11:46, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:

>
> I have now done this with patch 1/10.  Here's the pull info if any
> subsystem maintainer wants to suck this into their tree to provide the
> ability for drivers to add/remove attribute groups easily.
>
> This is part of my driver-core tree now, and will go to Linus for
> 5.4-rc1, along with a few platform drivers that have been acked by their
> various subsystem maintainers that convert them to use this new
> functionality.
>
> If anyone has any questions about this, please let me know.
>
> thanks,
>
> greg k-h
>
> -------------------
>
> The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:
>
>   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git tags/dev_groups_all_drivers
>
> for you to fetch changes up to 23b6904442d08b7dbed7622ed33b236d41a3aa8b:
>
>   driver core: add dev_groups to all drivers (2019-08-02 12:37:53 +0200)
>
> ----------------------------------------------------------------
> dev_groups added to struct driver
>
> Persistent tag for others to pull this branch from
>
> This is the first patch in a longer series that adds the ability for the
> driver core to create and remove a list of attribute groups
> automatically when the device is bound/unbound from a specific driver.
>
> See:
>         https://lore.kernel.org/r/20190731124349.4474-2-gregkh@linuxfoundation.org
> for details on this patch, and examples of how to use it in other
> drivers.
>
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>
> ----------------------------------------------------------------
> Dmitry Torokhov (1):
>       driver core: add dev_groups to all drivers
>
>  drivers/base/dd.c      | 14 ++++++++++++++
>  include/linux/device.h |  3 +++
>  2 files changed, 17 insertions(+)
> _______________________________________________

Was planning to re-spin DRM a series which uses .dev_groups, although
I cannot see the core patch.
Did the it get reverted or simply fell though the cracks?

-Emil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
