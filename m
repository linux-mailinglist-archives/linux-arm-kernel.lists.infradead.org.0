Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8836A1467EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 13:28:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w7VjSW771lLII5SYlTuuuF9mSoUPi3gOOOqIOlg7A4w=; b=HM0BAEXlxn8JuY
	zDiPfRD++5lNA1AOgPe59PISwE5zrtR46Etgdg+tPEojJ9hZhQ/OrvpAPldn7cp145wALuKy2mOgw
	ANimXNHTVgiNRgSyDYXgodcRhXFqlSImo6/xxJEI7/12Eu/Jxpu936cIsF3ePWhrEEcCA2vTO+MDy
	hlR1fye8qtkrGT8eWR08bnpUTo0/oCD8j/Hw3UDL0AE1uTdxmhTu0GDhKLuEz2r0MH7PeiGzZd8Hg
	tuujW7zcMhcxJyW0LT6lSGrHjrgWEmGlpnp14bZvRm7jZGwGNnohiSx0Izj6yAeTsxDSxmQb8ZnEw
	WLHftvCmM0v934JpIp2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iubaw-0003f8-1w; Thu, 23 Jan 2020 12:28:22 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iubak-0003eb-4R
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 12:28:11 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 04:27:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,353,1574150400"; d="scan'208";a="220651571"
Received: from wkalinsk-mobl.ger.corp.intel.com ([10.252.23.16])
 by orsmga008.jf.intel.com with ESMTP; 23 Jan 2020 04:27:20 -0800
Message-ID: <ada03416b1b362fa255feb45257414655d8ab023.camel@linux.intel.com>
Subject: Re: [PATCH v2 2/2] tpm: tis: add support for MMIO TPM on SynQuacer
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: Ard Biesheuvel <ardb@kernel.org>, linux-kernel@vger.kernel.org
Date: Thu, 23 Jan 2020 14:27:19 +0200
In-Reply-To: <20200114141647.109347-3-ardb@kernel.org>
References: <20200114141647.109347-1-ardb@kernel.org>
 <20200114141647.109347-3-ardb@kernel.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_042810_223044_65BB7EA2 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, jgg@ziepe.ca, masahisa.kojima@linaro.org,
 linux-integrity@vger.kernel.org, peterhuewe@gmx.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2020-01-14 at 15:16 +0100, Ard Biesheuvel wrote:
> When fitted, the SynQuacer platform exposes its SPI TPM via a MMIO
> window that is backed by the SPI command sequencer in the SPI bus
> controller. This arrangement has the limitation that only byte size
> accesses are supported, and so we'll need to provide a separate set
> of read and write accessors that take this into account.

What is SynQuacer platform?

I'm also missing a resolution why tpm_tis.c is extended to handle both
and not add tpm_tis_something.c instead. It does not follow the pattern
we have in place (e.g. look up tpm_tis_spi.c).

/Jarkko


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
