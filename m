Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6E9B4DC5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 14:26:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zNjUETYKTzZsIiqA/GZUD8uboz0kIL2x8h1ySQJeYSs=; b=J5NC5fsOmAj0R8
	Rf/Nu+iUdnYYBosLQHxWNSUfxcbl/548ArdC7bvGozXatnP9/spP7yUPYL3n0ObubdG0+wh1B5ftp
	d5kv8UyWY3gf4zY578EQdUSgELsLjpHGLZOe1jdrIvgezU70U/LP8HbNEzy162DbZGDRe71kaemKR
	8zKQLhyzyVjOSRpUyRnQs3uB4jK+koFeCSWkNBgCVTPp3E5hJCL0qFk9RRt5zrffIHv1d4XVw9Gek
	7DIrtNIYx9u2cnwttr0njfVKRpovdF9Tb9TTHfKzdCbXhUxsx8ZBIa+lneCCp7CIVMwsPuBHrhk1N
	3rWkuKlk+iNxEx+NIDrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iACZA-0006lM-9L; Tue, 17 Sep 2019 12:26:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iACYA-0006kj-A9
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 12:25:44 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iACY2-00073e-FZ; Tue, 17 Sep 2019 14:25:34 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iACXy-0007cg-QF; Tue, 17 Sep 2019 14:25:30 +0200
Date: Tue, 17 Sep 2019 14:25:30 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Peter Rosin <peda@axentia.se>
Subject: Re: [PATCH v1 2/2] of: Let of_for_each_phandle fallback to
 non-negative cell_count
Message-ID: <20190917122530.3xy7sut3xdvzlomj@pengutronix.de>
References: <20190824132846.8589-1-u.kleine-koenig@pengutronix.de>
 <20190824132846.8589-2-u.kleine-koenig@pengutronix.de>
 <20190913215809.GA11833@bogus>
 <CAMuHMdV+pwoAA0zH_vQf2nKqzrgHP8rcMStyJbnuu2qviFC_qg@mail.gmail.com>
 <20190917101303.t5otztdus7y3ayau@pengutronix.de>
 <489c90fb-a135-4fd8-ecb9-46404bd3c234@axentia.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <489c90fb-a135-4fd8-ecb9-46404bd3c234@axentia.se>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_052542_502474_6AA1A9DE 
