Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF52D979A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 18:39:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z7Rph3wF5DTMRLbBqC/SkJnfb5ocd39uxRcKzW4/s6w=; b=NkZ7EjiSXMotBqv3y45FHSvZv
	5oYmVLBbCyTRARy80t5MnhVP7muzSvxtb5+sQwKx3aAEiFFIfss1D5ea46g176jGC/mbKd/YMbhU0
	nkJVzlVzqg99PFZ1rdxXjeHMDtr+YRr1hsgsZ6K+exv4jHY7oitNEgZzHDVsaIdy+ce39/iT1IMHO
	k8jfnYN8tdhvZQoTL9IF2Hok3ty+2RZcxVUnVEW390CqUD2k4CGOx0sw0nerPlnfF4Qo+iOsKrRV6
	nHHSUv8d+MvwWTvFPjMO2Ae/12N0zKdlQkuHNMCsUDS5e+xKcs+PTu3bs2QQ1X3xZ6480yyvvuDcG
	EOg8s7buA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKmKA-0005JB-Ut; Wed, 16 Oct 2019 16:38:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKmK2-0005IB-6x; Wed, 16 Oct 2019 16:38:51 +0000
Received: from localhost.localdomain (nat-pool-mxp-t.redhat.com
 [149.6.153.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A93DA2168B;
 Wed, 16 Oct 2019 16:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571243929;
 bh=2EbE5nCvBEahpTJRgdzbU+ZqH1XFFPH0hQubllFojTw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oDkqPdDvSSDhHSvsl5C23d7W91uPZeZBaVZReevBDWbOtujC1uix3thzYza0xijWz
 1tsGgY9xtWIMSDkx7gZx3+XmQ5nkQ9A4MJy9jgBY4rpjeA/Culjl+yoKiI06S8l56F
 iLbFPusGl+0jbxjImLSBDPwuaQh1cmAubSPvgAoc=
Date: Wed, 16 Oct 2019 18:38:42 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Oleksandr Natalenko <oleksandr@natalenko.name>
Subject: Re: mt76x2e hardware restart
Message-ID: <20191016163842.GA18799@localhost.localdomain>
References: <deaafa7a3e9ea2111ebb5106430849c6@natalenko.name>
 <c6d621759c190f7810d898765115f3b4@natalenko.name>
 <9d581001e2e6cece418329842b2b0959@natalenko.name>
 <20191012165028.GA8739@lore-desk-wlan.lan>
 <f7695bc79d40bbc96744a639b1243027@natalenko.name>
 <96f43a2103a9f2be152c53f867f5805c@natalenko.name>
MIME-Version: 1.0
In-Reply-To: <96f43a2103a9f2be152c53f867f5805c@natalenko.name>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_093850_293173_42CE38DC 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, Stanislaw Gruszka <sgruszka@redhat.com>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Roy Luo <royluo@google.com>, Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: multipart/mixed; boundary="===============7629915790322143803=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7629915790322143803==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mP3DRpeJDSE+ciuQ"
Content-Disposition: inline


--mP3DRpeJDSE+ciuQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Hello.
>=20
> On 15.10.2019 18:52, Oleksandr Natalenko wrote:
> > Thanks for the answer and the IRC discussion. As agreed I've applied
> > [1] and [2], and have just swapped the card to try it again. So far,
> > it works fine in 5 GHz band in 802.11ac mode as an AP.
> >=20
> > I'll give it more load with my phone over evening, and we can discuss
> > what to do next (if needed) tomorrow again. Or feel free to drop me an
> > email today.
> >=20
> > Thanks for your efforts.
> >=20
> > [1]
> > https://github.com/LorenzoBianconi/wireless-drivers-next/commit/cf3436c=
42a297967235a9c9778620c585100529e.patch
> > [2]
> > https://github.com/LorenzoBianconi/wireless-drivers-next/commit/aad256e=
b62620f9646d39c1aa69234f50c89eed8.patch
>=20
> As agreed, here are iperf3 results, AP to STA distance is 2 meters.
>=20
> Client sends, TCP:
>=20
> [ ID] Interval           Transfer     Bitrate         Retr
> [  5]   0.00-10.00  sec  70.4 MBytes  59.0 Mbits/sec  3800
> sender
> [  5]   0.00-10.03  sec  70.0 MBytes  58.6 Mbits/sec
> receiver
>=20
> Client receives, TCP:
>=20
> [ ID] Interval           Transfer     Bitrate         Retr
> [  5]   0.00-10.06  sec   196 MBytes   163 Mbits/sec  3081
> sender
> [  5]   0.00-10.01  sec   191 MBytes   160 Mbits/sec
> receiver
>=20
> Client sends, UDP, 128 streams:
>=20
> [ ID] Interval           Transfer     Bitrate         Jitter    Lost/Total
> Datagrams
> [SUM]   0.00-10.00  sec   160 MBytes   134 Mbits/sec  0.000 ms  0/115894
> (0%)  sender
> [SUM]   0.00-10.01  sec   160 MBytes   134 Mbits/sec  0.347 ms  0/115892
> (0%)  receiver
>=20
> Client receives, UDP, 128 streams:
>=20
> [ ID] Interval           Transfer     Bitrate         Jitter    Lost/Total
> Datagrams
> [SUM]   0.00-10.01  sec   119 MBytes  99.4 Mbits/sec  0.000 ms  0/85888 (=
0%)
> sender
> [SUM]   0.00-10.00  sec   119 MBytes  99.5 Mbits/sec  0.877 ms  0/85888 (=
0%)
> receiver
>=20
> Given the HW is not the most powerful, the key point here is that nothing
> crashed after doing these tests.

Hi Oleksandr,

thx a lot for testing these 2 patches. Now we need to understand why the ch=
ip
hangs if we enable scatter gather dma transfer on x86 while it is working f=
ine
on multiple mips/arm devices (patch 2/2 just disable it for debugging).

Regards,
Lorenzo

>=20
> --=20
>   Oleksandr Natalenko (post-factum)

--mP3DRpeJDSE+ciuQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCXadHkAAKCRA6cBh0uS2t
rJ1WAP9tpX4oSA7UhRs0gQT0nQOQJ1ONxMOdUZiEXY1VQ8+BngD+KS/CMITu8+px
nJSFzOS5A5KbCSWMJoLBxp4D4TebrgQ=
=JdPS
-----END PGP SIGNATURE-----

--mP3DRpeJDSE+ciuQ--


--===============7629915790322143803==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7629915790322143803==--

