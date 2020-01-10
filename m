Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F9D136F17
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 15:13:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P2oE6EWAkS6s93EPgVmK9ulPoMtu5jK8Zgg6qac/USg=; b=UOBQKyIwhsx2nb
	VwNoEQUx7Dmz6jOoWdmP41nYT8/LNny2WFdiqtv6HEXjgUmF9/X8naDXiDIfrOQRDXz/TX2msxfya
	9hR6oTHvKEZrHrhk0EZJ7YrwXe0tYetd0HN5zS4TO+SUQX5ASgRLULS7gfP6qRb4xt/BB3xqrWz47
	cPn7WkwhOAt2XNXPHhuN4TGqqzTB4LQAm+G1Z+IalvRnWurw8cJxGOWX4nqxjiFcxgQzHBNXNazI7
	ZglmDX/ADyucJeIf59N3DvnsQJ6xEsolh9XiIY32jdIWQTNf5ppVuDwBBMEQ7Az5cCv+a1b8ynJT7
	dk20KA8JSjBA5DANwrrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipv2L-0000mt-VK; Fri, 10 Jan 2020 14:13:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipv2D-0000mA-Kd
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 14:13:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E075B328;
 Fri, 10 Jan 2020 06:13:08 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B292E3F534;
 Fri, 10 Jan 2020 06:13:07 -0800 (PST)
Date: Fri, 10 Jan 2020 14:13:03 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH 12/14] net: axienet: Autodetect 64-bit DMA capability
Message-ID: <20200110141303.2e5863ab@donnerap.cambridge.arm.com>
In-Reply-To: <20200110140852.GF19739@lunn.ch>
References: <20200110115415.75683-1-andre.przywara@arm.com>
 <20200110115415.75683-13-andre.przywara@arm.com>
 <20200110140852.GF19739@lunn.ch>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_061309_720760_7BBAA57B 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: netdev@vger.kernel.org,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Robert Hancock <hancock@sedsystems.ca>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 10 Jan 2020 15:08:52 +0100
Andrew Lunn <andrew@lunn.ch> wrote:

Hi Andrew,

thanks for having a look!

> > To autodetect this configuration, at probe time we write all 1's to such
> > an MSB register, and see if any bits stick.  
> 
> So there is no register you can read containing the IP version?

There is, and I actually read this before doing this check. But the 64-bit DMA capability is optional even in this revision. It depends on what you give it as the address width. If you say 32, the IP config tool disables the 64-bit capability completely, so it stays compatible with older revisions.
Anything beyond 32 will enable the MSB register and will also require you to write to them.

Cheers,
Andre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
