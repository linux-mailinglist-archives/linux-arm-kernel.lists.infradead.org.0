Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1399A8B6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 09:24:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=3DdUiOLvxBVNpnJc6SD3MgcTt2dW93C2K0UancKHDoM=; b=LLJyWmAlp32xSt
	pYLuTRwxpKxffsM9IGcry8XVmk6xwVHqRlkaegD8d/EIowe1a+pRbbEuP5q9hbzNkz3OwreCP5VY6
	Ag83WISgfcDE1aDOFOSfNKSMjIAH0Oi70L2BlE+eIrXA5CHfmrSdh2XzwLqu22qegQhydpYr9H+EY
	GL1J9Om/9WK+/xmxfvLNhI+nAevn+VRdMTFh3nmOZNaenkYgTlATeBDRlhyHpmy2boDFOkwMm5SlH
	QboAp1AM3RKEXBIZbEofGYfnLkbBujzH5RrrTCVL5l2W3gapAZcqAhx9AH66k3A2FB+R3y7fCYlwL
	IAXYDAKmtXdm5i1v9BeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i13wJ-0007g6-25; Fri, 23 Aug 2019 07:24:51 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13qZ-00026D-14
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 07:18:57 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190823071851epoutp0286c3f01f28bc6a7d09b962cb89bfca87~9fCJA63RC0151301513epoutp02F
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 07:18:51 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190823071851epoutp0286c3f01f28bc6a7d09b962cb89bfca87~9fCJA63RC0151301513epoutp02F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566544731;
 bh=+fYE/jWK1CRZuDZ2tVBT+Ef/F2Gp0hZ+OjNZD7CcuN0=;
 h=From:To:Cc:Subject:Date:References:From;
 b=aWmW35Vn24/7mdYGDEOrguz11GUaxtkJDcq0w2ks2h33m3mO1y55Iv6RydZmr4i46
 T3wICo2d6uSCKRw3tnYhBEcfYCynno69qGXuF6MbNT+xy9aThYWQNc21fNTNdBF5F2
 OoXBWhsI4zFivDnfLIrqM3D2bJmGEeeVBA8ueEN0=
Received: from epsnrtp5.localdomain (unknown [182.195.42.166]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20190823071851epcas2p2a4a203c12c80c1285afac51eb7c84d8f~9fCIdn5SC1459514595epcas2p2h;
 Fri, 23 Aug 2019 07:18:51 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.40.182]) by
 epsnrtp5.localdomain (Postfix) with ESMTP id 46FCS92KMhzMqYkd; Fri, 23 Aug
 2019 07:18:49 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 47.3F.04112.9539F5D5; Fri, 23 Aug 2019 16:18:49 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTPA id
 20190823071848epcas2p3fe4d229d22b14162c354f88a29f366c2~9fCGBJdVk1882918829epcas2p3k;
 Fri, 23 Aug 2019 07:18:48 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190823071848epsmtrp10b85cadf4258caf7cfd003e7d6717ccd~9fCF-zuWg1973319733epsmtrp1u;
 Fri, 23 Aug 2019 07:18:48 +0000 (GMT)
X-AuditID: b6c32a48-f37ff70000001010-57-5d5f935942ee
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 77.E5.03706.8539F5D5; Fri, 23 Aug 2019 16:18:48 +0900 (KST)
Received: from KORDO035251 (unknown [12.36.165.204]) by epsmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20190823071848epsmtip1133664f58af60792a11a792437cc8f99~9fCFn2bUi1770217702epsmtip1x;
 Fri, 23 Aug 2019 07:18:48 +0000 (GMT)
