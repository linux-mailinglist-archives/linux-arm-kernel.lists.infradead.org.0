Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F05D5DFCEA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 06:57:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iGml12tO5DJZv8270er8z+SX0Km8jGzi5UzbLWibgTk=; b=As9djylpzsDFLGwiBsiDZ9jyz
	oYnpGY334tROqLsshZ2FQ57G1D6OIiOtjrjSQLf5DZGPyfOtJO+/eOA7Nzh72+BYCcn2DHGWlCXC+
	gVCfw/0K66aWRmQnFLRr42JQBlbT71eG6bM0FuAB1veAUrysgQSPM6WgFXg2cwA3qGVoKoGy4StNq
	aWz3xYB6bVLiM9y+pCpCe1BUuEG8vXskQt+eagbk3nsDv9CnznIszzzl23gCMRRnf63k9cAwTTRfa
	gv6xVAPop76joP2meKF9dicf+Qe3gZM5yBcdI7nJnpSdpd5Gx5LBOxrUBXFekC//EH9OeyMRT/TT3
	rzP2IQ7yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMmEI-0006zB-Fj; Tue, 22 Oct 2019 04:57:10 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMmE8-0006yk-J1
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 04:57:02 +0000
Received: from localhost (x4e37421f.dyn.telefonica.de [78.55.66.31])
 by pokefinder.org (Postfix) with ESMTPSA id 884872C0139;
 Tue, 22 Oct 2019 06:56:56 +0200 (CEST)
Date: Tue, 22 Oct 2019 06:56:56 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Subject: Re: [PATCH i2c-next 1/2] dt-bindings: i2c: aspeed: add hardware
 timeout support
Message-ID: <20191022045655.GA975@kunai>
References: <20191021202414.17484-1-jae.hyun.yoo@linux.intel.com>
 <20191021202414.17484-2-jae.hyun.yoo@linux.intel.com>
 <0a629f7b-b829-c332-27d8-dc825205ff72@axentia.se>
 <7abf933b-cb18-10af-9c1b-163ec65ffae5@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <7abf933b-cb18-10af-9c1b-163ec65ffae5@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_215700_777061_97853D74 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 Brendan Higgins <brendanhiggins@google.com>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Tao Ren <taoren@fb.com>, Peter Rosin <peda@axentia.se>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Cedric Le Goater <clg@kaod.org>
Content-Type: multipart/mixed; boundary="===============5716356383810352818=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5716356383810352818==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WIyZ46R2i8wDzkSu"
Content-Disposition: inline


--WIyZ46R2i8wDzkSu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> Changes I submitted in this patch set is for a different purpose which
> is very Aspeed H/W specific, and actually it's a more serious timeout
> setting indeed. If this H/W is used in multi-master environment, it
> could meet a H/W hang that freezes itself in slave mode and it can't
> escape from the state. To resolve the specific case, this H/W provides
> self-recovery feature which monitors abnormal state of SDA, SCL and its
> H/W state machine using the timeout setting to determine the escape
> condition.

Thanks for the summary. I just wonder on what the timeout value depends.
Do we really need to put in DT or can we derive it e.g. from the
compatible value in the driver?


--WIyZ46R2i8wDzkSu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl2ujBMACgkQFA3kzBSg
KbYZZg/+ILRBsr6VA2yU97i07DYrhNgIs0GsfqAA3zqC+JhbF/dyORbZWno4fIxZ
+qHvJ6pTQCR/jWA4aP1kO/NL9EU3nWIICyZHIFJpXBtwrH9mGP1+hlnyrWc2uaZC
JpOw3AKSYevrQb0RksLu16ZddmlMHO0+Qi2rkhh4LGcsdCiUZRSOEeoaQkiyS3Cy
hsb1uqiGFQFdq/gFv08rpW2ja7TGS/HMzs8RdXlOI03bL6ORXU9QCV6H2oIBl00v
9YQYHo9lV5PtRTweCpaN0o+9XLmP1y4A7kHS1lr9YVoRVT67HniEisum3t6UPR2H
B5Ha1IVzBYuqtoq0vhuiowNVmV9OROoM+alQxhw3g6HPT0K+d5GmD9k6aPNXWCod
rBT7QTBslplAZJNo6R2tGvh0wIYWU0PMJ+ZSsS9YdigSqMXfd8C1p2R6ZphdyCk7
dHfEaPa4iuUGYaJWiHFROYni/GhG1EBN3kpUSphG5ETA6Ur16blwXyAZy7oVm5xO
IsIVfsJYBiV/1O77xE7FUF8gXpIalsLLH7/AXH80JexMqZBpu5hg6N6GhbN7K4rl
wZBpfCNq9Rvy65BvFL4Vmw2elrZmo9S7vYs907eZ1ZJNWB9TVpqe+z0c9FNMuAKx
o1ZttPvRuKUhoQTMnQ734eW74vmmrl4IfguSGshRymILa5AaX1Q=
=INXh
-----END PGP SIGNATURE-----

--WIyZ46R2i8wDzkSu--


--===============5716356383810352818==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5716356383810352818==--

