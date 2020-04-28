Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8421BC682
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 19:22:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I3MQrM/wp5BWJn+C4SCc18lFbvwbfvNH1FxlmSN4Kbg=; b=IO9aJ0NpUjrNYG
	j9MDp1lfiD154cj/om2fPxB4xAKev4nTHBAjqDZACZtVY4S6wPMWh3IzUIboEfn1OJQa9tArrCRVn
	O3Li1e0t5XNA9w5ovvfzJcdyMknSqsVuDBfJvqcqGYk0NKU2qQSZHcs4UtMFNxK/evlsTXGNQIK5I
	Es0YjkT1RKFXrxKbIQl2AphXaGgSeZ7pPNs8ofXURTPZAJmzv3ZKTpdOxKOJ+/vm4YfHXufNcefC1
	SEkIzACkbMX87zt8fjZqT2j74Z/7fiBkhwIif2rVphNX0FcGFnafZ+q+sTJtiiAdoz+xfU6sXugKE
	eqXnLEEV5mzd9lQbpFQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTTvp-00057l-CW; Tue, 28 Apr 2020 17:22:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTTvg-00057L-UX
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 17:21:58 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9FE3F2082E;
 Tue, 28 Apr 2020 17:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588094516;
 bh=nzJMTuSFPROth1NlDLQvcUO+nV0x7fXVJzHHhcpaQk0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jJOjBWthKvniDH6z/EcMBa21tK7+WuCcE3id4La+LJBSpPNdpKYM1jDEC5aKBtCs7
 NeFo0x57X3xOJ+VEAJzUom80LMVoLEw0D+jOKqa87wUOV4frNdBkNa1CsL28lK+rbi
 XWZGNp7nx+C3P5PjAsoiB/skJznvyLZEv2UC8rrk=
From: Will Deacon <will@kernel.org>
To: linux-acpi@vger.kernel.org,
	Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH v2] ACPI/IORT: take _DMA methods into account for named
 components
Date: Tue, 28 Apr 2020 18:21:48 +0100
Message-Id: <158809356800.149651.3435193422736187713.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200420092753.9819-1-ardb@kernel.org>
References: <20200420092753.9819-1-ardb@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_102157_002392_A0DE860D 
X-CRM114-Status: UNSURE (   9.54  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, sudeep.holla@arm.com,
 rjw@rjwysocki.net, Andrei Warkentin <awarkentin@vmware.com>,
 guohanjun@huawei.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 20 Apr 2020 11:27:53 +0200, Ard Biesheuvel wrote:
> Where IORT nodes for named components can describe simple DMA limits
> expressed as the number of address bits a device can drive, _DMA methods
> in AML can express more complex topologies, involving DMA translation in
> particular.
> 
> Currently, we only take this _DMA method into account if it appears on a
> ACPI device node describing a PCIe root complex, but it is perfectly
> acceptable to use them for named components as well, so let's ensure
> we take them into account in those cases too.
> 
> [...]

Applied to arm64 (for-next/acpi), thanks!

[1/1] ACPI/IORT: take _DMA methods into account for named components
      https://git.kernel.org/arm64/c/7fb89e1d44cb

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
