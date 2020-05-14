Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BFB1D41CD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 01:43:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LlQfc1IDb74ezfbZ77uGWbiiPksSavpB1gyw8ZZQsVE=; b=bE/tFgmAAXS3e+
	ldvdYaDbVGQ40qi0kA36SadXulhZtHFGRbEQ8YV/YsIDpef/9oplt/zLot9TszlQrcTR7PXBuBM7U
	qIarsgJ8gBKn9vK/weJzmbd0PKoIj805O005J/TdM7oO+BhSe+UJbDh4MvkgCKD3r2DiOGmsYXVyP
	CoXjHypF9MsHbUZhmZrre+NTghbkyYL+8CW44wMYlOdSOsqJSlppbx/uY5Hez4M592OadDGn5aQU/
	ELqdcrfOe6+YoRiuexNLL5oU7J9hBxZxlh3jg89+RR+bEECAkntbm/EgFxo9wYQ8AG1VWki6Ynerz
	k/bOFVs3o/HbLq46LqUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZNVr-0003wl-BH; Thu, 14 May 2020 23:43:39 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZNVd-0003vw-Lc
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 23:43:30 +0000
IronPort-SDR: y0YsPmP2138w47AqwY+thT9dGG/wranNaLufxNInSGh5Gt8GpJ3VBoiGqq7uQj8TGxrpeWX9d8
 xifL2YH+va9g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 16:43:24 -0700
IronPort-SDR: 0PcKf5kROprlU7FvR2CjmctlO7VJLKQn4o6TWazGRw3DBXAE4dQdy6dZGq6zvM7ICAe8BiPuVr
 5UquiIXhVxpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,392,1583222400"; d="scan'208";a="410262240"
Received: from ashadrin-mobl1.ccr.corp.intel.com ([10.249.38.112])
 by orsmga004.jf.intel.com with ESMTP; 14 May 2020 16:43:17 -0700
Message-ID: <b59e8ef4070f1aba31b4351910d6e819802eb551.camel@linux.intel.com>
Subject: Re: [PATCH v4 2/4] KEYS: trusted: Introduce TEE based Trusted Keys
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: Sumit Garg <sumit.garg@linaro.org>
Date: Fri, 15 May 2020 02:43:04 +0300
In-Reply-To: <CAFA6WYPr1iL-uJgSRu_61uv=2DhuEdDVdQLDuyPEOOK2jEgvyg@mail.gmail.com>
References: <1588758017-30426-1-git-send-email-sumit.garg@linaro.org>
 <1588758017-30426-3-git-send-email-sumit.garg@linaro.org>
 <ef2093f96eae7e9e6785f2c0ad00604d8adfd3be.camel@linux.intel.com>
 <CAFA6WYPr1iL-uJgSRu_61uv=2DhuEdDVdQLDuyPEOOK2jEgvyg@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_164325_875605_303B67A7 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
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

On Thu, 2020-05-14 at 12:57 +0530, Sumit Garg wrote:
> On Thu, 14 May 2020 at 05:58, Jarkko Sakkinen
> <jarkko.sakkinen@linux.intel.com> wrote:
> > On Wed, 2020-05-06 at 15:10 +0530, Sumit Garg wrote:
> > > Add support for TEE based trusted keys where TEE provides the functionality
> > > to seal and unseal trusted keys using hardware unique key.
> > > 
> > > Refer to Documentation/tee.txt for detailed information about TEE.
> > > 
> > > Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
> > 
> > The implementation looks solid but how or who could possibly test this?
> > 
> > I do posses (personally, not from employer) bunch of ARM boards but my
> > TZ knowledge is somewhat limited (e.g. how can I get something running
> > in TZ).
> > 
> 
> Although, it should be fairly easy to test this implementation on an
> ARM board which supports OP-TEE. But since you are new to ARM
> TrustZone world, I would suggest you get used to OP-TEE on Qemu based
> setup. You could find pretty good documentation for this here [1] but
> for simplicity let me document steps here to test this trusted keys
> feature from scratch:
> 
> # Install prerequisites as mentioned here [2]
> 
> # Get the source code
> $ mkdir -p <optee-project>
> $ cd <optee-project>
> $ repo init -u https://github.com/OP-TEE/manifest.git -m qemu_v8.xml
> $ repo sync -j4 --no-clone-bundle
> 
> # Get the toolchain
> $ cd <optee-project>/build
> $ make -j2 toolchains
> 
> # As trusted keys work is based on latest tpmdd/master, so we can
> change Linux base as follows:
> $ cd <optee-project>/linux
> $ git remote add tpmdd git://git.infradead.org/users/jjs/linux-tpmdd.git
> $ git pull tpmdd
> $ git checkout -b tpmdd-master remotes/tpmdd/master
> # Cherry-pick and apply TEE features patch-set from this PR[3]
> # Apply this Linux trusted keys patch-set.
> 
> # Now move on to build the source code
> $ cd <optee-project>/build
> # Apply attached "keyctl_change" patch
> $ patch -p1 < keyctl_change
> $ make -j`nproc`
> CFG_IN_TREE_EARLY_TAS=trusted_keys/f04a0fe7-1f5d-4b9b-abf7-619b85b4ce8c
> 
> # Run QEMU setup
> $ make run-only
> # Type "c" on QEMU console to continue boot
> 
> # Now there should be two virtual consoles up, one for OP-TEE and
> other for Linux
> # On Linux console, you can play with "keyctl" utility to have trusted
> and encrypted keys based on TEE.
> 
> Do let me know in case you are stuck while following the above steps.
> 
> [1] https://optee.readthedocs.io/en/latest/building/devices/qemu.html#qemu-v8
> [2] https://optee.readthedocs.io/en/latest/building/prerequisites.html#prerequisites
> [3] https://lkml.org/lkml/2020/5/4/1062
> 
> -Sumit

Thanks I'll try this out as soon as the v5.8 release hassle is over!

/Jarkko


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
