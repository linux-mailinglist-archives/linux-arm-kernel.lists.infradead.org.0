Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D40F61D2398
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 02:25:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oj6tkVvPz7Hcb+iK1Gg1IIKpq4ObKrpwXQKGBUm+C54=; b=Pi1B9umYSdVcqo
	1NQtRgJD+xT6hWDC9+/a12Uo30PrNLQPl1saH4SPffwZaE4JzW8cOGwJN0VCLR4KTbsGv+z8EO2Ur
	lgF5NltN+1vaAToFHvwhxkdsgFtHznfYUmuGqiEB0UIumpf10BHU9pBkNlLm8VwFZZaklBUYmQuCO
	mf6z4kwcY1NxAjlC4YH8b/whbfreUPwo77kSte0gUkjTRWtyJdCy0go1unf1z98FyBiYkDiPJeVGM
	YWeUI726YTDyti6G1XIesqAC+nFaTXrB0uCppCVdQdLE8J56NtwMQ4VtaQOEH7OesDFOKG+s1EFuC
	Olwrv/djkwrAyNWzppxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ1gw-0000vZ-L7; Thu, 14 May 2020 00:25:38 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ1gm-0000uQ-6j
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 00:25:29 +0000
IronPort-SDR: 9QNcjs9bXsaAftfhhML8pZt2+zRY/lmDejgNRxmSo5+pGje+uiI8tFj9ABrOu03KggLbVBsoX2
 XmlhoJK8WMFg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 17:25:26 -0700
IronPort-SDR: LmigXyC+PKXEwMmfY0sVl4rNnEd46L+o3kglBun/40P0Ry5MzcqKSfH2nUh0qUui+AXBzt99h0
 L6gOZAQubFMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,389,1583222400"; d="scan'208";a="262661894"
Received: from gliber-mobl1.ger.corp.intel.com ([10.249.38.41])
 by orsmga003.jf.intel.com with ESMTP; 13 May 2020 17:25:20 -0700
Message-ID: <07bb6080f8be9f6613f460e2d6e19f3d456e219c.camel@linux.intel.com>
Subject: Re: [PATCH v4 1/4] KEYS: trusted: Add generic trusted keys framework
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: Sumit Garg <sumit.garg@linaro.org>, zohar@linux.ibm.com, jejb@linux.ibm.com
Date: Thu, 14 May 2020 03:25:14 +0300
In-Reply-To: <1588758017-30426-2-git-send-email-sumit.garg@linaro.org>
References: <1588758017-30426-1-git-send-email-sumit.garg@linaro.org>
 <1588758017-30426-2-git-send-email-sumit.garg@linaro.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_172528_289253_E86F84EF 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
> Current trusted keys framework is tightly coupled to use TPM device as
> an underlying implementation which makes it difficult for implementations
> like Trusted Execution Environment (TEE) etc. to provide trusked keys
> support in case platform doesn't posses a TPM device.
> 
> So this patch tries to add generic trusted keys framework where underlying
> implemtations like TPM, TEE etc. could be easily plugged-in.
> 
> Suggested-by: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
> Signed-off-by: Sumit Garg <sumit.garg@linaro.org>

I tend to agree how this is implemented and could merge it as such.

I'm just thinking if we could refine this patch in a way that instead of
copying TRUSTED_DEBUG macro we could just replace pr_info() statements
with pr_debug()?

/Jarkko


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
