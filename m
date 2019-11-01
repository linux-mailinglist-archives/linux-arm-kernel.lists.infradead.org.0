Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0CEEC0BE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 10:47:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1p73EZ/3O9tyupEDNQdA9O27JWFjXnomm03AsUWpJLg=; b=bVZu+HxlT/vzXTdSBi67QexrW
	U75KKOdqQDg6rOGW8SYz0CrqqcyM5nJ8X8cXIrtvZGYgSlZc7ovP13MJhmr0gy+rpwfP+/r7Gu0zN
	0ioSfmL11lk6qSvS41HS5Nm7Svu3SLju98Y9UloQk0rzc0bg6eGZxjfSZQe+udvKHcbZm+HBmUCev
	EOPyisaUWYoQJ+54P3HXCJcw20/mXwJDrNA9BFQ02lFcTH0Jp6cjAeGPks4V/l+ULtaO/4Kuv4N3j
	KtS0Sp+9OrHIDnfvged8YEXFOvApPCfD1vZhwciOgI+lvoXPD3WDSIQ8xKU8a7Sxl9z409IHslY4k
	3qJ+YTbiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQTWt-0002fH-J4; Fri, 01 Nov 2019 09:47:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQTWl-0002es-Fg
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 09:47:32 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7B93F20862;
 Fri,  1 Nov 2019 09:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572601651;
 bh=CY/hMjHfyMMX+U7BKi2bH3TFPPXU/+N6UkBkX9i+Ewo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S7FtnlFSbXmfDYtmTaGXcBHmbU02YgBn2F7tB35KASJT29vyBtOADArIDO5z72SWe
 9a2sFMYbs7XcdTRJk8mda2qMXP+3yIy0zDpuMKwbEMO7sw2ztTaAm3nxAU4xR/vyrR
 1krMgQdGgzp0Hos06JZzNzU5F3VGrpGyBf5zuMNk=
Date: Fri, 1 Nov 2019 10:10:50 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Karl Palsson <karlp@tweak.net.au>
Subject: Re: [PATCH 3/3] ARM: dts: sun8i: add FriendlyARM NanoPi Duo2-IoT Box
Message-ID: <20191101091050.iw3n4qiqyueoymif@hendrix>
References: <20191031231216.30903-2-karlp@tweak.net.au>
 <20191031231216.30903-3-karlp@tweak.net.au>
MIME-Version: 1.0
In-Reply-To: <20191031231216.30903-3-karlp@tweak.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_024731_543030_8C42BBCE 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: wens@csie.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4453279257704345952=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4453279257704345952==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hyk2mpjmgefias6x"
Content-Disposition: inline


--hyk2mpjmgefias6x
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 31, 2019 at 11:12:16PM +0000, Karl Palsson wrote:
> The IoT-Box is a dock for the NanoPi Duo2, adding two USB host ports, a
> 10/100 ethernet port, a variety of pin headers for i2c and uarts, and a
> quad band 2G GSM module, a SIM800C.
>
> Full documentation and schematics available from vendor:
> http://wiki.friendlyarm.com/wiki/index.php/NanoPi_Duo2_IoT-Box
>
> Signed-off-by: Karl Palsson <karlp@tweak.net.au>

It seems like it's something that can be connected / disconnected at
will?

If so, then it should be an overlay, not a full blown DTS.

Maxime

--hyk2mpjmgefias6x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXbv2mgAKCRDj7w1vZxhR
xTIaAP4pb+9RwvqXKqIc2E6Dpb3WFADpapl+AWFeMQpFWV27RgEAzsIeguDEm+wg
FPaKYna7zMELFqKZbFp9C2uGOBo5hwk=
=ia8F
-----END PGP SIGNATURE-----

--hyk2mpjmgefias6x--


--===============4453279257704345952==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4453279257704345952==--

