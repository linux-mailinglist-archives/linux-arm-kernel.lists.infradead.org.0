Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28AD61C053
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 03:20:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jsYdDo2CmLL/y1pA0rZGzVvxLNKyiXg5hPnHDajA1zA=; b=O/plThiNlzKgA0
	adOp1gMtzYRJfeEOT9MWCYHQJvc2vg7elCuZUn1qwctfQm7DrdCbzXMwCv8Jw/rM42adu3hgtkZB3
	GlJuYMzHWz7OqOK1+ofb04ZdQz2p8YlwwHYi1byeXMhjSy/xhMdKb0wJ7i5pbqA3NJ51nG98NWIDE
	WzUS/dq4JfX3tjr31TYIfiO8G7zsD4jrjsxJwP7MGI5qNcX336GK3aeI0G9gBRuNHNqVaHbojVxKU
	Y5xqMdgm28IoigSxtbLr2teqbXpgU/D788dN03Rz2plGoYRDD8bLBu09+lYg89us0NKatve4XdAat
	Ow7aEw9B2mgi3UE8Gq9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQM7F-0005jI-UC; Tue, 14 May 2019 01:20:25 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQM77-0005is-My
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 01:20:19 +0000
Received: by mail-wr1-x442.google.com with SMTP id f8so7591060wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 18:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BexaXs/aURUA4eSFTk8m+Z1KK7cCvemwdXHrcKtQcCQ=;
 b=SAjUu3ufn54a8ZGDAnpkYmf5MGTL1vdW4EgHseAfFVssuD+SAemNRrV8UNcRfOX36E
 4empkBdIoSXrDfWI/FL3H5QEWr/XQBfUmTEglMQTBTBnzaPyBEONEaQYQUzrL5dA56d8
 ZG8PQZTug+EsmC6+oROGM7usFb1OC61mgU9bzlFXE7120Aciww9AspmTVDkzznyTD+eJ
 WAUMFkbzxpbYOIGHx/cSZBRbD6v1On2fX3afCkz4ryvuGWcgfIQFp0pVNjQjct9N0tSQ
 SNIwIe26AIMm1YbxwQVPl42zahklztyrf0Dl/xn1Ehtj8Rd2sSU/iO8G4cZxRrvUcNn0
 2R0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BexaXs/aURUA4eSFTk8m+Z1KK7cCvemwdXHrcKtQcCQ=;
 b=W0SSnxMsDNVAkrgO0g6tBh7meV/l0HF6W+ZtXkR3hVwm0pfombKEpw65q2EPVxwhTa
 XOGevxhusWISXObeuETHux55BIvo3PWMrDcyxVhHgp87/tFDN7mkbqnpbpY543EPHbLl
 p1hB4E9nMn8eErYbIXFYFkh3ox0Rnk+mw0i6BiAjajlY2mSuxLFzWnixtkvzT0GQ04Xe
 IcT/FGTuD9QXSHZjAqYi13zaZje+XMt7VKdgOcVZ319kjY+eetiJzmmkMp+y7YMvpKCB
 hji9OavaNA44h7nI4TbmZFruUc2ifZQ6Kc/V7rICd9I3KgEaeGBvBBiHdmWOMvZK2JXF
 LeVQ==
X-Gm-Message-State: APjAAAUm+Uez2PgevAQ2riOWuSDpLaFlb+abA8tf7YPgKAHfiJipDuEO
 v1UHg/JDiuPTBA6Hyk8aD91h6Fnq3JBNbUZHR2+SppVNWj8=
X-Google-Smtp-Source: APXvYqyRy3prpjhOuv3lUrCONcWTty4+Kmq5qOcn8WM+sTJhfhxZPQSIXVUSbQqEbzCSkwyZ/hmTU4cI8H9cGMy7+ME=
X-Received: by 2002:a05:6000:1203:: with SMTP id
 e3mr19699500wrx.300.1557796814932; 
 Mon, 13 May 2019 18:20:14 -0700 (PDT)
MIME-Version: 1.0
References: <014801d4d121$d2769620$7763c260$@gmail.com>
 <20190308110930.g4iqlnwlcbnstqga@shell.armlinux.org.uk>
 <CAPKkttD1Wh36LvBLjZZDk_nQU824j8pYKgKVUbs=dGQZGKC-Kw@mail.gmail.com>
 <CAPKkttAU3b5o2miugyWR7YDpBQrjuBBPw0+a9vk1fMtJuhJQqA@mail.gmail.com>
 <20190314113018.ujni2ji3vvlsmrix@shell.armlinux.org.uk>
 <CAPKkttD9ru8kuSz+Nrn=pcoKO-J+zyFrpOtqN_s3KCpnqFHWgQ@mail.gmail.com>
 <20190315002221.h5aduifnqbyc4gqy@shell.armlinux.org.uk>
 <CAPKkttA+cv0CYfcGw1jR6Uo2pVqpLHe8fxdkyEJW93NzsN9ssw@mail.gmail.com>
