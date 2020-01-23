Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92771146C39
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 16:01:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JB3/G7+bnpdPGNrunKkz1BN4SWTD2GjEgjIRuWCfF9c=; b=IvYOUyNbOPi43M
	hgnMh71Wey3vaWZtb1Hl3iKuhC0X6l/dU/5TYtnEkm9eDhykBS3W8uQOZOMxFYsaespyFCpcB2yKy
	7Ajy9GadovGanEt1/VV9dRb2swPZxshjb/Z1iXu3e95zLnJGqHTaj9ZgCYRPq+bhj3UpO46ouz7Ca
	m4wbXHG2fthTLK4EK3+ZJTCo1yHn0hBtZ8oTJTdbJgNO5lBlwhOnEKp24s7rPkiIp+ui2xyExzoYt
	4Y2WU/K7r7DkNepO3C6IxBVt+tHqcwkWclz9DqkyT9nf3M79wNXgm9HjM62GCeKLvzRxludSJyIs+
	DxoygnzBYl11vFvoNJfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iudyx-0005fg-BM; Thu, 23 Jan 2020 15:01:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iudyp-0005f6-H2
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 15:01:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5BB0E1FB;
 Thu, 23 Jan 2020 07:01:10 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 77EB13F68E;
 Thu, 23 Jan 2020 07:01:09 -0800 (PST)
Date: Thu, 23 Jan 2020 15:01:04 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] arm64: dts: fast models: Fix FVP PCI interrupt-map
 property
Message-ID: <20200123150104.GA37953@bogus>
References: <20200123145112.22170-1-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123145112.22170-1-maz@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_070111_609794_527AC54D 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 23, 2020 at 02:51:12PM +0000, Marc Zyngier wrote:
> The interrupt map for the FVP's PCI node is missing the
> parent-unit-address cells for each of the INTx entries, leading to the
> kernel code failing to parse the entries correctly.
>
> Add the missing zero cells, which are pretty useless as far as the GIC
> is concerned, but that the spec requires. This allows INTx to be usable
> on the model, and VFIO to work correctly.
>

I assume we need,

Fixes: fa083b99eb28 ("arm64: dts: fast models: Add DTS fo Base RevC FVP")

Please shout if that's not necessary.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
