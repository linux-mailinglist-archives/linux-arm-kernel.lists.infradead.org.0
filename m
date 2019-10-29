Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00570E91EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 22:20:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nef+FFkOxTLpdx9KB8W5M71LJerQkPxtdL1VTeUkxJ0=; b=WlLUx3GhFOd/mN
	4JCLpGtkACYW5FrsX5aF+9PhjOOfApoh159JJux6VQ9q8nLU9U190HoumEJD85L6rPwcxtGA5jCfm
	ZB86U0/xqniC6W8wddKZdep+JeLmuXOfiG5343umGCNuWYrAGgaSyo3znsf58O94fuLmH29bcpxEK
	gH+amAepUAVskn/rCGHCgWSJl8CDbO4m5uj+9SQZb1LdwFLomOxRMUyR00HjpcLbfkaOlbF4U6f+X
	g8XHMTPs3SaJSwWHQE+LaWW/LiaMaeTycuMCpOVLpHlX5Y/oVRtYr5S5WY1VC6A3kNAca06fNEnUY
	auVv4RA/9qBuOlVvJ0LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPYuu-0003bH-Ni; Tue, 29 Oct 2019 21:20:40 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPYtx-0001sY-My
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 21:19:44 +0000
Received: by mail-ot1-f66.google.com with SMTP id u13so245696ote.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 14:19:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ecDqSfSuAIrQpm88YN5y/79NJNgXFx+waZx0U92w3DQ=;
 b=f2rpys3pVJqqjyN1RpnsO+Ikbh/gumjBfPNwdNIowf+1F0niQ06QFyJhdvUbLck3h7
 Dx1AK0qZjeK+dMPC+nol0o38+f4R9LlT2uxEZboiPoWXiIss3sX4lx2tpsnRDOHNjcSB
 aI6CW1a7zH9W7nrzAP/hNtK68zml8Gisk7GKNUBn9C7pWHiTUcXa3Sshg1HbZg7NOc8r
 RmUeIYBb85RK3WuvWX8dF033IZjlTL2DL5yBo/sODkcKtxtzbQxOmQKKk+ZBq24NcgTO
 Hd+GEcxP4OpRl06bEMQjlCWjfBkljaw0pkqK9DmAqk8uoBlptkYqjX4Pr/tFQbV2pZiO
 5zkA==
X-Gm-Message-State: APjAAAXOAhMfnqT/NZjAZ4dK6E8dhaf7xU6zWYKJZ8kI3JK1D/jsJJUD
 2jllTzUCqs1fpXkFzE7Jupcb2ovsNRI=
X-Google-Smtp-Source: APXvYqw9ItMCclbq+hbgoRV+lckj1zCsA4v6xoAMHOlCG87l8lSW3Kk65DD7Aovru2NPGqtjmSOtMA==
X-Received: by 2002:a05:6830:f:: with SMTP id
 c15mr20338943otp.204.1572383978063; 
 Tue, 29 Oct 2019 14:19:38 -0700 (PDT)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com.
 [209.85.210.48])
 by smtp.gmail.com with ESMTPSA id k18sm2906562oik.58.2019.10.29.14.19.37
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 29 Oct 2019 14:19:37 -0700 (PDT)
Received: by mail-ot1-f48.google.com with SMTP id 53so226386otv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 14:19:37 -0700 (PDT)
X-Received: by 2002:a05:6830:2322:: with SMTP id
 q2mr14516847otg.74.1572383976764; 
 Tue, 29 Oct 2019 14:19:36 -0700 (PDT)
MIME-Version: 1.0
References: <20191024092644.26583-1-ran.wang_1@nxp.com>
In-Reply-To: <20191024092644.26583-1-ran.wang_1@nxp.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Tue, 29 Oct 2019 16:19:25 -0500
X-Gmail-Original-Message-ID: <CADRPPNSTq8=uH-HLP0qhzR1Ob+BQc5=h53km+z3vumMSBX1ccQ@mail.gmail.com>
Message-ID: <CADRPPNSTq8=uH-HLP0qhzR1Ob+BQc5=h53km+z3vumMSBX1ccQ@mail.gmail.com>
Subject: Re: [PATCH v10 1/3] PM: wakeup: Add routine to help fetch wakeup
 source object.
