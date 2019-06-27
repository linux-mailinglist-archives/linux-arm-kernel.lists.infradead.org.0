Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FFD1585A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 17:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ry8Jtx50B4R1z49WxiyZ1/zZjzymM19d4FEx78Txlxk=; b=LG0SJ9PqTaXAWhjqx9MwAK0Ap
	c7t+3TFM7eJV61IHahjKKjvhSieqmXKKPE3VnGQvdmBS0N4eUB7tturC8Zt+25XJvJYjopctTAn2+
	0SC2Yxc1jmLU7JJxGYpucZ40Yq5D7yxWzRlMbeHKjFXRHnevxDf64bLx8TvZTVtEwtnoTPJ59IiZU
	hRgT1xnSKHOgGGprwMbtS9+aW+J3aPbCEIsfZ7+wKy+XmbKS1PmD4DWcLG7Qy4ylRa1Kt4b2hQSay
	cJSra3Sbzc5fF9zDNOEAX88GxiiWwJj24YWrdki+Gd90FHa+kNXpEMggioxPGAqRM/t5ptzB6/Hx5
	Y4Jkhfr3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgWNU-00061k-O1; Thu, 27 Jun 2019 15:32:00 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgWN6-00061C-6K
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 15:31:37 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d14e1540002>; Thu, 27 Jun 2019 08:31:32 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 27 Jun 2019 08:31:34 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 27 Jun 2019 08:31:34 -0700
Received: from [10.2.163.244] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 27 Jun
 2019 15:31:33 +0000
From: Zi Yan <ziy@nvidia.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [RFC 1/2] arm64/mm: Change THP helpers to comply with generic MM
 semantics
Date: Thu, 27 Jun 2019 11:31:31 -0400
X-Mailer: MailMate (1.12.5r5643)
Message-ID: <7F685152-7C6C-4E99-99DF-03DDD03D6094@nvidia.com>
In-Reply-To: <1561639696-16361-2-git-send-email-anshuman.khandual@arm.com>
References: <1561639696-16361-1-git-send-email-anshuman.khandual@arm.com>
 <1561639696-16361-2-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1561649492; bh=vDxVQVvJQ3+Sqi/Q2QIRj6FMeyjJ9wfmkbAsVSsgX7w=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:X-Mailer:Message-ID:
 In-Reply-To:References:MIME-Version:X-Originating-IP:
 X-ClientProxiedBy:Content-Type;
 b=ZYF+qGGah37ytxxKVO/Snol52FyL17Y5EeBAZdecBKuQZZ/ypxmCOma8lPQTFPPbU
 SmwaYsAHf6HqDRaSqmByfCgjrFwR5W6v3EA9G0kyqu2sRSR3A247kZkKBOyJd2e9q8
 X3l2fk0vzPNx/6HDJLRcV9QqEvI7NtedkdxPV8QykTjddZgM6dgrJg7H5gWPe/4pqN
 Rzr2cUvvgMTyPZ+TRFvuEd4/4dH2jdO5G2bJJX5du8ciX7Q0wHRIRthELuNqRGLMc+
 u1HSa7SJiKz3fk/1IsEuoICh1HzNqxSG/pg4dsrw1IDg4QGfNHUe2tGZYVrsf2KI+E
 0nFCTVBs4M5jQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_083136_248907_9B041CDF 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki Poulose <suzuki.poulose@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6684796085295054072=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============6684796085295054072==
Content-Type: multipart/signed;
	boundary="=_MailMate_B99B95B9-F3F7-4559-91D4-01BCFC794027_=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=_MailMate_B99B95B9-F3F7-4559-91D4-01BCFC794027_=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 27 Jun 2019, at 8:48, Anshuman Khandual wrote:

