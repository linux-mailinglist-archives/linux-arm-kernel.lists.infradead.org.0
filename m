Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C0BFC7CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 14:35:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=opaRQm7kYE/HnKg3GiZCUyeCfEY1FQcgnuinKgct2cE=; b=iMFwYoNJF9qbla3lmUXK88VSe
	eThSUuDAEuGvFvYUAMteBGwkaZKRKChkbJomsjK50L2bRx02clZrzNI33ZmUHeoflROiV2MbJinzt
	dEqVf0pPRg3KKDFLVRtJE5thpSc9/Qis/8uFZSNlYSfNy3/xo7qMtSuc4tlxszlZFk5s15LyTqBMp
	3UqD1FWZF8F2nWs1P1++ZGwz1EbLJxn+eo3+sQn3ZmiRgu9pt5OEyE/+7bC9CCrUkCt4hwBQfOM/b
	VwXnQbJTgLrTf+zfdhpz1CVg/y34sIhUxZVm2DNLA/Dw+uJ6O43ta4SnSm4Oa6bl/8wQ0GrPqmP5v
	Y8oggzfZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVFH0-0004ge-JD; Thu, 14 Nov 2019 13:34:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVFGt-0004gI-5t
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 13:34:52 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5086A205C9;
 Thu, 14 Nov 2019 13:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573738490;
 bh=EEAEkmDoKweu4dlBhfeLxwV4julud9PO90e3uHqc6M0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ffl006Z/xsCHagAVS+I1wxczbjfoYgCJXW4GwKvPuauKjkuWcRbG1rebWF1jEGMR9
 iipPOzqv0aghhsrBcDzaFTgbeat5xyOREu5fWWCvcHGR0VuA8PH0uKyvjaiO/v9Fst
 7Iyc55O2Akz+lU5jD6IxlRA3yLcfn0QIy/AB/COo=
Date: Thu, 14 Nov 2019 14:34:48 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Georgii Staroselskii <georgii.staroselskii@emlid.com>
Subject: Re: [PATCH v2 0/3] Neutis N5H3 support
Message-ID: <20191114133448.GQ4345@gilmour.lan>
References: <1573575320-29546-1-git-send-email-georgii.staroselskii@emlid.com>
MIME-Version: 1.0
In-Reply-To: <1573575320-29546-1-git-send-email-georgii.staroselskii@emlid.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_053451_237076_84459413 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7895748735695775060=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7895748735695775060==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="YzDq+9le76OY47R0"
Content-Disposition: inline


--YzDq+9le76OY47R0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Nov 12, 2019 at 07:15:17PM +0300, Georgii Staroselskii wrote:
> Emlid Neutis board has another variant with H3 instead of H5. This patchset
> adds support for this board by moving common bits to
> sunxi-h3-h5-emlid-neutis.dtsi and then including it in processor-specific DTS.
>
> Changes from V1:
>
> - moved HDMI nodes from DTSI to DTS
> - added dt-bindings for Neutis N5H3
> - made use of an array of pins in gpio-regulator node

Queued for 5.6, thanks!
Maxime

--YzDq+9le76OY47R0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXc1X+AAKCRDj7w1vZxhR
xS+XAQCL2lsF/qkt6GxF6S1LEmFaJQ9MQn0IlH9HMfVsp1eBxAEAq/C8sR5q93Cd
DILZUP/reTHOaQcMkXJMngOK+dQIvAc=
=cGLZ
-----END PGP SIGNATURE-----

--YzDq+9le76OY47R0--


--===============7895748735695775060==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7895748735695775060==--

