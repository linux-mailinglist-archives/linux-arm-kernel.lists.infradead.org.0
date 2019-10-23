Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B2EE1EFC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 17:12:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nvn8wEc1D7O5ozqIuBO+ULRAZm5WCDcJ4qRy1bBmXnA=; b=O/QdzN1Qa7QJfx6VeQlt2Fdel
	FCv8X/mJPGBEBvGsLTEi/bcsogZTGtlWU0S4DE0ayiyWrxJn9BZj9pAz+hLOMrZ+glFKNvGll+NcU
	Kh/mvv5Tl3jjlgDc1AD+E2AxyVw5BEhqgSJiwfcW/BDcR1Z40EHD92wADQlxJ9qwBT+N629ZMVMTC
	0SulbSAmRNPgzN1VDndnFVplpfRDU2zGwwqeNSsVhDKlImgNXgUmZNzll4+JPBSG0SnMwVNjzMQUV
	JywYNsBLtelIyquO4ZZu3nAPVy5CjIdLx+q6BnRx/3WVoXKzIVFpD1DOiSLdyy5nBXwOITk9gKZKP
	bJbcK6sfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNIIm-00088y-06; Wed, 23 Oct 2019 15:11:56 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNIIR-000825-Q0; Wed, 23 Oct 2019 15:11:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CFlPf+0Bqqc/DNWZaN1DVp0k7e+Yp/Tsp5TFWxhBZs8=; b=U9m0ZiHax9S1avQBBTw9dmxLA
 +2uG08eOR+JihrKXYnJtB7UMDACgBMRXUYOfFzhYtbT7NR3xhkr2+fPhiybolm/lZK+LmfCGbXj5Z
 SGcdauL4wYj87bsJV/1DTM5W9YQA5QGdnx4vcD14c7TmmVIUnu+/2vAKhDimwNAWlIHYQ=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iNIIQ-0000pH-7I; Wed, 23 Oct 2019 15:11:34 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id B561A274301E; Wed, 23 Oct 2019 16:11:33 +0100 (BST)
Date: Wed, 23 Oct 2019 16:11:33 +0100
From: Mark Brown <broonie@kernel.org>
To: Luhua Xu <luhua.xu@mediatek.com>
Subject: Re: [PATCH 0/1] Add spi power control when set cs
Message-ID: <20191023151133.GD5723@sirena.co.uk>
References: <1571834322-1121-1-git-send-email-luhua.xu@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <1571834322-1121-1-git-send-email-luhua.xu@mediatek.com>
X-Cookie: MMM-MM!!  So THIS is BIO-NEBULATION!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_081135_933531_0D2B6585 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6719749626021390619=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6719749626021390619==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KdquIMZPjGJQvRdI"
Content-Disposition: inline


--KdquIMZPjGJQvRdI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 23, 2019 at 08:38:41AM -0400, Luhua Xu wrote:
> This patch add power control when set spi cs to fix register
> access violation.

Please don't send cover letters for single patches, if there is anything
that needs saying put it in the changelog of the patch or after the ---
if it's administrative stuff.  This reduces mail volume and ensures that=20
any important information is recorded in the changelog rather than being
lost.=20

--KdquIMZPjGJQvRdI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2wbaQACgkQJNaLcl1U
h9AZ8wf/YsPE4g2DB7vKBwqbkxq/ALWspomqahnmYRS1ybVmFae84b4Y3Xzplke5
VU7AJlcmslaIf2Js7txBb4HlATcKiqZlF0TsqOiIsw2Q4/rS0hJBFZ6DLVuLrwwz
dtvRrTurDuYVBo5Empbka7kYAgowqqZxwcqWVAPXHcx6C2wbdOO7VmQmxsMD/VvX
qWJ2DgEFIps2ZKsofdbLOK+iVaQFVcsT3mo/X/TfFz7zWB0GEglAXVUixrD8iqRZ
LRok6FnVsK+vVRasKGCp9c9Thjb3+DPfx64ONurPnRphX6RkYHSb4EgTlecjgOVj
+g+CiFeIDbyPWJaII6qEnmOs/OwejA==
=MGjC
-----END PGP SIGNATURE-----

--KdquIMZPjGJQvRdI--


--===============6719749626021390619==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6719749626021390619==--

