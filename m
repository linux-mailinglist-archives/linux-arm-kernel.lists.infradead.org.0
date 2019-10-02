Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02EFFC951A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 01:43:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wgnr8MnR2J31I3BKpaN7bOMKbiMOuMbPjFo1cYtLO4k=; b=i+64dz2qMia8z0hSQISbTWxBD
	AVTdMLhF8CIT5zbJT01+tTVdr+7wAgcThyonHrkr/s6VuVZ46gblA47Qb/9xD+D4Kfpxbp3ZzsHk5
	IwNgGA/JbVhaX0oPoXzKI1rVfAHCNNizFSYsMF9dHqPTo4oWBygRcpeQ0U9HcOLoQ6Vlpy6u5j8HZ
	xfTNCKiw6KcNSb5jQhQo51unHxOLQt/3zZabezPIkJcBmNLdf99YWl8O7ZaUrrFnNGKXl1G4izhw4
	Pr0zbDmyMRmYcQkxFtph/BbQQ6TVGnPBNg1Dc7sE8t4HD300d+5ksr4XznRd58+CvfDE7QgRD6imB
	m/7KJ3aHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFoGw-0006y3-LL; Wed, 02 Oct 2019 23:43:06 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFoGq-0006wP-7i
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 23:43:01 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 16:42:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,250,1566889200"; d="scan'208";a="221580529"
Received: from cvannort-mobl2.amr.corp.intel.com (HELO [10.251.30.5])
 ([10.251.30.5])
 by fmsmga002.fm.intel.com with ESMTP; 02 Oct 2019 16:42:53 -0700
Subject: Re: [PATCH 0/2] peci: aspeed: Add AST2600 compatible
To: Joel Stanley <joel@jms.id.au>
References: <20191002061200.29888-1-chiawei_wang@aspeedtech.com>
 <70044749-785b-6ff3-7a28-fb049dcfec54@linux.intel.com>
 <CACPK8XfBxC+4PHHCkMoXr+twjfWaovcJ5c=hfCmHRJ6LpGNeFg@mail.gmail.com>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <03d21443-aa9a-a126-dc77-a21f14f708c9@linux.intel.com>
Date: Wed, 2 Oct 2019 16:42:53 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CACPK8XfBxC+4PHHCkMoXr+twjfWaovcJ5c=hfCmHRJ6LpGNeFg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_164300_281728_31CA809C 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
 devicetree <devicetree@vger.kernel.org>, Ryan Chen <ryan_chen@aspeedtech.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Jason M Biils <jason.m.bills@linux.intel.com>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/2/2019 3:05 PM, Joel Stanley wrote:
> On Wed, 2 Oct 2019 at 18:11, Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> wrote:
>>
>> Hi Chia-Wei,
>>
>> On 10/1/2019 11:11 PM, Chia-Wei, Wang wrote:
>>> Update the Aspeed PECI driver with the AST2600 compatible string.
>>> A new comptabile string is needed for the extended HW feature of
>>> AST2600.
>>>
>>> Chia-Wei, Wang (2):
>>>     peci: aspeed: Add AST2600 compatible string
>>>     dt-bindings: peci: aspeed: Add AST2600 compatible
>>>
>>>    Documentation/devicetree/bindings/peci/peci-aspeed.txt | 1 +
>>>    drivers/peci/peci-aspeed.c                             | 1 +
>>>    2 files changed, 2 insertions(+)
>>>
>>
>> PECI subsystem isn't in linux upstream yet so you should submit it into
>> OpenBMC dev-5.3 tree only.
> 
> OpenBMC has been carrying the out of tree patches for some time now. I
> haven't seen a new version posted for a while. Do you have a timeline
> for when you plan to submit it upstream?

Thanks for your effort for carrying the out of tree patches in OpenBMC.
I don't have a exact timeline but I'm gonna upstream it as soon as it
gets ready.

Thanks,

Jae

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
