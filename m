Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9112A80CAA
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 22:48:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QspFhjvF8+EA51M4ZwR5JrGcD5N2fABsuItoWxnvrfY=; b=CcEYELiFzleY3F
	6zRo5cXB7I0TQLRHy2QGhDIeCNglWklAHYh90QoRVmWSBXWEJfFClKA9D0iXLzUutnqCoXiTnluwA
	POI2QmsUL6nH1ZRMFHyysZHrltqqarO2n/Rv1orfvQ+DEntXq/iy2SZyijZwhFJM10V2q6ztRaeIH
	5SxCd7PNDowjgkvlrWQX39E0uo8Tth9221ZhCjjgfhv6sp3GJx3pzLXIkjN+DyaVxOFAp04Qa0a/Q
	AQffRQdbjYfUFFZAACCEKvCawO/CQ3NfSLK+GX7UcYfQYNMsOxGD6e/wyO3BuTY3ql5S/KNtpYefu
	wtHLqs16q0w9uqZ6dHhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huNQx-0005S1-S1; Sun, 04 Aug 2019 20:48:51 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huNQr-0005Rh-Hb
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 20:48:46 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Aug 2019 13:48:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,347,1559545200"; d="scan'208";a="348926486"
Received: from rmohamed-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.37.16])
 by orsmga005.jf.intel.com with ESMTP; 04 Aug 2019 13:48:08 -0700
Date: Sun, 4 Aug 2019 23:48:07 +0300
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: Sumit Garg <sumit.garg@linaro.org>
Subject: Re: [RFC v2 0/6] Introduce TEE based Trusted Keys support
Message-ID: <20190804204807.ajhy3jhwie3oq6d5@linux.intel.com>
References: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_134845_624963_F9F66E3C 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
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
Cc: tee-dev@lists.linaro.org, daniel.thompson@linaro.org, corbet@lwn.net,
 jejb@linux.ibm.com, ard.biesheuvel@linaro.org, linux-doc@vger.kernel.org,
 jmorris@namei.org, zohar@linux.ibm.com, linux-kernel@vger.kernel.org,
 dhowells@redhat.com, linux-security-module@vger.kernel.org,
 keyrings@vger.kernel.org, casey@schaufler-ca.com,
 linux-integrity@vger.kernel.org, jens.wiklander@linaro.org,
 linux-arm-kernel@lists.infradead.org, serge@hallyn.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 05:53:34PM +0530, Sumit Garg wrote:
>   tee: optee: allow kernel pages to register as shm
>   tee: enable support to register kernel memory
>   tee: add private login method for kernel clients
>   KEYS: trusted: Introduce TEE based Trusted Keys
>   doc: keys: Document usage of TEE based Trusted Keys
>   MAINTAINERS: Add entry for TEE based Trusted Keys

Skimmed through the patches. I think it is better to sort out the
current LKM dependency issue with trusted.ko and get TPM 1.2 and TPM 2.0
trusted keys code consolidated before it makes sense to really go detail
on this.

/Jarkko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
