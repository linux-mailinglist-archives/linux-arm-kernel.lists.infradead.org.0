Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A7FEEA88
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 21:55:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3t/JEPffHunV428m7iyFm5IxqKGiSjp2PLq8Y3sYThU=; b=WT6SqOQ1t9Ik8L
	QqM4hroEi8McFDuagfLFxRrmL25pvJhFRrU3d9MXxcs/ux/bL4gvHodUNtWAbd5cFjNsjhyznkOMW
	kq8RU9nGC0oLnEpQuYmWASaUrtGKSq3q4j3IDir9bI/8lhOs3T3k1BiiSmg6XR3UKfyZKMVT/fsri
	b5DWbU4KWqrzrbs1/LoKm+vlw1JFueGolDbcPAKJIfd+gpfwzvv1a7rejq5OZfF1L0ZGqfAED63DB
	CF6GiHNDhr5nHMG6zd1bDwpBO2F+Lbi2A6pxkAMfGJFJ1qJ7FhrHHMcA0fSdwFNcRzunyux1x7gzO
	ydeKiz4XLgD0IsoSfi+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRjNw-0006XT-QV; Mon, 04 Nov 2019 20:55:36 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRjNm-0006UF-U3
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 20:55:28 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Nov 2019 12:55:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,268,1569308400"; d="scan'208";a="195581057"
Received: from rczubala-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.7.245])
 by orsmga008.jf.intel.com with ESMTP; 04 Nov 2019 12:55:08 -0800
Date: Mon, 4 Nov 2019 22:55:06 +0200
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: Sumit Garg <sumit.garg@linaro.org>
Subject: Re: [Patch v3 6/7] doc: keys: Document usage of TEE based Trusted Keys
Message-ID: <20191104205453.GA29713@linux.intel.com>
References: <1572530323-14802-1-git-send-email-sumit.garg@linaro.org>
 <1572530323-14802-7-git-send-email-sumit.garg@linaro.org>
 <20191031214745.GG10507@linux.intel.com>
 <CAFA6WYMkE928v-v76gGtWmsS0PwRp-OHUtkS0+Ts4V6x0AKBqQ@mail.gmail.com>
 <20191101201957.GA8369@linux.intel.com>
 <CAFA6WYNwSSaZv5OM=q+LCyn0mEdpg7K+W_v2_NBHhtktg1BFXw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFA6WYNwSSaZv5OM=q+LCyn0mEdpg7K+W_v2_NBHhtktg1BFXw@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_125527_013413_83B119F2 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
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

On Mon, Nov 04, 2019 at 12:28:47PM +0530, Sumit Garg wrote:
> On Sat, 2 Nov 2019 at 01:50, Jarkko Sakkinen
> <jarkko.sakkinen@linux.intel.com> wrote:
> >
> > On Fri, Nov 01, 2019 at 03:04:18PM +0530, Sumit Garg wrote:
> >
> > > Isn't this statement contradicting with your earlier statement
> > > regarding the right order would be to complete TEE patches review
> > > first and then come up with documentation here [2]?
> > >
> > > [1] https://lore.kernel.org/linux-integrity/1568025601.4614.253.camel@linux.ibm.com/
> > > [2] https://lore.kernel.org/linux-integrity/20190909163643.qxmzpcggi567hmhv@linux.intel.com/
> >
> > With the intersecting issues, namely key generation and conflicting
> > keyctl parameters, that was not a well considered statement.
> 
> Okay, let me work on documentation first, but I think resending whole
> patch-set just for documentation review and rework would be an
> overkill. Would minor revisions of this patch only like v3.1, v3.2
> etc. work for you? And later I could send next version of this
> patch-set once we agree on documentation.

Yeah, we could iterate through the documentation patch and once
we are happy with it you can bundle it to your main patch set.

/Jarkko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