X-CRM114-Status: GOOD (  28.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 Joerg Roedel <joro@8bytes.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux I2C <linux-i2c@vger.kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 11:25:46AM +0000, Peter Rosin wrote:
> On 2019-09-17 12:13, Uwe Kleine-K=F6nig wrote:
> > Hello Geert,
> > =

> > On Tue, Sep 17, 2019 at 11:40:25AM +0200, Geert Uytterhoeven wrote:
> >> Hi Rob, Uwe,
> >>
> >> On Fri, Sep 13, 2019 at 11:58 PM Rob Herring <robh@kernel.org> wrote:
> >>> On Sat, 24 Aug 2019 15:28:46 +0200, =3D?UTF-8?q?Uwe=3D20Kleine-K=3DC3=
=3DB6nig?=3D          wrote:
> >>>> Referencing device tree nodes from a property allows to pass argumen=
ts.
> >>>> This is for example used for referencing gpios. This looks as follow=
s:
> >>>>
> >>>>       gpio_ctrl: gpio-controller {
> >>>>               #gpio-cells =3D <2>
> >>>>               ...
> >>>>       }
> >>>>
> >>>>       someothernode {
> >>>>               gpios =3D <&gpio_ctrl 5 0 &gpio_ctrl 3 0>;
> >>>>               ...
> >>>>       }
> >>>>
> >>>> To know the number of arguments this must be either fixed, or the
> >>>> referenced node is checked for a $cells_name (here: "#gpio-cells")
> >>>> property and with this information the start of the second reference=
 can
> >>>> be determined.
> >>>>
> >>>> Currently regulators are referenced with no additional arguments. To
> >>>> allow some optional arguments without having to change all referenced
> >>>> nodes this change introduces a way to specify a default cell_count. =
So
> >>>> when a phandle is parsed we check for the $cells_name property and u=
se
> >>>> it as before if present. If it is not present we fall back to
> >>>> cells_count if non-negative and only fail if cells_count is smaller =
than
> >>>> zero.
> >>>>
> >>>> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> >>
> >> This is now commit e42ee61017f58cd9 ("of: Let of_for_each_phandle fall=
back
> >> to non-negative cell_count") in robh/for-next, which causes a lock-up =
when
> >> booting a shmobile_defconfig kernel on r8a7791/koelsch:
> >>
> >> rcu: INFO: rcu_sched self-detected stall on CPU
> >> rcu:     0-....: (2099 ticks this GP) idle=3D6fe/1/0x40000002
> >> softirq=3D29/29 fqs=3D1050
> >>  (t=3D2100 jiffies g=3D-1131 q=3D0)
> >> NMI backtrace for cpu 0
> >> CPU: 0 PID: 1 Comm: swapper/0 Not tainted
> >> 5.3.0-rc2-shmobile-00050-ge42ee61017f58cd9 #376
> >> Hardware name: Generic R-Car Gen2 (Flattened Device Tree)
> >> [<c010f8ac>] (unwind_backtrace) from [<c010b620>] (show_stack+0x10/0x1=
4)
> >> [<c010b620>] (show_stack) from [<c073d038>] (dump_stack+0x7c/0x9c)
> >> [<c073d038>] (dump_stack) from [<c0742e80>] (nmi_cpu_backtrace+0xa0/0x=
b8)
> >> [<c0742e80>] (nmi_cpu_backtrace) from [<c0742f1c>] (nmi_trigger_cpumas=
k_backtrace+0x84/0x114)
> >> [<c0742f1c>] (nmi_trigger_cpumask_backtrace) from [<c017d684>] (rcu_du=
mp_cpu_stacks+0xac/0xc8)
> >> [<c017d684>] (rcu_dump_cpu_stacks) from [<c017a598>] (rcu_sched_clock_=
irq+0x2ac/0x6b4)
> >> [<c017a598>] (rcu_sched_clock_irq) from [<c0183980>] (update_process_t=
imes+0x30/0x5c)
> >> [<c0183980>] (update_process_times) from [<c01941a8>] (tick_nohz_handl=
er+0xcc/0x120)
> >> [<c01941a8>] (tick_nohz_handler) from [<c05b1d40>] (arch_timer_handler=
_virt+0x28/0x30)
> >> [<c05b1d40>] (arch_timer_handler_virt) from [<c016c9e0>] (handle_percp=
u_devid_irq+0xe8/0x21c)
> >> [<c016c9e0>] (handle_percpu_devid_irq) from [<c0167a8c>] (generic_hand=
le_irq+0x18/0x28)
> >> [<c0167a8c>] (generic_handle_irq) from [<c0167b3c>] (__handle_domain_i=
rq+0xa0/0xb4)
> >> [<c0167b3c>] (__handle_domain_irq) from [<c03673ec>] (gic_handle_irq+0=
x58/0x90)
> >> [<c03673ec>] (gic_handle_irq) from [<c0101a8c>] (__irq_svc+0x6c/0x90)
> >> Exception stack(0xeb08dd30 to 0xeb08dd78)
> >> dd20:                                     c0cc7514 20000013 00000005 0=
0003b27
> >> dd40: eb7c4020 c0cc750c 00000051 00000051 20000013 c0c66b08 eb1cdc00 0=
0000018
> >> dd60: 00000000 eb08dd80 c05c1a38 c0756c00 20000013 ffffffff
> >> [<c0101a8c>] (__irq_svc) from [<c0756c00>] (_raw_spin_unlock_irqrestor=
e+0x1c/0x20)
> >> [<c0756c00>] (_raw_spin_unlock_irqrestore) from [<c05c1a38>] (of_find_=
node_by_phandle+0xcc/0xf0)
> >> [<c05c1a38>] (of_find_node_by_phandle) from [<c05c1bb8>] (of_phandle_i=
terator_next+0x68/0x178)
> >> [<c05c1bb8>] (of_phandle_iterator_next) from [<c05c22bc>] (of_count_ph=
andle_with_args+0x5c/0x7c)
> >> [<c05c22bc>] (of_count_phandle_with_args) from [<c053fc38>] (i2c_demux=
_pinctrl_probe+0x24/0x1fc)
> >> [<c053fc38>] (i2c_demux_pinctrl_probe) from [<c04463c4>] (platform_drv=
_probe+0x48/0x94)
> >> [<c04463c4>] (platform_drv_probe) from [<c0444a20>] (really_probe+0x1f=
0/0x2b8)
> >> [<c0444a20>] (really_probe) from [<c0444e68>] (driver_probe_device+0x1=
40/0x158)
> >> [<c0444e68>] (driver_probe_device) from [<c0444ff0>] (device_driver_at=
tach+0x44/0x5c)
> >> [<c0444ff0>] (device_driver_attach) from [<c04450b4>] (__driver_attach=
+0xac/0xb4)
> >> [<c04450b4>] (__driver_attach) from [<c0443178>] (bus_for_each_dev+0x6=
4/0xa0)
> >> [<c0443178>] (bus_for_each_dev) from [<c04438a8>] (bus_add_driver+0x14=
8/0x1a8)
> >> [<c04438a8>] (bus_add_driver) from [<c0445ad0>] (driver_register+0xac/=
0xf0)
> >> [<c0445ad0>] (driver_register) from [<c0b010b0>] (do_one_initcall+0xa8=
/0x1d4)
> >> [<c0b010b0>] (do_one_initcall) from [<c0b01448>] (kernel_init_freeable=
+0x26c/0x2c8)
> >> [<c0b01448>] (kernel_init_freeable) from [<c0751c70>] (kernel_init+0x8=
/0x10c)
> >> [<c0751c70>] (kernel_init) from [<c01010e8>] (ret_from_fork+0x14/0x2c)
> >> Exception stack(0xeb08dfb0 to 0xeb08dff8)
> >> dfa0:                                     00000000 00000000 00000000 0=
0000000
> >> dfc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 0=
0000000
> >> dfe0: 00000000 00000000 00000000 00000000 00000013 00000000
> >>
> >> Presumably it loops forever, due to a conversion of -1 to unsigned
> >> somewhere?
> > =

> > Hmm, I fail to see the culprit. i2c_demux_pinctrl_probe calls
> > of_count_phandle_with_args with cells_name=3DNULL. With that I don't see
> > how my patch changes anything as the only change is in an if
> > (it->cells_name) block that shouldn't be relevant in your case.
> > =

> > Can you please verify that the loop in of_count_phandle_with_args is
> > indeed not terminating, e.g. with
> =

> The below indicated else-branch was not touched by e42ee61017f58cd9,
> which ends up setting the count to -1 (aka 0xff...ff in this case).
> No?
> =

> int of_phandle_iterator_next(struct of_phandle_iterator *it)
> {
> =

> 	...
> =

> 		if (it->cells_name) {
> =

> 			...
> =

> 		} else {
> 			count =3D it->cell_count;    /* <---- SUSPECT!!! */
> 		}

Oh yeah, you're right. I'm a bit disappointed that I didn't spot this
myself :-|

Untested patch to fix this problem:

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 2f25d2dfecfa..26f7a21d7187 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1284,6 +1284,13 @@ int of_phandle_iterator_init(struct of_phandle_itera=
tor *it,
 	const __be32 *list;
 	int size;
 =

+	/*
+	 * one of cell_count or cells_name must be provided to determine the
+	 * argument length.
+	 */
+	if (cell_count < 0 && !cells_name)
+		return -EINVAL;
+
 	memset(it, 0, sizeof(*it));
 =

 	list =3D of_get_property(np, list_name, &size);
@@ -1765,6 +1772,18 @@ int of_count_phandle_with_args(const struct device_n=
ode *np, const char *list_na
 	struct of_phandle_iterator it;
 	int rc, cur_index =3D 0;
 =

+	/* If cells_name is NULL we assume an cell_count of 0 */
+	if (cells_name =3D=3D NULL) {
+		const __be32 *list;
+		int size;
+
+		list =3D of_get_property(np, list_name, &size);
+		if (!list)
+			return -ENOENT;
+
+		return size / sizeof(*list);
+	}
+
 	rc =3D of_phandle_iterator_init(&it, np, list_name, cells_name, -1);
 	if (rc)
 		return rc;

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
