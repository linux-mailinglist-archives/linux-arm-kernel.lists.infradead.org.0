Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4F61D9CC8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 18:33:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XC4RiaDmTIv+B8utT9dnMEQ9M5l6dccAgm7/lLK97Dk=; b=pOKa9zrDTVxqpfexBSu+XTyDd
	XZ6ei6dyV7Z/hS98v8akH8NsNiArsJl7XSyCs4aTV+R+ReFJn3BS+92+faKp6ofPBovy8Qr397xlE
	e64uXLvMSk32ynbo2cLncEvU+055MtQ85fsZpiHEo9fcwpT7AAKJiIZvz0xIBUaqMMZJIynV1TC+5
	+dYLFX4pMBMxMgLdyGaKtgWw08XYgmcYwHKBhA3pQ58H//K3LKNY0i0Xs3YIOpUtCJS2bbgxPeMZX
	ouB7583hrCv79/QhqFYKiD7B1cnmir3QqTh52goaEXnWFPkpLnuEytkDLJZTCHzNsItDJ688TOkjn
	Hry1Lsuig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb5BB-0001Jq-61; Tue, 19 May 2020 16:33:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb5B1-0001J2-3H
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 16:33:12 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3B713207D3;
 Tue, 19 May 2020 16:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589905990;
 bh=XAMymEm3THX97rEIALBfRMY2q3FeH5c0z+r6c7uPV9U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=M8WNTTko2PIZEnxJE20+K3aXp11x9/uLG3IuAm8kO76Amn9OLMuOWEGiPC0b1bMe1
 Y3BbyQOXVhlrQAm+iAlXCGn6sjm7kAhNBlg03yL7QPUbl3qnf+EE/BNXWuExXr3NuU
 RAAmxnNd4muc1/d5+9Sp9q1qwW5argYTUNNWrGk0=
Date: Tue, 19 May 2020 17:33:08 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 1/2] arm64: vdso: Don't prefix sigreturn trampoline
 with a BTI C instruction
Message-ID: <20200519163308.GP4611@sirena.org.uk>
References: <20200519162821.16857-1-will@kernel.org>
 <20200519162821.16857-2-will@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200519162821.16857-2-will@kernel.org>
X-Cookie: Do not write below this line.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_093311_164004_F7E7C082 
X-CRM114-Status: UNSURE (   9.40  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>, kernel-team@android.com,
 Dave Martin <dave.martin@arm.com>, linux-arm-kernel@lists.infradead.org,
 Daniel Kiss <daniel.kiss@arm.com>
Content-Type: multipart/mixed; boundary="===============1036055679569728925=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1036055679569728925==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aMDdG8xNveJz2ruI"
Content-Disposition: inline


--aMDdG8xNveJz2ruI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 19, 2020 at 05:28:20PM +0100, Will Deacon wrote:
> For better or worse, GDB relies on the exact instruction sequence in the
> VDSO sigreturn trampoline in order to unwind from signals correctly.
> Commit c91db232da48 ("arm64: vdso: Convert to modern assembler annotations")
> unfortunately added a BTI C instruction to the start of __kernel_rt_sigreturn,
> which breaks this check. Thankfully, it's also not required, since the
> trampoline is called from a RET instruction when returning from the signal
> handler

Reviwed-by: Mark Brown <broonie@kernel.org>

--aMDdG8xNveJz2ruI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7ECkMACgkQJNaLcl1U
h9DncAf+Lv7ne7DYBjEWUIyXBwewBejRtjgayc0Bsifl6Meb9fHdi0QwzqPsWINN
LrPvxDtf+EDHsoocs1VzvzsPZn+aRqCSqE/i5fF5seZz9TS9MjIgGSnHA4M5gmqB
QwjycxK72Zw9wBvmxon0Q6Q2NWM6viIvuyn0NgZUIcoti6giimxTHXeM/oaqhOw2
oyw9Lsbl5v+Ug0lXDY3X9WzjA7CHW2z8vMfSKdDKuniCWYf4c6d0QBK2y/0YSmSZ
av5homD0Aixc7sSVG++wm5LUvuX+wFEK03wVWa3WkzJmKalsD6Hk7zYLT3aTYV1E
DZkrRTPPGo/Kd6c/8FQVMEN0WsGErA==
=THaO
-----END PGP SIGNATURE-----

--aMDdG8xNveJz2ruI--


--===============1036055679569728925==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1036055679569728925==--

