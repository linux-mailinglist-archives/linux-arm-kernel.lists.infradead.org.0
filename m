Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 203DB170788
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 19:22:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QMc29VxmXPpwu+wXtnc8cl3/ni+g3/sJQyZTDLzlhvg=; b=o5yF4yVjAtSfjt
	Mi5rrA5WVG8D6xhA8ZstZQE9dH2dmX9CVwoGb8qcbQ1r7va1EmmmdpEiZ1kVAvHib3uUzXr4mpgws
	pBJPTyM+tKMzaTOWBmrJj/ionEoRBgp29mtZxpd0QNEc+W8ePjk0x7sj0C1bfUxXMGyztUNoxCcxt
	O8P9fgx1xx5Ko7JCCr1Q25ugPUn2azizk3F15sce9t1CLpD9bRrAQi/CMpKyBmhY06pnM4BjNbIFT
	2o02fH33buz2+oD/e3gw6+P6dB+2pwL6F2vz3hcp8TeWBu1tFuaEsA7IY5HVabPG6smiODNHFqULK
	iK+mFtHxLbU/KmJ5P4jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j71K2-0003tg-CN; Wed, 26 Feb 2020 18:22:14 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j71Jp-0003sH-Jd; Wed, 26 Feb 2020 18:22:03 +0000
Received: by mail-ed1-x544.google.com with SMTP id g19so4949052eds.11;
 Wed, 26 Feb 2020 10:22:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ovPhpjCazhkBuPF/3ZKvkZXEB2wEDICs1R4JyVb9o08=;
 b=OI9iBUUhfV6cJMJ9vJ68G9/cgbTv1wHVcLG3LksGDJejAEymTYAcHNfYaJykBuoCYe
 87vy3ZZP1+u0TaBtMLFbjh8l7ziIjEh+V4M8f3I/wxUqb7Ew7PxoqQKRR4ZT048Ejzju
 wyU8A8YVqsth1rJFgn/NB5jkfes01W6LkbdTqYBI3MdZ3P4j2c9kTfU1x/BUFK72+5IV
 JHmXKtnRhNimBUw3yac7D0HrmV6Y9w5aJcXVxQLAIsogWJzBZqOeGnjOwt/ZvdBqUHO5
 x7txNWnt26x8UvtluXLhrabAHgxXnevK2t8iE7HXNw6RDu5P2EuMWsvI9OG7e6P2h/P+
 cEig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ovPhpjCazhkBuPF/3ZKvkZXEB2wEDICs1R4JyVb9o08=;
 b=dPlVrhDXGT7k21KhFeztEeYlGLyj5sKhVeoaZuMZE4+4K2v4CQehFHEoxUhXG4ywdb
 DRQrYMll5ypJVb1qhXcKHZSFRCvGl34BKcfcIt1FCFrlzJQ022JlG4W6hTQeGPB5L21o
 a7lhX/6aqKDBKBPkFgs+sYzBxQPhI3jl9aAKt+8+1FglPoD8STD6SeqQl8tCaItF7lyp
 eNOlVZzVIYgThdhznROjC+oXHM0U0RLQgYOC8Du9a8qU1nlg8I8cAVUlH5Aaw3zaGK+D
 f3TsR4V3QD5NkX8ITkt9eJ42KUO4uo81FIs3lqB/1er9JzJrpTpclFB9k9FJHJtyqXhc
 P+Cw==
X-Gm-Message-State: APjAAAUT78OuROaJjTk4jp1hKHV/K+Lx8XYFGuhfFCl4A0uoAfErCmzU
 ObPJO6s8mZyPs6Xn4Eyj9BuDMS1GKcW9cQbVySs=
X-Google-Smtp-Source: APXvYqyWWHDLBD74C4KrlGNwJKHlt0Sr7+Pr/k5MqDzX2pGa8p/QrMHHNyTSgjdqd2CIME9nHLlZVrItPU00x+MTPeA=
X-Received: by 2002:a05:6402:128c:: with SMTP id
 w12mr643997edv.368.1582741318899; 
 Wed, 26 Feb 2020 10:21:58 -0800 (PST)
MIME-Version: 1.0
References: <20200226102312.GX25745@shell.armlinux.org.uk>
 <E1j6tqv-0003G6-BO@rmk-PC.armlinux.org.uk>
 <CA+h21hrR1Xkx9gwAT2FHqcH38L=xjWiPxmF2Er7-4fHFTrA8pQ@mail.gmail.com>
 <20200226115549.GZ25745@shell.armlinux.org.uk>
 <CA+h21hqjMBjgQDee8t=Csy5DXVUk9f=PP0hHSDfkuA746ZKzSQ@mail.gmail.com>
 <20200226133614.GA25745@shell.armlinux.org.uk>
In-Reply-To: <20200226133614.GA25745@shell.armlinux.org.uk>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Wed, 26 Feb 2020 20:21:47 +0200
Message-ID: <CA+h21hqHfC0joRDhCQP6MntFdVaApFiC51xk=tUf3+y-C7sX_Q@mail.gmail.com>
Subject: Re: [PATCH net-next v2 1/8] net: phylink: propagate resolved link
 config via mac_link_up()
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_102201_672475_4659DF89 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [olteanv[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Florian Fainelli <f.fainelli@gmail.com>,
 Ioana Radulescu <ruxandra.radulescu@nxp.com>, Jonathan Corbet <corbet@lwn.net>,
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

On Wed, 26 Feb 2020 at 15:36, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
>
> dpaa2 is complicated by the firmware, and that we can't switch the
> interface mode between (SGMII,1000base-X) and 10G.
>
> If the firmware is in "DPMAC_LINK_TYPE_PHY" mode, it expects to be told
> the current link parameters via the dpmac_set_link_state() call - it
> isn't clear whether that needs to be called for other modes with the
> up/down state (firmware API documentation is poor.)
>

With PCS control in Linux, I am pretty sure that you don't want
anything other than DPMAC_LINK_TYPE_PHY anyway.
Basically in DPMAC_LINK_TYPE_FIXED, the MC firmware is in control of
the PCS and polls its link state to emit link notifications to objects
connected to the DPMAC. So Linux control of PCS would class with
firmware control of the PCS, leading to undesirable side-effects to
say the least.

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
