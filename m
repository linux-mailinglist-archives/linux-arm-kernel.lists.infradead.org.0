Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7AA2D457
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 05:46:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ky64zxyI5CD+zZrlNgy4HbP7eZJHaKSkMPoMhQ2i224=; b=R+2K/lqmZxYO+3
	48OWq8HBgWz91gUC03OL5nTWHJ6MURlRo5gohOGhRptXaVVLE5pyKvG/DGht5tNtyglxqYSaVUsu5
	0Sr0VFk5c5kn/sWfMeIbcI3Mecypfc6TglnY7gNs6P0QhCwrvjdnVVfJoFMVpnpRpWirXexAfkDm7
	xtQuTZzMbCY1ILRLwXiX+iImVwU05QIhvNGFXDyJF7KA3MlrWQVq++TwV45b6YqRW+aPj5Jb5FjlE
	h/62gpa/gR2GSCWilkb8kxahIAs369K7Fl+JkHD7mLHX4K6QYbal5inL2/UJNTrpHJI7X2ZG39szW
	9xRssNRF89dNobRPapaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVpXh-0001AK-TV; Wed, 29 May 2019 03:46:21 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVpXa-0001A1-Mr
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 03:46:16 +0000
Received: by mail-it1-x144.google.com with SMTP id e184so1345525ite.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 20:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mIbWrLxXAUE8DdyCUYuINo2mEcBTR51/ocvmSZbFSDw=;
 b=lcHDc2Op9T8SoWV1TcTU9MzPj1yUXZKCIdo2qqKUeKkLApgMEYjVonwfqLSxyI8jUr
 dutzBgiBuJt/RUNJqMJHifw/vSAqE9DuDbryE6gSznXK7pHOVR5vgSrMKXYWJPlFOpls
 VzVfrKJwU1ySbtqwH+I71n0GF+r1wIXnbJxRI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mIbWrLxXAUE8DdyCUYuINo2mEcBTR51/ocvmSZbFSDw=;
 b=PNLYeYejgDE06IY4TC3Uk4KkR1BT5Lu9wceGkeMKoZj1UD636aiZYHIwxH12p+I3pD
 khLif/jC8is+9+KMGp5b1v8ShPM8AXn06Yw5OMSdMlcv+BuSMeO0hYIzmx4+a/jSFlri
 mhniIzHmTyVgnTVoatBsjXRpPF8P/v8meHS73tsvrkVENxOIuSwcjAAb/QTA/tRsGTsy
 xgkxmfquVVYJ3m+Pn0OMTJD1EERkKfTK2cOyX2gGhaE/C0SV6S4deC61pPJWsfQ4jCZS
 +T/J/RaA+TustOAFs+MKtkkz556n47vF/I5fEpNyRe8SskUp7v3qR8qBskk8xHyOsRWI
 BR3g==
X-Gm-Message-State: APjAAAUHJqnsSLnXntn84o8jL6FEg5SnBrZ3R4FihvBAsIKUtMo1ifdW
 1AfS1V6clY5cxc62GJCkQDBzzYr0XyhULwjT
X-Google-Smtp-Source: APXvYqykaMjF596e3ZqR4YdjWZAJqwyn2/K4WlDgrG4v8jU8vE9Y3bYwVaqmeLCwyZZDtfg/aYHVbQ==
X-Received: by 2002:a24:7949:: with SMTP id z70mr6246812itc.36.1559101573806; 
 Tue, 28 May 2019 20:46:13 -0700 (PDT)
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com.
 [209.85.166.50])
 by smtp.gmail.com with ESMTPSA id e2sm487570ith.39.2019.05.28.20.46.13
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 20:46:13 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id h6so618266ioh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 20:46:13 -0700 (PDT)
X-Received: by 2002:a5e:db02:: with SMTP id q2mr308707iop.306.1559101103189;
 Tue, 28 May 2019 20:38:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190417104511.21514-1-frederic.chen@mediatek.com>
 <20190417104511.21514-7-frederic.chen@mediatek.com>
 <20190509094846.GA65444@google.com>
 <1558466055.15388.342.camel@mtksdccf07> <20190522102514.GA218991@chromium.org>
 <1558619189.7995.27.camel@mtksdccf07>
