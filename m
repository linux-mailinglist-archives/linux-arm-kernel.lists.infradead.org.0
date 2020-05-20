Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F9A1DB785
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 16:55:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0I94Oopal8ogCbJby1p3R4wKP86by9DZiN/bhXHJdcc=; b=uICT1PgwSUwEkj
	kAbcINErk/OXlHyAhtyC+vq8iJBafDZGDYZYbwzTmizoiZWbRadDKyuK3H5SD1q/DgI3RzffKRiHY
	R+v0b+O2h7NnDsztT55BFpGrIb9ppz34tDNxHzmXuBCDlFYRyv64qxLzXfOCdOEz8+Jcdo1GOwejk
	lu7MMh54XTXkCYA45MwHw8o91lmW+sc0IBf2KSGmLJx48KwsH1sPIcP5tfxlh8tt3zrlqHwcHRYjD
	675fW7sUeKWXcL83WOIiA6zNpH54Srj1tQ1KYvB0S45pe1E3QAzWalBZNfASLyKmhlkz9KERFyQOR
	8asWakBAG3YataT29dcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbQ82-0000eo-M5; Wed, 20 May 2020 14:55:30 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbQ7i-0008E4-Lk
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 14:55:13 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04KEt56t020122;
 Wed, 20 May 2020 09:55:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589986505;
 bh=uJ0Vb5JIqEbT+TGiMoMQolR3yOEu9tZTebuogh5jPAo=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=xuJe0Zw/zFQOXCbcSMXGjCSeSmOUmVLI/NbPQ87oDS3XnASIpv/BgAL4sMY+84Axm
 tRVqM98LZce2N81zbzOjsdBoXlhC3fQPgm8hy//EimncRw3EOJqT4a4OO9pkuQAMcx
 ZC0IRN5z2x+vFaI4+UYPgBkEVWP6RDS67VPvvafU=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04KEt5nq037164
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 20 May 2020 09:55:05 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 20
 May 2020 09:55:05 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 20 May 2020 09:55:05 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04KEt5Jw096887;
 Wed, 20 May 2020 09:55:05 -0500
Date: Wed, 20 May 2020 09:55:05 -0500
From: Bin Liu <b-liu@ti.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH v1] usb: musb: dsps: set MUSB_DA8XX quirk for AM335x
Message-ID: <20200520145505.GC15845@iaqt7>
Mail-Followup-To: Bin Liu <b-liu@ti.com>,
 Oleksij Rempel <o.rempel@pengutronix.de>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb@vger.kernel.org, russell@personaltelco.net,
 fercerpav@gmail.com
References: <20200327053849.5348-1-o.rempel@pengutronix.de>
 <20200519221851.GA15845@iaqt7>
 <20200520044934.hyngdg774ibqai46@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520044934.hyngdg774ibqai46@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_075511_045931_4BC19F05 
