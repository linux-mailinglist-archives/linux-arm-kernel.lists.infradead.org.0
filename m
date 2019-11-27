Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9298B10AFC2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 13:47:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=M2mMBxx3+Upu9eOaFkt8eOVaV0e0iI+PZDZGoAPdfTw=; b=ocehhUcoTAQnm9
	rTU1kGK1E3kcBvE8TORdyTuRQ3M94gA1CHh9RXLkXMRK0wtDUJpF71XoEdFCd1hC+CUqzZ+tChZ4W
	/jSH5hBnfxzqw/SbNr9XEiH7cfSww+6BcUSteuISlUgJXhXddiU1evPZqspbfYg/qsY+j9O6YYnxF
	avHaJtaCbL/1i9IfUOa3UvG3DfgHBrsQyx1rUPljI43XQHW1JCrW3L1KI9Ed7OeBgEAuip3VjjscO
	VkFSzbhayllnOLbSpYYYZWRO8dZyOymUEgQARJqDFc3OOhEEoRkG5XKQfhbZgvZoQh+zEyhfY1q0v
	1mnSZ1e2ukBxd7IUOMkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZwid-00060h-2y; Wed, 27 Nov 2019 12:46:55 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZwiU-0005zz-Ug
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 12:46:48 +0000
Received: by mail-wm1-x343.google.com with SMTP id y5so7310124wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 04:46:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=qERnKv0tOOCfJjOfEE5blBnr7WHRcvWStEnbvb2aF0g=;
 b=J5vSWBY25deEcYjyrsrcOIy+XQBwg+kFxlEPoHPIkqdNnuTnbbjQX2hSreOloziNsq
 VSpBkcS+PsXVkXWwIfn6lycmoQD0DxFn86Yw+l5JHbxgLBYoUYFN0pvlAGKXlGHQp6Ps
 LkbuAv2QBezgfJw5/kDmN94hVTC2nMXptwDllsznuKyaTAesULZ+ANsL/wGaH8ESiUU3
 R0N5m1EFnkmr9MWbvCn+erMKqnCgpQiFQgy2jSCq5Z29oDJ0ho9luo+4xUu/9lxYoCIQ
 4w+ytdLXvPiGVJpKbZUcoFjDk6xOfdETwnQjDqleWjcqvIqf7Wd+ZFhaHRvGMF3sV2WA
 X1bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=qERnKv0tOOCfJjOfEE5blBnr7WHRcvWStEnbvb2aF0g=;
 b=ZYcJRwz4WY1Ug8wAUWqZTbvXBrygZdyf4RhlMsn9KoIzn7eD99/fMzkHvQ8bhbK/6d
 qoL54eckkLNEWaXsE8KCYtOX4Rbs7wWSu33CNifigk0kHHJgdcPIuQnSOaQa8a6/RdKP
 HxRQT35IsocjJL7v15hENehtr0i9jKjRGrwy8JRbuSv3MQrKyIYxQSZ7DHPpHUxzJiMp
 v1/wapo4c/7GGhu21RaCH+X8SLR7LX/XPDWegii3BnpgGPcrnKN1ZLpxwatOB/GfAirE
 7pHM8tWEIA/7V25NHQeo+HQOpE2M5oMtTonL5xQx9C/72IqPrgMWshDde5nGloyTnsv3
 iKpQ==
X-Gm-Message-State: APjAAAVbrxaosdNI+zHvDBUvqx8xCQTDdQ/E7ht9/2IDe+9k08+/Y8P8
 /LvzIv9sCtge4q/bUj7Hf6E=
X-Google-Smtp-Source: APXvYqyjuY2NlQHia9pXct7GlLOBZAwtHBiHOsFyYDzLstDrLlgMr6IlILfQ0PbSaEvs8h/KYMhiWg==
X-Received: by 2002:a05:600c:2058:: with SMTP id
 p24mr3903416wmg.134.1574858805137; 
 Wed, 27 Nov 2019 04:46:45 -0800 (PST)
Received: from localhost ([193.47.161.132])
 by smtp.gmail.com with ESMTPSA id i71sm20950628wri.68.2019.11.27.04.46.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 27 Nov 2019 04:46:44 -0800 (PST)
Date: Wed, 27 Nov 2019 13:46:38 +0100
From: Oliver Graute <oliver.graute@gmail.com>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH] arm64: defconfig: Change CONFIG_AT803X_PHY from m to y
Message-ID: <20191127124638.GC5108@optiplex>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e39c043d-d098-283d-97b0-2a44aefec2f1@free.fr>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_044647_012448_75E63AE3 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FAKE_REPLY_C           No description available.
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
Cc: Andrew Lunn <andrew@lunn.ch>, Peng Fan <peng.fan@nxp.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Anson Huang <anson.huang@nxp.com>,
 =?iso-8859-1?Q?Andr=E9?= Draszik <git@andred.net>,
 LKML <linux-kernel@vger.kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>,
 dl-linux-imx <linux-imx@nxp.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/11/19, Marc Gonzalez wrote:
> On 26/11/2019 15:54, Oliver Graute wrote:
> 
> > this patch broke my imx8qm nfs setup. With the generic phy driver my
> > board is booting fine. But with the AT803X_PHY=y enabled  I'm running
> > into the following phy issue. So on my side it looks inverse as on
> > yours. What is the best proposal to fix this?
> > 
> > [    5.550442] fec 5b040000.ethernet eth0: Link is Up - 1Gbps/Full - flow control off
> > [    5.573206] Sending DHCP requests ...... timed out!
> > [   95.339702] IP-Config: Retrying forever (NFS root)...
> > [   95.348873] Atheros 8035 ethernet 5b040000.ethernet-1:06: attached PHY driver [Atheros 8035 ethernet] (mii_bus:phy_addr=5b040000.ethernet-1:06, irq=POLL)
> > [   99.438443] fec 5b040000.ethernet eth0: Link is Up - 1Gbps/Full - flow control off
> > [   99.461206] Sending DHCP requests ...... timed out!
> 
> Which DTS are you using?

I'am using this DTS which I'am currently working on:

https://lists.infradead.org/pipermail/linux-arm-kernel/2019-October/689501.html
> 
> I bet one dollar that 6d4cd041f0af triggered a latent bug in the DTS.

So what should I fix in my device tree?

Best regards,

Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
