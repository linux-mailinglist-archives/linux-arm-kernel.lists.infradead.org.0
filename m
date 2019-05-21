Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D8824CFB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 12:39:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/0xMKBzc9QsZz/vFIwITQ/Og1h/NhbNLvkF5j6IFXk8=; b=dwOxoSBfWa6oUwyI1AgyUd9Mk
	oBPKxZKv/7V8aQfUNRIKN8FdlVUD2rOttawxhCwO5Nge7jc/EkC8eyPlwYZ4JceffH34FUjCKH41E
	lUaPof13n8MZN5MnZ64EaVbSha6MntbApHVzQLT0QetjpApC81jPu0xkQFK4Eth7l793fge4AOWon
	19UbRza46acMuKRK+P1ODQIX5Iqk051S69L1NIQdXOM5Fi+DMW1juBpPTzlg1CSI+yhzY7booUg4e
	CDf6XgZmYe/F/OHJcuqHPhLyNdF/f7udNxYd26Q1QWbWh85HypA+tjP/P/njmsU/usZTLEi6n0iyw
	LWEhjJR1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT2BG-00038l-A8; Tue, 21 May 2019 10:39:38 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT2B8-000385-NC
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 10:39:31 +0000
Received: by mail-wm1-x341.google.com with SMTP id y3so2438882wmm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 03:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MEql/0Ufbo5GktebIV5F/qta5r8Z4maoI6b+hg0Bauk=;
 b=BNr3YNZxoMulifhrzz5nFuhwL12wp7dc7H7BazvQ272Ah/wEFQqyhjCBMHOrlhLY9N
 dElhEcvtp4bsJlARwIrIf11F5saY/7bnmortvcSW/AinCT/ZLmEzBK3hHUQlUSsugopx
 DS4ZwMxJv7YQU0fE05yOLE/3Nr3i+qRSuiTvRXdaEOrrFmRvJ1Snz8/X2H40FjVNK6Ab
 B5A9AhKQVMYu+CCFsnlt8gWjy+DqfQ30/vm6btSpi6OcuL/D+qQ8oy+/ZjJ0SoECfceI
 gV1JFY41oAG4c5NLtFUkq6ZTs2m7niINQNxlztkFj4sFXtONdG6h4Zg+PuFkIoEUJK1L
 /Q5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MEql/0Ufbo5GktebIV5F/qta5r8Z4maoI6b+hg0Bauk=;
 b=O/elsjbKnxLNUZY/MWeZL9uLbs5ozzC76Tr/rsPA4a2/BqEx5s6csPY9A8Rl+xdADp
 nx50uHv1+qIhExoGKRIzt+WhZS8thF8Cki4j3IswVb2SDlkSq1bku5IlrbTKY+kZXJ4i
 6ckoT6hisgQB/g9N3tlyA6s5CJJzCcYjkJoq+S3ESiQx0DKt9JaD7Ee4VrxQrl6HNGZb
 Xaecnb/LwxO/sw+W8UUz29oI5i5hanPuOa3ll4mG7J3qgzTSVOFK1sO3nj++yAGATunO
 s28OMmiK7dFCqxlh5mCuI1WP87JpmokLKjPtqHX1GsgHlpjfi0SNELfIUYf+mp5Uq5ZB
 w0aA==
X-Gm-Message-State: APjAAAUqWB0a3St1cJCFHjR69+SygEL6Vxco2hvfA5drP9HcGMFypFZz
 1EiWAOewRzb116XZpRwAreXzUE5utwc=
X-Google-Smtp-Source: APXvYqwxIsX8sYhmkNliyhrBPfzfqACbFigkfjCtV2NknKUdCGFkNkp3lHVaiOvk3ZuonQrdHEpazQ==
X-Received: by 2002:a1c:b3c3:: with SMTP id c186mr2818933wmf.93.1558435169268; 
 Tue, 21 May 2019 03:39:29 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id l14sm18782793wrt.57.2019.05.21.03.39.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 03:39:28 -0700 (PDT)
Date: Tue, 21 May 2019 12:39:27 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V7 08/15] dt-bindings: Add PCIe supports-clkreq property
Message-ID: <20190521103927.GH29166@ulmo>
References: <20190517123846.3708-1-vidyas@nvidia.com>
 <20190517123846.3708-9-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190517123846.3708-9-vidyas@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_033930_756560_8E9268B0 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 kthota@nvidia.com, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============6894429034526612721=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6894429034526612721==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tT3UgwmDxwvOMqfu"
Content-Disposition: inline


--tT3UgwmDxwvOMqfu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 17, 2019 at 06:08:39PM +0530, Vidya Sagar wrote:
> Some host controllers need to know the existence of clkreq signal routing=
 to
> downstream devices to be able to advertise low power features like ASPM L1
> substates. Without clkreq signal routing being present, enabling ASPM L1 =
sub
> states might lead to downstream devices falling off the bus. Hence a new =
device
> tree property 'supports-clkreq' is added to make such host controllers
> aware of clkreq signal routing to downstream devices.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> Changes since [v6]:
> * None
>=20
> Changes since [v5]:
> * s/Documentation\/devicetree/dt-bindings/ in the subject
>=20
> Changes since [v4]:
> * None
>=20
> Changes since [v3]:
> * Rebased on top of linux-next top of the tree
>=20
> Changes since [v2]:
> * None
>=20
> Changes since [v1]:
> * This is a new patch in v2 series
>=20
>  Documentation/devicetree/bindings/pci/pci.txt | 5 +++++
>  1 file changed, 5 insertions(+)

Reviewed-by: Thierry Reding <treding@nvidia.com>

--tT3UgwmDxwvOMqfu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzj1V8ACgkQ3SOs138+
s6GxMA/+NpI6ZwlnTMAsJ8ruKfvjYGpc3OE5nyJWsBE+w/rPCtvydx/UNDb4nMh8
gdNQ08uHKoRG7fx7mW8u8nuExzY8euEy3GPdIDycVfEtIzu68wTOL0Fma9cjAOxe
cc+QaowCdUqRpEgs6ofUrcOUfPAV821c/wJ3O77MjlO99apfproJWw4iupCmUsot
b5M7jiptwqfi5OJklcQG2szxmbu23vBr1x+BuPDq6D+zF/K7LVuA1BSuMDywdvnc
24PpnWha4OV8zo1Ql5mUr0+F3VO+QP/lQO2YWvXx/mHO/zVp3IzKKu8vmymJBUhm
OC5EeWj1+OBVmO6NXG8K3INzzsR6T21AssIkfsdeavGHZh+JE54IHIJnwiAnq1nZ
bWmwR1aD4sQ3f81ObETw2KYoiAbyCFo0pxAiiQKgHa/c5XGCk8XzCdxWWoTNMdZA
lntfi3itDEl1X7BjArF/z5j2WRHu8lG6wBdV9PySN6bUlzkvxk4phTFMDPzgJKBW
mC95CXIvTR6uLPfNchE7HuMd/ylsM/V/EbLUgmf2s3uiU+jMoDVs3o5Nvh5aQLHZ
vLMH4hozBmHGvyENFaXeBSMuExVnx2vwWfDpCxr/8M/VYMQsqkCsKyINzAtLmCQ3
lbzIKQRGlFmaPKwX7V39yTk1CPE5pkWYEM6Z9/cJXzEot37EH3g=
=KEQ8
-----END PGP SIGNATURE-----

--tT3UgwmDxwvOMqfu--


--===============6894429034526612721==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6894429034526612721==--

