Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F00E397402
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 09:54:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=he6PDjdnHadib0rP/G4Bpwp1cI/V2VDAzrIuGGvEKtQ=; b=XCZCrXsCndugAW
	md8Dc0WbiMHZSsjeAn0KSfxN087PPWPGGII95/6FHtJrUUoIkTBNmeqkd4ZS9r2ElwisCv5pB65i0
	8Gf23N/ygv1QMnw0Q2Gc5G09XidyBI4DaDDpnixH7/PGL1V8YW19v10PBwkEE4zfwlik5927qfAHq
	NRQL/dIUzTqHAXd0/ZYqSSNOfWBgltzRM5mTrrcnFWAiNasSfFor2IDLdJKEjrw7MUKnakmTSM/KL
	EUvNE73XgSkSw5AoFU7+2/2VyRYGilePGWd3ULKn3rSwZfeqdxgrY8Gp/eVPelqvEktLMrAiCS/Zj
	3/sk99X1QUjGcAzznmpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0LSG-0003Jw-6Z; Wed, 21 Aug 2019 07:54:52 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0LS3-0003JK-5S
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 07:54:40 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190821075436epoutp037560c7092bc0360e465dd207a33be7fd~84OxajDCW2419424194epoutp03h
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 07:54:36 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190821075436epoutp037560c7092bc0360e465dd207a33be7fd~84OxajDCW2419424194epoutp03h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566374076;
 bh=HTqJmzQb78c+WqBPB/TdiHvNXR8CCp1GserLHPcAGAM=;
 h=From:To:Cc:Subject:Date:References:From;
 b=B5jxDUEk9/Wv2ZsXCfJ0XkAJm9DIHY27cqGo72ZywbwCE+aVOvTsvyScwL4p6sybM
 owql64lYHWS43PFd/HInQdLPv83SRaGXip0WkjESDr2vLz6mjff1A3/7j7+O7TOWyK
 7NAk6jkpVH93RiwuqnuxfGH0LViWO/nOoUaD+g4w=
Received: from epsnrtp5.localdomain (unknown [182.195.42.166]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20190821075435epcas2p2329ac0d31488e7667c632810cc878449~84Ow2IQSF1069310693epcas2p2D;
 Wed, 21 Aug 2019 07:54:35 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.40.182]) by
 epsnrtp5.localdomain (Postfix) with ESMTP id 46D0LK1qCszMqYkr; Wed, 21 Aug
 2019 07:54:33 +0000 (GMT)
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 D2.06.04112.9B8FC5D5; Wed, 21 Aug 2019 16:54:33 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTPA id
 20190821075432epcas2p3758bf7b07f209fb4094d79bf46c8f4e9~84OuTKtNR3087030870epcas2p3N;
 Wed, 21 Aug 2019 07:54:32 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190821075432epsmtrp11638c73e7bcdf5c06195a2218aa9d41f~84OuR59zE2895328953epsmtrp1D;
 Wed, 21 Aug 2019 07:54:32 +0000 (GMT)
X-AuditID: b6c32a48-f37ff70000001010-86-5d5cf8b9dcde
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 D3.79.03706.8B8FC5D5; Wed, 21 Aug 2019 16:54:32 +0900 (KST)
Received: from KORDO035251 (unknown [12.36.165.204]) by epsmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20190821075432epsmtip253f2d9c05d500f90970ebcdc57e310bc~84Ot-od_T3239432394epsmtip2r;
 Wed, 21 Aug 2019 07:54:32 +0000 (GMT)
