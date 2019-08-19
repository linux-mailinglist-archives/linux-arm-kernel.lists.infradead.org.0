Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E4E91EBF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 10:20:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QzorXnwiJOC3myp1TI6pIu5sgmZrMQ1iM0zD6b/Og18=; b=IW7CeARwjYdrwJ
	OwVv1N3ig5ClYLewywZ3bTX2viTh+IlgJ9e521YUt9IQ5QZh/vMPBRJmlckuYpteMWF5ZZ/m1936d
	/4AIyFR6+xVTWtM3VVYscbCfsKnl48KGWupq7ZVgZPG96OuJlDxUU6iVexNpUzim/ZAANLxnJBK6z
	fDPNFj7V0bmrbjvu7WRZsc8XMbNVu/iB7rHr5rqgvI3IPG1P6CvH9i1XME05YUshVTna78Ilknx+z
	e1CkqzxHqPQWiuJO50CVZoQxH8LeATDWXU0o1dhWPDmOud9P8WJ+Jh7REuye2yFtdPWorug5NS/Kd
	SJVIYwcgr4fwA/OsTMnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzcuB-0003cC-3K; Mon, 19 Aug 2019 08:20:43 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzctt-0003bN-UB
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 08:20:27 +0000
Received: by mail-ot1-f67.google.com with SMTP id c34so899536otb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 01:20:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xS8pnTXr+3PwEje+y6dB7oMHpWB4o5rNXOdh/Rkk++Q=;
 b=GbmSVYNNjO8AGp5LH2ESZryWWnm1xBYwyhd3rZJ9BcL5t7INJU4uaAEDX10s9T4Ntv
 To5Jrb3B91k5/5lbUgL3xzmsPj/viFnK67qrl7sNuz/K1C9AZk4HnlCAQeaXsuF5Y7Oh
 iTYfQoF74sqQ/bEweE5QiuhSvmu5zCjghEpwGM/iP4kzBFy8sD5g1iLffatJ8jHQ7Yqx
 +Z0+tCpljkZZvzYUTw+x3EF5aiklqV5RWkc9URPFdeZYbriTFoO16ZDv+EBSviev3LCy
 bP0dh0C0VriTcgxTXS0euhq9bJUBj0K+EOJlSWwT1wuxftM34/rNTspPq3Z1xCSzHms1
 A5lg==
X-Gm-Message-State: APjAAAWS5uO5F82HICQoIgRP/hYT+SARIMQPKgJKNvZFtSoiI4GBHcpu
 zUDUmOF6yCovYJsO9wYcz0VFpjApKbTvDq8Nup0=
X-Google-Smtp-Source: APXvYqzWpuiaz71ScmIyZbNRmxlq1ByZY1iRfxME8FhAce0Jv5HInimy281JwzZBnuDa9m2zO5ABaIRP6MB3pyYh/eI=
X-Received: by 2002:a9d:674c:: with SMTP id w12mr13640118otm.118.1566202822686; 
 Mon, 19 Aug 2019 01:20:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190724074722.12270-1-ran.wang_1@nxp.com>
 <4158639.B12JYek7R7@kreacher>
 <DB8PR04MB682632A586827032F8D6EA2DF1A80@DB8PR04MB6826.eurprd04.prod.outlook.com>
In-Reply-To: <DB8PR04MB682632A586827032F8D6EA2DF1A80@DB8PR04MB6826.eurprd04.prod.outlook.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 19 Aug 2019 10:20:11 +0200
Message-ID: <CAJZ5v0i58p-GsswzMGEsgD5OXDqJ_G5zXDYf8jq8JJbWxZv+nQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/3] PM: wakeup: Add routine to help fetch wakeup
 source object.
