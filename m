Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8FF31B9A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 13:41:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=THYFY4XkKTNxTnI/uCm87ZU8Geyyw9wCAiNPrgYnXTI=; b=fgcTZe6D+Y1o4ePvE0on7tALL
	5fwWY3TAuWOxDfo70ijAgrd+8OZATcYojU/Kk8xEdb7Qak4yvqXoqJYfs9RSQhNWsDLogx8F7AFqU
	zoQw7ZBG14bxNeEFns1RVVEGpXlP67B5QGfgeyHFO+iatLHUlA9TbCAbVRooHf9XEwi/njYdM6jqT
	aMcNgjrzIHq8AlpPcJeRiCEG/UVpzekBrLliO6DAYotD2k64GZbCFle6WoE8kq1a1JueKWfsCLrga
	soiLhGHstzkDoFH8ePRTLBF/N034/a01rBnzRDs7Kan9+GRUjo8hkCFqs/jsTbicxqNhTUn2DwYK9
	JxSVlcC2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX2Nl-0006k7-GC; Sat, 01 Jun 2019 11:41:05 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX2Nf-0006jj-40
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 11:41:00 +0000
Received: from localhost (unknown [91.64.182.124])
 by pokefinder.org (Postfix) with ESMTPSA id 6BDAD2C54BC;
 Sat,  1 Jun 2019 13:40:58 +0200 (CEST)
Date: Sat, 1 Jun 2019 13:40:58 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/8] arm: add I2C DT binding docs to various platforms
Message-ID: <20190601114057.GD1993@kunai>
References: <20190521082137.2889-1-wsa@the-dreams.de>
MIME-Version: 1.0
In-Reply-To: <20190521082137.2889-1-wsa@the-dreams.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_044059_305996_D36B1871 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6615525343984428413=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6615525343984428413==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cQXOx3fnlpmgJsTP"
Content-Disposition: inline


--cQXOx3fnlpmgJsTP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 21, 2019 at 10:21:29AM +0200, Wolfram Sang wrote:
> Some I2C drivers entries in MAINTAINERS miss their DT bindings docs.
> This series fixes that. Because these drivers are all embedded in their
> platform entries, I suggest the respective maintainers pick them up via
> their tree. If you prefer that I take them via I2C, let me know.

Series applied to for-current!


--cQXOx3fnlpmgJsTP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAlzyZEkACgkQFA3kzBSg
KbZBKQ/+J6xdC3F2JIYkJ0e0Ru0FGHiSqVM11jQh/EUyMUWXXwTdyNBO3qyENIEO
sVFLcJSINSMYWAEB2KR1qnhCYC8JVNSmhy5/hbc5Qhl5AOAQ6gv7m2zEnX0R3S0V
dJc0+xXhOQZWQZdG033+MAKdlMcz+1EslOs4JnHCWBQcT9saB3jlk2zEY1VLnJEK
xgM/TvQGA3WL1FNtHBn7hdb0ZmcxBlIeHvW7WefoVLCeK2r+05k/UzfW+pDMhZB5
+K7uU4g9wyXA1U+KSHtnZyqUtv2XxnRHMNdwG7LMHq5oTLynqu168odEkTDMaaI6
lXjqMIN9iZVD5OqNbugLbVHBSdxcmFqcmvUxXtQhL2/+tH0x9c2BFPqqlB0BhcVm
uMwGwkE5AQbO/Foide6AOBtHAXrjCy2pZPbktW2BQIE2Cc7VkIWRo2URZsdrS+nL
t8cgYYMDi3dIlfdU1n1KMyTuO6fspbTPHa8tP0dDlux0o6A38yRLbTWs1VFimhS/
Y0+nkBY0oCbmoBXcEwGr1iSkby4MJRxzwj0m850k6rCtq8kMziBgJVetzHHPoRU3
gjgCgr+LMqwItJ79LeWv9nevjJIwMLhxuq8ivzGMOT/udJTUSZ41laXY2kv9ZXsg
O1jQhoR5bjZrCZ5GIeJ9MJfdSHIG3vUUf1Fl/A0QrzDJFgIgljY=
=zv7P
-----END PGP SIGNATURE-----

--cQXOx3fnlpmgJsTP--


--===============6615525343984428413==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6615525343984428413==--

