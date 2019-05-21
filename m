Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EEE24CF3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 12:38:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=APtILpDbpeqY25uaweJLHgnAXsZ4Nf0No8yQR5eb44Y=; b=PEATx008+7+RptYrJrqT4WI7k
	b2k6KTsimp/fUn0ym0r0uBjxu38gK79Kd4tqFbQc/YgR9sc3b2DhDxErDciUBSIyJdj6/8Upa8hnF
	/F/Wt5rhOKE/Z0noXD7m+9Ce/T5ZMPHYnR3SLKay1Ud/r11dNjUmhKkQSPUJiR1Y/myUlM3gFYVYv
	t3NUDCeqDgx0R6tHrOTUGCO7vK3El+4keGBp6zIMetfbw1hSt2EGS79dPAvJqa6IqgjxbEX9kkPZ8
	SGNriO6VHQc8sgnedv1PdEQcAiylmXewuFj3g82ZlgAMIn06HISYL4vLLr2h87y7H12nGFJJjuxBX
	HrKLH9i3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT2AF-0002ow-JN; Tue, 21 May 2019 10:38:35 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT2A8-0002nl-9t
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 10:38:29 +0000
Received: by mail-wr1-x442.google.com with SMTP id r4so17965697wro.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 03:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5cHZAThEhwYXg0mdwF8qSQfljsG3YRHFcTgp/N5AQao=;
 b=qkXnY8AKr9vUsT95SCGCcXRgoMuebbIIgTalyt6CCBhB7kw2gOcWMYB17h4wjCtjxe
 /VeYphbYeG1vkS5JGAOZfn8xicSlANIH/2gIc0WVz7a7MUjLRrJS6g/77vlvAaha4F7+
 xHmfOBxlmIV+674x1v7O4wnulkYfHlTfh/VwYJOhj7WixVc/B1oP9AKrDn4ihC5cx17l
 ye6yP6LZmalDEj3DUkyYvxuzfRbiAYUy/PC1OFXL6OzKkABpUQagVfSSlU/8Y/9Zcuq1
 2rYUy96MCpCR9rx7A+3NmDcJKlx+zyZy3pCsgSG68PB9mAUx7rN3E/hkfnBWpowbVUL0
 b0Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5cHZAThEhwYXg0mdwF8qSQfljsG3YRHFcTgp/N5AQao=;
 b=WewWuWhqVRFsTpwlnkmtcbGnJhdwFp3UplSB0kdjk0F6cfCz1iXVq5jXXIy0fLoCUi
 WU15urby5iEnLtz5tykU5S+jfgTbvhJe6SIb7Ph2UIsZqwkR1aEnJVZHO6PlQSK8+VXn
 8AInqRPf+xGs1iBY+UxsAdyBZWtqAANgIr2iLKw46ivprPVXR4QT0nEo2eqUw4mEklz4
 /UL7OL5kVLu+sUpj1cJhwOz9V5vIMqfmVmSVaXgK8nFOZ9/n2k3Al7T4XDbFe2uqrgYD
 SOdaezbap/BDkuEHAvfK9D1lqvaPTRKxzQ1RQhB3Ijw+fiuddKdPgzmcgErynkRl7Na5
 rfpw==
X-Gm-Message-State: APjAAAXdlSlYYCWQLCJNRqu5s2ZNaPmParFFui4+KAajFzQ4ahDALUwW
 JonyoZ1mXAHRyw10L20oSI4NGZBij30=
X-Google-Smtp-Source: APXvYqzZKh2+vlDE2a1Mrz0XQxxaUOnMxe2hSuwIkeRzhNSIVh2DUrUxliLVNc217oqmX8bwpz643A==
X-Received: by 2002:a5d:4b07:: with SMTP id v7mr21489249wrq.106.1558435106456; 
 Tue, 21 May 2019 03:38:26 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id i9sm1529322wmf.43.2019.05.21.03.38.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 03:38:25 -0700 (PDT)
Date: Tue, 21 May 2019 12:38:24 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V7 07/15] PCI: dwc: Add support to enable CDM register
 check
Message-ID: <20190521103824.GG29166@ulmo>
References: <20190517123846.3708-1-vidyas@nvidia.com>
 <20190517123846.3708-8-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190517123846.3708-8-vidyas@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_033828_344648_BAB78CED 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Content-Type: multipart/mixed; boundary="===============0171131940945306860=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0171131940945306860==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rV8arf8D5Dod9UkK"
Content-Disposition: inline


--rV8arf8D5Dod9UkK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 17, 2019 at 06:08:38PM +0530, Vidya Sagar wrote:
> Add support to enable CDM (Configuration Dependent Module) register check
> for any data corruption based on the device-tree flag 'snps,enable-cdm-ch=
eck'.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> Acked-by: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> ---
> Changes since [v6]:
> * Changed "enable-cdm-check" to "snps,enable-cdm-check"
>=20
> Changes since [v5]:
> * None
>=20
> Changes since [v4]:
> * None
>=20
> Changes since [v3]:
> * None
>=20
> Changes since [v2]:
> * Changed code and commit description to reflect change in flag from
>   'cdm-check' to 'enable-cdm-check'
>=20
> Changes since [v1]:
> * This is a new patch in v2 series
>=20
>  drivers/pci/controller/dwc/pcie-designware.c | 7 +++++++
>  drivers/pci/controller/dwc/pcie-designware.h | 9 +++++++++
>  2 files changed, 16 insertions(+)

Reviewed-by: Thierry Reding <treding@nvidia.com>

--rV8arf8D5Dod9UkK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzj1SAACgkQ3SOs138+
s6FzehAAj26+Vd/E7W30W6r5t7V5VvOWhcFf3Jmp59yLidN65C8DRR41Qhw7YEyK
/2glrrtwu+zYgwWKSDLqCrfiQ+DhsYH+XP6S8t/YVwRN6uMF9IcYK216kVu2vAS0
ielsNNQOzGWWOWZPzhNZMpApcyeD7X+MyNGpaEfE0ddLHTxmnhDj4V2jOH1d5Ax7
1hnpU64dNMX0eH0zjA746QXoAhtrwtGwSBMQMkxEhkGmt0UKJFKabWXgvk3zhZX3
8U6Beasycz9+hkm0GEpyXcb+S30lVxQWen+i5ZvyfhHQ7+RsREY/SQu1go997YEs
yLsYeRtsd3wNliiJu1l4PNhJY9bI1i1OthM+NuH08cbAHBm9s0+eTX/Ko4s0gf3n
ICptVCYsVN6o6QkKnj14uWpbZ0Z2vQ4VeP4bs6vqy7sGruFWGuA9iZ85MQe+bEjU
AcaosScNT/X3g7TRgVQTGuZixEpGJg2Llv4fbYdkA3JRDiJxw2ewSxoLGpZnlGM2
Toodt5B961wBAOfv3p2gXTPqliyDJwCYGYkt8uTuSMiwfn3GyQSamFQWuLz8uRrA
LFiU26ht43GDUFhwjXCYJ1uIZRoyzl7HuM+WxySx2hYevDz3L4EdGiJf6qe8SBHH
RYMmHHYHxRbwR3Mfpm+sBCQgIFKDokaptNjuxiMkwVlgtGuW8hc=
=GXch
-----END PGP SIGNATURE-----

--rV8arf8D5Dod9UkK--


--===============0171131940945306860==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0171131940945306860==--

