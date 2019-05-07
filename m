Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 101CD15CD0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 08:07:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AwZr9VRqEShQGEXdC5NuwKN/VV53nEkoU0MHXe7pHUs=; b=ZQvey+AXnd3DvC
	nF8s0KGxAP/1U3uajub6GWzqYZlMNRXOTfItN2milu4kNIUevy4HPgA9gJQYDtjUj9NgwK9bbJOix
	H19QmhP77cYmqQLKUro5WSeUYCL/riBxZIUm0vP7vzCuFT72W7V7D0Nnpr+RmEEv0sO3SmajGZjVp
	sfalprlks+upufI6jn9P/YxtjL7XkCKZ6VnC7PCm4WqbXoLtPmyJ0mf9tx1q2TvVFHbZ5wRIQTLsZ
	UabMdN6xRx4jdklvFQcUjGWFQPROx9SJzKcyPImfuXM1ndls9SgPg77fydzEkVkaRgrLgzCurg2cM
	KQip7qiJm+jmVcgFflhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNtG2-0004LR-Tl; Tue, 07 May 2019 06:07:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNtFw-0004KY-5Q
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 06:07:13 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hNtFo-0005Pa-02; Tue, 07 May 2019 08:07:04 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hNtFm-0001Aa-Re; Tue, 07 May 2019 08:07:02 +0200
Date: Tue, 7 May 2019 08:07:02 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v2] cpufreq: imx6q: Fix the resource leak caused by
 incorrect error return
Message-ID: <20190507060702.ub4zjsurylldj2mm@pengutronix.de>
References: <20190505080736.27970-1-ping.bai@nxp.com>
 <20190507055327.sakuoy2j3g7dwv3f@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507055327.sakuoy2j3g7dwv3f@vireshk-i7>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_230712_363861_ADAD7C80 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Jacky Bai <ping.bai@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 11:23:27AM +0530, Viresh Kumar wrote:
> On 05-05-19, 08:02, Jacky Bai wrote:
> > Previous goto only handled the node reference, the opp table,
> > regulator & clk resource also need to be free before error return.
> > =

> > Fixes: ddb64c5db3c (cpufreq: imx6q: fix possible object reference leak).
> =

> This should have been.
> =

> Fixes: ddb64c5db3cc ("cpufreq: imx6q: fix possible object reference leak")
> =

> Auto configure it with following in .gitconfig
> =

> [pretty]
> 	fixes =3D Fixes: %h (\"%s\")
> 	onelin =3D commit %h (\"%s\")
> =

> and then:
> =

> git log --pretty=3Dfixes ddb64c5db3c
> =

> will generate it by itself.

Just to add my color of the bikeshed, I have (among others):

[alias]
	oneq =3D show -s --pretty=3D'format:%h (\"%s\")'

in my ~/.gitconfig and can do:

$ git oneq ddb64c5db3c
ddb64c5db3cc ("cpufreq: imx6q: fix possible object reference leak")

which is a bit shorter than Viresh's suggestion.

(Originally I had "one" without the quotes which I learned (IIRC) from
the git mailing list. Instead of deviating from this I added 'q' for
"quotes" to match the usual convention in kernel land.)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
