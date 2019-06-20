Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 571864C8E0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 10:03:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fE65C7hPPYOfO6WlGwfhMJOWKJduYksHpWMRY1w6N6U=; b=CkSoPtvnKhHzdS
	OQlwlL384N1UAo4EHkJXhjC1HUiHosMDlUijc3R/Agiy1gO/+2BZ5MDoeXk6yyGB5IsWW2t0J88CL
	pXKxdpcbrkoEcPE0hKD9kypBHQdZVcspCbK15lAVTH59G5LhC5XoKOU8DFD58GYlV7KJQyxCaTZiS
	kC1xrgtqpzu9Gf+2oPVRan0UJrTxzJYsg1kV4wkF48KFV10Yhbb8/T7OTCX8Rkgx+0apovYE+ncum
	v2Ey3DMrhkC1EqXAnNKOBiyLX0vby+O7lM2PsIltJOk4uv3TgTbawmd/XlXjKSnDS8iBSj0A98yMd
	mUefyEc7hJbzYe1mYyOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hds26-0003mb-Jp; Thu, 20 Jun 2019 08:02:58 +0000
Received: from twspam01.aspeedtech.com ([211.20.114.71])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hds1X-0003eY-N7
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 08:02:25 +0000
Received: from mail.aspeedtech.com (twmbx02.aspeed.com [192.168.0.24])
 by twspam01.aspeedtech.com with ESMTP id x5K7qIBL017644;
 Thu, 20 Jun 2019 15:52:18 +0800 (GMT-8)
 (envelope-from ryan_chen@aspeedtech.com)
Received: from TWMBX02.aspeed.com (192.168.0.24) by TWMBX02.aspeed.com
 (192.168.0.24) with Microsoft SMTP Server (TLS) id 15.0.620.29; Thu, 20 Jun
 2019 16:01:59 +0800
Received: from TWMBX02.aspeed.com ([fe80::997d:c0a7:f01f:e1a7]) by
 TWMBX02.aspeed.com ([fe80::997d:c0a7:f01f:e1a7%12]) with mapi id
 15.00.0620.020; Thu, 20 Jun 2019 16:01:59 +0800
From: Ryan Chen <ryan_chen@aspeedtech.com>
To: Tao Ren <taoren@fb.com>, Brendan Higgins <brendanhiggins@google.com>
Subject: RE: [PATCH 1/2] i2c: aspeed: allow to customize base clock divisor
Thread-Topic: [PATCH 1/2] i2c: aspeed: allow to customize base clock divisor
Thread-Index: AQHVJuImmMOIiyHRlUqwfYHYZy+Y4aai9yiAgAASyACAARtXMP//gnIAgACG17A=
Date: Thu, 20 Jun 2019 08:01:58 +0000
Message-ID: <195bb56028d04001bbaf835cc17e032e@TWMBX02.aspeed.com>
References: <20190619205009.4176588-1-taoren@fb.com>
 <CAFd5g45TMtXcuqONdkpN_K+c0O+wUw8wkGzcQfV+sO8p5Krc9w@mail.gmail.com>
 <18565fcf-3dc1-b671-f826-e4417e4ad284@fb.com>
 <c610ecede7494c189a92a9a3f6d0fd16@TWMBX02.aspeed.com>
 <bdd53adb-6987-1b91-adde-298839b2c066@fb.com>
In-Reply-To: <bdd53adb-6987-1b91-adde-298839b2c066@fb.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.0.81]
MIME-Version: 1.0
X-DNSRBL: 
X-MAIL: twspam01.aspeedtech.com x5K7qIBL017644
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_010224_267727_86D64E5D 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.20.114.71 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Tao,
	Let me more clear. When you set (3, 15, 14) the device sometimes response nack. 
	but when you set (4, 7, 7), the device always ack. Am I right? 
Ryan

-----Original Message-----
From: Tao Ren [mailto:taoren@fb.com] 
Sent: Thursday, June 20, 2019 3:57 PM
To: Ryan Chen <ryan_chen@aspeedtech.com>; Brendan Higgins <brendanhiggins@google.com>
Cc: Mark Rutland <mark.rutland@arm.com>; devicetree <devicetree@vger.kernel.org>; linux-aspeed@lists.ozlabs.org; OpenBMC Maillist <openbmc@lists.ozlabs.org>; Linux Kernel Mailing List <linux-kernel@vger.kernel.org>; Rob Herring <robh+dt@kernel.org>; Linux ARM <linux-arm-kernel@lists.infradead.org>; linux-i2c@vger.kernel.org
Subject: Re: [PATCH 1/2] i2c: aspeed: allow to customize base clock divisor

On 6/20/19 12:29 AM, Ryan Chen wrote:
> Hello Tao,
> 	Our recommend about clk divider setting is follow the datasheet clock setting table for clock divisor. 
> 
> Ryan  

Thanks Ryan for the response. Could you also share some recommendations/hints on how to solve the intermittent i2c transaction failures on Facebook AST2500 BMC platforms?

BTW, the patch is not aimed at modifying the existing formula of calculating clock settings in i2c-aspeed driver: people still get the recommended settings by default. The goal of the patch is to allow people to customize clock settings in case the default/recommended one doesn't work.


Cheers, 

Tao
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
