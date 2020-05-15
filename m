Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 569E61D41EE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 02:01:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ybt8YaIEFWhps7DN+SASofZMTxmcHN25cEvVFOYVq7Y=; b=rQnDxYueqvbl5Q
	TvBkAXZGNiqz8E8gYR9+L6ZGHwpdtg90xDgrqPhIkFMNszCzs1EkFgsGnNy0zrRpHnacF9Vfzre3y
	aa/f3Y9Co3xr53FHML8lmSpOpQAE2Y1x14jXMdJVCxC/tKoQU1XpRmKOCqMqf6ltLRyqhIrs3uaCw
	jR0sdjxznwU4Q0xyyeNlBeRJmPAOk/59uZaCLgMvSNPGIBf420urQ1N6I8DlXN/3909oSkXezRJ48
	+6Ys1ArZGgjw77iJFoa/cKZUga7xomox9yoLSwoeFE2Mxtvf2IC1KzxNhgLnnqnV1AimbGA0ZYcEV
	H6FHmpwpr6c4UQwiD0UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZNmc-0007vb-5W; Fri, 15 May 2020 00:00:58 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZNmS-0007v3-7S
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 00:00:49 +0000
IronPort-SDR: baTef2/haYyscPB3qcwMnePfE4Ubsr3clcH/QeyxEkMKmhEPrv0K9GMbLJA8RgGi9deX5ovJuX
 Lbyunj7nWHWw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 17:00:46 -0700
IronPort-SDR: ca6NGik9rwL5TfUuopCMa37yfmw6w+5tfFEmLEcDsO+j+WiMzKp0s+BHsnCUEhu0AryC6eHS/K
 TorQLC+Wgq5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,392,1583222400"; d="scan'208";a="266421400"
Received: from ashadrin-mobl1.ccr.corp.intel.com ([10.249.38.112])
 by orsmga006.jf.intel.com with ESMTP; 14 May 2020 17:00:37 -0700
Message-ID: <956b284c2b144313fd158de75cba510eb98f71bf.camel@linux.intel.com>
Subject: Re: [PATCH v4 1/4] KEYS: trusted: Add generic trusted keys framework
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: Sumit Garg <sumit.garg@linaro.org>
Date: Fri, 15 May 2020 03:00:25 +0300
In-Reply-To: <CAFA6WYMciZ=qkG3N_9YWzt_DJr2dGwdAy9diMXCJSNjr2o5ONA@mail.gmail.com>
References: <1588758017-30426-1-git-send-email-sumit.garg@linaro.org>
 <1588758017-30426-2-git-send-email-sumit.garg@linaro.org>
 <07bb6080f8be9f6613f460e2d6e19f3d456e219c.camel@linux.intel.com>
 <CAFA6WYMciZ=qkG3N_9YWzt_DJr2dGwdAy9diMXCJSNjr2o5ONA@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_170048_308129_B6BB05C7 
X-CRM114-Status: GOOD (  18.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
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
Cc: "tee-dev @ lists . linaro . org" <tee-dev@lists.linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>, op-tee@lists.trustedfirmware.org,
 Jonathan Corbet <corbet@lwn.net>, James Bottomley <jejb@linux.ibm.com>,
 Janne Karhunen <janne.karhunen@gmail.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 James Morris <jmorris@namei.org>, Mimi Zohar <zohar@linux.ibm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dhowells@redhat.com,
 linux-security-module@vger.kernel.org,
 "open list:ASYMMETRIC KEYS" <keyrings@vger.kernel.org>,
 Markus Wamser <Markus.Wamser@mixed-mode.de>,
 Casey Schaufler <casey@schaufler-ca.com>, linux-integrity@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, "Serge E.
 Hallyn" <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-05-14 at 16:53 +0530, Sumit Garg wrote:
> On Thu, 14 May 2020 at 05:55, Jarkko Sakkinen
> <jarkko.sakkinen@linux.intel.com> wrote:
> > On Wed, 2020-05-06 at 15:10 +0530, Sumit Garg wrote:
> > > Current trusted keys framework is tightly coupled to use TPM device as
> > > an underlying implementation which makes it difficult for implementations
> > > like Trusted Execution Environment (TEE) etc. to provide trusked keys
> > > support in case platform doesn't posses a TPM device.
> > > 
> > > So this patch tries to add generic trusted keys framework where underlying
> > > implemtations like TPM, TEE etc. could be easily plugged-in.
> > > 
> > > Suggested-by: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
> > > Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
> > 
> > I tend to agree how this is implemented and could merge it as such.
> > 
> > I'm just thinking if we could refine this patch in a way that instead of
> > copying TRUSTED_DEBUG macro we could just replace pr_info() statements
> > with pr_debug()?
> 
> AFAIU, TRUSTED_DEBUG being a security sensitive operation is only
> meant to be used in development environments and should be strictly
> disabled in production environments. But it may not always be true
> with pr_debug() with CONFIG_DYNAMIC_DEBUG=y which allows the debug
> paths to be compiled into the kernel which can be enabled/disabled at
> runtime.
> 
> IMO we should keep this TRUSTED_DEBUG macro, so that users are aware
> of its security sensitive nature and need to explicitly enable it to
> debug.

You are absolutely correct.

/Jarkko


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
