Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B172186C72
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 14:49:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sZhEHP1voz+infOy+k+Eh7BB+ULdAiYxuLle9r2FtH4=; b=m8NTTwtKvM4dVbeUYLdYj1ogj
	+tBB9SlCk8aEr3CgPkQJ1lHM5kJHXuPz9R7PvbbStJS0O4PF6VDZs8lctls5GawfiQxvUACZuWnt4
	piaEMM/XapdHa+6QAfJToy3cYEKdoKL4a4EFPFAfDE8W3CGZYKut4rCfUXCV5h+8bXI162JjWIbdY
	YF90dEgfWnogNDFQFaeC5lBfVoMObDEpHN6wEK42wNltznTE94GRaWBtG9vJCKzCFdcb2JlXsL+F4
	1+RckdtgtO17NRIiMaDBtfO2+g4BJiDHEXbxSfZ2XmvivtbeXZOkLWW0umCVh58N+PcfcufEVD31w
	QKVQxdAtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDq77-0004Wl-KE; Mon, 16 Mar 2020 13:49:05 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDq6x-0004W2-Cr
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 13:48:56 +0000
Received: by mail-wm1-x344.google.com with SMTP id 25so17747382wmk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 06:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mNuIcFRvWWtU/PuZPk0eD/H/O7lw1rT0jNE2PsQxCJg=;
 b=KZS+lz7lt+gfG4h51laMCdrXX4I/DCdT5/1wyMqLScK+zmyJDrL/+Fzm5Jffkbg0Dp
 qSzz1oDec37Xt5+FDONCcX21nC3F1qYnfNw4yr5KLwJb1MvjUIYR/UzZXW74m/in0+R/
 axlkYhFUDb8HlGXZTb6wnRO3zHQLa8IAaTrvpFIUnLCTRLulA4YZSj8YUqPMY2m77Gik
 wWa+Pp1OEz61k2hNO+LFOLdA1jWiOys3Y8DLlSPx25zsqXoTd9+Qsk35e5N4lZLGUy1v
 IaGlOXcq0+/7PK/RLHG7uxk4rKFjsSA+ETIh+gkVj0nAjNhuZhkiiYuxc6VH9YumSAfA
 19pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mNuIcFRvWWtU/PuZPk0eD/H/O7lw1rT0jNE2PsQxCJg=;
 b=WOvJirMdO3yVtddKVVmKETAF4uzlqDaBeFNW5Pcmp4v/v2f4OK3k14+jjnxQhInZJv
 gsQX9l0YOSa0rWX5+Ff+hOkqv8CP1eFGTUrk2Fs3Mdam2nW0F90ZqphzmhMEmbhaYGWR
 +w6CzanjavNiKqlXOkc2GHshLqxjiveDfhpSv1AXWPZzyup80JL3q1+Mq/IBIX7w6HUA
 szgQrs9wW+nTL3Dmknydh+uZpgE6bQAEv+YLqVWg9AYX4uVZ+doevs8QnI90VSqmqrMI
 qEUYZ8was+opRpA8Dqjxe+cq2JukyyrjHZ1nnsrUNP2UXX4aPrwqiOM7ErYrdkt+CHkT
 5NFw==
X-Gm-Message-State: ANhLgQ0I2uiFN/XiuF18BSxDgWLbr4h7sR+H6UZjZibR7k2HmZ2PUhN7
 YIWVt3DqhSmR5ucbq1gBMkg=
X-Google-Smtp-Source: ADFU+vvxCZE1cx3VH2gU6qTI2ea+XHXem/rX60EuuNUSF0ftq/8KcqLMsyuncSjSUCGCHf9M0P5RaA==
X-Received: by 2002:a1c:6885:: with SMTP id d127mr28305994wmc.33.1584366533270; 
 Mon, 16 Mar 2020 06:48:53 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id b82sm24135863wmb.46.2020.03.16.06.48.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Mar 2020 06:48:51 -0700 (PDT)
Date: Mon, 16 Mar 2020 14:48:50 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org, soc@kernel.org
Subject: Re: [GIT PULL 10/10] phy: tegra: Changes for v5.7-rc1
Message-ID: <20200316134850.GB3825456@ulmo>
References: <20200313165848.2915133-1-thierry.reding@gmail.com>
 <20200313165848.2915133-10-thierry.reding@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200313165848.2915133-10-thierry.reding@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_064855_441783_75CDB162 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: multipart/mixed; boundary="===============1290300116138357435=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1290300116138357435==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="K8nIJk4ghYZn606h"
Content-Disposition: inline


--K8nIJk4ghYZn606h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 13, 2020 at 05:58:48PM +0100, Thierry Reding wrote:
> Hi ARM SoC maintainers,
>=20
> The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862=
b9:
>=20
>   Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)
>=20
> are available in the Git repository at:
>=20
>   git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegr=
a-for-5.7-phy
>=20
> for you to fetch changes up to 04c929223d1db6ad4ba8e4c23122e1052f670c2e:
>=20
>   phy: tegra: xusb: Don't warn on probe defer (2020-03-13 09:17:50 +0100)
>=20
> This is a dependency for the USB changes that are also part of this
> series of pull requests, so it was deemed easier to take this all
> through the ARM SoC tree. The patches have all been acked by Kishon.

Please don't merge this just yet. Stephen reported today that this was
breaking the build in linux-next because of a conflict with the USB
tree. I'll rebase this on top of Greg's usb-next branch and resend the
pull request.

Sorry for the inconvenience.

Thierry

--K8nIJk4ghYZn606h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl5vg8IACgkQ3SOs138+
s6FqWw//c6MHAtQmVy/jmygoyRjW60kHc9dGR6wmzgrZ2PEAN3SPkKHxMmsAOjQ1
POFT7wg72m/PWduosFoVp6hLzSgVLFEY4HhEtuEGV9LaAtiEkDCmCSa3Q0cHsxhI
SPYBmvkfmX3pWU0asxuh18gQJ8N2umoD99whfEgi4fwfwVpM19vrYdmpfjn43YrO
RgNKr8v5/nL390jLNKqTwb4vv8uHOq5lSMG7udBFWH57JiOiajAHqVdigo6R/QGG
WLkP3qS5Q+dQ1JH6NII68bFgCZNUxJweOaQXb9lBERmqmBdhWUqBtmoOu72hkZwT
iBo0uXtAToTQ1i5N8+9GQi85BDoa3/ZktIiHeJPLAjRGSB1U2l3SU387cB8/DR+M
nY47ctZlt6+oD3guO1Ilh8HxCqu8MV0OdnlauEZRDriunAaH5Xcg2STsPqUErjZg
skbyWtMNbkx/XSNVkYkX2LSE0Pn5m/PUdsD7ieD40jOtHzkvi8njKRvE5F3KHCFg
vc1EwoVYJ9e6EMsF0g9c+4Fxf/AhL9WcUqCfscSFLk14pSo40yQ3qc0QRMsbuFas
1GQMWuPCMICvf7UxVfCg6bjKZgPAhSmRuF/Y2XUOo00DyksRUpr4JxmQN31XTqDh
U+6rwgMb5I6RKtr2JxYdxKpWg+kwdZqOfr3zNg4PYJK4jq0WRpw=
=s9Fz
-----END PGP SIGNATURE-----

--K8nIJk4ghYZn606h--


--===============1290300116138357435==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1290300116138357435==--