From: "boojin.kim" <boojin.kim@samsung.com>
To: "'Herbert Xu'" <herbert@gondor.apana.org.au>
Subject: Re: [PATCH 6/9] dm crypt: support diskcipher
Date: Fri, 23 Aug 2019 16:18:47 +0900
Message-ID: <002b01d55983$01b40320$051c0960$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdVZgoTeM6vEQWOMSaO8aX0QkbtHrA==
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA01Tf0xTVxjN7Xt9r6JdrqVudw3bujc0EQO2ne0uC2xmY/jMTMSZuOjGujf6
 Uoj9lb6WqdmEbFAB2dAYEQoSf8XNbgQtiMS1hCCs4kSyEYwarVskqwIriIABRdbycOO/853v
 nPt9J1+ujFAcoVWyApuLd9o4C0MlkK2XVhtStx8y5mrC1XI8OVFG4qYrvxL4pztVFP7tcK8E
 1/eVkDgYrZPixsBTAu8fSsKDTV4C35jxSHHVvWEC9/WdpbH/3nUpDt5ag++GpyW4tuE2hf84
 sQEPNUyROBDsIXH/xXoKd81VAVzT1y7BnnOTAJdWTtM41Pjx+pfZljM3JWxJ85dsa8dKtr/X
 zfp95RR7+3qAYptPFbG/HHskYb+52k2wo+0DFPt9iw+wj/yv5izbYcnI5zkT71Tztjy7qcBm
 zmQ+3Gp836g3aLSp2nT8FqO2cVY+k8nalJOaXWCJZWfUhZzFHaNyOEFg1r6T4bS7Xbw63y64
 MhneYbI4tFpHmsBZBbfNnJZnt76t1Wh0+pjyc0v+yPkfpY4QvevOz2GiGBynKsASGYLrUPnI
 abICJMgUsA2gga4wIRbjAEWiE7RYTAE0fqD2P0v0/jAdxwoYBOjxRLYoegDQ04fnpfEGBdeg
 5pAPxLESatAF/xMQFxHwGY0GxzvJeCMR6lG4a3/sVZmMhCtRw6QxTsthOmo82kOJeDnqqR2c
 lxPwNXThn3pCXEKN2nqHQdyqhGnIU+IUJUpUV+5ZkEzT6Er/chFnobpvRyUiTkRDoRZaxCr0
 oMqzgIvQwOmT84ERrATo6szzxpvI+/e++VkEXI2aLq6NQwTfQF23FjZ7AZVdmqVFWo7KPArR
 mIyOjvdLRFqFxir3ijSLhh6XggPgde+iiN5FEb2Lsnj/H3sMkD7wIu8QrGZe0DnWLb60H8x/
 ihS2DXRc29QJoAwwy+SXKz7LVUi5QmG3tRMgGcEo5YUHY5TcxO3ewzvtRqfbwgudQB87wEFC
 tSLPHvtiNpdRq9cZDJp0PdYbdJh5Se5fevNTBTRzLn4nzzt453OfRLZEVQzWp3SsqI8EehAc
 G/xA+D0yV5R8ZiL4SQgmrNr6Q7mueOmN4u+UjRHSvfH+u9fYVaaxqZzWuj0j1dtqyo7MKLt3
 Hv6o4VDyX1knc7/elr1xy+xkS0Yi0335meYLvW/vn9GkVONcYPNs5Kz2q+pXkvZ17zrVXjlq
 vlvzXulszY7pJ5HoQ4YU8jltCuEUuH8B2IqajSoEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrBIsWRmVeSWpSXmKPExsWy7bCSnG7E5PhYg87bihZfv3SwWKw/dYzZ
 YvXdfjaL01PPMlnMOd/CYrH33WxWi7V7/jBbdL+SsXiyfhazxY1fbawW/Y9fM1ucP7+B3WLT
 42usFntvaVvcv/eTyWLmvDtsFpcWuVu8mveNxWLP3pMsFpd3zWGzOPK/n9Fixvl9TBZtG78y
 WrT2/GS3OL423EHSY8vKm0weLZvLPbYdUPW4fLbUY9OqTjaPO9f2sHlsXlLvsXvBZyaPpjNH
 mT3e77vK5tG3ZRWjx+dNcgE8UVw2Kak5mWWpRfp2CVwZb7auYC04zl5xd8095gbGhWxdjJwc
 EgImEu9evGYHsYUEdjNK9B0xgYhLSWxt38MMYQtL3G85wtrFyAVU85xR4syCxWANbALaEpuP
 r2IEsUUEDCS2b/oNZjMLTOOQ2PVBHMQWFjCVuHekG2gZBweLgKrEvK/xIGFeAUuJtXNPskHY
 ghInZz5hASlhFtCTaNsINUVeYvvbOVAnKEjsOPuaEaREBKSkpQiiRERidmcb8wRGwVlIBs1C
 GDQLyaBZSDoWMLKsYpRMLSjOTc8tNiwwzEst1ytOzC0uzUvXS87P3cQIjn8tzR2Ml5fEH2IU
 4GBU4uEt6IiLFWJNLCuuzD3EKMHBrCTCWzYRKMSbklhZlVqUH19UmpNafIhRmoNFSZz3ad6x
 SCGB9MSS1OzU1ILUIpgsEwenVAPj/OSa9W1d/dfS9K63n54b1X3C+cSWAqnD/vI1HyIsY87q
 y9e/2CLn6c+WUXD5Ym3vnseaC/u2PP5mt3a5zZYUj0uvzY7c3Zv15QDjJeHpgkwt3gwHH/eF
 CF+KdStfHfH8kRKHhM5DuXgjtzMbfnMVufJKnMreU1zOr6S3rV5ln++hk4tZLD4qsRRnJBpq
 MRcVJwIAsdKINPsCAAA=
X-CMS-MailID: 20190823071848epcas2p3fe4d229d22b14162c354f88a29f366c2
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190823071848epcas2p3fe4d229d22b14162c354f88a29f366c2
References: <CGME20190823071848epcas2p3fe4d229d22b14162c354f88a29f366c2@epcas2p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_001855_476373_80CE86CE 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Fri, Aug 23, 2019 at 01:28:37PM +0900, Herbert Xu wrote:
>
> No.  If you're after total offload then the crypto API is not for
> you.  What we can support is the offloading of encryption/decryption
> over many sectors.
>
> Cheers,

FMP doesn't use encrypt/decrypt of crypto API because it doesn't
expose cipher-text to DRAM.
But, Crypto API has many useful features such as cipher management,
cipher allocation with cipher name, key management and test manager.
All these features are useful for FMP.
FMP has been cerified with FIPS as below by using test vectors and
test manager of Crypto API.
https://csrc.nist.gov/projects/cryptographic-module-validation-program/Certi
ficate/3255
https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-pr
ogram/documents/security-policies/140sp3255.pdf

Can't I use crypto APIs to take advantage of this?
I want to find a good way that FMP can use crypto API.

Thanks
Boojin Kim.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
