Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB75889212
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 11 Aug 2019 16:55:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sPFf/HynoPuFIaT6fCnFzSdPM+Qqs/bhuGyaW4RT5Sg=; b=X+whsupzpKkaRX
	rQzDj2QIXB+qnJDvfBAwh7xVvKvi05PtPMSxxItbgOOZSxP+jA9EYyqvQqdXZBGuxO3Fajd4whNBT
	eGCE/pTXawaWfLvd8hTTR/4Sv18WFB5sxR/2lwfu5aRCUp5pLTcQJ+wj1NFGbW7PF0EY7cqJwLO1i
	n28YVIPLHHWKCsWi4sym6tmgTvhrvNA6YK6xwQZGH/vZvQRaG5CDPtxvWaHK7Ex3u0s0UhPmYKUwz
	tHjmAOdnLoVgrOyuJUaT1wLLdnZXBChPpgbkPcManF91bcZosdLpI9F6/RJTqYdJDIUpgeafOF9Ae
	YzneCV3i1vx5kJiXraMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwpFQ-0007f7-8a; Sun, 11 Aug 2019 14:55:04 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwpFH-0007eh-R1
 for linux-arm-kernel@lists.infradead.org; Sun, 11 Aug 2019 14:54:57 +0000
Received: by mail-ed1-x544.google.com with SMTP id m44so7908811edd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 11 Aug 2019 07:54:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=whKjeeuzRR1C0VHKLCEEBRmCXyO9oAPJW1EVegs9n5Y=;
 b=nApUDYyVfbALIYW38EWX0WyMhOt71LzvXKxVarei7q+0Vdz3DaWXn5LAS7p63TUhct
 OUP38/vol6OO3efIGdQXaM7geP40wJ54ry+cn6tjSgNdS5erwPB3uX1dYeIZeoOPZgv/
 r4G8m2r95+W+rUOxuqcnI3kgYdRqpKXm22C97NscP1cYK2xKPbdfAsJACtS2AhJywmWa
 k16ofOM84bRVTBQDYlQpYCBgcpr3KDHHZJgR53lxjOgy6UbL/SpCrgODO0N5ns+ZK8E4
 TuPq316GQZD4mYgvOewUqT36VzQZKc9z1EX0iL8ijMDtNiSFjXf/jn+X8mx9vYgk+yGy
 AoFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=whKjeeuzRR1C0VHKLCEEBRmCXyO9oAPJW1EVegs9n5Y=;
 b=IdM1u1J55pPo9MRYA7qof9tiYDGON7nrWn6Xdy3e+UkkR2HbjDgKTwxDSmo9ygN/tI
 02HW0qumkonH74GPT3JEhYQHK86w8L4kyXW9ZEYbei6b3kyHcM0FFtVVlttYV9EV/Dzf
 SyuU+ns3cQdGvkXzsmh+Be6AhVzeeM14mLPnt+GQ/vK7dbLbZXWIxDZPi6+mEN9RtIRD
 DD8UoGIZWuiB8wpIh6DwT8PYh/DXq4cW7iOFhTLdPzMaWtrS0hfSxO/oVrJ08bRXgIWS
 CdSgkhm+S+chTJoYNGSBeJ01tehZI3ef7yywwhTzQvtU8l/OM/MVKBO4XZ+F04auLsGk
 +VDA==
X-Gm-Message-State: APjAAAU/0icp6+vyFw4HwfuQLJODr26HeWYy+kZTGd5eUFRPvFfDG0lq
 r9hYB0cMfZY4OLMUE5LNVfEsUaAz2InM5dnWjyk=
X-Google-Smtp-Source: APXvYqwAdXQXJ79ojPe82Rpyakj/ISlSmVhxJ5vQO6EZlT7MZC3VOJOWsYTlB83ynxfcmpRCdzpd9HKQAqA7iRWfX+M=
X-Received: by 2002:a17:907:2069:: with SMTP id
 qp9mr16187513ejb.90.1565535292378; 
 Sun, 11 Aug 2019 07:54:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190811133707.GC13294@shell.armlinux.org.uk>
In-Reply-To: <20190811133707.GC13294@shell.armlinux.org.uk>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Sun, 11 Aug 2019 17:54:41 +0300
Message-ID: <CA+h21hqkVoQWRweKKCFdvLLOLyP4gEtXQvJ9CO_J7i+YQW+TWw@mail.gmail.com>
Subject: Re: [BUG] fec mdio times out under system stress
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_075455_912851_2E7074B7 
X-CRM114-Status: GOOD (  20.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (olteanv[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev <netdev@vger.kernel.org>, Hubert Feurstein <h.feurstein@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell, Fabio,

On Sun, 11 Aug 2019 at 16:42, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> Hi Fabio,
>
> When I woke up this morning, I found that one of the Hummingboards
> had gone offline (as in, lost network link) during the night.
> Investigating, I find that the system had gone into OOM, and at
> that time, triggered an unrelated:
>
> [4111697.698776] fec 2188000.ethernet eth0: MDIO read timeout
> [4111697.712996] MII_DATA: 0x6006796d
> [4111697.729415] MII_SPEED: 0x0000001a
> [4111697.745232] IEVENT: 0x00000000
> [4111697.745242] IMASK: 0x0a8000aa
> [4111698.002233] Atheros 8035 ethernet 2188000.ethernet-1:00: PHY state change RUNNING -> HALTED
> [4111698.009882] fec 2188000.ethernet eth0: Link is Down
>
> This is on a dual-core iMX6.
>
> It looks like the read actually completed (since MII_DATA contains
> the register data) but we somehow lost the interrupt (or maybe
> received the interrupt after wait_for_completion_timeout() timed
> out.)
>
> From what I can see, the OOM events happened on CPU1, CPU1 was
> allocated the FEC interrupt, and the PHY polling that suffered the
> MDIO timeout was on CPU0.
>
> Given that IEVENT is zero, it seems that CPU1 had read serviced the
> interrupt, but it is not clear how far through processing that it
> was - it may be that fec_enet_interrupt() had been delayed by the
> OOM condition.
>
> This seems rather fragile - as the system slowing down due to OOM
> triggers the network to completely collapse by phylib taking the
> PHY offline, making the system inaccessible except through the
> console.
>
> In my case, even serial console wasn't operational (except for
> magic sysrq).  Not sure what agetty was playing at... so the only
> way I could recover any information from the system was to connect
> the HDMI and plug in a USB keyboard.
>
> Any thoughts on how FEC MDIO accesses could be made more robust?
>

I think a better question is why is the FEC MDIO controller configured
to emit interrupts anyway (especially since the API built on top does
not benefit in any way from this)? Hubert (copied) sent an interesting
email very recently where he pointed out that this is one of the main
sources of jitter when reading the PTP clock on a Marvell switch
attached over MDIO.

> Maybe phylib should retry a number of times - but with read-sensitive
> registers, if the read has already completed successfully, and its
> just a problem with the FEC MDIO hardware, that could cause issues.
>
> Thanks.
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

Regards,
-Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
