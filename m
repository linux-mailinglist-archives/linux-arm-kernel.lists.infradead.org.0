Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B184DF75
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 05:57:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1vWq5DUio2mhHaWjv4aRK94+UbvJOxJMcNaQinqDYMM=; b=k0uXlYpYAgdrf5
	P5boBla/dNw4B5c638Xh+1/2fb2hWcEtmTXyVRdGzqTh5aUk0GD/rlJvyAg8srIb8hv7h3HqAe2fX
	NkmsJGOkxYwjTO71H8RL0ktr2nxKHOvUE3qO7uAElLJaFkmxC5GcKTxhXE8ESCDukbacVqH1Wpxya
	3A0kRPKvrzzhl1nOhZ/mi57Jh+a/S467aLJkIVoZD8Q+D1uDSxBuPEVIwdk1GtqAiXTxbENLiSkPQ
	Xa3WbUTmfs2wiBzyOVdsssuC7nWSFa1xgKMeMtBAdRtLrYP0b6kzjEwWMPa0bERTxNyTAs3ezSZTS
	jpZ/QTRxJizT4zMA0mWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heAgV-0003Ij-6r; Fri, 21 Jun 2019 03:57:55 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heAgF-0003Gk-TG
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 03:57:41 +0000
Received: by mail-ed1-x543.google.com with SMTP id z25so7900612edq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 20:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CzpQ3kjwujWtzVv4DPV/tCEIfc/FEWMVjTdzmC0X/us=;
 b=jzfqpCbIoHgGVRtBrF7lF9LbFU0bamZ0XcWct6qlfHV/QwB10qU/rA1lxfbJzreE4d
 1Eb9Q3vlujL0JdKQ0P5PUa4L684fqSj0w+5LfiZXn3ZB6Ey+OfAyIYoMpv3x967xmxah
 owqCTatdEiWnrqAb92DE1FkUfv1WWYVD9h1fE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CzpQ3kjwujWtzVv4DPV/tCEIfc/FEWMVjTdzmC0X/us=;
 b=XkRQ2r4aUBoy3JiwUFKf8dlsYSe7/yS4Yti+QMTdJscC21WXcFEHcA5lFqt++bWh6v
 AsBpp0xRnCMDA9WiqITn+22PYi3jD2SKOny06U3u+Z+UwBdSdHubCrxKkSMSvZJbgWb/
 cc6PcyyZyTwqQa7t0Vpf9QwTpZbCYYw6nvRMQHdV6dCgxU/zfYCjPYbzH6AizOjcVGCd
 TCdpHvd/I+tel5x9Tj5UUI4qPrnaTTOG6y8ws1rDcRZxFnfrz9KGXGyUKoHqCHG+CGmL
 +S+EnDYf/ue3nB9vzdoubdurFFQlnSJUcFml9AmZaum8H2pFiXlZ7g3O3MPy8CdGNRon
 9bcw==
X-Gm-Message-State: APjAAAWFh71hqo26x4SOOUcIvNvmy0MQny730t0652SFo1nmV1tawFS4
 zYUsIYjaS15jUk7eiAVjc0jx9+uxaI008OiP3k26Dg==
X-Google-Smtp-Source: APXvYqxtQU/h9lU9BT7NNPLBVdxBj0QGosKYc3X2ZtxZ8KnWLpi5Bn5SLQLGMx+FINNzLp0Eu0dm/II4xxlh1U/V53Y=
X-Received: by 2002:a50:b561:: with SMTP id z30mr89337967edd.87.1561089457646; 
 Thu, 20 Jun 2019 20:57:37 -0700 (PDT)
MIME-Version: 1.0
References: <1560169080-27134-1-git-send-email-yong.wu@mediatek.com>
 <1560169080-27134-17-git-send-email-yong.wu@mediatek.com>
 <CANdKZ0d873PJ2u=Hn_aUJBu3dDiNyueVwBv94-VXHGLJBvAbGg@mail.gmail.com>
 <eee15db0-e43f-de9b-28a0-93bdd04836d7@gmail.com>
 <effb4fff-da83-708f-ca10-50f2645c91c6@gmail.com>
