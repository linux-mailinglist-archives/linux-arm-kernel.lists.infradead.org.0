Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3A3112BE7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 13:47:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KhKfCqzJUrZphNV5IZdCI7lzhgM5h1DFHmXgZ8ZnspE=; b=TNEWwxHcOXbCJY
	yLnOz+L1Ehv2l/NzBxKl4AcRSHDhZsRTEpjXCtDGzPWNjTMZG82HuAProplnHjLuaLSqaN8Rt7rcj
	PQIhIauudptzIsMLJtVC7l2S/1vkqDIaFoU/esbOaD6wJsNE8g1I3AtkSzCa+kkEi5saC+nagFVhb
	OZRn9K8tfVI1szA2k07IbaER6hdV1sVlhMFp9KT80kiQ0gxKckie/K80Dz1tL0JXt3r2CKrDmQoWY
	heOax64BMZjVuK2sd+NnwuZhbQudNM19CRiugD8KWPxCqbm2x2X4nT2oj+IdgKv1MLI6bM1BBk9rP
	n3MmWYRhjJO1ZhBRhpbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icU3Y-0003Jq-OU; Wed, 04 Dec 2019 12:47:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icU3Q-0003I1-3Q
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 12:46:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1610231B;
 Wed,  4 Dec 2019 04:46:49 -0800 (PST)
Received: from [192.168.1.18] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3C2593F68E;
 Wed,  4 Dec 2019 04:46:48 -0800 (PST)
Subject: Re: Kernel v5.2+ on HiKey960?
To: Marc Zyngier <maz@misterjones.org>, Jerome Forissier <jerome@forissier.org>
References: <f58c2c0e-ec82-6675-84e6-ad63fd93c8ff@forissier.org>
 <5e71ae8ec1ecb64544d131686f5405bb@www.loen.fr>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <7d9e4b41-6906-d5e0-261d-94d3f47b941f@arm.com>
Date: Wed, 4 Dec 2019 12:49:20 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <5e71ae8ec1ecb64544d131686f5405bb@www.loen.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_044652_182162_9CBBB659 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jerome,

On 12/3/19 5:47 PM, Marc Zyngier wrote:
> Hi Jerome,
> 
> Adding Vincenzo (who was the last one to mess with the VDSO).

@Marc

Thanks for this, my filters completely missed Jerome's request, I might have a
look and tighten them ;)

[...]

@Jerome

Could you please provide your .config? Another question are you bringing it over
or regenerating it for each version of the kernel your are testing?

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
