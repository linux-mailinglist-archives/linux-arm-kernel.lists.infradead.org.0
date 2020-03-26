Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D96D194130
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 15:22:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Bp6vf6gC0JAhHHpxzEsbwUJvRMw9icU2OE64O89sMmk=; b=H4u5hwKSZhM/S5
	+PvScn7kvtkpnIQUrt8yVUGUW2/Smcf1YsQh7kBw2p2reNnld4HAqRoh0rt45FCZ6zZGU3Gc2fo0Y
	joVzF/XtY8uhRwujkmV8B5pIZFJWSrQ4MS+jrqqOWiPtfvuBag8aEAkNOwLC/yUHQbmoW7mfSHMrL
	QiGbFh1Venh/iOBV4p2WWyvL9kjAzJOY5yjkjuX9OpplaeGc+k4kHo3xTsaQeYiMX73jVA91xq6eW
	2tXXJtrvxtULriN+TRYO7iRKos7+w/IIsDDCKQvhQTKvaHOX7DIy5m7cOu0UmWEEd/vV5QXyAnllz
	gFXWeA7tKRoNu03DOuyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHTP0-0000BI-Cs; Thu, 26 Mar 2020 14:22:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHTOn-0000AE-TY
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 14:22:23 +0000
Received: from localhost (mobile-166-175-186-165.mycingular.net
 [166.175.186.165])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AD322206F8;
 Thu, 26 Mar 2020 14:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585232541;
 bh=YlsR+y4MevduxIpBHtlSqX0E4PR8rEoNyXJuFhZpfCs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=aUzqJqzYSCnTgPyA/P32W4O9j/LzdzCb6cnGRFJy0Cwv8RSWlx1+hK3ZUovfKdEtI
 tvJHNho2Hbq8acMNBk8LnaocRhllSCzcGoE/b6S8E7jLJ4VgMCZdp/FAj24UGX+eaI
 onNUYLGqPj9hTNVjVXaO6egDdALibnysCDzybkNY=
Date: Thu, 26 Mar 2020 09:22:18 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Srinath Mannam <srinath.mannam@broadcom.com>
Subject: Re: [PATCH v5 1/6] dt-bindings: pci: Update iProc PCI binding for
 INTx support
Message-ID: <20200326142218.GA259277@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1585205326-25326-2-git-send-email-srinath.mannam@broadcom.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_072221_977515_492D6FE3 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 FAKE_REPLY_C           No description available.
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Ray Jui <rjui@broadcom.com>, Ray Jui <ray.jui@broadcom.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-pci@vger.kernel.org,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

  $ git log --oneline Documentation/devicetree/bindings/pci/

  34129bb831cc ("dt-bindings: PCI: intel: Fix dt_binding_check compilation failure")
  e1ac611f57c9 ("dt-bindings: PCI: Convert generic host binding to DT schema")
  919ba6e739eb ("dt-bindings: PCI: Convert Arm Versatile binding to DT schema")
  0956dcb853dc ("dt-bindings: PCI: Add bindings for brcmstb's PCIe device")
  5d28bee7c91e ("dt-bindings: PCI: qcom: Add support for SDM845 PCIe")
  e54ea45a4955 ("dt-bindings: PCI: intel: Add YAML schemas for the PCIe RC controller")
  d8725e38dd9f ("dt-bindings: pci: layerscape-pci: add compatible strings "fsl, ls1028a-pcie"")

Capitalize yours match and put the useful information at the
beginning; maybe something like this:

  dt-bindings: PCI: iproc: Improve INTx modeling

On Thu, Mar 26, 2020 at 12:18:41PM +0530, Srinath Mannam wrote:
> From: Ray Jui <ray.jui@broadcom.com>
> 
> Update the iProc PCIe binding document for better modeling of the legacy
> interrupt (INTx) support.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
