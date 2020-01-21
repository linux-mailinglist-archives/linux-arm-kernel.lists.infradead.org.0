Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 188241437E4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 08:51:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jonPpyJXdUWAceh6ceKMJUM3Ws7qz8uGCKBOB0hF3aw=; b=JX6z0WdiHcjpsAoNFeXNHXsSQ
	2NU1oKhID8H6x9V1jRUkaEub39ZMZNnJFsgJERVk1nKgm1IBdYZUn+nGh97tdIgB+UPaF57N5G0iw
	bfFA+1R83ISpS+fB7KkyR24U/5Aljr1Ak+19k7B85bFu6xx+a3dqFQ31Y7zW4PXDFIX2iV5J/wEie
	q7nrjgEnSagN9SAR5bxEFhV96t+MSOUn3w13lVfcDDP8lIWPpKgnGeNAtyWHTXS3d3XGslZJATliR
	lSXMpmaXji5OcM5JLRh3seEyr22bYwqd53C7ObD+47bW6FgPhNBj7dOTpp3c9Hx4yJGJkosA0e+Pw
	setWgKAEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itoK8-00080p-P9; Tue, 21 Jan 2020 07:51:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itoJv-00080R-SB
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 07:51:37 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CB67922522;
 Tue, 21 Jan 2020 07:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579593090;
 bh=UuV04X7CWCeveemrZWn4Q2xx7+fZrX0Gok0WxIC/+yQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yNN/5nWl0vux7EqsjQnKj8pvEo4J/QG8fV5yRgFt+Iys7CKaAT/M+mHhE9J8aN4Vy
 M6Q3eXJQOAGDiUg46ffZbcx9OssmAzeG0UyZZ62ypVCDMtBbqZZs79H7aJVmHsGiXA
 WhhvkP6rZ4DzoPXOUVm6ocGRYavshSQ5UDyAOmZQ=
Date: Tue, 21 Jan 2020 08:51:27 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [GIT PULL] Allwinner Device Tree Changes for 5.6 - second attempt
Message-ID: <20200121075127.r4mlnv4avcx5ona2@gilmour.lan>
References: <20200113095555.GA29848@wens.csie.org>
MIME-Version: 1.0
In-Reply-To: <20200113095555.GA29848@wens.csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_235131_932262_9476DA98 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: soc@kernel.org, arm@kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7292317587263594104=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7292317587263594104==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2h2vui5rfdlhfggp"
Content-Disposition: inline


--2h2vui5rfdlhfggp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Arnd, Olof,

On Mon, Jan 13, 2020 at 05:55:55PM +0800, Chen-Yu Tsai wrote:
> This is a fixed up tag for Allwinner DT changes for 5.6.
>
> The new macro in arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi has been
> replaced with the macro's raw number. The tag has been directly compile
> tested.
>
> Please pull.

Any news on that PR?

Thanks!
Maxime

--2h2vui5rfdlhfggp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXiateQAKCRDj7w1vZxhR
xQnOAQDRuO2nac8dD9YJTo7HTb+nw1Xe+4Z2lAc1+RQ0gH9erAEAiYN51H2Yk5yB
tMFU8w7q7a0FMvMhwS0aresuiBymQQs=
=S0fa
-----END PGP SIGNATURE-----

--2h2vui5rfdlhfggp--


--===============7292317587263594104==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7292317587263594104==--

