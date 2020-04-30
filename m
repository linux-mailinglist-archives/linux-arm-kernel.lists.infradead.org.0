Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CBE1C03F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 19:36:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EewID2JY8pjryHBzuTONk/Ge6IbDtNQUaASiyYIML+k=; b=H5WxqNDr+KnriELP4Cf5SzaG+
	AoWOUmPOJop30mhNbPA9AYGTSIBzXzl7dU86J1+Zgr8DiJ+l21I0RfnCuGYxnS/fPXjBPSySumC3x
	n0hIjAoZiHXNVx3Y2SNHbt5yOpBUvj2iyJqLqEEs24z/0bzG0Hy6WQmFqi4/5UIPngKyJ1/S8zpHY
	yUgteBT/tAsFaWaLNTCCtp1HFfER4IkTzxP0J4a1jK402BHoYKpwGFgX5iAR4jL9/5BiCD2D/HEtt
	v+sbUqsQzakidY3aaAgsNs+RHUj4Mq0SKf1zwVjUcDQdBkKOCrDoODLwwj/H52uo5q2GSIrFKcFUE
	gvn4wEhjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUD77-0008Ng-OR; Thu, 30 Apr 2020 17:36:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUD6v-0008MN-MU
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 17:36:35 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C5431208C3;
 Thu, 30 Apr 2020 17:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588268193;
 bh=FgIgdy8JoQWNZZDAWaLhFeph4UaKzJrJvl5DI1vRHd8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WvWZPTqXEcEGoyf/PupY420J9zoKymoKO47I8zD55IuGwTW5nFu+opObCAvCQkYCZ
 q7/AAklmmJ8IeUPYUrI7miPR+sgR2LIQasu/zullvR5+cYgj/EeK4Gcuvu+p6T3MlK
 Bz1Apm9w1763ny0xwqqa6lUMU6c/TBXrtVHKOsnY=
Date: Thu, 30 Apr 2020 18:36:30 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 3/3] arm64: insn: Report PAC and BTI instructions as
 NOPs
Message-ID: <20200430173630.GI4633@sirena.org.uk>
References: <20200428172433.48830-1-broonie@kernel.org>
 <20200428172433.48830-4-broonie@kernel.org>
 <20200430160928.GD25258@willie-the-truck>
 <20200430171645.GG4633@sirena.org.uk>
 <20200430172039.GJ25258@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200430172039.GJ25258@willie-the-truck>
X-Cookie: Sign here without admitting guilt.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_103633_753335_65640B1F 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3629949711232687778=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3629949711232687778==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lqaZmxkhekPBfBzr"
Content-Disposition: inline


--lqaZmxkhekPBfBzr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 30, 2020 at 06:20:40PM +0100, Will Deacon wrote:
> On Thu, Apr 30, 2020 at 06:16:45PM +0100, Mark Brown wrote:
> > On Thu, Apr 30, 2020 at 05:09:29PM +0100, Will Deacon wrote:

> > > Are you deliberately omitting XPACLRI? If so, maybe add a comment to say
> > > why, since it looks a bit weird without it.

> > Not deliberately, no - I'm not sure I'd heard of it before and it's one
> > of those cases where the spec doesn't call out the instruction as being
> > in the hint space.

> Hmm, so I only spotted it because of "Decode" pseudocode for HINT on p.929
> of rev F.a of the Arm ARM (the one with the AUTHASP typo).

Ah, I see - that's indeed a useful enumeration of the currently defined
HINTs.  IIRC I wrote this code before I became aware that HINT was
defined as an instruction rather than just being an encoding space!
Thanks for the pointer.

--lqaZmxkhekPBfBzr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6rDJ0ACgkQJNaLcl1U
h9CNcQf/WX8if2+YI8K5K9DvipPZeF8D6Z/F9zc+cDxVaPcTE4K6i3v20LEqr0ER
X6knxzgJxw1WniIfMy3dBUz52/ucNFV2IjB1VXICVtTpDhAmzC2CoQVnRrD0LOZ+
q5Meqwn9dkKGLI+fyhzPd5mk35/YA7HjzaVfQt0NAOmQwTsoueP1sKsHO45BZhsn
UWBRc2EsKey3IAxrFE0AA37AvEoCS6ADChU+UxULq4qAmthnmP59z5hcGEma7+Ii
ol7tpk2euE/4Fu8TAatuyLUHZk83BKD6tFZqGy0Thj3jg7orXwgmzbqSnBOGnDQi
Xs3CAKgNynwwBVQntogVmtyQVsSLCw==
=ocvi
-----END PGP SIGNATURE-----

--lqaZmxkhekPBfBzr--


--===============3629949711232687778==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3629949711232687778==--

