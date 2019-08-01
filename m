Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EA37D5DD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 08:51:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2nMUOoxqrgVd8RHt5i2EMOG6tz8h6Zk9vcZRA9Lt/Wk=; b=k/Ov70xrQn2PP7
	cqyQmKfbFKxtsHZhNfkQDH/AsXG4uamcO9GSh4xYigpeoo+Iq9B11eGjDZg+yAIN8zdFy+qEc6iRv
	O8Xc1+JRejHktj/js+BMKog0F0Ii3R/s6GJ8OarPTIPNqrhRYXqQRprUZ2ORE1NZQy+sL3uVitZk2
	A7NC5RfvVs89b5Hrlmu9XEaRsz4LqIVBvSiJbVrC2PsnmKRVdrUSpYh5RujR/o/HpFPmgWwoFxhqy
	De54gd2lzPBOZu4sta14bdestiN+6Dt3kTJ21XeBsZQJgqsUjYA7ZD8+o7Yh/A3mxzY3Nc14VXvqW
	+TYyEtc9895i3tJlR5Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht4vR-0000K6-B5; Thu, 01 Aug 2019 06:50:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht4vJ-0000Jk-KA
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 06:50:51 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=localhost.localdomain)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <r.czerwinski@pengutronix.de>)
 id 1ht4ux-0006ob-9h; Thu, 01 Aug 2019 08:50:27 +0200
Message-ID: <19d9be198619e951750dedeb4d0a7f372083b42c.camel@pengutronix.de>
Subject: Re: [Tee-dev] [RFC v2 0/6] Introduce TEE based Trusted Keys support
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: Janne Karhunen <janne.karhunen@gmail.com>, Sumit Garg
 <sumit.garg@linaro.org>
Date: Thu, 01 Aug 2019 08:50:22 +0200
In-Reply-To: <CAE=NcrYz8bT9zDhS_ZcvY84fpeTDxZ-KhJKeQGGyf=o4pG2J-Q@mail.gmail.com>
References: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
 <CAE=Ncrb63dQLe-nDQyO9OPv7XjwM_9mzL9SrcLiUi2Dr10cD4A@mail.gmail.com>
 <CAFA6WYPJAzbPdcpBqioxjY=T8RLw-73B_hpzX4cGnwVvm5zpJw@mail.gmail.com>
 <CAE=Ncrb23q++z8R8UMbjDE2epEq4YVcNGzrRD31eH3JAooYejg@mail.gmail.com>
 <CAFA6WYOKcOzSwakHhgshZcebD8ZBMSi7xQdjWYFS79=Xc+odOg@mail.gmail.com>
 <CAE=NcrYz8bT9zDhS_ZcvY84fpeTDxZ-KhJKeQGGyf=o4pG2J-Q@mail.gmail.com>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: r.czerwinski@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_235049_665130_7A21A93A 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, jejb@linux.ibm.com,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 "tee-dev @ lists . linaro . org" <tee-dev@lists.linaro.org>,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 Mimi Zohar <zohar@linux.ibm.com>, dhowells@redhat.com,
 Casey Schaufler <casey@schaufler-ca.com>, linux-integrity@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Serge E. Hallyn" <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-08-01 at 09:36 +0300, Janne Karhunen wrote:
> On Wed, Jul 31, 2019 at 5:23 PM Sumit Garg <sumit.garg@linaro.org>
> wrote:
> 
> > > I guess my wording was wrong, tried to say that physical TEEs in
> > > the
> > > wild vary massively hardware wise. Generalizing these things is
> > > rough.
> > > 
> > 
> > There are already well defined GlobalPlatform Standards to
> > generalize
> > the TEE interface. One of them is GlobalPlatform TEE Client API [1]
> > which provides the basis for this TEE interface.
> 
> I'm aware of it - I have implemented a large part of the GP TEE APIs
> earlier (primarily the crypto functions). Does the TEE you work with
> actually support GP properly? Can I take a look at the code?

AFAIK Sumit is working with the OP-TEE implementation, which can be
found on github: https://github.com/op-tee/optee_os

Regards,
Rouven


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