From: "boojin.kim" <boojin.kim@samsung.com>
To: "'Mike Snitzer'" <snitzer@redhat.com>
Subject: Re: [PATCH 6/9] dm crypt: support diskcipher
Date: Wed, 21 Aug 2019 16:54:32 +0900
Message-ID: <001a01d557f5$ab0a4a40$011edec0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Content-Language: ko
Thread-Index: AdVX9QyEG4+5qw7KRk2/gqnMxtuMUA==
X-Brightmail-Tracker: H4sIAAAAAAAAA01Tf0xTVxT29r2+9wBLrhXntZrZvWkWJGCLll0WmVt0+jJNrNkSo4LdC7wA
 WX+tr3WwZJNtWBGadZopUruGuWm0C0ELCigYRzs7hl11qJOquEXiIvhrKAR/jbV9mPHfOd/5
 vnvOd08OQyjraRVTbrYLNjNvZKlU8kQwE2d3jBcWaRqHUvHooxoSN/96lsA/XndTuHdPRIa9
 0WoSd93bL8dNnc8IXDc0Dw82ewh85YlTjt03hwkcjR6lceDmZTnuimXhGwOPZbjBd43Cvx9Y
 jYd8YyTu7Oohcd9JL4VDE26A90VPy7Dz2CjA212PaRxu2vDWHK71SL+Mq275mDtxZiHXF3Fw
 Af9Oirt2uZPiWn7Yxp1qfCjjvjj3M8HdP32J4r5q9QPuYeBl/fRNxmVlAl8i2NSCudhSUm4u
 LWDXvGdYYdDlabTZ2nz8Oqs28yahgF25Vp+9qtwY986qt/JGRxzS86LILn5zmc3isAvqMoto
 L2AFa4nRqtVac0TeJDrMpTnFFtMbWo0mVxdnfmAsi9XVU9Z9TIXzSoCoAiGqFqQwCC5F4RsB
 UAtSGSVsB8gd9E8mIwBVj18nEywlHAMoun12LWCSir0PUiVOF0C7XbspKbkN0K3zz5ICCmah
 lnDipRQmA2aiX65+I0+QCPgvjQZHupOkmVCHBkJ1yTlIuBAd/Pt+PKYZBcxHA4YEqoAzUE/D
 YJJNwPmo7a6XkKZWo/bIMJDwDLR/p5OQWuWgCx2PyEQrBD9n0E/hKloSrESH97pkUjwTDYVb
 J3EVuu12Tsbb0KVD39OS2AXQuScvCkuQ59YOkHBPxM00n1wsfcSrKBSbnC0d1QSf0xKsQDVO
 pSRcgL4d6ZNJsAo9cH0mwRy62DtOfg1e8Uwx6Zli0jPFmOf/to2A9IOXBKtoKhXEXOvSqZsO
 gORRLOLawZnf1nYDyAB2uqK9f3ORUs5vFStN3QAxBJuhqPBuKlIqSvjKTwSbxWBzGAWxG+ji
 G9hFqGYVW+InZrYbtLrcvDxNvg7r8nIxO1sRSOsvVMJS3i58KAhWwfZCJ2NSVFXg+LyNF1t7
 vcsVc97u2LyhPgidT6/Oivas2LOmAjR9dzyYJYxX3gG+daubjvlnLFHb/3QMn/0y8sdcIT1t
 7N77Wy483XX+VKT5n/mFfemv8b627Mwdbe8uyPRNlK9/Z9rdjZ+G//poeb0exg6v00+7g7wT
 oVhaAxyDwVDWKLeq4kAnzZJiGa9dRNhE/j+QRa7/KgQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrBIsWRmVeSWpSXmKPExsWy7bCSvO6OHzGxBjNXaFh8/dLBYrH+1DFm
 i9V3+9ksTk89y2Qx53wLi8Xed7NZLdbu+cNs0f1KxuLJ+lnMFjd+tbFa9D9+zWxx/vwGdotN
 j6+xWuy9pW1x/95PJouZ8+6wWVxa5G7xat43Fos9e0+yWFzeNYfN4sj/fkaLGef3MVm0bfzK
 aNHa85Pd4vjacAdJjy0rbzJ5tGwu99h2QNXj8tlSj02rOtk87lzbw+axeUm9x+4Fn5k8ms4c
 ZfZ4v+8qm0ffllWMHp83yQXwRHHZpKTmZJalFunbJXBl3OqezlYwg6Oi7cYm5gbGI2xdjBwc
 EgImEtM+cHUxcnEICexmlFg16QZjFyMnUFxKYmv7HmYIW1jifssRVoii54wSD39eBUuwCWhL
 bD6+CqxBREBT4sTtKawgNrPANA6JXR/EQWxhAVOJe0e62UBsFgFViaXP3wPZ7By8ApYS9+JB
 orwCghInZz5hATmHWUBPom0jI8QQeYntb+dAXaAgsePsa6i4iMTszjZmiKV6Ehd3fmGZwCg4
 C8mkWQiTZiGZNAtJ9wJGllWMkqkFxbnpucWGBYZ5qeV6xYm5xaV56XrJ+bmbGMHxr6W5g/Hy
 kvhDjAIcjEo8vDtuRscKsSaWFVfmHmKU4GBWEuGtmBMVK8SbklhZlVqUH19UmpNafIhRmoNF
 SZz3ad6xSCGB9MSS1OzU1ILUIpgsEwenVANjcVNZnlGXxD0pT0sbo+QV7PNEp90NOvP9wOXl
 ubMDp85MW/HfyaitQ3zr5d+zitTdAy4m308+t/jIDR2XdxHl6Z+vt8UuT9421zd+h6Nl/q0M
 kb2LZ/13SKt+cPrVkmu7X2bIhQV+j9rfcVJoQtHaO/kTVjnKxt+va+/TC6x/3Pk19WTu8yNT
 lFiKMxINtZiLihMBBGnmbfsCAAA=
