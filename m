Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 635664F105
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 01:16:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hwPVfI93iKpWRX3v/GmiKn9Gy7XncU/tk0D+Cdd/r5s=; b=UfB5S1p6da6TyM
	yhpAa1UGEFnnpbsJr6nkzd+3JZTUhys7G4UPRzXGICsef9BnCg42StC1EuAfB01hOmGP+uvmgVBFw
	bjsLeDmxFSRvYkN3E65AdbwDz1czPCrhSuRgaULwPwaHtq8a4KCXryS1aIyt8bQQOVCP2GZrRC3TG
	gKhfGGGSV/aaSyBUaq4WNEpCL9A71Y9befvCY1FUauMJdePH7J4fRz2Aerha0+8kQTuXYlLgKmE4s
	E/WNIh0vp+Y4CBzGY9i3Mn7dgqEK/lT+IWFD6ou8NyXFczWsPQunp4ZNXuPiBDiSPlpPIpkfBeyN/
	2aN0WfwXkC+7ONBEQ/KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heSlM-0000Wo-LH; Fri, 21 Jun 2019 23:16:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heSlA-0000W1-Rf
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 23:15:58 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 05CE42089E;
 Fri, 21 Jun 2019 23:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561158956;
 bh=UsUK6BcgifrsKuTNAhqJUC3cA2uP1+uOK9k3Xj/O2Dg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ngKEYUmt4jw8+l9KnRKjVUC3YBuHElaIufqBDzqH3DxUhB5t3XMBoADfmqqJsR1i4
 KIkqdOlaRMzD2kv9myOrPSS4hWfEoJlB1orwKZk4GO2xPwok+pmGtifozXJK5lm7iA
 2K+YDkwbcAQ/lD97RnUtgvTb16wthwA5vs3ngYbE=
Date: Fri, 21 Jun 2019 18:15:51 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH 1/4] arm64: pci: acpi: Use
 pci_assign_unassigned_root_bus_resources()
Message-ID: <20190621231551.GG127746@google.com>
References: <20190615002359.29577-1-benh@kernel.crashing.org>
 <20190621204839.GF127746@google.com>
 <43b27f7fc83a90dc3d1345ee3771fcce337f6bb8.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <43b27f7fc83a90dc3d1345ee3771fcce337f6bb8.camel@kernel.crashing.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_161556_914376_B54B0FDD 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
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

On Sat, Jun 22, 2019 at 09:00:50AM +1000, Benjamin Herrenschmidt wrote:
> BTW...
> 
> You probably want to swap those 2:
> 
> 2 hours	PCI/ACPI: Evaluate PCI Boot Configuration _DSM	Benjamin Herrenschmidt	3	-3/+18
> 2 hours	PCI: Don't auto-realloc if we're preserving firmware config
> 
> As "Don't auto-realloc..." tests a flag that is only created by "Evaluate PCI Boot..."

Ouch, thanks.  I don't know how I managed to swap those.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
