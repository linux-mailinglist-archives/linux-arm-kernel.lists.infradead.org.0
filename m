Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE9C4EFD6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 22:08:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7PTK8eYCfPQwNan7FxvvRFVqrif7LlX8AsKzuzi6B5Q=; b=N998Ln/MlBjZ1B
	a7/3L7uaHW6nU9SvjQh9OVw0TgjcqUrfsG8E+Ingp2IW+42u7xFJzcV4LXRtSCkILe4Us1gwXoA36
	grJj6em7x1XGOpcSPMlF8n6CLGe063Yv7qIc9IqVmf78SVzV0SCyPLir+XZfl1vzOcz31G5SQ9Ipe
	JzaFcGjxkP62aOVXqitGGRsGQbXz39XYQHEEqagXuLco6r8K2FVPVKJLmlU2sr17QnP5XliWLY4f5
	BZGcZ5Yk0uYmvBp50dTFO6FFty4c2sZXQibu4zuurqvoiaJWtJ24j5gDT/h/sQozhGz7HxCKsvbDt
	HI0xLqTufkL+6OBK3bvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hePpT-00084Y-67; Fri, 21 Jun 2019 20:08:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hePp7-00081Z-CA
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 20:07:50 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D792620673;
 Fri, 21 Jun 2019 20:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561147669;
 bh=0Q6eZ4Ns3hj441z/4FACxfCJGnJCj66TT2wHjPxYctg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=w12K6GV4LF55nMlAjG9W/joMJeEznA7KRY71x5SZcW2XB4nR+PJFqakBok/wlrgHG
 nYpbqoSRuLL8VhvujyBxBGPbRQU93aCmU8NJ9xkoSNggqoMdCB1sHK+dhhnGDgK83I
 7xFhB8jxLq7ZN4mQks70fur8MCtaQaCQnLyJEMNw=
Date: Fri, 21 Jun 2019 15:07:47 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH 3/4] pci: Do not auto-enable PCI reallocation when _DSM
 #5 returns 0
Message-ID: <20190621200747.GD127746@google.com>
References: <20190615002359.29577-1-benh@kernel.crashing.org>
 <20190615002359.29577-3-benh@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190615002359.29577-3-benh@kernel.crashing.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_130749_818906_FED343DD 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-pci@vger.kernel.org,
 Sinan Kaya <okaya@kernel.org>, Zeev Zilberman <zeev@amazon.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ali Saidi <alisaidi@amazon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

  PCI: Don't auto-realloc if we're preserving firmware config

On Sat, Jun 15, 2019 at 10:23:58AM +1000, Benjamin Herrenschmidt wrote:
> This prevents auto-enabling of bridges reallocation when the FW tells
> us that the initial configuration must be preserved for a given host
> bridge.

"Prevent auto-enabling ..." to follow usual style of imperative mood in
commit logs.

> Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> ---
>  drivers/pci/setup-bus.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/pci/setup-bus.c b/drivers/pci/setup-bus.c
> index 0cdd5ff389de..049a5602b942 100644
> --- a/drivers/pci/setup-bus.c
> +++ b/drivers/pci/setup-bus.c
> @@ -1684,10 +1684,16 @@ static enum enable_type pci_realloc_detect(struct pci_bus *bus,
>  					   enum enable_type enable_local)
>  {
>  	bool unassigned = false;
> +	struct pci_host_bridge *hb;

Conventional variable names are "bridge" or "host".

>  	if (enable_local != undefined)
>  		return enable_local;
>  
> +	/* Don't realloc if ACPI tells us not to */

I'd drop the comment, since there might be other mechanisms, e.g., DT,
someday.

> +	hb = pci_find_host_bridge(bus);
> +	if (hb->preserve_config)
> +		return auto_disabled;
> +
>  	pci_walk_bus(bus, iov_resources_unassigned, &unassigned);
>  	if (unassigned)
>  		return auto_enabled;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
