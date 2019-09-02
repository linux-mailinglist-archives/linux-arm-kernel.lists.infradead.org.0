Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B97A5030
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 09:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jX7j+0CV0f9WzzH5LacPocRo0MD0hO2nKfSa7eXGnkQ=; b=uBEbG+vaWDH1oeBDWhZZQcwXq
	ctEORGZn/wMElVW7WjegJrFSJy+XFyOW4QBri+F7XLmJRIxQXuRF+XQTLYLuFaVgwRuEAVz/aUkwP
	+xj3oQPC8YrIxMt3/KkEQR6Piv0O678Dmw723a5pvislaRiO1xJVMDsLIZfScPll/c/j2vHvt1VHf
	6DcecsFlh9CAmR8U2IAwgI5eZZh52wXwJ3esV43TJl95369zlU3QRjgRsx8GKuRELyxw6ypYjSRel
	NK3ywNKxWvDgnAme0yS4ZnTe3MinCB65eGBDwSOCeBOw4YXsf6o3bMaxMD7Cia2Ixeh8Is9RZTA8A
	iue7iE6YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4h4i-0004RD-OF; Mon, 02 Sep 2019 07:48:33 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4h4T-0004PR-DN; Mon, 02 Sep 2019 07:48:18 +0000
Received: by mail-ed1-x542.google.com with SMTP id f22so14770130edt.4;
 Mon, 02 Sep 2019 00:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MIh0fbAwfCuAufcRCsUhFopk9+6nBJdUhOmxxWypwRk=;
 b=oip+ogEKN+dFGw76d6Vbq5npgv5b9O4TzFG2x1cdx41wwU4aWh4Jm0UHgeWrVl0N2q
 sCPrcQQyZsB4R8xRd5MdoNqwUzfmVA+CzVewjKL5B7H3ZbnWe4hYUHqgStZ4bsGApa1v
 IwAGQbbWMV3wn3JDu0+AjX+tkmQHxXfa1bO6L5xQICbMcLgsNi04DSEE0Kj7nHfaXNa/
 7UMD3JVhZ7jCFuEEiry9J5k6fmEoPZg72DqSb74pe82irITtCbNErwWSZCwYqys/fOP0
 pqPW280ZCmoOkQ6c7QWNTkfgFADo8v4LnaXfkEn40OC+Sfl+/JnYzNg0HSZGe8LExt8/
 00bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MIh0fbAwfCuAufcRCsUhFopk9+6nBJdUhOmxxWypwRk=;
 b=UIlBBUY0NGmrAaRAXmaGZyOO3p9sxKYXQB9U3yYnlPx0KcJfEiqPEcwuGcECG7o4fP
 cbVK48CVfszho9tvt4z9yX24nYSCPUCcZ50EZVHoDWrMdO5+Yq7MWcg2Q4HkYVBYIVwg
 j4dnxsoJgC/SrfBoKnwu4YFSDtkVu3tPIEjWucGEzMPxLPlRkMemL6sWFTRowyGF3jWZ
 AbfcqjaS4jILLIi6+jebG6bcqW7KbxVGc6GdGwBnB/7RaTIv/ALtGMuSHe9y+DaGkpib
 prv/GrOglmc5YI+BJOYrX6XDbwnTRv4u0lGfZ0c7zEHspj8rzbBXhXVyDp1azBiPMaAv
 +w8Q==
X-Gm-Message-State: APjAAAXh40HsVlaoa30OAb/WnmtPK/DKunUXJ+i3BCMbbZqiWOpyfdon
 VPnvapxyhSjSnizOSvcq+qk=
X-Google-Smtp-Source: APXvYqyIVn7jDmlnuR4YbcabcNuaYpup4CxQuEInsDxMFQQvXiX4hq353ztcVF/hW461Pkzhk/qpIQ==
X-Received: by 2002:a50:f04e:: with SMTP id u14mr22971329edl.247.1567410490810; 
 Mon, 02 Sep 2019 00:48:10 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id be17sm733876edb.87.2019.09.02.00.48.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 00:48:09 -0700 (PDT)
Date: Mon, 2 Sep 2019 09:48:08 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH] phy: tegra: xusb: remove unused variable
Message-ID: <20190902074808.GC930@ulmo>
References: <1567394159-22572-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <1567394159-22572-1-git-send-email-chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_004817_457181_9326D90D 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: JC Kuo <jckuo@nvidia.com>, linux-kernel@vger.kernel.org,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6934053647198936309=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6934053647198936309==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kfjH4zxOES6UT95V"
Content-Disposition: inline


--kfjH4zxOES6UT95V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 02, 2019 at 11:15:59AM +0800, Chunfeng Yun wrote:
> The local variable @priv is set but not used, can be removed
>=20
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
>  drivers/phy/tegra/xusb-tegra210.c | 3 ---
>  1 file changed, 3 deletions(-)

Acked-by: Thierry Reding <treding@nvidia.com>

--kfjH4zxOES6UT95V
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl1syTgACgkQ3SOs138+
s6Ggyg/+JTfKlub2rlBotR8tVq+WnX4mOXHTpdHY2C6sec6x8dSNg7ASmQ8mPheO
kvlojh5AYFPZAeunSAE28f6WmKLTL1mOp4QvipmBfuNgzf9o0gDJqlAAXxffiCG3
1nUDkM6x8/83lYLC5oF0ML4XbDsemDC7rnbBtsu79F7A1ETPX2N6EF8QM9y4FPzz
VAP7hNjOHI07c9zPuseEz5TrC3Ts/jH22/x9hefRwTmRlt+DmCjujz5zAKd0Nc4S
5In8xmT9WSDDDPf+ENjwZA1gASFyLEPKFM8qsqp3DpY/qH9ik9qszey+WHdAhNSy
dGdBiQI3C2MHQG6ZGB/7etLnp2kGN4334KU0Df282/gcW9kQuW4/2niqgH1dgYve
2cIuN6N0Tn14hUl/VgOcMG/S8C0ykZ6Z/ghuZOrXLtHAIeUWLc2nUkU14/MZ/6Jx
L63bB5RdVyglvjmsLWnxZ3mVEonTgwA6K86+jUI1ojotyaHMC8GJGxZoS5LUeU6A
Y2OXgKXYXakxjtrb9QCMeVx1vkBsVuqeU5BQdfgsp3ueZ+5CZE+MiWHQs2uifAz4
suDUyv4okbf1HRh7/F+I6i7QYk6TRLB7vf18QFVcJxNZfze8sQMe3sN+y6b/wvRp
NPeDuuljtSyJBdITIAbiMzG38znpSF+k+BEDmogHtRnSNx7w1tE=
=jMD6
-----END PGP SIGNATURE-----

--kfjH4zxOES6UT95V--


--===============6934053647198936309==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6934053647198936309==--

