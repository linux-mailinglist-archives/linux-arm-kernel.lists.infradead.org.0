Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DE61D7E8B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 18:31:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OvDYCt1dWPdKHCMC0FInNwWjFFZxz/SuZGP/FnpvKHY=; b=trPeid19MVVrFd
	AIAHhbir65fbzMi8X7/rtqptaRD+5isji32GS3cG/f3+m5+3eLehnmGn1PNAyEqYe9O4oFLiEKIln
	uU03ddK9CN8Ag/PB+oEB0DS2m2QtG667t6en6iTZrutTG5Laz6eVDkf0lsZ1E4TzMGqhyfkU6ZG3F
	yHa/Yq54+BuRB80ImDnFkBULRAAHHNufpcwTtKvXbYnogD7ccMUOx771HIflztRL/r9zsbf3z6SG+
	WOTYXrJbjfltR3O1whn7/5lEBiUsbdMncwmW7q1NPyfCewtB5PgDGZ3cuoGyQvLUQa7S6jE0smJ0K
	LCFaJ90kGUjH1YOJoeOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaig5-0002po-0B; Mon, 18 May 2020 16:31:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaidy-00074O-IB
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 16:29:35 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2DBFC207ED;
 Mon, 18 May 2020 16:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589819373;
 bh=eVo1KrushuoOqD/i/GVRln1MQqKMazgpzcLc/PqbMpU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Jbc+Paz+d0TC7ChNglvu70jfvtkFw71keT5aS+1OakptMbn0rhDdw+umyKIhB7eC8
 YfsX2EIfy8SURvjCjkwa2JlW0+T0OSbO2SV2L48/knAzTIkb2GXmfre9rAHTWQfz41
 Ffk66dnltLuFH198O8catZPKYXcHS06O6Lw9ODM8=
Date: Mon, 18 May 2020 17:29:28 +0100
From: Will Deacon <will@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH 14/14] prctl.2: Add PR_PAC_RESET_KEYS (arm64)
Message-ID: <20200518162928.GP32394@willie-the-truck>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-15-git-send-email-Dave.Martin@arm.com>
 <20200513072530.GA18196@willie-the-truck>
 <20200513143653.GQ21779@arm.com>
 <20200513210022.GA28594@willie-the-truck>
 <20200518161128.GB21779@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518161128.GB21779@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_092934_656620_0AB551F0 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, mtk.manpages@gmail.com,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 05:11:28PM +0100, Dave Martin wrote:
> How about summarising the key error cases here, and just putting a cross-
> reference in the ERRORS section rather than trying to describe them
> there?  I really don't want to duplicate this stuff -- that will get
> unmaintanable, fast (if it hasn't already).

Makes sense to me.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
