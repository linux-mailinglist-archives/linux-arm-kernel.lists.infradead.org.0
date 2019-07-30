Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E3D7ABF1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 17:06:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fGfELB37ljUNxw4qq22yJpLpAljOWmtN1nsSWOYgqFc=; b=efaS94SDV0f3s0Zbr0RK09e8Li
	oL99sou3TQl7bDq86+r2x8VDhUT99dEtpn0fsEMR/beefMfGoI3hw7xLROzetPN+4o+X3YRZAVW2G
	0/pC6E8m7SUQL1v1p+KKG79vDJP9VvWyeTHHzajf7y1HDuKX+IN9VyK7ySoSt8Sd6cvG0RsrVezsW
	F8qfbLpZyCfSslcwcumZiDk6dTfssZpZX+FQ4z7TMnNHCqdT6pkPMG9eGN7Spl/7l2poeT2NN8IvE
	XWredjoiVgB2FEIsZY9Bu+U/SnEqAPGPRAuo2RbQsIBQdaqf3mZNDZc+I/s6AxppzKgl/yhTgq0XD
	Nh2rYtoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsTiC-0000ln-B3; Tue, 30 Jul 2019 15:06:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsThh-0000du-3Q
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 15:06:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 512F028;
 Tue, 30 Jul 2019 08:06:16 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 F0DD13F694; Tue, 30 Jul 2019 08:06:15 -0700 (PDT)
Subject: Re: [PATCH] arm64: esr: Add ESR exception class encoding for trapped
 ERET
To: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
References: <20190730144147.3694-1-will@kernel.org>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <813d6305-00ad-2eb3-1234-7b15b37bd719@kernel.org>
Date: Tue, 30 Jul 2019 16:06:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190730144147.3694-1-will@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_080617_235027_ED33E4D8 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/07/2019 15:41, Will Deacon wrote:
> The ESR.EC encoding of 0b011010 (0x1a) describes an exception generated
> by an ERET, ERETAA or ERETAB instruction as a result of a nested
> virtualisation trap to EL2.
> 
> Add an encoding for this EC and a string description so that we identify
> it correctly if we take one unexpectedly.
> 
> Signed-off-by: Will Deacon <will@kernel.org>

Acked-by: Marc Zyngier <maz@kernel.org>

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
