Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3741D1D74
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 20:29:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3NfgqaJOHGq8wyoZe19mu1QzcWv/5WOO23vN3mvC+Ys=; b=QXm52x0VpkULpo
	GbTcQLFKebuwxS3ZOQyZRDh8i6vybcz40uekSmHjhrESofqrApy+XZou8bJF27Fg3TWSY0Tudchbv
	OS3s7lS9+pRcDa1ewP+rZTT7UwUQv44jHKm4/QSui/BZlbY8nMcKzXEYfg7BBetFHgNLio1eVXftp
	NJ8C7aUuc3U9+zbHd5qzdcYDLKGLOTi2zJuffUVqdEMX0a3V3deW6SvPHUM9g8ldZ47dvHH/YxMs0
	9jkNfGJecqpVSJL4SMMmA0Z03zjJcNOo2kp4YbYB1rUVYUwLEOY0WhTm1nUEGt0jQRs8x75fsIlNB
	aD0kjeW3tkFyJSSguNwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYw7v-0004Ro-Bf; Wed, 13 May 2020 18:29:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYw7l-0004RO-Ku
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 18:28:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 681AE30E;
 Wed, 13 May 2020 11:28:56 -0700 (PDT)
Received: from bogus (unknown [10.37.12.13])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 85EBF3F305;
 Wed, 13 May 2020 11:28:54 -0700 (PDT)
Date: Wed, 13 May 2020 19:28:51 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v3 20/20] dt-bindings: ehci/ohci: Allow iommus property
Message-ID: <20200513182851.GF27686@bogus>
References: <20200513103016.130417-1-andre.przywara@arm.com>
 <20200513103016.130417-21-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513103016.130417-21-andre.przywara@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_112857_726824_62E4273A 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Liviu Dudau <liviu.dudau@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 11:30:16AM +0100, Andre Przywara wrote:
> A OHCI/EHCI controller could be behind an IOMMU, in which case an iommus
> property assigns the stream ID for this device.
>
> Allow that property in the DT bindings to fix a complaint about the Arm Juno
> board's DTS file.
>

I need acks for this and the first dt-binding in order to take it
via ARM SoC. Also where ever possible split arm64 and arm DT in case
ARM SoC wants different PR. I will ask if you have to respin.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
