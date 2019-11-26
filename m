Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A368210A0D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 15:56:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h07ApwaHJ+IlB2Ee/I2HiK1PcV2ZQRSrV3FG9z6gawA=; b=s6DG0hgO9RTf3V
	6D8Dns3U6iVfxq3vKA48kzhjSTAHKbVKZknfYV7QsfMUgzi8rKcBmPjJkhFTs//91RyORumDXXGa9
	k+8en96w0ieBVxrLBGc+yS8Hiqo2Cr+drfSLye7zGem/rCoSJ3WOMZU74TnbMOifc/DamIFNlT2Zo
	x4H5YUdLEQPKRfRTr9tVvfetl3FrJmdaACvsUjUQuDQyY7loZ+eK80f9zYukt/9Ett3CSknRk3+0c
	nBk77jxMTR8YwK1OfGcYHAmj63FvgMZ3Nl1WqyHm/PtTftx+8ynalSM2z+3HH7ah5aDJMVqP7dq6p
	L8QBwfIfmkAagcYINHBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZcG6-00064X-Si; Tue, 26 Nov 2019 14:56:06 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZcFj-0005hT-Tb
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 14:55:45 +0000
Received: by mail-wr1-x444.google.com with SMTP id z10so22724535wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 06:55:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gAgCpOkG0CJjj2IFAJR4DNaPYnOca7utLu7qbIQQs80=;
 b=lnOG2CPrDsBR3s1As/va8KQnttWwJwEztlWw+DWSnGR9ylPtiIjHY0epAyKvohy03K
 KIqoR3yv2USeXlUfdgdJFCd5vLk6I/M1xbgu0BvtdSDKSX6gQ3NlXLNlL2E9xwcHZz1s
 +whYQQxseK5cSMRB8EHWnA1DVskgYuujPmelVtzmc85JO11hdyZzYjI/m5GKt2sXJLlW
 nEcVqIOaJwEsj7eDwP9BOLzt2lu0jlM5XryENo2k4JR8siCZQA34tmCYOCCqmGWey/cw
 U/xFJEInHoNYXOlBehkHaDgFfIweXNFnubeE5AOV0YlLRRUr1TEbJ4D/dYvR/PbhqXvl
 duSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gAgCpOkG0CJjj2IFAJR4DNaPYnOca7utLu7qbIQQs80=;
 b=THiSo/tLu6Lo0wx/S4lZmPoqk8pFAFgkrVKcd+fro/+qGuIokHnpFmIwjAEVmN9WIK
 4/KIw6rhCAdSOpmZa0ZS3q3/dOmZCcPd+wmqJ1Bl1WAzRevp8QXjB6P1zQkX+oNrRQ/C
 yx/73Cib/W1uOf13upeBCor0r0HIDG0IhoQuHuNoPfHkS+ZuDe/kaQOO0nzhWVgqwfDZ
 1UB2tYf0Z3pc7u8WQ9IUIpA8mPRyo35HIyq1UGHDSbHq8O2YQl7pjm+t8tt1TQSe34eD
 H4EJeLRWkJNZA0F1511wgM6zp5Mt00CtBISA+tF/npFE2l4w2S5sVVU42NATvuyGsYn0
 h1Sw==
X-Gm-Message-State: APjAAAX7xf1yds8VeRBPGqE9jJbhuHsCATNT3/9U72j3+KUwNuahZ1Hq
 8yOd3g20ssagQvSr//16H7M=
X-Google-Smtp-Source: APXvYqyf0ou5DnVsUssYXL+snAKsOsfoIMefMqPoDOLg1WEgrM/FwYfatiAjbx4JWRqshoUbMq0fbQ==
X-Received: by 2002:a5d:5267:: with SMTP id l7mr32515964wrc.84.1574780141417; 
 Tue, 26 Nov 2019 06:55:41 -0800 (PST)
Received: from localhost ([193.47.161.132])
 by smtp.gmail.com with ESMTPSA id e16sm3294586wme.35.2019.11.26.06.55.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 26 Nov 2019 06:55:40 -0800 (PST)