X-CRM114-Status: GOOD (  29.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Michael Grzeschik <m.grzeschik@pengutronix.de>, fercerpav@gmail.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, russell@personaltelco.net,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 06:49:34AM +0200, Oleksij Rempel wrote:
> On Tue, May 19, 2020 at 05:18:51PM -0500, Bin Liu wrote:
> > Hi,
> > 
> > On Fri, Mar 27, 2020 at 06:38:49AM +0100, Oleksij Rempel wrote:
> > > Beagle Bone Black has different memory corruptions if kernel is
> > > configured with USB_TI_CPPI41_DMA=y. This issue is reproducible with
> > > ath9k-htc driver (ar9271 based wifi usb controller):
> > > 
> > > root@AccessBox:~ iw dev wlan0 set monitor  fcsfail otherbss
> > > root@AccessBox:~ ip l s dev wlan0 up
> > > kmemleak: Cannot insert 0xda577e40 into the object search tree (overlaps existing)
> > > CPU: 0 PID: 176 Comm: ip Not tainted 5.5.0 #7
> > > Hardware name: Generic AM33XX (Flattened Device Tree)
> > > [<c0112c14>] (unwind_backtrace) from [<c010dc98>] (show_stack+0x18/0x1c)
> > > [<c010dc98>] (show_stack) from [<c08c7c2c>] (dump_stack+0x84/0x98)
> > > [<c08c7c2c>] (dump_stack) from [<c02c75a8>] (create_object+0x2f8/0x324)
> > > [<c02c75a8>] (create_object) from [<c02b8928>] (kmem_cache_alloc+0x1a8/0x39c)
> > > [<c02b8928>] (kmem_cache_alloc) from [<c072fb68>] (__alloc_skb+0x60/0x174)
> > > [<c072fb68>] (__alloc_skb) from [<bf0c5c58>] (ath9k_wmi_cmd+0x50/0x184 [ath9k_htc])
> > > [<bf0c5c58>] (ath9k_wmi_cmd [ath9k_htc]) from [<bf0cb410>] (ath9k_regwrite_multi+0x54/0x84 [ath9k_htc])
> > > [<bf0cb410>] (ath9k_regwrite_multi [ath9k_htc]) from [<bf0cb7fc>] (ath9k_regwrite+0xf0/0xfc [ath9k_htc])
> > > [<bf0cb7fc>] (ath9k_regwrite [ath9k_htc]) from [<bf1aca78>] (ar5008_hw_process_ini+0x280/0x6c0 [ath9k_hw])
> > > [<bf1aca78>] (ar5008_hw_process_ini [ath9k_hw]) from [<bf1a66ac>] (ath9k_hw_reset+0x270/0x1458 [ath9k_hw])
> > > [<bf1a66ac>] (ath9k_hw_reset [ath9k_hw]) from [<bf0c9588>] (ath9k_htc_start+0xb0/0x22c [ath9k_htc])
> > > [<bf0c9588>] (ath9k_htc_start [ath9k_htc]) from [<bf0eb3c0>] (drv_start+0x4c/0x1e8 [mac80211])
> > > [<bf0eb3c0>] (drv_start [mac80211]) from [<bf104a84>] (ieee80211_do_open+0x480/0x954 [mac80211])
> > > [<bf104a84>] (ieee80211_do_open [mac80211]) from [<c075127c>] (__dev_open+0xdc/0x160)
> > > [<c075127c>] (__dev_open) from [<c07516a8>] (__dev_change_flags+0x1a4/0x204)
> > > [<c07516a8>] (__dev_change_flags) from [<c0751728>] (dev_change_flags+0x20/0x50)
> > > [<c0751728>] (dev_change_flags) from [<c076971c>] (do_setlink+0x2ac/0x978)
> > > 
> > > After applying this patch, the system is running in monitor mode without
> > > noticeable issues.
> > > 
> > > Suggested-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> > > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > > ---
> > >  drivers/usb/musb/musb_dsps.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/usb/musb/musb_dsps.c b/drivers/usb/musb/musb_dsps.c
> > > index 88923175f71e..c01f9e9e69f5 100644
> > > --- a/drivers/usb/musb/musb_dsps.c
> > > +++ b/drivers/usb/musb/musb_dsps.c
> > > @@ -690,7 +690,7 @@ static void dsps_dma_controller_resume(struct dsps_glue *glue) {}
> > >  #endif /* CONFIG_USB_TI_CPPI41_DMA */
> > >  
> > >  static struct musb_platform_ops dsps_ops = {
> > > -	.quirks		= MUSB_DMA_CPPI41 | MUSB_INDEXED_EP,
> > > +	.quirks		= MUSB_DMA_CPPI41 | MUSB_INDEXED_EP | MUSB_DA8XX,
> > 
> > The MUSB_DA8XX flag cannot be simply applied to MUSB_DSPS, at least the
> > teardown and autoreq register offsets are different as show in
> > cppi41_dma_controller_create().
> 
> ok
> 
> > Do you understand what exactly caused the issue?
> 
> No.
> 
> Disabling DMA support "solve" this issue as well.
> 
> Beside, with DMA support, there remains one more crash with different symptoms.
> I can workaround it by disabling CPU Freq governor, or setting it to performance.
> 
> > The kernel trace above doesn't provide enuough information.
> 
> Do you have any suggestions how to instrument the kernel to get needed
> information? Or, should I try to capture USB traffic before the crash? 

First can you please try the following patch instead?

diff --git a/drivers/usb/musb/musb_cppi41.c b/drivers/usb/musb/musb_cppi41.c
index 7fbb8a307145..26c996f8b2bd 100644
--- a/drivers/usb/musb/musb_cppi41.c
+++ b/drivers/usb/musb/musb_cppi41.c
@@ -614,7 +614,6 @@ static int cppi41_dma_channel_abort(struct dma_channel *channel)
        }

        /* DA8xx Advisory 2.3.27: wait 250 ms before to start the teardown */
-       if (musb->ops->quirks & MUSB_DA8XX)
                mdelay(250);

        tdbit = 1 << cppi41_channel->port_num;

> 
> If it helps, ath9k_htc is a usb wifi adapter. It generates a lot of
> USB traffic on multiple endpoints. Bulk with data packets and Interrupt
> with register accesses, LED blinking... etc.

Do you have a link to the picture or description of the adapter? I'd like
to see if I can buy the same to take a look.

-Bin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
