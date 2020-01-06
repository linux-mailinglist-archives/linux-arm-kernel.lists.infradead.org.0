Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0208B130F28
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 10:04:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O9zkAuZOLmks0J7q9m5G6ZzEQT29nWClCUfoDJkdpv4=; b=IvmSEdZDcYwtZrG7X/YgqZ0U+
	xp/zXDKSI4fJi+w/N1RCPO4RNVuhKH3fhVc63/Q85JfcOvjk0KYwQwn1mv5ELgSZ2as8awhHzUijp
	/JyvtY3sGHCfi1DBLkvJ0lBEMZJ4LB9up92pjEbqPtqhMm9qFLKA20pWEO3LFiHuXNc4VXf+e0rBd
	h0cdZjPlrQPRf+R+zThRRYqNYRu05bqn0CQVlqhVyzG/DlC+E7BPT1jTMxGrioTgb7ufIRRIaQpzk
	ZtFkBbyj8gMMYWEu2Df1S0zMwLqpDaJBJfFdPW4/l5CqK8KxFehfwofqZr3b9h8VBzdFMXQOAvco+
	fakuoDdEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioOJB-0004nC-Gi; Mon, 06 Jan 2020 09:04:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioOJ4-0004mT-96
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 09:04:15 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7DAA320848;
 Mon,  6 Jan 2020 09:04:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578301454;
 bh=2T/IcjbkOHO/nbGiktbih+oHmImSaEhme8PH3bc9v8Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RUllN6QNxoHcL8Cko5cs4rKDUfBh/YoFXNgjsBdaFLjVdCxObwFVN9jvjFfKa/dBt
 u6lTWHglQil3QW8a4vASyONSrILmvmCSDeL/QSYrEvKNDe5h8nm3Flb82YHAks7Fzb
 qtLlNhW30qVIdnc3Ik6xwK70jZ0tM7YsahduBerQ=
Date: Mon, 6 Jan 2020 10:04:11 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH] ARM: dts: sunxi: Use macros for references to CCU clocks
Message-ID: <20200106090411.hw4udmcnib6nqk7w@gilmour.lan>
References: <20200106085933.9102-1-wens@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200106085933.9102-1-wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_010414_334999_E68F68DE 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2010174429440780356=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2010174429440780356==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sc3mdfowvd7zmesw"
Content-Disposition: inline


--sc3mdfowvd7zmesw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 06, 2020 at 04:59:33PM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
>
> A few clocks from the CCU were exported later, and references to them in
> the device tree were using raw numbers.
>
> Now that the DT binding header changes are in as well, switch to the
> macros for more clarity.
>
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Applied, thanks!
Maxime

--sc3mdfowvd7zmesw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhL4CwAKCRDj7w1vZxhR
xZOwAP4n9OEN+HnYL9FmZxQz44MnBDFImasSN5aYsXQVAUR5+AD/QZVKLL8yTKn6
tjghlB4J0hPcflW0X9vDCXzc5YD+zQ0=
=fo7i
-----END PGP SIGNATURE-----

--sc3mdfowvd7zmesw--


--===============2010174429440780356==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2010174429440780356==--

