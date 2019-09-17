Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8103B4A66
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 11:24:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bUD+AJrbVCwcJ6i/F7Raa/3eVFcwoQD1Nnih3GERe+k=; b=GFl7bGZuaG0/bE
	tR5vKPm6g9J0cnUAz84Jjki80UNbi5RS460eXcdvZNuIrL2jBHhFbv025cBhL9WaKr709JEIp+EXA
	B+JfGrTwsbXFxVrJ19WlGq2wbh2s3ww/21AarGVKErwgdzgR0NHEOoNu4duOSDCeVyl/ohSfSwqiB
	Ku9DlszG6LWGLusxUOLVaj3z8/kARUppzpAWLMHDy/htYEaTJiwmayYVfdBgtweMH6DrK7ZMOp4md
	DhGq/IlaNPJ/41aFBQfTJ3gtTt465T/ZjyZyftdEgpAenMJVB4A1oTfHx7CbzpWbC9utrOESW9jkQ
	0AnZAzYY8fW1AUmGidPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA9iv-0007yc-Np; Tue, 17 Sep 2019 09:24:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA9i8-0007yA-27
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 09:23:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 31AD928;
 Tue, 17 Sep 2019 02:23:46 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 787C33F59C; Tue, 17 Sep 2019 02:23:45 -0700 (PDT)
Subject: Re: [Question-GIC-v4.1] Plan on GIC-v4.1 driver development
To: Shaokun Zhang <zhangshaokun@hisilicon.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
References: <40d7276c-54a3-0cca-a207-217459850c21@hisilicon.com>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <0501c049-67a6-9a63-e0d9-e043573e1211@kernel.org>
Date: Tue, 17 Sep 2019 10:23:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <40d7276c-54a3-0cca-a207-217459850c21@hisilicon.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_022348_147677_8BFA8874 
X-CRM114-Status: GOOD (  11.55  )
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
Cc: "Tangnianyao \(ICT\)" <tangnianyao@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/09/2019 03:15, Shaokun Zhang wrote:
> Hi Marc,
> 
> This is from Nianyao Tang.
> 
> I'm planning to do some verification on our GIC-v4.1 implement. I would like some
> information about linux GIC-v4.1 driver. When will linux support GIC-v4.1 or what's
> the plan on developing GIC-v4.1 driver?

The easy answer is that yes, there is a plan. There is some code, even,
just not quite in a usable state yet. I'll try to push something out
once I get a chance.

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
