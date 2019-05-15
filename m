Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E69A71F689
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 16:29:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t/KDNa2KLCRwgu0YIEi405f1Q/EkSxlnfCufcBMO5tA=; b=AQAO6ZbxrMSikA
	q1jR+kN/w51Q1rYXdcrlrH6vhqvlMHhJpMMxw1dvgRRLBNtW6sU04HXTr/D0z6I1EQONBoN1J2UkC
	qRMjK6gooP57tT4lVcGUtLPQVil8EImKeDoKvx7AAX1NoMa4yBTfo/ae/xHn1/24g075Y+VtJpM4H
	mqZPSjHiMyCPx1w1IEd6O7uxpkyNDu1gnMTs9r/UCKuTFWFizX5g7U+RlGrX4ZawEa+Hh2Upa1rsq
	pDTLK/uWshVFxGDPn7D2OGm/pJQoLQS1+w0YZLTFw1Fzp/2RsmpoOLQan5RpxFhjdSbZ+eME5VT80
	x8u9eCOqK93lmezdu2hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQuu7-0000KE-ER; Wed, 15 May 2019 14:29:11 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQutz-0000Jf-Hc
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 14:29:05 +0000
Received: by mail-it1-x142.google.com with SMTP id e184so459667ite.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 07:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zcom2KmrR2zu/9zS7N5rXR3cLv7Skvz7iuMfQede9gI=;
 b=yVpxpdx0E3TY+24uVOIOpyaaNCAIQ0mXFMdRwC7ThOBNFVpjG6CJPGtU1Qqy2H245j
 fLz2QOnoMcW+F5p5v8PrQg3JOj0/JuOE+uYe1s1g0pCNepkvtGg4bBiQtel8GOkw1mxm
 eviMIgQ9LIqD7NR9GZxKEhXkbUNtz7GS6H7d3BXQmdq6FBkRq4T2ZFj/GLwpshB8WHHu
 E164hqhuLp1iDrxl/fkr/HZnSdxs48GKTdI/m6PkPRzcA0/S8merm6bkpLUBHzXtG/Em
 c4XF+bCc9ikEid4SsydIz1lNFGlsMaf2/wQQwSSsH9b3pyE1sia0eqSE7TprNxE3fZBf
 hdsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zcom2KmrR2zu/9zS7N5rXR3cLv7Skvz7iuMfQede9gI=;
 b=GMWfTl1FBD9HRsmuGynXmiyUzd2NyJYbfNLX8qudNOexQqR5mGcxM0WNHlzoyeLyeg
 xNcA9sC224lQKVR+vN/YKG1H2Q4WnokcJ7zhlVqLVyKgbcAfWJqZSuWYcE96q8qhBfvu
 6BoFfF3uukugruMvCMhzwJaEeY3UW8SDKR2kGqhumASouvTUvxqAyy+dq4I4BFfUGEHV
 yAGxBfloXdVQyLJIufzxjwULHJElV9nxa/4O7QD9FNHPc1JIxRBezFdn7rH9P9AQM+Ql
 wEb3DGND05NKfisaLN2UXip3Eysvy+Kid6Ev0TLqwtIgqNko7OSGo3ouMQ/4oHynIDsP
 i6Dw==
X-Gm-Message-State: APjAAAUeQmVrUJSOjhyObJAXctSDetVKJIALIERUPtcW+g9lHKLEfKi7
 7hPnppTO/LH4ZalkI/NR6ztuk9hTPb0PvUSg/F/nNQ==
X-Google-Smtp-Source: APXvYqwXfDXiDVk4I3GMZR3VcEv0ClkcPeGMTqbJNYkQPOng+dqOKHfZjv78OMayKbKjZDCMLspBZ76UnbemqZlRV0s=
X-Received: by 2002:a02:80e:: with SMTP id 14mr27462714jac.71.1557930539583;
 Wed, 15 May 2019 07:28:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190514194018.23420-1-mathieu.poirier@linaro.org>
 <20190514194018.23420-2-mathieu.poirier@linaro.org>
 <657f1851-2a97-4efd-6532-fbcb1c927e88@arm.com>
In-Reply-To: <657f1851-2a97-4efd-6532-fbcb1c927e88@arm.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 15 May 2019 08:28:48 -0600
Message-ID: <CANLsYkwGyazUAB5Xs1PFn+sgT78c7DBqc6VDDPr4iBYx_Os+Ng@mail.gmail.com>
Subject: Re: [PATCH V2 1/6] coresight: etb10: Properly set AUX buffer head in
 snapshot mode
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_072903_623187_98647D56 
X-CRM114-Status: GOOD (  21.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Coresight ML <coresight@lists.linaro.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Good day Suzuki,

On Wed, 15 May 2019 at 03:45, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
> Hi Mathieu,
>
> On 14/05/2019 20:40, Mathieu Poirier wrote:
> > Unify amongst sink drivers how the AUX ring buffer head is communicated
> > to user space.  That way the same algorithm in cs_etm_find_snapshot()
>
> I would leave the userspace tool's function name out of the commit description
> and the comment below. We could instead say: "That way the same algorithm can be
> used by the userspace tool to determine the position and the size of the latest
> snapshot data."

I purposely added the name of the function there so that people can
quickly find it and avoid any misunderstanding about the code in
question.  But I also have the same information as a comment in the
code, which should be sufficient.  I'll fix it.

>
> > can be used to determine where the latest data is and how much of it
> > to access.
> >
> > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > ---
> >   drivers/hwtracing/coresight/coresight-etb10.c | 13 +++++++------
> >   1 file changed, 7 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
> > index 4ee4c80a4354..60e753b1768d 100644
> > --- a/drivers/hwtracing/coresight/coresight-etb10.c
> > +++ b/drivers/hwtracing/coresight/coresight-etb10.c
> > @@ -548,13 +548,14 @@ static unsigned long etb_update_buffer(struct coresight_device *csdev,
> >       writel_relaxed(0x0, drvdata->base + ETB_RAM_WRITE_POINTER);
> >
> >       /*
> > -      * In snapshot mode we have to update the handle->head to point
> > -      * to the new location.
> > +      * In snapshot mode we simply increment the head by the number of byte
> > +      * that were written.  User space function  cs_etm_find_snapshot() will
> > +      * figure out how many bytes to get from the AUX buffer based on the
> > +      * position of the head.
> >        */
> > -     if (buf->snapshot) {
> > -             handle->head = (cur * PAGE_SIZE) + offset;
> > -             to_read = buf->nr_pages << PAGE_SHIFT;
> > -     }
> > +     if (buf->snapshot)
> > +             handle->head += to_read;
> > +
> >       __etb_enable_hw(drvdata);
> >       CS_LOCK(drvdata->base);
> >   out:
>
> Otherwise:
>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

Is this for all the kernel space patches or just this one?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