To: Ran Wang <ran.wang_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_012025_979274_F39B54DB 
X-CRM114-Status: GOOD (  27.12  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Biwen Li <biwen.li@nxp.com>,
 Len Brown <len.brown@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 10:15 AM Ran Wang <ran.wang_1@nxp.com> wrote:
>
> Hi Rafael,
>
> On Monday, August 05, 2019 17:59, Rafael J. Wysocki wrote:
> >
> > On Wednesday, July 24, 2019 9:47:20 AM CEST Ran Wang wrote:
> > > Some user might want to go through all registered wakeup sources and
> > > doing things accordingly. For example, SoC PM driver might need to do
> > > HW programming to prevent powering down specific IP which wakeup
> > > source depending on. So add this API to help walk through all
> > > registered wakeup source objects on that list and return them one by one.
> > >
> > > Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
> > > ---
> > > Change in v5:
> > >     - Update commit message, add decription of walk through all wakeup
> > >     source objects.
> > >     - Add SCU protection in function wakeup_source_get_next().
> > >     - Rename wakeup_source member 'attached_dev' to 'dev' and move it
> > up
> > >     (before wakeirq).
> > >
> > > Change in v4:
> > >     - None.
> > >
> > > Change in v3:
> > >     - Adjust indentation of *attached_dev;.
> > >
> > > Change in v2:
> > >     - None.
> > >
> > >  drivers/base/power/wakeup.c | 24 ++++++++++++++++++++++++
> > >  include/linux/pm_wakeup.h   |  3 +++
> > >  2 files changed, 27 insertions(+)
> > >
> > > diff --git a/drivers/base/power/wakeup.c b/drivers/base/power/wakeup.c
> > > index ee31d4f..2fba891 100644
> > > --- a/drivers/base/power/wakeup.c
> > > +++ b/drivers/base/power/wakeup.c
> > > @@ -14,6 +14,7 @@
> > >  #include <linux/suspend.h>
> > >  #include <linux/seq_file.h>
> > >  #include <linux/debugfs.h>
> > > +#include <linux/of_device.h>
> > >  #include <linux/pm_wakeirq.h>
> > >  #include <trace/events/power.h>
> > >
> > > @@ -226,6 +227,28 @@ void wakeup_source_unregister(struct
> > wakeup_source *ws)
> > >     }
> > >  }
> > >  EXPORT_SYMBOL_GPL(wakeup_source_unregister);
> > > +/**
> > > + * wakeup_source_get_next - Get next wakeup source from the list
> > > + * @ws: Previous wakeup source object, null means caller want first one.
> > > + */
> > > +struct wakeup_source *wakeup_source_get_next(struct wakeup_source
> > > +*ws) {
> > > +   struct list_head *ws_head = &wakeup_sources;
> > > +   struct wakeup_source *next_ws = NULL;
> > > +   int idx;
> > > +
> > > +   idx = srcu_read_lock(&wakeup_srcu);
> > > +   if (ws)
> > > +           next_ws = list_next_or_null_rcu(ws_head, &ws->entry,
> > > +                           struct wakeup_source, entry);
> > > +   else
> > > +           next_ws = list_entry_rcu(ws_head->next,
> > > +                           struct wakeup_source, entry);
> > > +   srcu_read_unlock(&wakeup_srcu, idx);
> > > +
> >
> > This is incorrect.
> >
> > The SRCU cannot be unlocked until the caller of this is done with the object
> > returned by it, or that object can be freed while it is still being accessed.
>
> Thanks for the comment. Looks like I was not fully understanding your point on
> v4 discussion. So I will implement 3 APIs by referring wakeup_sources_stats_seq_start/next/stop()
>
> > Besides, this patch conflicts with some general wakeup sources changes in the
> > works, so it needs to be deferred and rebased on top of those changes.
>
> Could you please tell me which is the right code base I should developing on?
> I just tried applying v5 patch on latest git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git branch master (d1abaeb Linux 5.3-rc5)
> and no conflict encountered.

It is better to use the most recent -rc from Linus (5.3-rc5 as of
today) as the base unless your patches depend on some changes that are
not in there.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
