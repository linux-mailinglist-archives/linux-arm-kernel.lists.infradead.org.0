Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A88EE00B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 11:27:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0C1s1IspnZfgT7D9TgQzyMSIiTt2RenGRJQO2ErB11c=; b=Ho330+2xFVs1vw
	SEn1qq5U09hDZr8EIxBORdteoHSHb03cnhxczpQgEagTwT4Yxd2E7oq3mVPtpucgh97qaVINrJvbP
	TcKPGRHoVG+OFtCBGBqALnvubFmP9enMwg9tw4I7jzjR/9o3n8xDYYnEUNM6PNNJ4PPyDMAorLEFc
	AtNoT3x5yjjgSBW2Yx3/A8Wt1JWVmaj+Ka5ZPrcHovRY46U4zmRCrobQfD42C3J3/VqKPOGE+vyTt
	gid1DpNYcVMAJBwxbDgRpCikbONPFX6opQDAVFEC5EZV0f4N8hpx9U23pA5kIlZ9JgqjUoDMl00Gz
	ShyMvgcTwUT5NO6ajx7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMqRs-00062G-HQ; Tue, 22 Oct 2019 09:27:28 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMqR4-0005VR-3F
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 09:26:39 +0000
Received: by mail-ot1-f65.google.com with SMTP id 89so13529527oth.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 02:26:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7e3ngfUWD69prUYE+IQGbpsBsUEu9n83CImOve8PLh0=;
 b=EMaND4J/L5NhAAkopoSy7EEPDM7xfHGTDBipOC0CyMgjuY5u9bNJHjO7sxPzy715mv
 H7q8343ZVz/pux9kXjrSlVpWS12AB0Z529WPQ/Qzk7DcKbGXlgkoVZkLrnSO+8/WRlZg
 M0IFKzjmB1FDX2fa+w1knlOUx8WHS+Dy12fcNjoL64ifVw9j7TA5v6V3VLaIGx5QY1T+
 Ul5/iN8Dl+GWHovfiToMcfeDXH2uPxfGpN8qJ3KCZk+cgr/Iuw0MFK0VBhWVCyCijGm/
 gqtZGUqRcKm5VV77pvbW2dJVJe//8hQGubJRNwerMyxF9HWMUfm6WVwquRfdWXw/rdKi
 /0ew==
X-Gm-Message-State: APjAAAWLRvfVoBjaPtbXmwJszuEreIZ0yJgWjEwdGgfbIjd2UoCcFDg/
 HsIehsgwnq9hiV8NHHmoPL5W/xtR/bP71Ana7Tg=
X-Google-Smtp-Source: APXvYqys/ZtV6eqp8MKmYWagePQMB32nL6cvMnFYVvIgMgRDLMLJ/tc6rc8qd/YY1BlNX+dRzq896nFEBtR3GkL5HX8=
X-Received: by 2002:a9d:459b:: with SMTP id x27mr1770619ote.167.1571736397010; 
 Tue, 22 Oct 2019 02:26:37 -0700 (PDT)
MIME-Version: 1.0
References: <20191022075123.17057-1-ran.wang_1@nxp.com>
In-Reply-To: <20191022075123.17057-1-ran.wang_1@nxp.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 22 Oct 2019 11:26:26 +0200
Message-ID: <CAJZ5v0g4uyh7Xv2PuVuF1KrpBCXzSPa+vCJh6C7LTEeyvBDNjg@mail.gmail.com>
Subject: Re: [PATCH 1/3] PM: wakeup: Add routine to help fetch wakeup source
 object.
To: Ran Wang <ran.wang_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_022638_134062_4DC08C94 
X-CRM114-Status: GOOD (  24.32  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux PM <linux-pm@vger.kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 9:51 AM Ran Wang <ran.wang_1@nxp.com> wrote:
>
> Some user might want to go through all registered wakeup sources
> and doing things accordingly. For example, SoC PM driver might need to
> do HW programming to prevent powering down specific IP which wakeup
> source depending on. So add this API to help walk through all registered
> wakeup source objects on that list and return them one by one.
>
> Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
> Tested-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
> Change in v8
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
>  drivers/base/power/wakeup.c | 42 ++++++++++++++++++++++++++++++++++++++++++
>  include/linux/pm_wakeup.h   |  9 +++++++++
>  2 files changed, 51 insertions(+)
>
> diff --git a/drivers/base/power/wakeup.c b/drivers/base/power/wakeup.c
> index 5817b51..8c7a5f9 100644
> --- a/drivers/base/power/wakeup.c
> +++ b/drivers/base/power/wakeup.c
> @@ -248,6 +248,48 @@ void wakeup_source_unregister(struct wakeup_source *ws)
>  EXPORT_SYMBOL_GPL(wakeup_source_unregister);
>
>  /**
> + * wakeup_sources_read_lock - Lock wakeup source list for read.

Please document the return value.

> + */
> +int wakeup_sources_read_lock(void)
> +{
> +       return srcu_read_lock(&wakeup_srcu);
> +}
> +EXPORT_SYMBOL_GPL(wakeup_sources_read_lock);
> +
> +/**
> + * wakeup_sources_read_unlock - Unlock wakeup source list.

Please document the argument.

> + */
> +void wakeup_sources_read_unlock(int idx)
> +{
> +       srcu_read_unlock(&wakeup_srcu, idx);
> +}
> +EXPORT_SYMBOL_GPL(wakeup_sources_read_unlock);
> +
> +/**
> + * wakeup_sources_walk_start - Begin a walk on wakeup source list

Please document the return value and add a note that the wakeup
sources list needs to be locked for reading for this to be safe.

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

Please add a note that the wakeup sources list needs to be locked for
reading for this to be safe.

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