In-Reply-To: <effb4fff-da83-708f-ca10-50f2645c91c6@gmail.com>
From: Pi-Hsun Shih <pihsun@chromium.org>
Date: Fri, 21 Jun 2019 11:57:01 +0800
Message-ID: <CANdKZ0cr=SMtQOTVduKZBOtw5E6ZOpShf3q2McDX=rFWbfB03A@mail.gmail.com>
Subject: Re: [PATCH v7 16/21] memory: mtk-smi: Add bus_sel for mt8183
To: Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_205739_975210_A96ABD8A 
X-CRM114-Status: GOOD (  29.33  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: =?UTF-8?B?WW91bGluIFBlaSAo6KO05Y+L5p6XKQ==?= <youlin.pei@mediatek.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream@mediatek.com, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, open list <linux-kernel@vger.kernel.org>,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, Sascha Hauer <kernel@pengutronix.de>,
 =?UTF-8?B?WWluZ2pvZSBDaGVuICjpmbPoi7HmtLIp?= <yingjoe.chen@mediatek.com>,
 anan.sun@mediatek.com, Robin Murphy <robin.murphy@arm.com>,
 Matthias Kaehlcke <mka@chromium.org>, Yong Wu <yong.wu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 7:38 PM Matthias Brugger <matthias.bgg@gmail.com> wrote:
>
> CCing Sascha
>
> On 20/06/2019 11:35, Matthias Brugger wrote:
> >
> >
> > On 13/06/2019 10:14, Pi-Hsun Shih wrote:
> >> Hi,
> >> When I tested this patch series (Based on linux 5.2.0-rc2, and with
> >> various other patch series about MT8183) with lockdep enabled, and I'm
> >> seeing the following lockdep warning on boot.
> >>
> >> By bisecting the commits, the first commit that introduce this warning
> >> is this patch. The warning also doesn't appear if
> >> https://lore.kernel.org/patchwork/patch/1086582/ and
> >> https://lore.kernel.org/patchwork/patch/1086583/ are not applied.
> >>
> >> Do anyone have idea on why this is happening, or any suggestion on
> >> which part I should be digging into to figure this out? Thanks.
> >>
> >> [    4.664194] ======================================================
> >> [    4.670368] WARNING: possible circular locking dependency detected
> >> [    4.676545] 5.2.0-rc2-next-20190528-44527-g6c94b6475c04 #20 Tainted: G S
> >> [    4.684539] ------------------------------------------------------
> >> [    4.690714] kworker/4:1/51 is trying to acquire lock:
> >> [    4.695760] (____ptrval____) (regulator_list_mutex){+.+.},
> >> at:regulator_lock_dependent+0xdc/0x6c4
> >> [    4.704732]
> >> [    4.704732] but task is already holding lock:
> >> [    4.710556] (____ptrval____) (&genpd->mlock/1){+.+.},
> >> at:genpd_lock_nested_mtx+0x24/0x30
> >> [    4.718740]
> >> [    4.718740] which lock already depends on the new lock.
> >> [    4.718740]
> >> [    4.726908]
> >> [    4.726908] the existing dependency chain (in reverse order) is:
> >> [    4.734382]
> >> [    4.734382] -> #4 (&genpd->mlock/1){+.+.}:
> >> [    4.739963]        __mutex_lock_common+0x1a0/0x1fe8
> >> [    4.744836]        mutex_lock_nested+0x40/0x50
> >> [    4.749275]        genpd_lock_nested_mtx+0x24/0x30
> >> [    4.754063]        genpd_add_subdomain+0x150/0x524
> >> [    4.758850]        pm_genpd_add_subdomain+0x3c/0x5c
> >> [    4.763723]        scpsys_probe+0x520/0xe78
> >> [    4.767902]        platform_drv_probe+0xf4/0x134
> >> [    4.772517]        really_probe+0x214/0x4dc
> >> [    4.776696]        driver_probe_device+0xcc/0x1d4
> >> [    4.781396]        __device_attach_driver+0x10c/0x180
> >> [    4.786442]        bus_for_each_drv+0x124/0x184
> >> [    4.790968]        __device_attach+0x1c0/0x2d8
> >> [    4.795407]        device_initial_probe+0x20/0x2c
> >> [    4.800106]        bus_probe_device+0x80/0x16c
> >> [    4.804546]        deferred_probe_work_func+0x120/0x168
> >> [    4.809767]        process_one_work+0x858/0x1208
> >> [    4.814379]        worker_thread+0x9ec/0xcb8
> >> [    4.818644]        kthread+0x2b8/0x2d0
> >> [    4.822391]        ret_from_fork+0x10/0x18
> >> [    4.826480]
> >> [    4.826480] -> #3 (&genpd->mlock){+.+.}:
> >> [    4.831880]        __mutex_lock_common+0x1a0/0x1fe8
> >> [    4.836752]        mutex_lock_nested+0x40/0x50
> >> [    4.841190]        genpd_lock_mtx+0x20/0x2c
> >> [    4.845369]        genpd_runtime_resume+0x140/0x434
> >> [    4.850241]        __rpm_callback+0xb0/0x1e4
> >> [    4.854506]        rpm_callback+0x54/0x1a8
> >> [    4.858597]        rpm_resume+0xc6c/0x10c4
> >> [    4.862689]        __pm_runtime_resume+0xb4/0x124
> >> [    4.867387]        device_link_add+0x598/0x8d0
> >
> > For this looks as if you have also patch
> > [PATCH v2 04/12] memory: mtk-smi: Add device-link between smi-larb and smi-common
> > from series
> > [PATCH v2 00/12] Clean up "mediatek,larb" after adding device_link
> > applied.
> >
>
> My guess is, that we run into this, because we call genpd_runtime_resume before
> we have finished the subdomain registration in scpsys_probe.
> That implies that you also have the scpsys series for mt8183 added to your tree.
>
> Anyway it looks to me as if we have to add the subdomains before we call
> of_genpd_add_provider_onecell().
>
> Regards,
> Matthias

Yes I do have scpsys series for mt8183 added in my tree. (I have about
125 patches from list on top of 531b0a360899 "Add linux-next specific
files for 20190528" to make the board boot)
However the exact same warning still exists after I changed the order
of of_genpd_add_provider_onecell and pm_genpd_add_subdomain, patch as
follow:
(Patch is based on commit f4788d37bc84 "Add linux-next specific files
for 20190614")

diff --git a/drivers/soc/mediatek/mtk-scpsys.c
b/drivers/soc/mediatek/mtk-scpsys.c
index 503222d0d0da..0cd9bdd4004e 100644
--- a/drivers/soc/mediatek/mtk-scpsys.c
+++ b/drivers/soc/mediatek/mtk-scpsys.c
@@ -440,8 +440,7 @@ static struct scp *init_scp(struct platform_device *pdev,
 static void mtk_register_power_domains(struct platform_device *pdev,
  struct scp *scp, int num)
 {
- struct genpd_onecell_data *pd_data;
- int i, ret;
+ int i;

  for (i = 0; i < num; i++) {
  struct scp_domain *scpd = &scp->domains[i];
@@ -457,18 +456,6 @@ static void mtk_register_power_domains(struct
platform_device *pdev,

  pm_genpd_init(genpd, NULL, false);
  }
-
- /*
- * We are not allowed to fail here since there is no way to unregister
- * a power domain. Once registered above we have to keep the domains
- * valid.
- */
-
- pd_data = &scp->pd_data;
-
- ret = of_genpd_add_provider_onecell(pdev->dev.of_node, pd_data);
- if (ret)
- dev_err(&pdev->dev, "Failed to add OF provider: %d\n", ret);
 }

 /*
@@ -1053,6 +1040,16 @@ static int scpsys_probe(struct platform_device *pdev)
  ret);
  }

+ /*
+ * We are not allowed to fail here since there is no way to unregister
+ * a power domain. Once registered above we have to keep the domains
+ * valid.
+ */
+
+ ret = of_genpd_add_provider_onecell(pdev->dev.of_node, pd_data);
+ if (ret)
+ dev_err(&pdev->dev, "Failed to add OF provider: %d\n", ret);
+
  return 0;
 }

>
>
> > Regards,
> > Matthias
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