To: Ran Wang <ran.wang_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_141941_848285_91BAC641 
X-CRM114-Status: GOOD (  24.70  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, Li Biwen <biwen.li@nxp.com>,
 Huang Anson <anson.huang@nxp.com>, Len Brown <len.brown@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-pm@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, lkml <linux-kernel@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Pavel Machek <pavel@ucw.cz>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 4:29 AM Ran Wang <ran.wang_1@nxp.com> wrote:
>
> Some user might want to go through all registered wakeup sources
> and doing things accordingly. For example, SoC PM driver might need to
> do HW programming to prevent powering down specific IP which wakeup
> source depending on. So add this API to help walk through all registered
> wakeup source objects on that list and return them one by one.
>
> Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
> Tested-by: Leonard Crestez <leonard.crestez@nxp.com>
> Reviewed-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

Series applied to soc/fsl for next.  Thanks.

Regards,
Leo
> ---
> Change in v10:
>         - Add 'Reviewed-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>'
>           to commit message.
>
> Change in v9:
>         - Supplement comments for wakeup_sources_read_lock(),
>           wakeup_sources_read_unlock, wakeup_sources_walk_start and
>           wakeup_sources_walk_next().
>
> Change in v8:
>         - Rename wakeup_source_get_next() to wakeup_sources_walk_next().
>         - Add wakeup_sources_read_lock() to take over locking job of
>           wakeup_source_get_star().
>         - Rename wakeup_source_get_start() to wakeup_sources_walk_start().
>         - Replace wakeup_source_get_stop() with wakeup_sources_read_unlock().
>         - Define macro for_each_wakeup_source(ws).
>
> Change in v7:
>         - Remove define of member *dev in wake_irq to fix conflict with commit
>         c8377adfa781 ("PM / wakeup: Show wakeup sources stats in sysfs"), user
>         will use ws->dev->parent instead.
>         - Remove '#include <linux/of_device.h>' because it is not used.
>
> Change in v6:
>         - Add wakeup_source_get_star() and wakeup_source_get_stop() to aligned
>         with wakeup_sources_stats_seq_start/nex/stop.
>
> Change in v5:
>         - Update commit message, add decription of walk through all wakeup
>         source objects.
>         - Add SCU protection in function wakeup_source_get_next().
>         - Rename wakeup_source member 'attached_dev' to 'dev' and move it up
>         (before wakeirq).
>
> Change in v4:
>         - None.
>
> Change in v3:
>         - Adjust indentation of *attached_dev;.
>
> Change in v2:
>         - None.
>
>  drivers/base/power/wakeup.c | 54 +++++++++++++++++++++++++++++++++++++++++++++
>  include/linux/pm_wakeup.h   |  9 ++++++++
>  2 files changed, 63 insertions(+)
>
> diff --git a/drivers/base/power/wakeup.c b/drivers/base/power/wakeup.c
> index 5817b51..70a9edb 100644
> --- a/drivers/base/power/wakeup.c
> +++ b/drivers/base/power/wakeup.c
> @@ -248,6 +248,60 @@ void wakeup_source_unregister(struct wakeup_source *ws)
>  EXPORT_SYMBOL_GPL(wakeup_source_unregister);
>
>  /**
> + * wakeup_sources_read_lock - Lock wakeup source list for read.
> + *
> + * Returns an index of srcu lock for struct wakeup_srcu.
> + * This index must be passed to the matching wakeup_sources_read_unlock().
> + */
> +int wakeup_sources_read_lock(void)
> +{
> +       return srcu_read_lock(&wakeup_srcu);
> +}
> +EXPORT_SYMBOL_GPL(wakeup_sources_read_lock);
> +
> +/**
> + * wakeup_sources_read_unlock - Unlock wakeup source list.
> + * @idx: return value from corresponding wakeup_sources_read_lock()
> + */
> +void wakeup_sources_read_unlock(int idx)
> +{
> +       srcu_read_unlock(&wakeup_srcu, idx);
> +}
> +EXPORT_SYMBOL_GPL(wakeup_sources_read_unlock);
> +
> +/**
> + * wakeup_sources_walk_start - Begin a walk on wakeup source list
> + *
> + * Returns first object of the list of wakeup sources.
> + *
> + * Note that to be safe, wakeup sources list needs to be locked by calling
> + * wakeup_source_read_lock() for this.
> + */
> +struct wakeup_source *wakeup_sources_walk_start(void)
> +{
> +       struct list_head *ws_head = &wakeup_sources;
> +
> +       return list_entry_rcu(ws_head->next, struct wakeup_source, entry);
> +}
> +EXPORT_SYMBOL_GPL(wakeup_sources_walk_start);
> +
> +/**
> + * wakeup_sources_walk_next - Get next wakeup source from the list
> + * @ws: Previous wakeup source object
> + *
> + * Note that to be safe, wakeup sources list needs to be locked by calling
> + * wakeup_source_read_lock() for this.
> + */
> +struct wakeup_source *wakeup_sources_walk_next(struct wakeup_source *ws)
> +{
> +       struct list_head *ws_head = &wakeup_sources;
> +
> +       return list_next_or_null_rcu(ws_head, &ws->entry,
> +                               struct wakeup_source, entry);
> +}
> +EXPORT_SYMBOL_GPL(wakeup_sources_walk_next);
> +
> +/**
>   * device_wakeup_attach - Attach a wakeup source object to a device object.
>   * @dev: Device to handle.
>   * @ws: Wakeup source object to attach to @dev.
> diff --git a/include/linux/pm_wakeup.h b/include/linux/pm_wakeup.h
> index 661efa0..aa3da66 100644
> --- a/include/linux/pm_wakeup.h
> +++ b/include/linux/pm_wakeup.h
> @@ -63,6 +63,11 @@ struct wakeup_source {
>         bool                    autosleep_enabled:1;
>  };
>
> +#define for_each_wakeup_source(ws) \
> +       for ((ws) = wakeup_sources_walk_start();        \
> +            (ws);                                      \
> +            (ws) = wakeup_sources_walk_next((ws)))
> +
>  #ifdef CONFIG_PM_SLEEP
>
>  /*
> @@ -92,6 +97,10 @@ extern void wakeup_source_remove(struct wakeup_source *ws);
>  extern struct wakeup_source *wakeup_source_register(struct device *dev,
>                                                     const char *name);
>  extern void wakeup_source_unregister(struct wakeup_source *ws);
> +extern int wakeup_sources_read_lock(void);
> +extern void wakeup_sources_read_unlock(int idx);
> +extern struct wakeup_source *wakeup_sources_walk_start(void);
> +extern struct wakeup_source *wakeup_sources_walk_next(struct wakeup_source *ws);
>  extern int device_wakeup_enable(struct device *dev);
>  extern int device_wakeup_disable(struct device *dev);
>  extern void device_set_wakeup_capable(struct device *dev, bool capable);
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
