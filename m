Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1B01FD982
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 01:14:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YlTZMmgyXIiMJqdmSlI5Pitqlr0HrRvLDrhez9IxZU0=; b=sEUafovojZnSG4
	jZoBZz2mVeNPtvotHZpdHU9/JGkjCPcx785RBC3dhohsrllQTW7YdHWw9mkClqN87ZevebrZqzRwm
	GT1NQAcihH0RLLg7D4ey1LOtvmaUDkiH+tcRGeFrOMHzWqNTo66aIfNjLMszhUK5LkZITc3A9wvFw
	oRtFFx+7586K5fOcEopybsGo9g/C7WoEQp/hrbgl3e+d2sqQGIgXqVLefSqaTQFVy0PS8iHVIndMG
	aO3kw5dTYKobcVXDdk5hIyRrTqOSYEOh6eDX/6EbxUpvVIEIRBhF5Tom3wAahBjUVVmmbB5TJ92uD
	X525nt7sHVGpkrFDzCiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlhGe-0005xd-0i; Wed, 17 Jun 2020 23:14:52 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlhGW-0005xA-Hf
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 23:14:45 +0000
IronPort-SDR: XnZdnDwT+Ys7i/I6QfzXLZUPccgIs5YM11b/Lc5/GweFH2pzgyi2r5t/0WZ7Mrm+zKNCY+zff0
 DT/75+VuHrXw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 16:14:43 -0700
IronPort-SDR: xYhJJOFwfFkEbqi1RPAcBFZIgp3FcLNJR7J86i2/7dF1EoRXvTAKgcViEW3ziaXxCkLuN5WVMp
 CrsTU31DELRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,523,1583222400"; d="scan'208";a="277434089"
Received: from kleeve-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.166])
 by orsmga006.jf.intel.com with ESMTP; 17 Jun 2020 16:14:30 -0700
Date: Thu, 18 Jun 2020 02:14:29 +0300
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: Sumit Garg <sumit.garg@linaro.org>
Subject: Re: [PATCH v5 1/4] KEYS: trusted: Add generic trusted keys framework
Message-ID: <20200617231429.GD62794@linux.intel.com>
References: <1591107505-6030-1-git-send-email-sumit.garg@linaro.org>
 <1591107505-6030-2-git-send-email-sumit.garg@linaro.org>
 <20200615182457.GB5416@linux.intel.com>
 <CAFA6WYNEnXm5FOGHGAg4XB-+GXD=C+YMh+6t976=pStU0WshAA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFA6WYNEnXm5FOGHGAg4XB-+GXD=C+YMh+6t976=pStU0WshAA@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_161444_632664_800FF4A0 
X-CRM114-Status: GOOD (  10.42  )
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
 Daniel Thompson <daniel.thompson@linaro.org>, Luke Hinds <lhinds@redhat.com>,
 op-tee@lists.trustedfirmware.org, Jonathan Corbet <corbet@lwn.net>,
 James Bottomley <jejb@linux.ibm.com>,
 Janne Karhunen <janne.karhunen@gmail.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 James Morris <jmorris@namei.org>, Mimi Zohar <zohar@linux.ibm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>, linux-security-module@vger.kernel.org,
 "open list:ASYMMETRIC KEYS" <keyrings@vger.kernel.org>,
 Markus Wamser <Markus.Wamser@mixed-mode.de>,
 Casey Schaufler <casey@schaufler-ca.com>, linux-integrity@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Serge E. Hallyn" <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 07:02:37PM +0530, Sumit Garg wrote:
> + Luke
> 
> Hi Jarkko,
> 
> Prior to addressing your comments below which seems to show your
> preference for compile time selection of trust source (TPM or TEE), I
> would just like to hear the reasons for this preference especially if
> it makes distro vendor's life difficult [1] to make opinionated
> selection which could rather be achieved dynamically based on platform
> capability.
> 
> [1] https://lkml.org/lkml/2020/6/3/405
> 
> -Sumit

Hmm... I do get the distribution kernel point. OK, lets revert to
dynamic then. Thanks for the remark.

/Jarkko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
