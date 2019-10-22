Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 014F1E0A1A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 19:09:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A5tEg/15bNqAR2W59d7Aex20U8DDt5yURofSYsNUGPA=; b=fPmcRYOaiKoWRt15uXs6iaTPC
	oEacRNJ8biD1aYiG43lc9TPkI8tjgKfaHfPRvuAInNtcapTpnGlq563LLDodG0aiZS3o/3O9+76yY
	D4aXNRVXlqB5PthOrgpdDPwrws5NzpjV9ZRK1JfmpEgBLNDgazToU/lPw5dn6QMedTV/FvaHtheQn
	FhR78nEgC3EiQtj6uzUZDTv05uoEVUt2PobbmELMXu1/7759oc9nUPxhIiZTQruySAp47j+jYAHO2
	Pcmk3KEiiGvosvPJfBgf9SEN9HmmkRjH8cjSCXKd8AWI8VqkTWCCeZevlsZHbg0M/BiGXHHWI6wTq
	QpzqvLZkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMxeq-0003cn-CO; Tue, 22 Oct 2019 17:09:20 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMxee-0003bi-2w
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 17:09:09 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 10:09:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,217,1569308400"; d="scan'208";a="200854750"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO [10.7.153.143])
 ([10.7.153.143])
 by orsmga003.jf.intel.com with ESMTP; 22 Oct 2019 10:09:06 -0700
Subject: Re: [PATCH i2c-next 1/2] dt-bindings: i2c: aspeed: add hardware
 timeout support
To: Wolfram Sang <wsa@the-dreams.de>
References: <20191021202414.17484-1-jae.hyun.yoo@linux.intel.com>
 <20191021202414.17484-2-jae.hyun.yoo@linux.intel.com>
 <0a629f7b-b829-c332-27d8-dc825205ff72@axentia.se>
 <7abf933b-cb18-10af-9c1b-163ec65ffae5@linux.intel.com>
 <20191022045655.GA975@kunai>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <5cd54c07-4e97-9ed9-1427-d46a7133ee53@linux.intel.com>
Date: Tue, 22 Oct 2019 10:09:06 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191022045655.GA975@kunai>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_100908_172627_0B8F1013 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 Brendan Higgins <brendanhiggins@google.com>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Tao Ren <taoren@fb.com>, Peter Rosin <peda@axentia.se>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Cedric Le Goater <clg@kaod.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/21/2019 9:56 PM, Wolfram Sang wrote:
> 
>> Changes I submitted in this patch set is for a different purpose which
>> is very Aspeed H/W specific, and actually it's a more serious timeout
>> setting indeed. If this H/W is used in multi-master environment, it
>> could meet a H/W hang that freezes itself in slave mode and it can't
>> escape from the state. To resolve the specific case, this H/W provides
>> self-recovery feature which monitors abnormal state of SDA, SCL and its
>> H/W state machine using the timeout setting to determine the escape
>> condition.
> 
> Thanks for the summary. I just wonder on what the timeout value depends.
> Do we really need to put in DT or can we derive it e.g. from the
> compatible value in the driver?

It could be derived from the bus timeout value by computing 'divide by
x' roughly but it couldn't cover all use cases because this H/W timeout
value would depends on each environment. There are many factors that
can affect it such as bus speed, peer-master's bus driving
characteristic, average transaction period on the bus and so on thus
it may need fine adjustments through a DT setting, I think.

Thanks,

Jae

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
