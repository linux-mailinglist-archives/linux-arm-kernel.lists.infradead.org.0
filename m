Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B304AB61A2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 12:45:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1KdEBUjGfWiEi32KpJt9VuWmzK8r9Ij5//E6HEUlfE=; b=EiqJlU89ujlw+O
	swY4tWHXa6nTEBG+gNOrDH8U1f+J9CJw2ZA3nsI35of+tWpRBvbFKvJA066r1JUpZ+x2Lwmqknk38
	AAUpBT1Hafu3PntKCbktdW0Q41bFcV7DgOyTx+ATWqQd3LQ1t2ZHf7lzbCpQ2LyRRZaAi1cI//Vzq
	EIamGgaanFqjUSsMobUQBXEXu7CjrNZ1s77zR9kXkAfGw7eyCn7SBiw1EBQXtK0Hj40yr/QQWHcpi
	4hI6pzsFx6PxMs5GA0odW7BsqfTHtbsUpLUkgoi6t8+Qnckb5y4bNO7suIkTmdPEggLx/blifUkOz
	3aqEuJ62zdTKaTpL6pfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAXSB-0007Kf-2K; Wed, 18 Sep 2019 10:44:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAXS3-0007Jv-DX
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 10:44:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 27634142F;
 Wed, 18 Sep 2019 03:44:44 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E2A173F59C;
 Wed, 18 Sep 2019 03:44:42 -0700 (PDT)
Date: Wed, 18 Sep 2019 11:44:37 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Markus Elfring <Markus.Elfring@web.de>, Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] regulator: vexpress: Use PTR_ERR_OR_ZERO() in
 vexpress_regulator_probe()
Message-ID: <20190918104437.GA23273@bogus>
References: <1123a2ab-48f9-f41f-cabb-9b45310cb77e@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1123a2ab-48f9-f41f-cabb-9b45310cb77e@web.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_034447_501149_6EB09F7A 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 kernel-janitors@vger.kernel.org, Liviu Dudau <liviu.dudau@arm.com>,
 Liam Girdwood <lgirdwood@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 07, 2019 at 01:23:08PM +0200, Markus Elfring wrote:
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Sat, 7 Sep 2019 13:07:22 +0200
>
> Simplify this function implementation by using a known function.
>
> Generated by: scripts/coccinelle/api/ptr_ret.cocci
>

Acked-by: Sudeep Holla <sudeep.holla@arm.comi>

Hi Mark,

I assume you can take this via your tree.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