In-Reply-To: <1558619189.7995.27.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 29 May 2019 12:38:11 +0900
X-Gmail-Original-Message-ID: <CAAFQd5BbrfhjGbKaUi4p6fJJNOKvkZb4_47gw-W8n5fEmaf5XQ@mail.gmail.com>
Message-ID: <CAAFQd5BbrfhjGbKaUi4p6fJJNOKvkZb4_47gw-W8n5fEmaf5XQ@mail.gmail.com>
Subject: Re: [RFC PATCH V1 6/6] platform: mtk-isp: Add Mediatek DIP driver
To: Frederic Chen <frederic.chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_204614_773312_1E672195 
X-CRM114-Status: GOOD (  28.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Shik Chen <shik@chromium.org>, devicetree@vger.kernel.org,
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <Sean.Cheng@mediatek.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <Rynn.Wu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 =?UTF-8?B?SG9sbWVzIENoaW91ICjpgrHmjLop?= <holmes.chiou@mediatek.com>,
 suleiman@chromium.org, Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>,
 =?UTF-8?B?SnVuZ28gTGluICjmnpfmmI7kv4op?= <jungo.lin@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>, yuzhao@chromium.org,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 zwisler@chromium.org, Matthias Brugger <matthias.bgg@gmail.com>,
 =?UTF-8?B?Q2hyaXN0aWUgWXUgKOa4uOmbheaDoCk=?= <christie.yu@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 10:46 PM Frederic Chen
<frederic.chen@mediatek.com> wrote:
>
> Dear Tomasz,
>
> Thank you for your comments.
>
>
> On Wed, 2019-05-22 at 19:25 +0900, Tomasz Figa wrote:
> > Hi Frederic,
> >
> > On Wed, May 22, 2019 at 03:14:15AM +0800, Frederic Chen wrote:
> > > Dear Tomasz,
> > >
> > > I appreciate your comment. It is very helpful for us.
> > >
> >
> > You're welcome. Thanks for replying to all the comments. I'll skip those
> > resolved in my reply to keep the message shorter.
> >
> > >
> > > On Thu, 2019-05-09 at 18:48 +0900, Tomasz Figa wrote:
> > > > Hi Frederic,
> > > >
> > > > On Wed, Apr 17, 2019 at 7:45 PM Frederic Chen <frederic.chen@mediatek.com> wrote:
[snip]
> > > > Also a general note - a work can be queued only once. This means that
> > > > current code races when two dip_works are attempted to be queued very
> > > > quickly one after another (or even at the same time from different threads).
> > > >
> > > > I can think of two potential options for fixing this:
> > > >
> > > > 1) Loop in the work function until there is nothing to queue to the hardware
> > > >    anymore - but this needs tricky synchronization, because there is still
> > > >    short time at the end of the work function when a new dip_work could be
> > > >    added.
> > > >
> > > > 2) Change this to a kthread that just keeps running in a loop waiting for
> > > >    some available dip_work to show up and then sending it to the firmware.
> > > >    This should be simpler, as the kthread shouldn't have a chance to miss
> > > >    any dip_work queued.
> > > >
> > > > I'm personally in favor of option 2, as it should simplify the
> > > > synchronization.
> > > >
> > >
> > > I would like to re-design this part with a kthread in the next patch.
> >
> > Actually I missed another option. We could have 1 work_struct for 1
> > request and then we could keep using a workqueue. Perhaps that could be
> > simpler than a kthread.
> >
> > Actually, similar approach could be used for the dip_runner_func.
> > Instead of having a kthread looping, we could just have another
> > workqueue and 1 dip_runner_work per 1 request. Then we wouldn't need to
> > do the waiting loop ourselves anymore.
> >
> > Does it make sense?
>
> Yes, it make sense. Let me summarize the modification about the flow.
>
> First, we will have two work_struct in mtk_dip_request.
>
> struct mtk_dip_request {
>         struct media_request request;
>         //...
>         /* Prepare DIP part hardware configurtion */
>         struct mtk_dip_hw_submit_work submit_work;
>         /* Replace dip_running thread jobs*/
>         struct mtk_dip_hw_composing_work composing_work;
>         /* Only for composing error handling */
>         struct mtk_dip_hw_mdpcb_timeout_work timeout_work;
> };
>
> Second, the overall flow of handling each request is :
>
> 1. mtk_dip_hw_enqueue calls queue_work() to put submit_work into its
>    workqueue
> 2. submit_work sends IMG_IPI_FRAME command to SCP to prepare DIP
>    hardware configuration
> 3. dip_scp_handler receives the IMG_IPI_FRAME result from SCP
> 4. dip_scp_handler calls queue_work() to put composing_work (instead
>    of original dip_running thread jobs) into its workqueue
> 5. composing_work calls dip_mdp_cmdq_send() to finish the mdp part tasks
> 6. dip_mdp_cb_func() trigged by MDP driver calls vb2_buffer_done to
>    return the buffer (no workqueue required here)
>

Sounds good to me, but actually then simply making the workqueues
freezable doesn't solve the suspend/resume problem, because the work
functions wouldn't wait for the firmware/hardware completion anymore.
That's also okay, but in this case we need to add some code to suspend
to wait for any pending operations to complete.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
