Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DB9EC983
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 21:20:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lAtkusEGYn+aDffnRbjRfqzlCFknpGHqXfEHylL8N3I=; b=krewnSacqgXodh
	ModN3U2Wdb4EseWR3gLeOH5oSch100SU5coWuISAUXxTSM2vr/LIuEgm9D4kA//WG4rUcDe4NlurN
	b0FMEjcHB+HoQeltnDl+gbaXY6nHYQmZKyyVgPd8CoqVapyW3v5y6m20iF9xIJ/mPgL35MYeafmX3
	TuVDReBs+jA8F761DsinvP42aqav4++RHNrSUBpqQ7Ya5sOw0uE6/jNnZf2YqAc3MCVk7Xovs3i7h
	jrdwBc+SKqkFdyYX7iMu3oMpW7/Bkh4nc8OLF+QhcSq/HueSWAKDb3/xjQHM1vngY9jZT3UyftTni
	iPSdwlsIEdWlmd6BDNBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQdP7-0001xp-Be; Fri, 01 Nov 2019 20:20:17 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQdP0-0001x7-F9
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 20:20:11 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Nov 2019 13:20:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,256,1569308400"; d="scan'208";a="226138430"
Received: from bklaps-mobl.ger.corp.intel.com (HELO localhost) ([10.252.27.20])
 by fmsmga004.fm.intel.com with ESMTP; 01 Nov 2019 13:19:58 -0700
Date: Fri, 1 Nov 2019 22:19:57 +0200
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: Sumit Garg <sumit.garg@linaro.org>
Subject: Re: [Patch v3 6/7] doc: keys: Document usage of TEE based Trusted Keys
Message-ID: <20191101201957.GA8369@linux.intel.com>
References: <1572530323-14802-1-git-send-email-sumit.garg@linaro.org>
 <1572530323-14802-7-git-send-email-sumit.garg@linaro.org>
 <20191031214745.GG10507@linux.intel.com>
 <CAFA6WYMkE928v-v76gGtWmsS0PwRp-OHUtkS0+Ts4V6x0AKBqQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFA6WYMkE928v-v76gGtWmsS0PwRp-OHUtkS0+Ts4V6x0AKBqQ@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_132010_550936_F6B90C37 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
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
Cc: "tee-dev @ lists . linaro . org" <tee-dev@lists.linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Janne Karhunen <janne.karhunen@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 jejb@linux.ibm.com, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 James Morris <jmorris@namei.org>, Mimi Zohar <zohar@linux.ibm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dhowells@redhat.com,
 linux-security-module@vger.kernel.org,
 "open list:ASYMMETRIC KEYS" <keyrings@vger.kernel.org>,
 Stuart Yoder <stuart.yoder@arm.com>, Casey Schaufler <casey@schaufler-ca.com>,
 linux-integrity@vger.kernel.org, Jens Wiklander <jens.wiklander@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Serge E. Hallyn" <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 03:04:18PM +0530, Sumit Garg wrote:
 
> Isn't this statement contradicting with your earlier statement
> regarding the right order would be to complete TEE patches review
> first and then come up with documentation here [2]?
> 
> [1] https://lore.kernel.org/linux-integrity/1568025601.4614.253.camel@linux.ibm.com/
> [2] https://lore.kernel.org/linux-integrity/20190909163643.qxmzpcggi567hmhv@linux.intel.com/

With the intersecting issues, namely key generation and conflicting
keyctl parameters, that was not a well considered statement.

/Jarkko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
