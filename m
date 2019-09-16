Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E01AEB337D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 04:47:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ahkXFK5RrT2pxMxuBthUT+2qCGPaCPI5MKsJ6AhhRec=; b=oDY
	btPVq1ViFjfSeY6G21iSfmtPaZAQ5mDua+1j2giOTR4KckY1sshfR8PAxk/kbU6yaxGghJD64qMmQ
	AVjZQxokVo8vvzt/P+mr3B843EkeFO2X/pBSmJpU184EwN/50m6oQLPnvKYL31MczptnSfpCAuuk2
	9l4qb2G0s8KEsyEMQU335kzl0IUU2wqGL/dT3/bLDM7LDLgnUWaCtYdahyYEU2Ffj/Wxu5YqvPPd3
	g4XgzHBo9HEKpKykG0tCA8ZbG2kDgqU+OXQBRR7vJT2JQs5ynMbtppgRpGiu0v1IYys/wpZmQfTM1
	5+DOapdMc3CrOysrXz0r9Q0exy5DjjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9h2Z-0002mc-Ow; Mon, 16 Sep 2019 02:46:59 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9h2N-0002mJ-TF
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 02:46:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6k+3CRYWLn1opUvIFHPqpUXKKfTT7JXNt22zBeg1anQ=; b=dn6b/L2Idtj4qHBzYq518fUyd
 +bA0FUi34EqVEv54VCdHAXCjqAayMk3btTdPNVr/S2V4ckQnOJGYygBJIcr9d/XcpPnZjGpY423N1
 4lNqvksTQCoiUmVTkV/zBfwHC62LOfDoX89G/SRvs97SAZO6pCWTkI9jrnB/kdsrE4Mxc=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i9h2K-0002Gs-WC; Mon, 16 Sep 2019 02:46:45 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id CD49F2741587; Mon, 16 Sep 2019 03:46:43 +0100 (BST)
Date: Mon, 16 Sep 2019 03:46:43 +0100
From: Mark Brown <broonie@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Matthew Wilcox <willy@infradead.org>
Subject: linux-next: manual merge of the akpm-current tree with the
 dma-mapping tree
Message-ID: <20190916024643.GV4352@sirena.co.uk>
MIME-Version: 1.0
X-Cookie: Man and wife make one fool.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_194647_950018_ACF9317D 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============9210561099078559761=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9210561099078559761==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NBQMqqtZQBFxm+aD"
Content-Disposition: inline


--NBQMqqtZQBFxm+aD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the akpm-current tree got a conflict in:

  arch/arm/include/asm/xen/page-coherent.h

between commits:

  bef4d2037d2143a ("xen/arm: consolidate page-coherent.h")
  60d8cd572f655aa ("arm64/xen: fix xen-swiotlb cache flushing")

=66rom the dma-mapping tree and commit:

  46d5fa030cd9225 ("mm: introduce compound_nr()")

=66rom the akpm-current tree.  The former appear to make the latter
redundant so I resolved by dropping the relevant portions of the
commit from the akpm tree.

--NBQMqqtZQBFxm+aD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1+95IACgkQJNaLcl1U
h9AHygf+KVMji6+ph63ldaWsuCuu9YbY9E3LMpIZZIQASzXPfpFUEUhc+PCbW+Hq
6xAJpovc/53ivp77IGIpAr93issgebNNnGqPVNig3erTbl/AXo/9EppWGRl4YIs/
YYUFcj8V7x128ZkPSraUh/O7ZbFxf+NTxkFjTOBQaNqzRGmrjhviPxQ04mKb5E+R
IDZzgCCBktMzEH7G7nWpTGOMD8rSqWqhLEWDutK0PEPCYuNj9R9a0yyA+vwFLuIU
UnwuU7hP6D0IDPt6+fjZKG+0G5wsmXGOmo1snMJawGFUcKVDX3QGsP1Tz/TQDdz5
hNIkfwwHqWHnVSoWp0x4UMR8qC8EHg==
=ZZK4
-----END PGP SIGNATURE-----

--NBQMqqtZQBFxm+aD--


--===============9210561099078559761==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9210561099078559761==--