In-Reply-To: <CAPKkttA+cv0CYfcGw1jR6Uo2pVqpLHe8fxdkyEJW93NzsN9ssw@mail.gmail.com>
From: Marc Micalizzi <marcmicalizzi@gmail.com>
Date: Mon, 13 May 2019 21:20:04 -0400
Message-ID: <CAPKkttDORyxkKc9ip9isE=Z-eGSo5kr8iSAtNEKG+paEwy4ikw@mail.gmail.com>
Subject: Re: MacchiatoBin SingleShot 2500BASE-X port (eth3) with GPON SFP on
 mvpp2x
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_182017_780040_0C963060 
X-CRM114-Status: GOOD (  21.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marcmicalizzi[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I've made a bit of progress on this (it's mostly working, just a few
quirks) and just was hoping for some input. I switch the GPON SFP
module with my ISP for one that actually has a physical EEPROM (and is
otherwise the same hardware, albeit a labeled different vendor),
however is still not very standards compliant.
It appears the basis for the Huawei and this Alcatel module
https://www.sourcephotonics.com/wp-content/uploads/2017/08/DS-8085-02_SPS-34-24T-HP-TDFO.pdf

# ethtool -m eth3
        Identifier                                : 0x03 (SFP)
        Extended identifier                       : 0x04 (GBIC/SFP
defined by 2-wire interface ID)
        Connector                                 : 0x01 (SC)
        Transceiver codes                         : 0x00 0x00 0x00
0x02 0x00 0x00 0x00 0x00
        Transceiver type                          : Ethernet: 1000BASE-LX
        Encoding                                  : 0x03 (NRZ)
        BR, Nominal                               : 2500MBd
        Rate identifier                           : 0x0c (reserved or unknown)
        Length (SMF,km)                           : 20km
        Length (SMF)                              : 20000m
        Length (50um)                             : 0m
        Length (62.5um)                           : 0m
        Length (Copper)                           : 0m
        Length (OM3)                              : 0m
        Laser wavelength                          : 33685nm
        Vendor name                               : ALCATELLUCENT
        Vendor OUI                                : 00:00:00
        Vendor PN                                 : G010SP
        Vendor rev                                : 10
        Option values                             : 0x00 0x1a
        Option                                    : RX_LOS implemented
        Option                                    : TX_FAULT implemented
        Option                                    : TX_DISABLE implemented
        BR margin, max                            : 0%
        BR margin, min                            : 0%
        Vendor SN                                 : ALCLFXXXXXXX
        Date code                                 : 170515
        Optical diagnostics support               : Yes
        Laser bias current                        : 9.558 mA
        Laser output power                        : 1.6278 mW / 2.12 dBm
        Receiver signal average optical power     : 0.0157 mW / -18.04 dBm
        Module temperature                        : 49.95 degrees C /
121.91 degrees F
        Module voltage                            : 3.3399 V
        Alarm/warning flags implemented           : Yes
        Laser bias current high alarm             : Off
        Laser bias current low alarm              : Off
        Laser bias current high warning           : Off
        Laser bias current low warning            : Off
        Laser output power high alarm             : Off
        Laser output power low alarm              : Off
        Laser output power high warning           : Off
        Laser output power low warning            : Off
        Module temperature high alarm             : Off
        Module temperature low alarm              : Off
        Module temperature high warning           : Off
        Module temperature low warning            : Off
        Module voltage high alarm                 : Off
        Module voltage low alarm                  : Off
        Module voltage high warning               : Off
        Module voltage low warning                : Off
        Laser rx power high alarm                 : Off
        Laser rx power low alarm                  : Off
        Laser rx power high warning               : Off
        Laser rx power low warning                : Off
        Laser bias current high alarm threshold   : 90.000 mA
        Laser bias current low alarm threshold    : 0.000 mA
        Laser bias current high warning threshold : 70.000 mA
        Laser bias current low warning threshold  : 0.000 mA
        Laser output power high alarm threshold   : 3.1622 mW / 5.00 dBm
        Laser output power low alarm threshold    : 0.8912 mW / -0.50 dBm
        Laser output power high warning threshold : 2.8183 mW / 4.50 dBm
        Laser output power low warning threshold  : 1.0000 mW / 0.00 dBm
        Module temperature high alarm threshold   : 100.00 degrees C /
212.00 degrees F
        Module temperature low alarm threshold    : -50.00 degrees C /
-58.00 degrees F
        Module temperature high warning threshold : 95.00 degrees C /
203.00 degrees F
        Module temperature low warning threshold  : -40.00 degrees C /
-40.00 degrees F
        Module voltage high alarm threshold       : 3.6000 V
        Module voltage low alarm threshold        : 3.0000 V
        Module voltage high warning threshold     : 3.5000 V
        Module voltage low warning threshold      : 3.1000 V
        Laser rx power high alarm threshold       : 0.1995 mW / -7.00 dBm
        Laser rx power low alarm threshold        : 0.0015 mW / -28.24 dBm
        Laser rx power high warning threshold     : 0.1584 mW / -8.00 dBm
        Laser rx power low warning threshold      : 0.0020 mW / -26.99 dBm

I've managed to get it mostly working through a series of hacky
changes to drivers/net/phy/sfp.c, and just had a few observations that
maybe there's a better way to do. (These also likely hold true for the
Huawei MA5671A, albeit with a soft EEPROM, I never got this far)
-One thing I've come to understand, is the GPON SFP uses the Rate
Select pin as Dying Gasp, which presents obvious problems. Luckily, in
this case, Dying Gasp can be disabled by sshing into the SoC running
on the SFP, but this still is less than ideal.
-Additionally, the module uses the TXFAULT pin as serial tx when
asc0=0 in the uboot environment, which is not the default behaviour,
however there is a serial blast over the TXFAULT at power up time,
which also presents obvious problems.
-Like the Huawei MA5671A, the BR, Nominal and encoding reported by
this module is wrong, at 2500MBd and NRZ(which is used on the GPON
side, but not between host and sfp) instead of 3200MBd and 8b10
-sfp_read in sfp_hwmon_insert fails with -ENXIO for a few seconds on
cold boot at the very least
-the LOS signal from the module is questionable at best, some of which
may have been actually a result of Dying Gasp being enabled (I need to
further test it), but also considering that even with a LOS there may
be desire to access the SoC on the SFP
-the module takes about 70 seconds from power to fully booted, to
which end I've left tx_enable on at all times for the module

