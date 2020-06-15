Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A708B1F9CFB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 18:19:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=loCoMgS21oiLXBOM4XSdA33xOMt3FA+8hGf8OXSAWfA=; b=ljQFLa0hQK7dTtu0ZUkQhUVcY
	kear1QalTDiM4vpcnoF5AW0m8IuylgULZjZS5F7935ZAg7rjEAHJQmwaef6EG7lFAYcKsV7d2e2SF
	n9QcDmGHqLE7+hspI/4vkuwLvcOedWiU3rMJotn7O5qwDTcqFgJcLcJHOTog1l/4ZiC98RKnLdc4U
	H93WFvECuEj/44rK211x7QJJFxmpiwwPULFAad75xZCnGGjqj42EBKi0uPcRSZkh9R7mqdxhb5VsW
	H3qUGfqS6S56gO5smaqmaGUE1wjD9ymqnthlSq69I8U8ztpIyhjCCqt8gN781j/0uc+ojx60jRRqT
	RoMA+UzWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkrpZ-0001nW-L3; Mon, 15 Jun 2020 16:19:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkrpP-0001n9-Jk
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 16:19:21 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ADB4720663;
 Mon, 15 Jun 2020 16:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592237959;
 bh=od4BWoT2AZvudz8BOMlHnTCfTgqCL9VXmJL0tTs8jT8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bNIicySjNgGDyLtXXbIxEO30A4ptoX+uyA+gd4asfxL+tD3LnyyFiMLhBj9BT1U++
 hBY38nIhKQodP1ZYEMLhGxFgycns+vVHzLwr0bZ08Z1HjfCal5XelSGDeouZ1SWxyu
 fHQC73Ujk+MSz5XOx9i1eDWZbTbR8OoX9ba6AUKY=
Date: Mon, 15 Jun 2020 17:19:16 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: pgtable: Clear the GP bit for non-executable
 kernel pages
Message-ID: <20200615161916.GZ4447@sirena.org.uk>
References: <20200615154642.3579-1-will@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200615154642.3579-1-will@kernel.org>
X-Cookie: Offer may end without notice.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_091919_667322_7E7647D2 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4882724648159840655=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4882724648159840655==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oRWDw5wXQ3uCJU7V"
Content-Disposition: inline


--oRWDw5wXQ3uCJU7V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 15, 2020 at 04:46:42PM +0100, Will Deacon wrote:
> Commit cca98e9f8b5e ("mm: enforce that vmap can't map pages executable")
> introduced 'pgprot_nx(prot)' for arm64 but colliding silently with the
> BTI support during the merge window, which endeavours to clear the GP
> bit for non-executable kernel mappings in set_memory_nx().

Reviewed-by: Mark Brown <broonie@kernel.org>

--oRWDw5wXQ3uCJU7V
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7nn4MACgkQJNaLcl1U
h9AioAf+N1wpA+HW/6J/Cj+H8dZ5oQ0llRjQl9mkUo4uESC2Wn8A2Hs3zLHPSUzx
Njje0CIMZcoorJSp+zPETj/vP+GFFI5rHE46qhIAAnoi00jC2/t9YKC5owJmZ5tm
bIggY0q/NxjBYfXMEG1dx3jcKzLrFFoqmBPMQqOMPic6YHr+SAkzNeDdXZW7cVHq
Iu34RKgkTSxP3TUcQMJ9yJF27vG0nzZJir4qrHwf4XCJktS/VISG1mcHeL2+udd9
X7+L6In5ibiPqKSDHgV2MeKGQRzHldPr3DlAFpkBGJAeftcY+ZRfjjZWiTGN0fCm
QdP5wbgzW3dIIN6MEritsT9VQ+ZWDA==
=GfGX
-----END PGP SIGNATURE-----

--oRWDw5wXQ3uCJU7V--


--===============4882724648159840655==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4882724648159840655==--

