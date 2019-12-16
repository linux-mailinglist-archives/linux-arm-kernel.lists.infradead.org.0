Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32AC9120713
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 14:25:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=opa9iiCIIldcg6xDBmH7snuep7v8QKQeoqAujN74G8M=; b=o+X4CIr1HaVDH9
	gy15UUiYUnF+OkUqUQ8uPzcHbjh7wzFJ1++M4PjYuut27RIYZv+DWZB8GVVHbB8vgyIX+zcvfxutD
	K5sOD4LjnOIvfc+i6hRIDJgS8L67cdfpr87jQvXCA1GQZa8/Zoah20M9XzH9g2oa/sDI9Sms8JSPb
	GBMaycE+hnN0N4wvlcTpX81NDpFSd6bOSsgGyKBAEOtIfXdA6bkOR0Ua6kj1yar00NwaRGhQX/EkU
	4ZidKQOJG65cT5S2J3EKzRb67V0h7jJUxvQLuPqp5f3tXDFAotea2bF6ACulS0jni6KEYgGz4rvjg
	LS7SIGo+QQ4KSuQCt2/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igqNI-0000Cz-DK; Mon, 16 Dec 2019 13:25:24 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igqN7-0000Bn-SC
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 13:25:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1576502709; bh=es+nOMcbHNUvRapBUN4dNUN1UmQSHOWrTb4CbncHywQ=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=tsO1ZGF1xfKCIUq16OlM2icXeTDgx8P0RR99yzocXToFCSskUe4dEZqEyANAQwbZh
 nzkxDr39xTguJz3bbHmXeowcERvh5XnXHD1zwPNH2XirEWE6tkTzeLpa6CRwNHK9OU
 dzQjLfqVJDbcHudGbMBRHzmlYsObxhMjB4WV0A8Q=
Date: Mon, 16 Dec 2019 14:25:09 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH V4 01/10] bluetooth: hci_bcm: Fix RTS handling during
 startup
Message-ID: <20191216132509.ofqcdpwxsd7324ql@core.my.home>
Mail-Followup-To: Stefan Wahren <wahrenst@gmx.net>,
 Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-bluetooth@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
References: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
 <1570375708-26965-2-git-send-email-wahrenst@gmx.net>
 <61789264-a4c2-ac85-9d74-d186213ec70a@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <61789264-a4c2-ac85-9d74-d186213ec70a@gmx.net>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_052514_081496_1374AA30 
X-CRM114-Status: GOOD (  19.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Johan Hedberg <johan.hedberg@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Eric Anholt <eric@anholt.net>, Ray Jui <rjui@broadcom.com>,
 Marcel Holtmann <marcel@holtmann.org>, linux-bluetooth@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Sun, Oct 20, 2019 at 11:17:28PM +0200, Stefan Wahren wrote:
> Hi Marcel,
> hi Johan,
> 
> Am 06.10.19 um 17:28 schrieb Stefan Wahren:
> > The RPi 4 uses the hardware handshake lines for CYW43455, but the chip
> > doesn't react to HCI requests during DT probe. The reason is the inproper
> > handling of the RTS line during startup. According to the startup
> > signaling sequence in the CYW43455 datasheet, the hosts RTS line must
> > be driven after BT_REG_ON and BT_HOST_WAKE.
> >
> > Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> > ---
> >  drivers/bluetooth/hci_bcm.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/bluetooth/hci_bcm.c b/drivers/bluetooth/hci_bcm.c
> > index 7646636..0f73f6a 100644
> > --- a/drivers/bluetooth/hci_bcm.c
> > +++ b/drivers/bluetooth/hci_bcm.c
> > @@ -445,9 +445,11 @@ static int bcm_open(struct hci_uart *hu)
> >
> >  out:
> >  	if (bcm->dev) {
> > +		hci_uart_set_flow_control(hu, true);
> >  		hu->init_speed = bcm->dev->init_speed;
> >  		hu->oper_speed = bcm->dev->oper_speed;
> >  		err = bcm_gpio_set_power(bcm->dev, true);
> > +		hci_uart_set_flow_control(hu, false);
> >  		if (err)
> >  			goto err_unset_hu;
> >  	}
> > --
> > 2.7.4
> 
> would be nice to get some feedback about this.

I started seeing failures on Orange Pi 3 in 5.5-rc:

[    3.839134] Bluetooth: hci0: command 0xfc18 tx timeout
[   11.999136] Bluetooth: hci0: BCM: failed to write update baudrate (-110)
[   12.004613] Bluetooth: hci0: Failed to set baudrate
[   12.123187] Bluetooth: hci0: BCM: chip id 130
[   12.128398] Bluetooth: hci0: BCM: features 0x0f
[   12.154686] Bluetooth: hci0: BCM4345C5
[   12.157165] Bluetooth: hci0: BCM4345C5 (003.006.006) build 0000
[   15.343684] Bluetooth: hci0: BCM4345C5 (003.006.006) build 0038

Switch to higher baudrate works again after reverting this patch.

That board also uses RTS/CTS signalling.

I guess the patch needs re-thinking/maybe other chips may not need this?

I don't have access to datasheets.

regards,
	o.

> Regards
> Stefan
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