So the hacky patchset I've got it working with is as follows:
diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
index fd8bb998ae52..7a09aff9ae82 100644
--- a/drivers/net/phy/sfp.c
+++ b/drivers/net/phy/sfp.c
@@ -1229,6 +1418,12 @@ static void sfp_sm_link_check_los(struct sfp *sfp)
        else if (!(sfp->id.ext.options & cpu_to_be16(SFP_OPTIONS_LOS_NORMAL)))
                los = 0;
+        if (los && !memcmp(sfp->id.base.vendor_name, "ALCATELLUCENT   ", 16) &&
+                   !memcmp(sfp->id.base.vendor_pn  , "G010SP          ", 16)) {
+               dev_info(sfp->dev, "Ignoring LOS for GPON SFP");
+               los = 0;
+       }
+
        if (los)
                sfp_sm_next(sfp, SFP_S_WAIT_LOS, 0);
        else
@@ -1267,14 +1462,20 @@ static void sfp_sm_fault(struct sfp *sfp, bool warn)
 static void sfp_sm_mod_init(struct sfp *sfp)
 {
+       unsigned int delay = 0;
        sfp_module_tx_enable(sfp);
        /* Wait t_init before indicating that the link is up, provided the
         * current state indicates no TX_FAULT.  If TX_FAULT clears before
         * this time, that's fine too.
         */
-       sfp_sm_next(sfp, SFP_S_INIT, T_INIT_JIFFIES);
-       sfp->sm_retries = 5;
+       if (!memcmp(sfp->id.base.vendor_name, "ALCATELLUCENT   ", 16) &&
+            !memcmp(sfp->id.base.vendor_pn  , "G010SP          ", 16)) {
+                delay = msecs_to_jiffies(7500);
+                dev_info(sfp->dev, "Delaying INIT for 7.5 seconds");
+        }
+       sfp_sm_next(sfp, SFP_S_INIT, T_INIT_JIFFIES + delay);
+       sfp->sm_retries = delay ? 0 : 5;
        /* Setting the serdes link mode is guesswork: there's no
         * field in the EEPROM which indicates what mode should
@@ -1475,9 +1755,10 @@ static void sfp_sm_event(struct sfp *sfp,
unsigned int event)
         */
        switch (sfp->sm_mod_state) {
        default:
               if (event == SFP_E_INSERT && sfp->attached) {
-                        sfp_module_tx_disable(sfp);
+                       sfp_module_tx_enable(sfp);
                        sfp_sm_ins_next(sfp, SFP_MOD_PROBE, T_PROBE_INIT);
                }
                break;
@@ -1491,10 +1772,12 @@ static void sfp_sm_event(struct sfp *sfp,
unsigned int event)
                                sfp_sm_ins_next(sfp, SFP_MOD_PRESENT, 0);
                        else if (val > 0)
                                sfp_sm_ins_next(sfp, SFP_MOD_HPOWER, val);
-                       else if (val != -EAGAIN)
+                       else if (val != -EAGAIN && val != -ENXIO)
                                sfp_sm_ins_next(sfp, SFP_MOD_ERROR, 0);
-                       else
+                       else if (val == -EAGAIN)
                                sfp_sm_set_timer(sfp, T_PROBE_RETRY);
+                       else
+                               sfp_sm_set_timer(sfp, T_FAULT_RECOVER);
                }
                break;
@@ -1526,7 +1809,9 @@ static void sfp_sm_event(struct sfp *sfp,
unsigned int event)
                         * as this resets the PHY. Otherwise, raise it to
                         * turn the laser off.
                         */
-                       if (!sfp->mod_phy)
+                       if (!sfp->mod_phy &&
+                           (memcmp(sfp->id.base.vendor_name,
"ALCATELLUCENT   ", 16) ||
+                            memcmp(sfp->id.base.vendor_pn  , "G010SP
        ", 16)))
                                sfp_module_tx_disable(sfp);
                        sfp->sm_dev_state = SFP_DEV_DOWN;
                }
@@ -1847,11 +2151,13 @@ static int sfp_probe(struct platform_device *pdev)
            gpiod_get_value_cansleep(sfp->gpio[GPIO_RATE_SELECT]))
                sfp->state |= SFP_F_RATE_SELECT;
        sfp_set_state(sfp, sfp->state);
-       sfp_module_tx_disable(sfp);
+
+        if (!memcmp(sfp->id.base.vendor_name, "ALCATELLUCENT   ", 16) &&
+            !memcmp(sfp->id.base.vendor_pn  , "G010SP          ", 16)) {
+               sfp_module_tx_enable(sfp);
+       } else {
+               sfp_module_tx_disable(sfp);
+       }
        for (i = 0; i < GPIO_MAX; i++) {
                if (gpio_flags[i] != GPIOD_IN || !sfp->gpio[i])

diff --git a/drivers/net/phy/sfp-bus.c b/usr/src/linux/drivers/net/phy/sfp-bus.c
index ad9db652874d..6e31a37d909a 100644
--- a/drivers/net/phy/sfp-bus.c
+++ b/drivers/net/phy/sfp-bus.c
@@ -233,6 +233,14 @@ void sfp_parse_support(struct sfp_bus *bus, const
struct sfp_eeprom_id *id,
                        phylink_set(modes, 1000baseX_Full);
        }
+       /*GPON SFPs with incorrect EEPROM information*/
+       if ((!memcmp(id->base.vendor_name, "HUAWEI          ", 16) &&
+            !memcmp(id->base.vendor_pn  , "MA5671A         ", 16)) ||
+           (!memcmp(id->base.vendor_name, "ALCATELLUCENT   ", 16) &&
+             !memcmp(id->base.vendor_pn  , "G010SP          ", 16))) {
+               phylink_set(modes, 2500baseX_Full);
+       }
+
        bitmap_or(support, support, modes, __ETHTOOL_LINK_MODE_MASK_NBITS);
        phylink_set(support, Autoneg);

I'm wondering if there's any better way to work around those issues,
possibly in a way that would actually belong in the kernel instead of
being a hacked workaround like what I've put together.
Many of these seem like they would be persistent issues across many
different GPON SFPs, limiting their use outside of ISP provided
hardware.

(Additionally I'm running into a weird performance issue on the
macchiatobin where speeds from a remote pppoe session across a bridge
are fine at 1500Mbps line speed, but on a pppoe session on a vlan
subinterface of the bridge on the macchiatobin they aren't breaking
1070Mbps, but I doubt this mailing list is the place for that)

Thanks,
Marc

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
