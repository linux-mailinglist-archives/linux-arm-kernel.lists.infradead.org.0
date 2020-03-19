Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E889B18B99E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 15:42:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bTocvaRI0bSLysFeNrSG8u7Y8PTgXJb53wNkowRaFi0=; b=YQx0lDnvPP5Zveb57BCqrgTP+
	6UIiaqxXsWAEl3nqNIl341qKDdg6aMOBNFZObOSNTjs/kXhzd2Q+3qVLrCyF9ayAKGsSfeNuRso7l
	BAnPDMJSmRpGHwAPNoJmoQ12NT3sWqYtjm/mlG7A+MmBDBbBW6F45tjcABcXYffkpFkix2LHtJbvd
	BEtEx47LFw0DnPJMRNSVpRKztS715TWDlxehsgvb6XuJph/IkNHOtaoAx3iPOE41UAABNGJT+GR6g
	IpoNBTnBBDeZ1qmqphqgcOr2tQctnvw49a8UCsx49Vs0+LLUpRy8/2Tv5TXTY+gWZwvqsHQsPOhAH
	ki7yA9new==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEwMr-00060R-7d; Thu, 19 Mar 2020 14:41:53 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEwMe-0005zm-0U
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 14:41:41 +0000
Received: by mail-wm1-x341.google.com with SMTP id f7so2579303wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 07:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=UnzFvog/ZZHuYATA7oC6JDKAefk/FCpxOezZvEwjAdU=;
 b=tu4TuftGlwZKz+Qtl4lhdHpEuOO6VhSRIq2xiOD8bw6cQqbxgiv13q1PY//tDgnjcA
 F1LhfGl4MwLkfc5wrwa4LL1BFpDjHA7PLco//1x28cpRWV+l2kip8mgiMYaxSoC0nLFU
 +NAfU97ch+GQCldaY1+wcFSciIz/rJhBkhkOBYLyNypmET3/a5paT2jFOTT8jzWqmX7w
 7wIVi7QZFAGmz5zj+/mtYW7ajs9k6MsPk/RIhC3r3AN9EMLv2Itcw503vJ2JFJCrPX/e
 OVUCMVCDl8dAL/Oqz7hxrRCOTy/7eq5xxnUPr78IjBTlwaDNy2UTVhtYAPt71tkvkQnY
 ELbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UnzFvog/ZZHuYATA7oC6JDKAefk/FCpxOezZvEwjAdU=;
 b=mzX9xcDGE3Gcw6QMoP42sRCC21hh18YiiAetGUPbvNbcoOmt61n96eTgVFySyqAYnR
 /RP+qsfAUs+rvRa8TuNOOW8kOwzH128q74iiW80kEfberTpmDYBvUSJv9SpQroS9fDl6
 G2geyDqypmwD+rPHB2L468LujL300tr4V9boIGlxNYIbsiSvccI45jZG8hUqHNUoSgI0
 U9BOA+gPePLmJm5MqE7HjSJ6zDpP1su5/Q4ilOjeME3ipiSylUWSDmCRlR7OGNoLOyRW
 FMjTLK/qm2NFchLrdf01qoJE/zEk9nMpfpg9k64aOT9jHYCwd2zR/fCktzmLAN93Eohw
 JthA==
X-Gm-Message-State: ANhLgQ1kRKS3prNEQqAa38r9jiuffcfDVQi2JnhebBPMz2rmHPEPeb/x
 qgHnPz49HIVkTKsT8CH37Bk=
X-Google-Smtp-Source: ADFU+vvygh4kwm3N8tRWNNbFM700F+qp0H9Eyg7Gm0xuYPyb6QNswXk1TsnIOXUj53YSuNIwwVVdXQ==
X-Received: by 2002:a7b:c082:: with SMTP id r2mr4375609wmh.177.1584628897613; 
 Thu, 19 Mar 2020 07:41:37 -0700 (PDT)
Received: from localhost (pD9E51CDC.dip0.t-ipconnect.de. [217.229.28.220])
 by smtp.gmail.com with ESMTPSA id s1sm3787541wrp.41.2020.03.19.07.41.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 07:41:36 -0700 (PDT)
