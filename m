Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67ABF331F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 16:20:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cWW5aUDZX/lmtU7T1WgpIem04oBA/FC96zmpProJChg=; b=IREHw1o010Skv2oD/+ozrGyIB
	sWId/B3ylcBiquXBgyvaJUFmrrkJga9E5rPfFlV+jOR8fEkkcoQhlU44dnQyOW3XYHznt6YNzh4SU
	xX7NR4kZczxhxzYJ/r5vaxr3f3P4+i/vO+ZJvstqRNjet1zv1+Ij86DFAonm6DzHyMr17vNMQd8Cq
	OIxujf/oql6cmvOzuRw1bu0vSYDbvg+P/X3RGzaVeSfivqAOVrXUzd2/B6yCRd0s3WncsRMCE1MKf
	Y78h0d2Zz2Anki7bNL9Vks+LlwuQDGTlir7yPlFtRrpwOS6XuIIAx2Mc/snVK6vVbJOby2sfyc8Tw
	FSLS9mJnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXnpI-0002sN-9I; Mon, 03 Jun 2019 14:20:40 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXnpA-0002rw-Tn
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 14:20:34 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45Hcf52SY6z9s1c;
 Tue,  4 Jun 2019 00:20:29 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1559571630;
 bh=Q4B8FpfsK6DpZ7z9YCUHwiC5RVI5aIkPJwaUh8DL63w=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=sznVNVN0JD/wPHa8k7oqf6G/YwvOXs4ukGTnK5khxI8ufSGFC9A/3nPKGq/x8XZ5x
 EgtoXse9P1DCAIpa/AKIZNYS4BvpVt2Mg6dAlhGT3aZ27XD+6atMQ2hw4L2FGxMMpf
 I+1N/C0Cm8mAl+v3WWal/s6XyZ/DlqMrE1gD3l70f5cmAL96rNaf+pYkHpvsPGJhkz
 9+Ai2Tjukd47or6FgeZ3DPCKuPEeAFpiSSc88eSYE99jdk5pIypU2j6NMc9pPghBHr
 PYxjqlwR1YL1kukEN3IHLyyYNqVtBbwr551uKwt41bm5zrcfZDHD216bktTX9efVJU
 6/B6K6h+q8fMw==
Date: Tue, 4 Jun 2019 00:20:28 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: linux-next: unable to fetch the mvebu tree
Message-ID: <20190604002028.57b0431c@canb.auug.org.au>
In-Reply-To: <87y32ikbbs.fsf@FE-laptop>
References: <20190603082346.7bd1d7a4@canb.auug.org.au>
 <87y32ikbbs.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_072033_352925_13D6469B 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Jason Cooper <jason@lakedaemon.net>,
 ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============7320067742047144265=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============7320067742047144265==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/IjKKVR6x0E8Lm5amJ.5B/P="; protocol="application/pgp-signature"

--Sig_/IjKKVR6x0E8Lm5amJ.5B/P=
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Gregory,

On Mon, 03 Jun 2019 16:11:51 +0200 Gregory CLEMENT <gregory.clement@bootlin=
.com> wrote:
>
> But now it should be available.

Looks good now, thanks.

--=20
Cheers,
Stephen Rothwell

--Sig_/IjKKVR6x0E8Lm5amJ.5B/P=
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAlz1LKwACgkQAVBC80lX
0GyKxwgAg/pkt9W9v4z32zFUGoB0nFf+57pHKDyXkBltI7xReRxDv9e6FLU8pBlH
KwelCWSDEagINzPjCQQ23FhJb7YfPNMlewG5epuKE35nFV47/5PJmJNNwkewg9gY
LhL5tUGRdWD52YLGdsFO4f1ikNx/9Yau1wN4sIRPXSqJvNFSCriUjPt57qZ/bhpi
pt2ssbUyHD1ABC3WWEj5OxgpSSBtK/TAhTM14ZAx164m+GlnaLr2Xwz7NqSsjcB4
djIBVVRkmn6skLZiSEut3I9zezAZbVLqYxvIaz03RfZQybff0xBQ5bkybHu3r1Q9
qBPRuGugzYBEyB12RZBvL3FAt6vdFg==
=t3c6
-----END PGP SIGNATURE-----

--Sig_/IjKKVR6x0E8Lm5amJ.5B/P=--


--===============7320067742047144265==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7320067742047144265==--

