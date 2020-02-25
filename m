Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F9F16F0E3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 22:10:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YCUs5RfOUUDKNsvM1TPF4rcb/1PcfA3zH1pNxNVCi9s=; b=da+3Wnc3RKfvNu
	rvd2LNzIhQ0FV30jNhTfqjOu2WEw+m+nG7C5/aZsRCToxxSfh8oLKFZK4TCruqaiH1Tb9pXwKBue4
	896eTxTxCJE1wZ8BhwwEUs9tdGczFQMsQfYEYETZsrMtGjBUOUc6vxCrkNezND6+b9eeFTg4KNMPa
	Rxs2N6AskJqE1su7FWcC4MkYg973EsLBuOS6XcTFVGR+LQnSWmyPslf/WRI7sy/TaDp7caKx/knAv
	+iy69zTQelY/9RUfqcEoAxuPtJpOdmi0kKygHUu91KoHv47BmlIKUEitLsaAxjlS8stn9gYmhZIHG
	WvQzJS034lpvcpZUU5fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6hSv-0001Qp-QD; Tue, 25 Feb 2020 21:10:05 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6hSj-0001Px-5o; Tue, 25 Feb 2020 21:09:55 +0000
Received: by mail-ed1-x542.google.com with SMTP id j17so1069202edp.3;
 Tue, 25 Feb 2020 13:09:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4ReknaT/FHBXByMXGGadMEzL/WYd/+sCy+KAJpp5ZwQ=;
 b=g6gfdjSUOo1daNt5JbO1OW+lwH1wDg11Aag/ldGmhkKkxyuiYo8+Th2fgxoAQQ4hXq
 TRfwhYem3PhxViqcWuVx+VibsoPJtyTVagbuspEnHeQYaT2u/LwJMeu3LbXXCD0Gb+P0
 kRLDLX6J05YQ2Y8hv4+QoX7W+8th93s38oDKyijo7aUk+0WA/Q35uUeEjwKyuKG1sJKb
 pHrmZYL+Ul2ujJ6ECXARZynFXSJa6Fk0D+GxbQh8iZeV9tRAEnb/IR6xJlRYeIfUjO0K
 m+I0aO92UvVW8NrmhRC7I6GzDK8oveynokyluJrJ/ckLFboCtOu9kXc5lv28q9nFAWd2
 pQcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4ReknaT/FHBXByMXGGadMEzL/WYd/+sCy+KAJpp5ZwQ=;
 b=bbqq4ycP6dBZcdORGrH9aDG7bWm/8J8BlvIN5/FYt8jGT6uSZUfiFz/jEpb8M9WG+r
 cMMRO5+xjYPbujqALpYVdU+nMl5XWhdzcoBNkwvQ4LdVy0Vicho6VceIZwkLDqCjvWvP
 MPsZJs9DLtrMXGEH2ajKmVMeem6XSZjB+7IPyeAMRbfADfwgHidCK9AKNCEsxPDZ9Eiv
 AkTUv3nV7KS0og2WQIzkZ6d4duFnvh3PrAVzJzzPTc9ifVzzLW1XC2Zqu3C73Ee+cHk4
 L41W8Gv727VVTfv8cpoK9I0OQWhNxKnHwCSeeVPG/Q1liiKhM0WtztQKv3WxqRCuYeWN
 vXbA==
X-Gm-Message-State: APjAAAXYp6GORKs1pXajOxiPgPNhslKP3iuCQ3CbGgVKysW4q2GTqalR
 f6kGN+8DE/+ONBphoBV9vq7gM3ZPtRCt4ILn5A0=
X-Google-Smtp-Source: APXvYqyAzVm/wNR8w7wh+lAC7aHiC7zE7iGdWgqO+BLhvYvGS2dy2yiQw4bZhX/VBimWuHByQuf8RvIEP4SD4vbjH9A=
X-Received: by 2002:a05:6402:128c:: with SMTP id
 w12mr909815edv.368.1582664986639; 
 Tue, 25 Feb 2020 13:09:46 -0800 (PST)
MIME-Version: 1.0
References: <20200225093703.GS25745@shell.armlinux.org.uk>
 <E1j6Wg0-0000Ss-W7@rmk-PC.armlinux.org.uk>
In-Reply-To: <E1j6Wg0-0000Ss-W7@rmk-PC.armlinux.org.uk>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Tue, 25 Feb 2020 23:09:35 +0200
Message-ID: <CA+h21hp8KCqhCasOAGz17k0eRteHVVYK-eANQmn4h443qv=2JQ@mail.gmail.com>
Subject: Re: [PATCH net-next 2/8] net: dsa: propagate resolved link config via
 mac_link_up()
To: Russell King <rmk+kernel@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_130953_219633_1FF3C757 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [olteanv[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Florian Fainelli <f.fainelli@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 Michal Simek <michal.simek@xilinx.com>, Jose Abreu <joabreu@synopsys.com>,
 Jakub Kicinski <kuba@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 Hauke Mehrtens <hauke@hauke-m.de>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, netdev <netdev@vger.kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Felix Fietkau <nbd@nbd.name>,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Tue, 25 Feb 2020 at 11:39, Russell King <rmk+kernel@armlinux.org.uk> wrote:
>
> Propagate the resolved link configuration down via DSA's
> phylink_mac_link_up() operation to allow split PCS/MAC to work.
>
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> ---
>  drivers/net/dsa/b53/b53_common.c       | 4 +++-
>  drivers/net/dsa/b53/b53_priv.h         | 4 +++-
>  drivers/net/dsa/bcm_sf2.c              | 4 +++-
>  drivers/net/dsa/lantiq_gswip.c         | 4 +++-
>  drivers/net/dsa/mt7530.c               | 4 +++-
>  drivers/net/dsa/mv88e6xxx/chip.c       | 4 +++-
>  drivers/net/dsa/sja1105/sja1105_main.c | 4 +++-
>  include/net/dsa.h                      | 4 +++-
>  net/dsa/port.c                         | 3 ++-
>  9 files changed, 26 insertions(+), 9 deletions(-)
>

It looks like you missed the felix_phylink_mac_link_up() conversion in
this patch? (which also makes it fail to build, by the way, I'm
supposed the Kbuild robot didn't already jump)
Nonetheless, I've manually added the missing speed, duplex, tx_pause
and rx_pause parameters, and it appears to work as before.
Same for sja1105.

Tested-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Regards,
-Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
