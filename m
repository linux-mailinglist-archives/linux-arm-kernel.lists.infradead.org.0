Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 807C31FEC57
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 09:20:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GIYLyvGTCRAR+fJatSGjy/E0Z16rczYnq/1q1lzh7CQ=; b=pdx3XZg6lBfMyV
	det6/FFMbXnTZqiB3SbMeJLdawN8a0w9pG2zr2cXnWEvmX5+YHoiuypd2LHfX0FRs+4Snx8DY+1LG
	7Q60IE05fD9y5cDVZ5vTy3s6B7NVDx9Z0pT87+gM7mPrqN0syyzp44r0opI7ht6tqKXB246TfX5Or
	CV0ZrEdvWxV1FlnzGF30iLIspP3pIO3UTvcsEmHyF2CExBdzWEu4pCbldq99l0PRYoyRY73du5FNQ
	/Vq1Z7AblhnEG9G7xXRiUkKKFvdHufDXZsfQuw2ydF849gXB1fyyPEaRC8cHId2nQRFP9HsdZbQUJ
	D6iZBs+Rx3de4MPMHDwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jloqU-0000pB-24; Thu, 18 Jun 2020 07:20:22 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jloqE-00006Z-P5
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 07:20:08 +0000
IronPort-SDR: bY6x2+rtoBtwXiP8nfYX0mEWLBIZVtJXvrBYEGzpH/xnE+SO/UQzA64Eq0C53fmdLJv87lGKiV
 AfXazqQtl86w==
X-IronPort-AV: E=McAfee;i="6000,8403,9655"; a="203963883"
X-IronPort-AV: E=Sophos;i="5.73,525,1583222400"; d="scan'208";a="203963883"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 00:20:06 -0700
IronPort-SDR: GOOndaOg0rTI1y/zoM9ik2FFZWaBYobsTN/aX7QIWNaExAcCBhA4jz5ODZs1oAtPHDTimnz/pR
 ct72S+OAfvFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,525,1583222400"; d="scan'208";a="263517625"
Received: from jkalinox-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.234])
 by fmsmga008.fm.intel.com with ESMTP; 18 Jun 2020 00:19:56 -0700
Date: Thu, 18 Jun 2020 10:19:55 +0300
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: Sumit Garg <sumit.garg@linaro.org>
Subject: Re: [PATCH v5 1/4] KEYS: trusted: Add generic trusted keys framework
Message-ID: <20200618071955.GE6560@linux.intel.com>
References: <1591107505-6030-1-git-send-email-sumit.garg@linaro.org>
 <1591107505-6030-2-git-send-email-sumit.garg@linaro.org>
 <20200615182457.GB5416@linux.intel.com>
 <CAFA6WYNEnXm5FOGHGAg4XB-+GXD=C+YMh+6t976=pStU0WshAA@mail.gmail.com>
 <20200617231429.GD62794@linux.intel.com>
 <CAFA6WYOdtwnewqY0ASnMf7fyw3s_hQx0+oWJRhT3CpkkkxYpDA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFA6WYOdtwnewqY0ASnMf7fyw3s_hQx0+oWJRhT3CpkkkxYpDA@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_002006_892777_79F75120 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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

On Thu, Jun 18, 2020 at 12:12:41PM +0530, Sumit Garg wrote:
> On Thu, 18 Jun 2020 at 04:44, Jarkko Sakkinen
> <jarkko.sakkinen@linux.intel.com> wrote:
> >
> > On Tue, Jun 16, 2020 at 07:02:37PM +0530, Sumit Garg wrote:
> > > + Luke
> > >
> > > Hi Jarkko,
> > >
> > > Prior to addressing your comments below which seems to show your
> > > preference for compile time selection of trust source (TPM or TEE), I
> > > would just like to hear the reasons for this preference especially if
> > > it makes distro vendor's life difficult [1] to make opinionated
> > > selection which could rather be achieved dynamically based on platform
> > > capability.
> > >
> > > [1] https://lkml.org/lkml/2020/6/3/405
> > >
> > > -Sumit
> >
> > Hmm... I do get the distribution kernel point. OK, lets revert to
> > dynamic then. Thanks for the remark.
> >
> > /Jarkko
> 
> Thanks, will revert to dynamic mode in v6.

Sorry about the extra trouble caused by me.

/Jarkko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