Date: Thu, 19 Mar 2020 15:41:35 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org, soc@kernel.org
Subject: Re: [GIT PULL 10/10] phy: tegra: Changes for v5.7-rc1
Message-ID: <20200319144135.GA3266151@ulmo>
References: <20200313165848.2915133-1-thierry.reding@gmail.com>
 <20200313165848.2915133-10-thierry.reding@gmail.com>
 <20200316134850.GB3825456@ulmo>
MIME-Version: 1.0
In-Reply-To: <20200316134850.GB3825456@ulmo>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_074140_058875_D3F8119D 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: multipart/mixed; boundary="===============0967632776862230740=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0967632776862230740==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bp/iNruPH9dso1Pn"
Content-Disposition: inline


--bp/iNruPH9dso1Pn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 16, 2020 at 02:48:50PM +0100, Thierry Reding wrote:
> On Fri, Mar 13, 2020 at 05:58:48PM +0100, Thierry Reding wrote:
> > Hi ARM SoC maintainers,
> >=20
> > The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea098=
62b9:
> >=20
> >   Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)
> >=20
> > are available in the Git repository at:
> >=20
> >   git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/te=
gra-for-5.7-phy
> >=20
> > for you to fetch changes up to 04c929223d1db6ad4ba8e4c23122e1052f670c2e:
> >=20
> >   phy: tegra: xusb: Don't warn on probe defer (2020-03-13 09:17:50 +010=
0)
> >=20
> > This is a dependency for the USB changes that are also part of this
> > series of pull requests, so it was deemed easier to take this all
> > through the ARM SoC tree. The patches have all been acked by Kishon.
>=20
> Please don't merge this just yet. Stephen reported today that this was
> breaking the build in linux-next because of a conflict with the USB
> tree. I'll rebase this on top of Greg's usb-next branch and resend the
> pull request.
>=20
> Sorry for the inconvenience.

I've pushed an updated version of this as tegra-for-5.7-phy-v2. However,
it's also included as a dependency in a USB branch for which I've sent a
PR to Greg, so I don't think you'll need to merge this after all.

Thierry

--bp/iNruPH9dso1Pn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl5zhJ8ACgkQ3SOs138+
s6GhORAAjNlN+ZLW5SU5O91T0zeQguAXCuV2DegEYBPX2Bi4ASL1voQ77Yx1LQ7j
xIlWW9JPRfeKw8jwS9gF3VihEoTEnFe4S5XzM/Ozsn5h3v2gO+TPu/dvswa0X3AV
H/Wq5YWGMLnKDJVGi1T7rnfRHgIfw5iMwhE+0cEdCwVhPFqcfJbToF9Fi9ff33qp
y6sE2mbv/RuME62u+vNoNo9oJMva0sXo5FyJOzRD3yd2YkvCOmeVJsqlhPeJt5qH
cslbI+ExBZhTZGnGbePA8AqzRZxXEq/c4ddwN4cnW5BEpzCD8o9hfngQW2A20EpH
kzOpgZheF3SnHqOpmvMiola/5cAd6mXgVdgFkWnwDnBgPqYk9mttnL+IOLwSJCsA
W8hu2bZkw8bnstp5X7UaBZY3G8QaWToyhl+JDMD4LZcxyybQflhYIoFoFtoyWPeE
74CLBAU+VfKl/HNQqvbWsNAMss76ldwP1HKXtau552hpYY51mQrZlahUaKRMTrM1
YXNKSgbjBr7YleiMa621DKgxda7Kq/qTBYLevK6V4QBXTvLrZAH7giCOrg0P/qpW
5Cx2SOuKCaLLYz6mCOXJK1voyeIraOlvuDRClE4VpZAbOY5cqDemCBob/+L3Y6NU
xuh+YKkPNi3fel3tAMyjvsJLzYaGFev5z5Sr4jA50+HejLHZtiY=
=GYTf
-----END PGP SIGNATURE-----

--bp/iNruPH9dso1Pn--


--===============0967632776862230740==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0967632776862230740==--

