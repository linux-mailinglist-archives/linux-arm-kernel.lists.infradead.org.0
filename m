Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB01CFE0A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 17:47:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kGI59GJjikCIPvaqoi/kHHZ7A0MAX1fiRs1Dbxu4A04=; b=e7PrgKXrNACex2/YWLuSj76xa
	rGYgDBIIvjqRHUgsXtJkztE4ziUfmj68hyH1oSe9hvhog6ToE6vMxgX6fPfFfunXmdEgY0hHAqEvs
	N1cYPTOtUCS/qsIg4cRmRHKNEWXaoTUScce/go7k4SqF402NsKx4uFqUMJf5CCd8mUs2alWna9AUe
	c7+ympWB5pHhh7103celmDyGiUWYxK4emY4cDRuR8V/+5+R4Vg9jgjj4oa1VwhajQa5YHrIDhlnmF
	Wbq/dPSS86zTfyFZPSGsM/pl11BC4/sQI+oCYYDb25QVa65Z+JeWZgytlc6MfAd6skBO9YdVz+jiq
	SIta6JhMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrhZ-0004q2-4u; Tue, 08 Oct 2019 15:47:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHrhS-0004pV-BB
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:46:59 +0000
Received: from earth.universe (dyndsl-091-096-052-071.ewe-ip-backbone.de
 [91.96.52.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C6C80206BB;
 Tue,  8 Oct 2019 15:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570549617;
 bh=CCKM5NxU0D+08pBgavIwoxggvzm+mkLRmmZcCw9gThg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mMK31W8PTX1H5WWrL8jWlMLAGVFyA6oVsMfyu735fk7Obj0Fh87LFpiCzGG/By9gV
 /xnMpA9iJhSpllQ13Kz5FkqzfKHHeN74qsLmFyfvYm+mZbXE4KGV4pGqTc/9zCYzqn
 99YgAKlITzq7/2Wcsk1F6faw6j2nDHvg2RnO/W3M=
Received: by earth.universe (Postfix, from userid 1000)
 id 4E1413C0CA1; Tue,  8 Oct 2019 17:46:55 +0200 (CEST)
Date: Tue, 8 Oct 2019 17:46:55 +0200
From: Sebastian Reichel <sre@kernel.org>
To: Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCHv8 1/9] dt-bindings: omap: add new binding for PRM instances
Message-ID: <20191008154655.u34wkbqgmelv3aea@earth.universe>
References: <20191008125544.20679-1-t-kristo@ti.com>
 <20191008125544.20679-2-t-kristo@ti.com>
MIME-Version: 1.0
In-Reply-To: <20191008125544.20679-2-t-kristo@ti.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_084658_403686_21F1735B 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, tony@atomide.com, p.zabel@pengutronix.de,
 ssantosh@kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8435942204498745943=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8435942204498745943==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ctyqydaobcxcfjee"
Content-Disposition: inline


--ctyqydaobcxcfjee
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Oct 08, 2019 at 03:55:36PM +0300, Tero Kristo wrote:
> +Example:
> +
> +prm_dsp2: prm@1b00 {
> +	compatible = "ti,omap-prm-inst", "ti,dra7-prm-inst";

Nit: compatible values are sorted the other way around (most
specific first).

-- Sebastian

--ctyqydaobcxcfjee
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl2cr2gACgkQ2O7X88g7
+pqWmxAAnbs6GjNR1+b2puQnzOpb3nsF6NWlckoiR/wBE5/utyC4v95yoB2Jm+sS
c7GlleJA5DmF8E40TuOq3HL/z+dt5P/vWX9egt0um6TtHZ3Z7rMWuwvv5TK+3St8
DF7ktlGqs2KG/E96LMf762P69CK2IccE7GUpY7N+MiFOZFuMJ7e+vUMyetuuSqeT
1r/RxLgyNAbeM5X0l4mN95Tv6A+aeuBr0jpX+N97vsEXUtdJ+5aLrlFX+8zsc/rn
LpexzXPaUDR5RgotC/+l9TxCAXwmHKJtPo0lLSsOWtctaD5MHYH/VkWAMCO3EGx8
YhOTT2ZNnfsR51Nc0mee/LzhrHGVYrnh+V15riJilNypnY+2wIw+B91xbJoMBFx2
PWLdwU+z67Cnc/+R/qaAYFNOQAfji1e+dAR5uAybReYzJGGRx+IOX/CInPuNZEdh
YMbngcINMVVEd3PzdCHUsIUOoXTpoAl0PlLVvLcf9JMxkn+5+SD23Sk+oNEjreVD
39Sb8bmrUG5C8DWBgddKpRE9dSbooLJhdkNApMUDdZwoluEDYeYlH2UDE+j7OkN6
kTZXans1Iq0fkkq/w/V3AQO5Z8aP+FHIIg6j6Jy6zD3C9L7Lw4EdhWFBBPDFpWp/
UGPs6TkWr0rre1fR657a3oKgv3OYwThEf3+bnTvbK7RiVQukc0Q=
=qzjC
-----END PGP SIGNATURE-----

--ctyqydaobcxcfjee--


--===============8435942204498745943==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8435942204498745943==--