> pmd_present() and pmd_trans_huge() are expected to behave in the follow=
ing
> manner during various phases of a given PMD. It is derived from a previ=
ous
> detailed discussion on this topic [1] and present THP documentation [2]=
=2E
>
> pmd_present(pmd):
>
> - Returns true if pmd refers to system RAM with a valid pmd_page(pmd)
> - Returns false if pmd does not refer to system RAM - Invalid pmd_page(=
pmd)
>
> pmd_trans_huge(pmd):
>
> - Returns true if pmd refers to system RAM and is a trans huge mapping
>
> -----------------------------------------------------------------------=
--
> |	PMD states	|	pmd_present	|	pmd_trans_huge	|
> -----------------------------------------------------------------------=
--
> |	Mapped		|	Yes		|	Yes		|
> -----------------------------------------------------------------------=
--
> |	Splitting	|	Yes		|	Yes		|
> -----------------------------------------------------------------------=
--
> |	Migration/Swap	|	No		|	No		|
> -----------------------------------------------------------------------=
--
>
> The problem:
>
> PMD is first invalidated with pmdp_invalidate() before it's splitting. =
This
> invalidation clears PMD_SECT_VALID as below.
>
> PMD Split -> pmdp_invalidate() -> pmd_mknotpresent -> Clears PMD_SECT_V=
ALID
>
> Once PMD_SECT_VALID gets cleared, it results in pmd_present() return fa=
lse
> on the PMD entry. It will need another bit apart from PMD_SECT_VALID to=
 re-
> affirm pmd_present() as true during the THP split process. To comply wi=
th
> above mentioned semantics, pmd_trans_huge() should also check pmd_prese=
nt()
> first before testing presence of an actual transparent huge mapping.
>
> The solution:
>
> Ideally PMD_TYPE_SECT should have been used here instead. But it shares=
 the
> bit position with PMD_SECT_VALID which is used for THP invalidation. He=
nce
> it will not be there for pmd_present() check after pmdp_invalidate().
>
> PTE_SPECIAL never gets used for PMD mapping i.e there is no pmd_special=
().
> Hence this bit can be set on the PMD entry during invalidation which ca=
n
> help in making pmd_present() return true and in recognizing the fact th=
at
> it still points to memory.
>
> This bit is transient. During the split is process it will be overridde=
n
> by a page table page representing the normal pages in place of erstwhil=
e
> huge page. Other pmdp_invalidate() callers always write a fresh PMD val=
ue
> on the entry overriding this transient PTE_SPECIAL making it safe. In t=
he
> past former pmd_[mk]splitting() functions used PTE_SPECIAL.
>
> [1]: https://lkml.org/lkml/2018/10/17/231

Just want to point out that lkml.org link might not be stable.
This one would be better: https://lore.kernel.org/linux-mm/20181017020930=
=2EGN30832@redhat.com/


=E2=80=94
Best Regards,
Yan Zi

--=_MailMate_B99B95B9-F3F7-4559-91D4-01BCFC794027_=
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJDBAEBCgAtFiEEh7yFAW3gwjwQ4C9anbJR82th+ooFAl0U4VMPHHppeUBudmlk
aWEuY29tAAoJEJ2yUfNrYfqKinUQAKM0LtiOpKq090Um2I0uGfI6LhFiYxu0mTu4
xn54F2sm6WjyH7iXsUexLGkOIwz2wVyY6htmKPWk6uyoP+GtvdFa8x9FGoQrvH0t
wa3NoM4fFa39jUu74HaUkBYZiRNgGJr5t4M5cAOTJ/um/KsCJRfnKDsIwCcysheF
tsvGoMZX6zzbwtbYscjvIiGlYQOXFYqdt7T5RFX7p8+k7ZG9/wyjmR3filj5kqFW
O6sTBHLVeCftBTggC9Qkn1BjC1smHBNiAm/yYG1wyLnZKyjCkVdFq4b/d2QIFS2a
BdyOPfETSAOYP/+PlmiISqaVgKxYh6pP7w1qUtJjt2Kag29cFboTHVJAnDduO/6P
JU+KLKKH54Bb82r6naLkEttksDBc+xZ9iPiso1FxyDnfyawo+eIji0luRaKeigxK
4lDTEqywX/VonL6VAc0pEJ/ZwQMPTIqr726ssWI3x99SwuZphPFjUv+b2z70bQTj
Ra/rfXGCIlHI0malYTsqyoLJ8z3kkflpyC/QPq5VmKR7dlJp8jSK92u0VkDWm596
QqI8lXd79EQ8s3DoRJwr5g8MI7mgmn5yGK0/r8XjElxZ+imK92otyJsrzLZTBcba
JSi1Za+UfoWzZgJZA38HfglnOJoFXikAWnMKVuKF0JvKHCPERZubmBtwFM5SSL9u
Y+dCDneI
=jqdz
-----END PGP SIGNATURE-----

--=_MailMate_B99B95B9-F3F7-4559-91D4-01BCFC794027_=--


--===============6684796085295054072==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6684796085295054072==--