Date: Tue, 26 Nov 2019 15:54:50 +0100
From: Oliver Graute <oliver.graute@gmail.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] arm64: defconfig: Change CONFIG_AT803X_PHY from m to y
Message-ID: <20191126145450.GB5108@optiplex>
References: <1572848275-30941-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572848275-30941-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_065543_971727_619D242D 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anson Huang <anson.huang@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "olof@lixom.net" <olof@lixom.net>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/11/19, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> With phy-reset-gpios are enabled for i.MX8MM-EVK board, phy
> will be reset. Without CONFIG_AT803X_PHY as y, board will stop
> booting in NFS DHCP, because phy is not ready. So mark
> CONFIG_AT803X_PHY from m to y to make board boot when using nfs rootfs.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  arch/arm64/configs/defconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index c9a867ac32d4..cd778c9ea8a4 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -285,7 +285,7 @@ CONFIG_SNI_AVE=y
>  CONFIG_SNI_NETSEC=y
>  CONFIG_STMMAC_ETH=m
>  CONFIG_MDIO_BUS_MUX_MMIOREG=y
> -CONFIG_AT803X_PHY=m
> +CONFIG_AT803X_PHY=y
>  CONFIG_MARVELL_PHY=m
>  CONFIG_MARVELL_10G_PHY=m
>  CONFIG_MESON_GXL_PHY=m
> -- 
> 2.16.4

Hello Peng,

this patch broke my imx8qm nfs setup. With the generic phy driver my
board is booting fine. But with the AT803X_PHY=y enabled  I'am running
into the following phy issue. So on my side it looks inverse as on
yours. What is the best proposal to fix this?

[    5.550442] fec 5b040000.ethernet eth0: Link is Up - 1Gbps/Full - flow control off
[    5.573206] Sending DHCP requests ...... timed out!
[   95.339702] IP-Config: Retrying forever (NFS root)...
[   95.348873] Atheros 8035 ethernet 5b040000.ethernet-1:06: attached PHY driver [Atheros 8035 ethernet] (mii_bus:phy_addr=5b040000.ethernet-1:06, irq=POLL)
[   99.438443] fec 5b040000.ethernet eth0: Link is Up - 1Gbps/Full - flow control off
[   99.461206] Sending DHCP requests ...... timed out!
[  174.419639] IP-Config: Retrying forever (NFS root)...
[  174.428834] Atheros 8035 ethernet 5b040000.ethernet-1:06: attached PHY driver [Atheros 8035 ethernet] (mii_bus:phy_addr=5b040000.ethernet-1:06, irq=POLL)
[  178.542418] fec 5b040000.ethernet eth0: Link is Up - 1Gbps/Full - flow control off
[  178.565206] Sending DHCP requests .....
[  209.261271] random: crng init done
[  230.565202] . timed out!
[  260.577340] IP-Config: Retrying forever (NFS root)...
[  260.586497] Atheros 8035 ethernet 5b040000.ethernet-1:06: attached PHY driver [Atheros 8035 ethernet] (mii_bus:phy_addr=5b040000.ethernet-1:06, irq=POLL)
[  264.686438] fec 5b040000.ethernet eth0: Link is Up - 1Gbps/Full - flow control off
[  264.709206] Sending DHCP requests ...... timed out!
[  339.259701] IP-Config: Retrying forever (NFS root)...
[  339.268835] Atheros 8035 ethernet 5b040000.ethernet-1:06: attached PHY driver [Atheros 8035 ethernet] (mii_bus:phy_addr=5b040000.ethernet-1:06, irq=POLL)
[  343.374422] fec 5b040000.ethernet eth0: Link is Up - 1Gbps/Full - flow control off
[  343.405206] Sending DHCP requests ...... timed out!
[  433.171676] IP-Config: Retrying forever (NFS root)...
[  433.180842] Atheros 8035 ethernet 5b040000.ethernet-1:06: attached PHY driver [Atheros 8035 ethernet] (mii_bus:phy_addr=5b040000.ethernet-1:06, irq=POLL)
[  437.294439] fec 5b040000.ethernet eth0: Link is Up - 1Gbps/Full - flow control off
[  437.317206] Sending DHCP requests ...... timed out!
[  509.003660] IP-Config: Retrying forever (NFS root)...
[  509.012836] Atheros 8035 ethernet 5b040000.ethernet-1:06: attached PHY driver [Atheros 8035 ethernet] (mii_bus:phy_addr=5b040000.ethernet-1:06, irq=POLL)
[  513.102416] fec 5b040000.ethernet eth0: Link is Up - 1Gbps/Full - flow control off

Best Regards,

Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
