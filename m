Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F13E71CC4E4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 00:14:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LPB+BBFeMHJa7Zl7PhsgEc9JaGQQgDLXqBBbod8xQgE=; b=qcsPrJjMUEOlkz
	Fn0CqrLaCe8bb9WmzGupbdKexBHHI0UbL1uQrmRQ/7XkGHjAHdlDXJvumKpHlZ3GgtsGeeYpQHpCX
	UUlIR/obP4fxkP+cUthOfD+rHXy0kO7xATnmznI1FAXQ3IxYu03RDHnQt9zQrWpvHp+2EAczWOFmU
	1fRRytd1VbBH20b3QY/Nnd/A4cvO4bvzfllAKPXqZgPIAKZ0X8XXhRbA6b3dP6xCzCTZapMDwzSJA
	gV+LYzoMu5vumQZIDOufnm71ucRL4n8xprnndp6VIQL01bcwE03RDwQARK7eGc8ZxEtuHx3hWu8Sz
	pJWh0Sqb2d4Mu1rrPa6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXXjJ-0002t9-9r; Sat, 09 May 2020 22:13:57 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXXjB-0002rh-Ie
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 22:13:52 +0000
Received: by mail-wm1-x343.google.com with SMTP id k12so13842647wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 09 May 2020 15:13:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lD31d7YFceTquxmJsFPQZPEcCiTM+43KicNVCvkKBqk=;
 b=Ia/S2gFcm00jIKuwaz5kSI5Dx0TNSVOE3wST8xvegQacQa6wHM0ySbTqB3S9gvA9yk
 tUTK4j9Lkpati6Tcu0P+G4IX0BTGhrLdYupCOAjclWsmD/YG/9fKqaHtkj/+TM7b71Kd
 6VqNnhL1TDDX3mrynAwJH7gthDLBVgtSbxTPk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lD31d7YFceTquxmJsFPQZPEcCiTM+43KicNVCvkKBqk=;
 b=mNbuBUOQjgSC+2KUVF2SSWvSKCwttsViBVlmVEeo1HYa2y5yPknd4zL5/9AW7hacvJ
 7GAKZo8TZHrl6NeEkTdugb0DJI1795z6W/rU0FPN3jUeX9o1i18JKpPw9xdP0n83ATmg
 R21+6PJuBBKfUgkOMmAaNaZIktmWLF6WsVxdJPxPtxPNCt8PpnYo6vzVZwiLYDeB0KX7
 7PfZVRgpCN7FthA9WuPZBZmtS1+jSGNn+NKa94jJ2sqLv5OhV2FavX30TN8hJnRsnf2q
 lLBU58MeRb/apDz8hKmGYY2iXkfvwCfdEJcGLfFeWH/2JK428BW0deVmug4qwmAy4dYq
 5c/Q==
X-Gm-Message-State: AGi0PuY/7Esg+irea2/QlVOBUPntgwPdPy4V9xy8T4PAiwLndPivbrxd
 hw3LRQHfhkfFCGLmXtGV/Cp5wg/vtGhBnAT7S7UO6Q==
X-Google-Smtp-Source: APiQypIUFrX/jGD2s6yJaEK2Vf/IZY6cocpfJr4dUVpQJp+R1wRt/kWM6nTigZL0ZJgnFyqyz/rv2syLdywi6Bj/2Fk=
X-Received: by 2002:a05:600c:2:: with SMTP id g2mr23981017wmc.85.1589062426992; 
 Sat, 09 May 2020 15:13:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200507172020.18000-1-nsaenzjulienne@suse.de>
In-Reply-To: <20200507172020.18000-1-nsaenzjulienne@suse.de>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Sat, 9 May 2020 18:13:33 -0400
Message-ID: <CA+-6iNzeBJ9ioG_=HnthUsRUYUQC2Wm=-BOAdFhShs9dy4ovcA@mail.gmail.com>
Subject: Re: [PATCH] PCI: brcmstb: Assert fundamental reset on initialization
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_151349_608341_24DB8400 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, tim.gover@raspberrypi.com,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, s.nawrocki@samsung.com,
 Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 7, 2020 at 1:20 PM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> While preparing the driver for upstream this detail was missed.
>
> If not asserted during the initialization process, devices connected on
> the bus will not be made aware of the internal reset happening. This,
> potentially resulting in unexpected behavior.
Hi Nicolas,
I believe that most chips by design have the PERST signal asserted by
default during start-up but this will certainly cover any that do not.
Looks good.
Regards,
Jim
>
> Fixes: c0452137034b ("PCI: brcmstb: Add Broadcom STB PCIe host controller driver")
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>  drivers/pci/controller/pcie-brcmstb.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
> index 0b97b94c4a9a..795a03be4150 100644
> --- a/drivers/pci/controller/pcie-brcmstb.c
> +++ b/drivers/pci/controller/pcie-brcmstb.c
> @@ -699,6 +699,7 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
>
>         /* Reset the bridge */
>         brcm_pcie_bridge_sw_init_set(pcie, 1);
> +       brcm_pcie_perst_set(pcie, 1);
>
>         usleep_range(100, 200);
>
> --
> 2.26.2
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
