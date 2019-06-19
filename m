Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5CD4C137
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 21:10:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QZjywb+qoG0NxF435z3lt/PMh7ldQ4yA4JTIsuoKLBA=; b=iKBcaCzu5eWn7H
	sdrlm+oW9UIec6GCxmh54B/dHA4FBgjWjxTCEO8D8SLxm17cC8PRUAlGAMi6c5vBPNBlw3E1UcDLo
	x23IRox+6Swrpj5ZxuW1Ha1Gj2sWov5qG0dR36lK4fPhyBkMv4pUTbDUOujAQzE3pTX2+mTxTAYJQ
	uR0Zzej09a92Wcq45JRLAOsANG2eCAgfRjcYeLsM8iHZE7bytcp1zjcFEydqwdNDzRhYdEG8zuL+e
	0EndQeDgab6yI0JbuF4Cxqtm7KHOmYpQqTGLUR23P2gYcYooV08UvA+LyX+COMuMpC4StgYqD1bBI
	nDdXMDR33QsBW7NcaxEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdfyD-0008Ga-RU; Wed, 19 Jun 2019 19:10:09 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdfxu-0008FN-7e
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:09:51 +0000
Received: by mail-io1-xd44.google.com with SMTP id h6so100587ioh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rj8gVwR61N8vwo2bEUoCGma9J+b4svg5StK656WThQU=;
 b=iU7QnRjWE7kd1beM7/QpD5tM5twhAXD5mNGXNQRkNPBfWKi+lzihhptMRNRY0cB94P
 +DZ/Q7wyVQIqw+RkZ2x1IOBgLCEUrnYWZCb7qNnJZRSS9302uZ84WD/W87piR8zOGdjQ
 KBrpcOkuzvLNUX/Xror2yRNcnPQnvfhRQJ4rpjAVd3GpiB2HqqILRWBVidyG38YZH6sx
 fjqQZ3fnTmGP8N7ndIHrINWj2em8umOJwJTnNVivup5UxWFcaBqBokeaL6+Kce2blNzL
 zpBpV4yRSodKWEUPS3hGCahmIfVpXsQqaf2kZi56UPKXHAOpcUHhfltlAJoV5/hedNoh
 lq1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rj8gVwR61N8vwo2bEUoCGma9J+b4svg5StK656WThQU=;
 b=TtYzGotIT3buPxFqNHGIChrcWlBjFwF3TmuSGufFBB6tqQ/SBSIUhSMfkhFegp3vvq
 Ob2KJnnHNuxKViFZ4HOnkHQUu7QdyNbFaflh6fWmc9JL1BsZcwBeyRkwCGDpWlE032K5
 dugmWrCI2KCOrf1kRyxtPmXYMNw+uqODUMgxmpNmxnao1mg5IMxON4DJUq8ipgkuZ9g9
 9s1UjfCjgc7UDtVpy82LiwJvcnZMC+sRQSbDZ4i47hlEqGTh0kSSlf6DfLeSvQZOJfgP
 f4PU2z64ubdIv9t7AjClJbYsgSG4Ogqm+upcVYZu2Ien8vpnuSDbv8K+7dXPWcoNBeTG
 TUBw==
X-Gm-Message-State: APjAAAUfizgAzTRWuZGNaYrvSbI2rYFTwhg9TKv/els478Db62fvFr6E
 O1QH/eVa/gFl1a0mSpHn/lmPLEBoiq5IjOOl82NiH3EB9I4=
X-Google-Smtp-Source: APXvYqzZax5MvFFIL0UKez+D/I8yijnuHT3Ru97luvwhCyvZJ3eKeLTQJ28usOx2SfWnJm1iUMMKyr7sXj+IPEu8fsM=
X-Received: by 2002:a05:6638:40c:: with SMTP id
 q12mr12510159jap.17.1560971387612; 
 Wed, 19 Jun 2019 12:09:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
 <20190619172949.4522-20-mathieu.poirier@linaro.org>
 <20190619183128.GA6735@kroah.com>
In-Reply-To: <20190619183128.GA6735@kroah.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 19 Jun 2019 13:09:36 -0600
Message-ID: <CANLsYky+qPPtuhdCNxrPBPO9gjGEc3CZevef9FQNbKhJMYwh2w@mail.gmail.com>
Subject: Re: [PATCH 19/45] coresight: platform: Make memory allocation helper
 generic
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_120950_290835_FAFD1D8E 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
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

What ?!?

>
> I applied all patches up to here, can you rebase and resend the
> remaining ones?

Obviously something went wrong - let me look into it.

Sorry for the mess and thanks for the patience.

>
> thanks,
>
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
