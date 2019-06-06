Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1F33780E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 17:34:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9R4nReFD8Pdg24dZ49ITroN23jCqmpb1X29W3/fV91w=; b=iMuSLS9vHXetviKFEIDSmyZsr
	5Pg8aRSrT/Xjx9945HX4g32GklFAoAJGCk0LDrR7TxdrmAOjBbjk8OaU+ToxV5Dy2oBpRNDnffEbv
	C43zxkuvsGQ8ouXHAsKsUka6s9pFVMJmVJm3h5nH8dT/hUmY4DC7Qro8ehhxhNCOuTWeGKg5XWEJv
	b9qZo28rxVhatmQF30EyaI2w8yHo3j3CMhdq7SIhopxHBpsRKVkZAPbuELdQvBDuxtakpNpK8jFGN
	8YVeIJEhjis1YY0pOyIVSjDNgOnuNiAWydJ3aGjSAbS/4JYI7MghdZ2KRHeV7RGam6HNfSb8i7J3O
	gycCEKA3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYuPF-0004bL-9x; Thu, 06 Jun 2019 15:34:21 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYuP7-0004b3-7N
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 15:34:14 +0000
Received: by mail-wm1-x342.google.com with SMTP id x15so392631wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 08:34:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YNCZH4cwmzPfukjIuLRGuMkntmVdByW0qbXhUjyBVJI=;
 b=qkTuWFTlw3+q8iegPcKQi5pHRkjycGloiIIztCCnol8eUIPokPCXP4YRVghDXDiwSK
 G9p8cvDaWEVxt0dCZ2CKExTIKqIRnqOCq4ZK8EXYWbTi5aSHF2+AoESLcZWuHMykQ/dq
 gXx+aq/LsdL2uFtqWoT98mHJ6HtH+LbosxYY6Fr4QFD3rim+dI2jxLb0+oQpCav0+/kQ
 z368AmjqFNen6gnMfrduuUo3a6Xf5Tln7SofOb8EEom1KHuTY5vwQiFKOHqAxgELqdtB
 w9/xd0qp+1/wr2nya+0+ra7AX4cW9pMKhrDgGlu+xegVxxWiw/yQL+6CxNgCvBBg9exk
 Ws6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YNCZH4cwmzPfukjIuLRGuMkntmVdByW0qbXhUjyBVJI=;
 b=k043hqTaKqOXZkrGWPgwg8agdysPJGlpvMWIawnPQhdDQpllG5m4vSJjvv56FSSGa4
 CPxi9mDrIWkdnWtZN9Htq6/YpqDhgk9olzFruectP/AkaKssBb7afsrdGC710w3nun41
 5HZyJI/fUHx8Zw+HKqkZaqHZXRYTUTrnQpr3gA+Xn5vMCUck82Wbrq49sj+E+2u8/xiq
 YRkWAGE86y5A+lVyZIZSTMdJf6v6qcwaNpRZJwYWp0O1B3TezZq108l4S3t0WhwFKCCP
 ODbc5b3YTAzlsig50fJzwkG4ow0uY0AdumafDcDugVQXlagSlQWK8FUurdYi9p/NwY96
 /Prg==
X-Gm-Message-State: APjAAAXvQFnC5OY5CtlG6kX8vevg7BRZb5a/BfO4CLSoLtbSWHYe7zhI
 V2vGjgGhFQdh1ZGW/eb5IlI=
X-Google-Smtp-Source: APXvYqwlmKS/iYNpwXsxb3o95trjpJEbEMQt25ZZsFm3shcsDu2hQJZ+WVxjYH8Lt0OMyySB6KY5wQ==
X-Received: by 2002:a1c:5546:: with SMTP id j67mr503162wmb.80.1559835251398;
 Thu, 06 Jun 2019 08:34:11 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id u13sm2173183wrq.62.2019.06.06.08.34.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 08:34:10 -0700 (PDT)
Date: Thu, 6 Jun 2019 17:34:09 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V8 09/15] dt-bindings: PCI: tegra: Add device tree
 support for Tegra194
Message-ID: <20190606153409.GB3338@ulmo>
References: <20190526043751.12729-1-vidyas@nvidia.com>
 <20190526043751.12729-10-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190526043751.12729-10-vidyas@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_083413_262102_CC71AC33 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: multipart/mixed; boundary="===============2186265092486042830=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2186265092486042830==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jho1yZJdad60DJr+"
Content-Disposition: inline


--jho1yZJdad60DJr+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 26, 2019 at 10:07:45AM +0530, Vidya Sagar wrote:
> Add support for Tegra194 PCIe controllers. These controllers are based
> on Synopsys DesignWare core IP.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Acked-by: Thierry Reding <treding@nvidia.com>

--jho1yZJdad60DJr+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlz5MnEACgkQ3SOs138+
s6EZuRAArnRIwdHFGGw7PRPo7CkDJeVM+eTKg/JkJJmI9FfY5NbdVm7wwEXJJg4b
jkzRaxcDKtL/8WkfptcnjrtRiz+GY5oz4+FvkIqaAXVy2pYQChgfecQ5fTgf8R5b
U/cyR75uLNk7VTyOjHsn8s16NsvTEe4eVgxQzt9OF/AiR0OPeT2Fnu/wvUO5MJmA
zeyr/MaJ8vkm6qOmkntugy0cTjx+o0/7kOd7Oi7FEOOvrKUsgbuW3k31pvykYIbE
qzDwL+R7Ay9h3dM+OAbRgrK7K/sHZFJQxGtIRn8jq5iTIJcPs8jIK+B5v8d8ahlC
aSlUS1gouB7Fp0zSJEdD25wGtZh8MV80kM9wSC/R/4CnY1VqX+/o5sDbL0X8ir1v
cd9h+XKLY5ZgSRsz1EHdbilB+uu5LNtDYBdkBWcEY7oLM/ACom2JSI4vtJs0w7nJ
yBWq1Qxw/9Gy8pOc3YfUuNx2yjdlK1c9QwLJd585/aKExzYJfrlOCvljY4nl75DD
1bw4mDI7uWdBWUhgsdMugW2sVz5RgkVPjen2sx+tIgBPCmR8JInAEROvIpALG5hC
9VHz2Yc2GGSM6tHiVUD5lBmNmhdh1PS38nEw4KUEuDFlc26S7S9Vf/tqHlwZ0G4f
JaFf4UTs1U7Z+PtXw13of7OpxYVFfdMlswoI6y1ottPBuBFhLU0=
=M5MQ
-----END PGP SIGNATURE-----

--jho1yZJdad60DJr+--


--===============2186265092486042830==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2186265092486042830==--

