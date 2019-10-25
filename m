Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5FCE4FEB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 17:17:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/dMgh4xt6TeLTobQE6A/GuV5TND24Nfz8VfTtN1Dlc=; b=YALmCUj/hh8es2
	p39UJj36hrL3C3jPZsfkUZOPMQWBrKD40wZB/7Xv1g7uUSAVnqk9sdwn2oAgazpPsy2qFkM+9g+ok
	nKW0qPMY/cGYbWTyYbVk+LZRxEPDP8dnLkzaJoeL1BZ/D9/GuG/UjyDdxxKL8yeTZlGaAddho1ZD6
	Pra8VEXV0qUpOpuWwt0Y0zX7AXW8KyOV5Zbe0mek9S12HXsScaVNhtetrJd5PKc8xPNcILmUH9R/Z
	hxvnYlmOoevk8JgVW2rBRRUvuUSP7jTu5P9VV3SD/YD3SNXIn1lqu2FkmTeLr8pjPc2QhDlniKFMK
	4ej/4YBMMQLg4wANiE8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO1LL-0003xd-2a; Fri, 25 Oct 2019 15:17:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO1LA-0003xE-6h
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 15:17:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 71CE2328;
 Fri, 25 Oct 2019 08:17:21 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 BC2B03F71A; Fri, 25 Oct 2019 08:17:20 -0700 (PDT)
Date: Fri, 25 Oct 2019 16:17:18 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 0/8] arm64: Optimise and update memcpy, user copy and
 string routines
Message-ID: <20191025151717.GJ3328@arrakis.emea.arm.com>
References: <cover.1571421836.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1571421836.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_081724_295380_AA2B19C7 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: sam-tebbs@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

On Fri, Oct 18, 2019 at 07:16:34PM +0100, Robin Murphy wrote:
> This version fixes the couple of minor issues for big-endian and KASAN
> builds turned up by v1. An additional patch[1] for the kprobes issue is
> now effectively a prerequisite as well.

Thanks for the update. I queued these patches together with the kprobes
exception fixup patch.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
