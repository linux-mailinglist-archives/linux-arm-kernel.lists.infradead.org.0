Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42668398FD
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 00:38:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FL0Wlzb38Zjzx/L3yOoOpO8TF15LEB6Q6DLsZjb/4sk=; b=XdYA6zTY0KPslGtTETjDmT04Q
	Zr39JYxZUXIQ6RNBqQSG5W1Ghxf2WSUEne+QXUBmFcq864kXVKr559YMdYQKcOYJ5ztsxyBJ+SWq6
	14caxAUjNh2qYnn9VHTWp2vJLpQ2tfbiJhYXFKaLTRrX2xYMpFVojlImP1Kj7bxnNaga0l7IIDP4I
	yx9KFdzaOoU/JQRX350c49cMVaTzQGU5wiYSJdhoCtosJPeGrBY8lFg8ippIG+w1L6KwVYa11zEvc
	rip4Sgmz+8d9i5CrmbFnbSmm+PRtEy0uY2lKvnb+lH3POf+XfSAdXalRLcuD1ZZuxNK2Qy5xHdMJh
	relzQ8IfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZNVM-00059y-F6; Fri, 07 Jun 2019 22:38:36 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZNVC-00058s-R4; Fri, 07 Jun 2019 22:38:28 +0000
Received: from localhost (p5486CE26.dip0.t-ipconnect.de [84.134.206.38])
 by pokefinder.org (Postfix) with ESMTPSA id 73AC13E43BA;
 Sat,  8 Jun 2019 00:38:23 +0200 (CEST)
Date: Sat, 8 Jun 2019 00:38:23 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Annaliese McDermond <nh6z@nh6z.net>
Subject: Re: [PATCH v3] i2c: bcm2835: Model Divider in CCF
Message-ID: <20190607223822.GG869@kunai>
References: <20190529042912.12956-1-nh6z@nh6z.net>
MIME-Version: 1.0
In-Reply-To: <20190529042912.12956-1-nh6z@nh6z.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_153827_030136_30D408E5 
X-CRM114-Status: UNSURE (   5.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: stefan.wahren@i2se.com, f.fainelli@gmail.com, swarren@wwwdotorg.org,
 team@nwdigitalradio.com, eric@anholt.net, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1574616671006844114=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1574616671006844114==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KIzF6Cje4W/osXrF"
Content-Disposition: inline


--KIzF6Cje4W/osXrF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> +	devm_clk_unregister(i2c_dev->dev, bus_clk);

Is there a reason you call this and not rely on devm to unregister?

Other than that, looks good from what I can tell.


--KIzF6Cje4W/osXrF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAlz6514ACgkQFA3kzBSg
KbaMExAApAMFnRZJvXuFOCFels8tmkIPUkpkZ69YwmOIYzCf8kK1VDSpQ3jzmrVN
gWajpxvY8z9Vn3x95HPtzpuoo8qkhnydRE+mS98Yto2qek3Z6gMCjwY5V9X7go0P
y5goRoVDz7yLMvWtJMH+gc4fPrDoFXz17+vpkX1+fHz94Em/Q801nZTUsqe8S2K1
sCQrL37uijXaXlihwCWbRfn+XC26Ci4oyJ733rVUoc0LqSUH1uk19OwN1ASZ3M1l
yLDEnCh7FsEmi7n30F0bvF6EU718HrOb9assrqIvu6mzh+t1Pdmo/2Cw48ZQai4Q
Dp50Tzt5Ky7J0ufI1koR9h4xkQIRsy4lVNNzohkzOutgHNOPh3qmfjH/K4DAi0Hx
FIhl+mKU7QFlcFHTHfEUC+SZpC9Cu4mCnWdpvzoZvgOOm6BpH5vUg7NCcFhBY7wn
AoVojYqtZIjDuQmSHDLeQXbz7Tz0TeP7FF7ZUYEyOKnnSASMlWKf/XN3Rs0u9KaZ
GeBTT5aEXyIgUuVfXo+rJrW0/9KPbZ5aJpIa6c9eiDYHjbrNFIBl4PEpF+UmovPX
N+r8tXKI/UOqRzvqBFiIweFMl0kIPi9h/sZFERTLuYshmkN6bmLb/CR7rqvSfeQz
6jaeK7xsRVupOhNrNyAC5Blh6OX+uyzOjGDMhFPOyNVdW9EskGA=
=R1IH
-----END PGP SIGNATURE-----

--KIzF6Cje4W/osXrF--


--===============1574616671006844114==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1574616671006844114==--

