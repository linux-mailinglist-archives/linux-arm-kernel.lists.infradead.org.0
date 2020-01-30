Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E3914D4A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 01:28:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=URhujs6Eks1HtORjRfMDErJpAJGPiYKCUO+hcgqINak=; b=TRVtVIn8CwAV+5mDjli02K0z1
	cVh21rCTHYRM/5TZAgVDQYN1+igj08S50ip0WEJnTiNr+thL9jT0quGVNbpeI/x+RX3rGa4CJAYjc
	Aihxoas7ImeIM2PsRNIlbvAs6Dk0ysnR4hawmruMieAJx+oGuu1iRpYtI1h1DzvrPAXBbja0JvVsr
	uL7mWeGUV5nmVVNb5k+hnAbPtgIo+V03pawgNGhnv4WHfEizxscNBxpFNDNcDi9lmu5v+9dHsf0pH
	AAM/1+HPkOpYmEJQCfSlv03JnkhqmXuZKeprR0uQG1uyn9bgW6eMTdmQgEeBRoV3mmwiIUzP1euJm
	KLzwYf7ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwxhE-0001I4-Ui; Thu, 30 Jan 2020 00:28:36 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwxh1-0001HS-Mk
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 00:28:25 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 487LmY13B6z9sNT;
 Thu, 30 Jan 2020 11:28:13 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1580344096;
 bh=A1LOcUzbmFRu6CnaeSbsIxpubXWf7iaUrsoWSAhT7Qk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=grNsHxWYo7SM4pRivp69oihfw7xir2AUHllKF2NFQDRtY6+oC0Y6CPTCcJ7o2K2SG
 tMZAk1rBUhdTeXVKIrFTEAtcEEXRZcoGGzsq1O8K3YnqDSPPp3WWSRCOnTltiJj27n
 Ea3AkE2M3mnhALHSzfWYTtMOyN5XSLcY4+j8Wr3zO+BgwXNWj4urJCGF7sr6r/8DIf
 Ugl7BraC2R7Fj8APihP+ggs46G88WgzgKCyW6CRR9ojFUcGUkcAvedOlIKjdARNGV1
 tKP15ht5JyKP7zT33DRntpLUHT/QLvMtGcJF/bXp7fOSwLHRAeFljEUG/CqTg1WBs1
 FxsUlzQ5uDKTw==
Date: Thu, 30 Jan 2020 11:28:12 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH 3/5] mm/mremap: use pmd_addr_end to calculate next in
 move_page_tables()
Message-ID: <20200130112812.68e938e6@canb.auug.org.au>
In-Reply-To: <20200129155907.75868e8a36c5fffc3ec354b9@linux-foundation.org>
References: <20200117232254.2792-1-richardw.yang@linux.intel.com>
 <20200117232254.2792-4-richardw.yang@linux.intel.com>
 <7147774a-14e9-4ff3-1548-4565f0d214d5@gmail.com>
 <20200126185951.c9246349befcccce210a4ab8@linux-foundation.org>
 <b5eb4766-38ba-0153-2844-cc303fe0dc07@gmail.com>
 <20200129155907.75868e8a36c5fffc3ec354b9@linux-foundation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_162823_900446_C48E631E 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: thellstrom@vmware.com, yang.shi@linux.alibaba.com,
 Russell King - ARM Linux <linux@armlinux.org.uk>, aneesh.kumar@linux.ibm.com,
 linux-kernel@vger.kernel.org, Jon Hunter <jonathanh@nvidia.com>,
 linux-mm@kvack.org, Thierry Reding <thierry.reding@gmail.com>,
 Wei Yang <richardw.yang@linux.intel.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 kirill@shutemov.name, Dmitry Osipenko <digetx@gmail.com>,
 dan.j.williams@intel.com,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============8491141199436738962=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============8491141199436738962==
Content-Type: multipart/signed; boundary="Sig_/EI5dG3bZDZkFOYbEr0C/aGP";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/EI5dG3bZDZkFOYbEr0C/aGP
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Andrew,

On Wed, 29 Jan 2020 15:59:07 -0800 Andrew Morton <akpm@linux-foundation.org=
> wrote:
>
> hm, me too.  Stephen, it's unexpected that 9ff4452912d63f ("mm/mremap:
> use pmd_addr_end to calculate next in move_page_tables()") is still in
> the -next lineup?  It was dropped from -mm on Jan 26?

The mmotm 2020-01-28-20-05 arrived just to late for yesterday's
linux-next (it will be in today's linux-next).  The mmotm before that
was 2020-01-23-21-12.  I attempt to fetch mmotm (along with all the
remaining unmerged trees) about every 30 minutes (sometimes more often)
during the day.

--=20
Cheers,
Stephen Rothwell

--Sig_/EI5dG3bZDZkFOYbEr0C/aGP
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl4yIxwACgkQAVBC80lX
0GzDOAf/fiHwH2H1LxPeGl4/FqwYomv7u+okT+m0GPTVqLAiVNAxj5TLh4k0af7I
M6kISX8+QqZ6XSgPNj9D/xZHXTOI7pmnz6IzUnCexRMC7F94VpTncYIwf+WnTeKs
M5maby2/zgL+WJaJLQ0Pf7BkQtCWpAx4wH2IEjWSC0sBbQjSs5YzTXstuEgxrSLB
rx6aquyCi/aXVfauszE/7bV/q++5oCj262wk0aL7EtQIeW9MRa0DiOE0g5avjIvG
YeifUfZK8q52OVr1/PqBaj1LkfLw6D6pQ2JtzARxdqxc27E2i8WDROeBP+h0hnD1
3QP05IaRjqht0vavjwNoxrVO4Eitkw==
=h1dM
-----END PGP SIGNATURE-----

--Sig_/EI5dG3bZDZkFOYbEr0C/aGP--


--===============8491141199436738962==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8491141199436738962==--

