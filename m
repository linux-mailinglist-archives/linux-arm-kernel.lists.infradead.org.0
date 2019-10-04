Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2032CB318
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 03:36:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ua6Qe67ZgoOscg3Rjo+nKlZbRfAYlolbTS6cFp+vcg=; b=TzsO39GQo0NfAy
	EkQ50XVW9QLQckIRJ2nH9sdKtysfUR52VxF/cXah05Znu5YxIXQFf14f5Lxs0baKIlHKrpQZDxyPO
	D69LZeoR1D3scBSfBmIpRSzqrldLUv2kxyG01LTwcemDQ2e+EXX3EkRQJPsVjMyDW3n8AB6jP5h3z
	o5P9h2bhmlGdEETduwDDAO/VD7ZpM1X+c3rVKRtwcODIjFbLjlx8izqCTaV+z1HXiCUg3WUX7AkZ4
	K10+NnhPTS+7gufmzq/xGauLwCzD+MLeWPAd7LaTFlQ+0zdP60nJMYZH0w6u0heinJKIKgUK9FGrc
	xFmsX6DRdcOD1Gvwd3LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGCWd-0002M2-8w; Fri, 04 Oct 2019 01:36:55 +0000
Received: from twspam01.aspeedtech.com ([211.20.114.71])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGCWQ-0001s5-HP
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 01:36:47 +0000
Received: from mail.aspeedtech.com (twmbx02.aspeed.com [192.168.0.24])
 by twspam01.aspeedtech.com with ESMTP id x941Ijae097543;
 Fri, 4 Oct 2019 09:18:45 +0800 (GMT-8)
 (envelope-from chiawei_wang@aspeedtech.com)
Received: from TWMBX01.aspeed.com (192.168.0.23) by TWMBX02.aspeed.com
 (192.168.0.24) with Microsoft SMTP Server (TLS) id 15.0.620.29; Fri, 4 Oct
 2019 09:34:45 +0800
Received: from TWMBX02.aspeed.com (192.168.0.24) by TWMBX01.aspeed.com
 (192.168.0.23) with Microsoft SMTP Server (TLS) id 15.0.620.29; Fri, 4 Oct
 2019 09:34:56 +0800
Received: from TWMBX02.aspeed.com ([fe80::997d:c0a7:f01f:e1a7]) by
 TWMBX02.aspeed.com ([fe80::997d:c0a7:f01f:e1a7%12]) with mapi id
 15.00.0620.020; Fri, 4 Oct 2019 09:34:43 +0800
From: ChiaWei Wang <chiawei_wang@aspeedtech.com>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>, Joel Stanley <joel@jms.id.au>
Subject: RE: [PATCH 0/2] peci: aspeed: Add AST2600 compatible
Thread-Topic: [PATCH 0/2] peci: aspeed: Add AST2600 compatible
Thread-Index: AQHVeOhVfyr8hf/PLEOlKG455HFAV6dHIbEAgABBZgCAABszgIAAsqtwgABj+ACAASCW0A==
Date: Fri, 4 Oct 2019 01:34:43 +0000
Message-ID: <ad79c20427ea4aa28c826d32e96b82e8@TWMBX02.aspeed.com>
References: <20191002061200.29888-1-chiawei_wang@aspeedtech.com>
 <70044749-785b-6ff3-7a28-fb049dcfec54@linux.intel.com>
 <CACPK8XfBxC+4PHHCkMoXr+twjfWaovcJ5c=hfCmHRJ6LpGNeFg@mail.gmail.com>
 <03d21443-aa9a-a126-dc77-a21f14f708c9@linux.intel.com>
 <4af9eb8fa6fd41fc87708fc8afdcc83e@TWMBX02.aspeed.com>
 <b219c8e9-4f72-f91c-ba57-96ffab82ff2e@linux.intel.com>
In-Reply-To: <b219c8e9-4f72-f91c-ba57-96ffab82ff2e@linux.intel.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.0.133]
MIME-Version: 1.0
X-DNSRBL: 
X-MAIL: twspam01.aspeedtech.com x941Ijae097543
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_183642_835980_8D280B80 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.20.114.71 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Ryan Chen <ryan_chen@aspeedtech.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Jason M Biils <jason.m.bills@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sure. We will re-submit the patches with the revision suggested.
Thanks.

Regards,
Chiawei

************* Email Confidentiality Notice ********************
DISCLAIMER:
This message (and any attachments) may contain legally privileged and/or other confidential information. If you have received it in error, please notify the sender by reply e-mail and immediately delete the e-mail and any attachments without copying or disclosing the contents. Thank you.


-----Original Message-----
From: Jae Hyun Yoo [mailto:jae.hyun.yoo@linux.intel.com] 
Sent: Friday, October 4, 2019 12:20 AM
To: ChiaWei Wang <chiawei_wang@aspeedtech.com>; Joel Stanley <joel@jms.id.au>
Cc: Jason M Biils <jason.m.bills@linux.intel.com>; Rob Herring <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>; Andrew Jeffery <andrew@aj.id.au>; linux-aspeed <linux-aspeed@lists.ozlabs.org>; OpenBMC Maillist <openbmc@lists.ozlabs.org>; devicetree <devicetree@vger.kernel.org>; Linux ARM <linux-arm-kernel@lists.infradead.org>; Linux Kernel Mailing List <linux-kernel@vger.kernel.org>; Ryan Chen <ryan_chen@aspeedtech.com>
Subject: Re: [PATCH 0/2] peci: aspeed: Add AST2600 compatible

On 10/2/2019 7:35 PM, ChiaWei Wang wrote:
> Hi Jae Hyun,
> 
> Thanks for the feedback.
> For now should I use GitHub pull-request to submit the patches of PECI-related change to OpenBMC dev-5.3 tree only?

You could submit this patch series to OpenBMC mailing list with [PATCH linux dev-5.3] prefix.

Thanks,

Jae
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
