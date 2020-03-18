Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9F118A29F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 19:50:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=t78I/62zkrutiYytAbiI8mYXGiEUm3DhGrSxscW8ih8=; b=OCyxxQTVavLa/0
	5+5f4xVBo52HJNP0fZe29r4zwmd6ZNWAgWyloFeMhcmnyGP18VC1GuCR0SJ1SH5joO3jIR6EqkKF4
	qs0z8QJ3owAN7/TyAlkUc5bMPFqtFFw6wVTHW6eapS94S4a8CUsljrcXpIaE29SMgZlMduNWkiVei
	kNF3zyKuoh0wbYJYj2TBwbo6seEQUH4mtO0vY6WZzUfPLuDyz9Q0kDuoxNUF0FdyUa1w8mYwAFmvs
	+vhc5QgoCCA9Q5kG1t1/VFK1Bdulgk1aiRrDL3ImKTJQNdG+7QJf1vFk+7fHMwvWRlkuzmtiGKcZR
	Mytf3dQ3Ucw+UuiKhTZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEdlJ-0000PX-1A; Wed, 18 Mar 2020 18:49:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEdl8-0000P9-5M
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 18:49:43 +0000
Received: from localhost (mobile-166-175-186-165.mycingular.net
 [166.175.186.165])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 66AC020724;
 Wed, 18 Mar 2020 18:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584557381;
 bh=m4cbPVk0gn7Y6oT8HwTSVAuobPlopKWPy7rT39Co20w=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=PkApTePJZik35M+XbXXxSMGMQsmJfHgLTzOWT94R0zCsUHXCHOnRwbCtdgwOCQZDC
 gGkjkz1pp+VAKTPRN5WmwHlyybtimFIDOE51JoFUHbiRr2b0Z6T6Jp6E/TBG4EOssZ
 GBK4OUNkaChrKGS70Vi7a/wvbIWILG8EI+Id9pVY=
Date: Wed, 18 Mar 2020 13:49:39 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH] MAINTAINERS: correct typo in new NXP LAYERSCAPE GEN4
Message-ID: <20200318184939.GA209856@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200314142559.13505-1-lukas.bulwahn@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_114942_226615_807EC116 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FAKE_REPLY_C           No description available.
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
Cc: Rob Herring <robh@kernel.org>, linux-pci@vger.kernel.org,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Joe Perches <joe@perches.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Mar 14, 2020 at 03:25:59PM +0100, Lukas Bulwahn wrote:
> Commit 3edeb49525bb ("dt-bindings: PCI: Add NXP Layerscape SoCs PCIe Gen4
> controller") includes a new entry in MAINTAINERS, but slipped in a typo in
> one of the file entries.
> 
> Hence, since then, ./scripts/get_maintainer.pl --self-test complains:
> 
>   warning: no file matches F: \
>     drivers/pci/controller/mobibeil/pcie-layerscape-gen4.c
> 
> Correct the typo in PCI DRIVER FOR NXP LAYERSCAPE GEN4 CONTROLLER.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---
> applies cleanly on next-20200313
> 
> Hou, please ack.
> Rob, please pick this patch (it is not urgent, though).

3edeb49525bb ("dt-bindings: PCI: Add NXP Layerscape SoCs PCIe Gen4
controller") is on Lorenzo's pci/mobiveil branch and queued for v5.7.

But it hasn't been merged upstream yet, so we should squash this fix
into Lorenzo's branch so we don't need a fixup commit.

>  MAINTAINERS | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 32a95d162f06..77eede976d0f 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -12858,7 +12858,7 @@ L:	linux-pci@vger.kernel.org
>  L:	linux-arm-kernel@lists.infradead.org
>  S:	Maintained
>  F:	Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt
> -F:	drivers/pci/controller/mobibeil/pcie-layerscape-gen4.c
> +F:	drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c
>  
>  PCI DRIVER FOR GENERIC OF HOSTS
>  M:	Will Deacon <will@kernel.org>
> 
> base-commit: 2e602db729948ce577bf07e2b113f2aa806b62c7
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
