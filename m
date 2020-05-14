Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A85D1D23A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 02:28:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Fjpd7Q2gQkB1uG8sr0/eTqdixoV8tB50LGwbwOE5oA=; b=bLurG+GD3wZ/dm
	EqBxaRz9eDusuvyZiPR6YUGS6ZaWkRcUlYYMeaaV2oclREZftk+87MffyT4F11bJBPM1WZuwzXOy/
	Q/8rZQ+eAaV43P/Eg+H8FUXOn29RbjWZWFlybh8wnwE598oMq0kF7krk+o7wZdMgVgG6ENKAKH+k2
	2FGPCaxavfG7lNd+4nEl3MT/CYyG8NmWPdQxp7y6rPBKbfqMnhNi+d1aiqGfp8hqnOGniT7lPMuaT
	IDwE3wFDExUJh5jcRIsNj8n5q283EjdvvEb/8odT/hWeI+8q4dPHvNq8gma44Iov5vr5AoFIDxCS5
	iN4VatQ5i2O19ceNEssQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ1ju-0001lk-TC; Thu, 14 May 2020 00:28:42 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ1jh-0001lN-Ns
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 00:28:30 +0000
IronPort-SDR: mkux5oM9+IV/r7zqb7ZnkdGOAeMp8C7o3ETlywIyIhjr9VpEoHvVRK394MZ1nmmlWky1pe4fby
 Uht+Gg9vMDng==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 17:28:29 -0700
IronPort-SDR: 7awCP4M/tgMeg4kwkUxvILsbHi1BY8FwJxfJGLkKXoDNi21froW8VWHg1uvqmYs4No1WlvhUdM
 53tx8RhB32vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,389,1583222400"; d="scan'208";a="266058564"
Received: from gliber-mobl1.ger.corp.intel.com ([10.249.38.41])
 by orsmga006.jf.intel.com with ESMTP; 13 May 2020 17:28:20 -0700
Message-ID: <ef2093f96eae7e9e6785f2c0ad00604d8adfd3be.camel@linux.intel.com>
Subject: Re: [PATCH v4 2/4] KEYS: trusted: Introduce TEE based Trusted Keys
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: Sumit Garg <sumit.garg@linaro.org>, zohar@linux.ibm.com, jejb@linux.ibm.com
Date: Thu, 14 May 2020 03:28:18 +0300
In-Reply-To: <1588758017-30426-3-git-send-email-sumit.garg@linaro.org>
References: <1588758017-30426-1-git-send-email-sumit.garg@linaro.org>
 <1588758017-30426-3-git-send-email-sumit.garg@linaro.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_172829_824764_EC2EAA8D 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: tee-dev@lists.linaro.org, daniel.thompson@linaro.org,
 op-tee@lists.trustedfirmware.org, corbet@lwn.net, janne.karhunen@gmail.com,
 linux-doc@vger.kernel.org, jmorris@namei.org, linux-kernel@vger.kernel.org,
 dhowells@redhat.com, linux-security-module@vger.kernel.org,
 keyrings@vger.kernel.org, Markus.Wamser@mixed-mode.de, casey@schaufler-ca.com,
 linux-integrity@vger.kernel.org, jens.wiklander@linaro.org,
 linux-arm-kernel@lists.infradead.org, serge@hallyn.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-05-06 at 15:10 +0530, Sumit Garg wrote:
> Add support for TEE based trusted keys where TEE provides the functionality
> to seal and unseal trusted keys using hardware unique key.
> 
> Refer to Documentation/tee.txt for detailed information about TEE.
> 
> Signed-off-by: Sumit Garg <sumit.garg@linaro.org>

The implementation looks solid but how or who could possibly test this?

I do posses (personally, not from employer) bunch of ARM boards but my
TZ knowledge is somewhat limited (e.g. how can I get something running
in TZ).

/Jarkko


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
