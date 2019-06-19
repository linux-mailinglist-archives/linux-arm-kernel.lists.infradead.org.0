Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EEF74C207
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 22:04:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JUK6ek38BOtpsJfFDMKr79k51ynySuAiyNlt8xOwFPQ=; b=KjHx2L4tLvx0GC
	1eCNgvBcnNlF39tWw6gv+yZ7jF8WhMvP/yptaLX+hgFNEVz4tM/8y63VEKydZQETtCIA01g/q1fOH
	fL1M+i3JbdE1eoSUUd7m9VpeECsL4dqz+H9hwpptelS/ihoUbcCeHFxRtRzy9Eu594grShNZunNJ2
	Y6Mhv5Irbw5nx7FmWyA/tugcJA5BGUmpbYqdNQm1TY5k2N74x4j7r2zNSdgPe1AjLydjzRHfMqrpS
	ao5elq5POKQSWvkrFWvEuHP921n6TrIe9zG+kN6YTtkRGxD1JssvETUTA5Px33QOUIRHaqzIaU34C
	GtUFhJFe6wgMmSAbIoSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdgp3-0001V1-TG; Wed, 19 Jun 2019 20:04:45 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdgl0-0006HN-OX
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 20:00:37 +0000
Received: by mail-io1-xd41.google.com with SMTP id m24so1264819ioo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 13:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nqbVPSekcJk6DclXUJJDQELEcl0dMaT5fvsZyNdd2M4=;
 b=smtuFuF0dv6uSdusvvaiZBF1YpGPbG8PZXzo0SW79C16cOzNM/ndBfBZIIijq3bVLB
 KrUrR7ztbe+XmvRYQ4R2C0aTSbeGBx7Yc9PdnMv7tYtt7wFidfuLnBVQEmw3I3DhsyyL
 VoPWIfSxlIUTjFfZyW9ovuzf2xtaX3xNb5roAvvImC5U22oLc2FZYKeodhjEWm8Ot6Ss
 E0ywOVjVAjhC5lyeYFB3AyQZAafid2ITEVFTLkXb/Scav4uWUPyoNWPGg/fnNjXnTHga
 iUyMZoSHPdgmgYMnbd31rJ7eIrmSAA0VKGIgNqmNBfD2tWF7TmOhxMUEw9ewgLVYEX7o
 6L/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nqbVPSekcJk6DclXUJJDQELEcl0dMaT5fvsZyNdd2M4=;
 b=exkTx2LGb66DLfNMV/nUKfYjio2lkzLT+6yzjscqfteMyCKnNdlXE0aHOiwoQNCXHw
 uO7BsiwRlLeE8ndvJWsdiBOm1ZVNnmyhIwRyNCmiGZujz2XZV+SvxPngGbxc2Yvm/+IU
 e8HCVLc075rUwGXMlDJl8nsczH0GxPa9jZcK8F4+8WKwnikhMtC6W6bctluI7PEnRmDk
 pHgDzGZLV8EdZF9vAC2J1woN7XctrR7ezn1DpdDJ1JktfVL2PIM8vbeShVzxXoTrwgPS
 hUcgmJ9a901oiir7gENSvsQAjqrbe0MBjWpkAbaKQiWjijwhGz5t0ESHywFsIaagfE4l
 F/Vg==
X-Gm-Message-State: APjAAAXwtACQ915WEalQBkaX83L4nx2fViWnPj+DtmJOU7Y2DR0zrMh5
 mA/A3tKzRESgUpN3vgbEx0O+VSWADV/OMvZaY0dhhQ==
X-Google-Smtp-Source: APXvYqyTIWDhCWo6F8k8lZ1cKGpMXAy+fxs3G2lxf19jOG9M5Dnys/GX9zRWRTlP7dv2CDydejG8O/ekCqlIL434iQs=
X-Received: by 2002:a6b:1494:: with SMTP id 142mr90367822iou.72.1560974432447; 
 Wed, 19 Jun 2019 13:00:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
 <20190619172949.4522-20-mathieu.poirier@linaro.org>
 <20190619183128.GA6735@kroah.com>
In-Reply-To: <20190619183128.GA6735@kroah.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 19 Jun 2019 14:00:19 -0600
Message-ID: <CANLsYkwFkVcrGv4bi6fCLLhHqxfnmUyWJ7dYH=E4cuksqWLxAA@mail.gmail.com>
Subject: Re: [PATCH 19/45] coresight: platform: Make memory allocation helper
 generic
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_130034_877916_AC5F17A7 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 19 Jun 2019 at 12:31, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Wed, Jun 19, 2019 at 11:29:23AM -0600, Mathieu Poirier wrote:
> > From: Suzuki K Poulose <suzuki.poulose@arm.com>
> >
> > Rename the of_coresight_alloc_memory() => coresight_alloc_conns()
> > as it is independent of the underlying firmware type. This is in
> > preparation for the ACPI support.
> >
> > Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > ---
> >  .../hwtracing/coresight/coresight-platform.c  | 34 +++++++++++--------
> >  1 file changed, 19 insertions(+), 15 deletions(-)
>
> This file is not in my tree.
>
> Did you forget to send me the commit:
>         coresight: Rename of_coresight to coresight-platform
> ???
>
> I applied all patches up to here, can you rebase and resend the
> remaining ones?

I just sent you the rest, rebased on your char-misc-testing branch.

I'm perplexed about the original set - git confirmed that it sent the patch:

Result: 250
OK. Log says:
Server: smtp.gmail.com
MAIL FROM:<mathieu.poirier@linaro.org>
RCPT TO:<gregkh@linuxfoundation.org>
RCPT TO:<linux-arm-kernel@lists.infradead.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Cc: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 15/45] coresight: Rename of_coresight to coresight-platform
Date: Wed, 19 Jun 2019 11:29:19 -0600
Message-Id: <20190619172949.4522-16-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>

And Spinics has confirmed reception [1].  I hope the revised set will
do the trick.

Thanks,
Mathieu

[1]. https://www.spinics.net/lists/arm-kernel/msg736147.html
>
> thanks,
>
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