X-CMS-MailID: 20190821075432epcas2p3758bf7b07f209fb4094d79bf46c8f4e9
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190821075432epcas2p3758bf7b07f209fb4094d79bf46c8f4e9
References: <CGME20190821075432epcas2p3758bf7b07f209fb4094d79bf46c8f4e9@epcas2p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_005439_612583_C391EABF 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: 'Ulf
 Hansson' <ulf.hansson@linaro.org>, 'Mike Snitzer' <snitzer@redhat.com>,
 dm-devel@redhat.com, 'Andreas Dilger' <adilger.kernel@dilger.ca>,
 'Alasdair Kergon' <agk@redhat.com>, 'Eric Biggers' <ebiggers@kernel.org>,
 linux-samsung-soc@vger.kernel.org, 'Herbert Xu' <herbert@gondor.apana.org.au>,
 'Krzysztof Kozlowski' <krzk@kernel.org>,
 'Jaehoon Chung' <jh80.chung@samsung.com>, 'Kukjin Kim' <kgene@kernel.org>,
 linux-ext4@vger.kernel.org, 'Chao Yu' <chao@kernel.org>,
 linux-block@vger.kernel.org, linux-fscrypt@vger.kernel.org,
 'Jaegeuk Kim' <jaegeuk@kernel.org>, linux-arm-kernel@lists.infradead.org,
 'Jens Axboe' <axboe@kernel.dk>, 'Theodore Ts'o' <tytso@mit.edu>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, "'David S. Miller'" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 09:13:36AM +0200, Milan Broz wrote: 
>
> NACK.
> 
> The whole principle of dm-crypt target is that it NEVER EVER submits
> plaintext data down the stack in bio.
> 
> If you want to do some lower/higher layer encryption, use key management
> on a different layer.
> So here, just setup encryption for fs, do not stack it with dm-crypt.
> 
> Also, dm-crypt is software-independent solution
> (software-based full disk encryption), it must not depend on
> any underlying hardware.
> Hardware can be of course used used for acceleration, but then
> just implement proper crypto API module that accelerates particular
cipher.

I'm sorry for breaking the basic rules of dm-crypt. 
But, if I want to use the H/W crypto accelerator running in storage
controller,
I have to drop plaintext to bio.
I think the "proper crypto API module" that you mentioned is diskcipher
because diskcipher isn't only for FMP.
Diskcipher is a crypto API that supports encryption on storage controllers.

Thanks
Boojin Kim


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
