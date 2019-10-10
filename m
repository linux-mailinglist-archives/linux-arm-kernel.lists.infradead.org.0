Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0C5D3060
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 20:27:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JRvC/4mYjxLuprOpygtxXlYjJcsrQ6YgTvE2nWZeDRg=; b=KVKyWAInQGasjdOk8lEz7iBzN
	AMYVxPSuhn0AjaTRwczwW1T29oK62lENn0nQDxwvVPxfOpBt5BQfnAZv67LQhHY4hkzXsZu9ELDHg
	jLV40BnG6ZHabXZnMTAE7qgKj7CqYJdrb8agdSgBfYW0koJW4VQvDHVE5hHG5KkNZU9WrwgH/UqCs
	V3aHzt/CJZHlOPOaei6Yk9ELEOZCXJuduxtj0P8BOlRt6Qo0TiP38fv+8Y8/hMUVPRXi8B8P4/hft
	+lbkAqiGyiS4Vh27UOz3zu2QvRgu87Mc3gkA0hQV5UQTcvyrdyeRtKhqvXNuygT/KUqIU3IiyUahX
	2ylni68Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIdA4-00071u-IY; Thu, 10 Oct 2019 18:27:40 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iId79-0002TA-3i
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 18:24:41 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 11:22:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,281,1566889200"; d="scan'208";a="184507020"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO [10.7.153.148])
 ([10.7.153.148])
 by orsmga007.jf.intel.com with ESMTP; 10 Oct 2019 11:22:36 -0700
Subject: Re: [PATCH] i2c: aspeed: fix master pending state handling
To: Joel Stanley <joel@jms.id.au>
References: <20191009212034.20325-1-jae.hyun.yoo@linux.intel.com>
 <CACPK8XfKCSNsQJa2J2jKZJ7LGZh3zXAOfBYnp5X0w=TH4JfSpQ@mail.gmail.com>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <8586205c-1edc-dfc2-3309-11050afbbaf8@linux.intel.com>
Date: Thu, 10 Oct 2019 11:22:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CACPK8XfKCSNsQJa2J2jKZJ7LGZh3zXAOfBYnp5X0w=TH4JfSpQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_112439_191588_C27F4540 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
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
 devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Wolfram Sang <wsa@the-dreams.de>,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Brendan Higgins <brendanhiggins@google.com>, Rob Herring <robh+dt@kernel.org>,
 Cedric Le Goater <clg@kaod.org>, Tao Ren <taoren@fb.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-i2c@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Acked-by: Joel Stanley <joel@jms.id.au>

Thanks!

> While reviewing I was concerned about the locking in
> aspeed_i2c_master_xfer. It's a bit hairy, and I am not convinced it is
> without bugs.

The locking was already in there in aspeed_i2c_master_xfer but it
unlocks the protection to make a waiting for a completion. This code
is after the waiting so I added the locking to protect
'bus->master_state' variable which can be accessed from driver context
and from interrupt context.

Thanks,

Jae


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
