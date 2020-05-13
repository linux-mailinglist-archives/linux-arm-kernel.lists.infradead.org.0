Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C74B11D1D64
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 20:24:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nunUFyJBaJUciVteZvkShuKBb+ZWnKkG9kQo5O+eyww=; b=kDAlaFAkJH49px
	gvtAiEWsU0SjBYGj7HTeDv8fvyT4FNQbEy/spBJ2AoNwhB1MVSNd/qb+X6xULlwXQz7nVedZRmHYS
	71XdZpOAd9Foq5mhAEGEW0FMBLxc7bhfGx+WdsAgKtyZsAkDXjcsaexUalOwSiwK/kYTWlpw+ny0U
	W7jDzg2L/5VYeCuKPNea/iQefhhycavRTj4X514obfTcFpwV8noolZ8qAA7GtT8M+gKrMoIvvPgGq
	eH7bf04dC3DJJF4ugrcx6iVwroc0LFOKNUug6zl7fy87e9qiE48DyLFkGKLQnoCME6J5aBmcpAZmM
	BC2xZaylfnG4hz6cQ06Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYw3H-0001Zx-4z; Wed, 13 May 2020 18:24:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYw39-0001Z4-2j
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 18:24:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 03E69D6E;
 Wed, 13 May 2020 11:24:10 -0700 (PDT)
Received: from bogus (unknown [10.37.12.13])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 558FC3F305;
 Wed, 13 May 2020 11:24:08 -0700 (PDT)
Date: Wed, 13 May 2020 19:24:05 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v3 16/20] arm64: dts: juno: Fix GPU interrupt order
Message-ID: <20200513182405.GE27686@bogus>
References: <20200513103016.130417-1-andre.przywara@arm.com>
 <20200513103016.130417-17-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513103016.130417-17-andre.przywara@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_112411_165050_9F579070 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
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
 Liviu Dudau <liviu.dudau@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 11:30:12AM +0100, Andre Przywara wrote:
> The Mali binding insists on the GPU interrupts to be in ordered as: job,
> mmu, gpu.
> Sort the GPU interrupts and interrupt-names properties accordingly.
>

I assume this is not a bug fix, just clean up to make it 100% binding
compliant. Things work just fine without this too. Just for my info.

-- 
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
