Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D711AECB2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 15:08:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=efOKcRwfYHU1W5dnyH3umT0rElmVKUMNZF/mDbpDoW8=; b=hcnCQuPeFYLaSd
	NobuHsLU+6x36fbk81Uotubw8XUFCTmF/ctlnxXeD/Bkxqg1oeTk2mbMdLN2WwFw1mpM1dT/Xm7Dj
	jmnGSmoOW1BAqzzsIkWG5QQ/a7OP2LWoQh37Rrp78RT3HJpe6W0i7pPSY/dWw6JPq4tdXqysulEXr
	fPW9CwS4UDHFXVUzyo1MZJOVwJLpDrMohbOvt6gx3GDLtkvW/0Y8NED6BEWfYWDFULY+gC9nfGDbu
	A0uw0EWcTfZiQojDtcfRfHqLMB6CjpCMh23OCUpErzls00YJ3KkkBNleP1smrXgAlMEU95SrsFA/v
	ssi09pXkzg5w3eN1ZXnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPnD9-0004jw-R8; Sat, 18 Apr 2020 13:08:43 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPnD0-0004ib-Pk
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 13:08:36 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200418130828epoutp02b1810f061edc76987b3f7a34c668b654~G6_nSzteR0467904679epoutp029
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Apr 2020 13:08:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200418130828epoutp02b1810f061edc76987b3f7a34c668b654~G6_nSzteR0467904679epoutp029
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587215308;
 bh=2oam/epN3FCBacMtvE1UAmxv8LZe2ptU3vW+pCn6n3M=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=TKP6Dzo+tvEkRV9Bd094zD4dKs8EyKOMBpx3GLJbqZcH+B+lTyYBuJTE5j5IdXzi9
 uhX/9kejM1q0RUJxzywv3oPc/UJuuvp4Q5g75Elr9RXkfG6Cg7vb9VGUX4Kn3tTqz5
 dDUeMxo1hOOW7JgBuV4PTW5jNNtwWFXp8s/GVAUQ=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20200418130826epcas5p2ee3a41f3c7b960b06dcc94cf07670058~G6_mDNO7N2178721787epcas5p2d;
 Sat, 18 Apr 2020 13:08:26 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 62.B1.04736.ACBFA9E5; Sat, 18 Apr 2020 22:08:26 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
 20200418130826epcas5p411cbf07b9ccbc0b17f829ac20451627d~G6_lmI9EF3188131881epcas5p4A;
 Sat, 18 Apr 2020 13:08:26 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200418130826epsmtrp2dd31965e35e759bba2b56163385e26a4~G6_llVVPR0489004890epsmtrp2F;
 Sat, 18 Apr 2020 13:08:26 +0000 (GMT)
X-AuditID: b6c32a4b-ae3ff70000001280-77-5e9afbca4d54
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 5C.E5.04024.ACBFA9E5; Sat, 18 Apr 2020 22:08:26 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200418130823epsmtip1430400b72b2507e6e3fa98bb740e8ffc~G6_i4A5F01834418344epsmtip1F;
 Sat, 18 Apr 2020 13:08:23 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Avri Altman'" <Avri.Altman@wdc.com>, <robh@kernel.org>
In-Reply-To: <SN6PR04MB46402211952BC3D427AADA00FCD60@SN6PR04MB4640.namprd04.prod.outlook.com>
Subject: RE: [PATCH v6 0/10] exynos-ufs: Add support for UFS HCI
Date: Sat, 18 Apr 2020 18:38:21 +0530
Message-ID: <002a01d61582$72250990$566f1cb0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJ+JYn7iegE7csgtlAtGJi8waFUgQJQDPilAZpCPd2nD2XiwA==
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0gUURTHubOzs+Pmxm21PCmkLRipqZVFo4lJhU0PIaEIorRNJxV11Z2y
 tCQzMfOVRVAuZi9dwTRl1dh8v239oKH5TjG0l8qKGqEIlbuj5Ld7zv397v8cuLRI/lFsS4er
 rnJqlTJSQUnJdy1OTq6dy5rA3Y1l7szPpT6KmS/TipnnrV1ipru7XMIMVbaRjG6iX8z0VudR
 zNPueoLJGNBTTFHHH4L5W6uXMIVVQ8jXku3NziJYXfF9iq0ouM2mGBpIdu7rMMlmVxYjdkG3
 jb3XmEGcps9LvUO4yPA4Tu3uc0kaNvbkExVTuOFGaatrEiqySEcWNOB9MPvlgygdSWk5rkGw
 2PKLEIp5BAuldyih+I3AUDJErSmLPaWrSh2C4RE9EooZBEnGBomJorAr6F+nmg1r7A1v2nPM
 T4lwOQHNDWUrOk1b4IvQUbHXxFhhXxj//s3sktgRJt4uSkyIDHvC92rO1JbhTWDInSRNZxF2
 Ae3LaZEwkAMsfdWKhajDMDjVTgiMDbQtZZoHBayVQId+mRSEo9BVkrW6jRVMdVRKhLMtLBjr
 KFMu4AjIrPYQ2regML99VT0EjZ/ySBMiwk5QVu0uRG2ErOVJQjBlkJYqF2hHuGvsWzXt4GFG
 hlhAWJh+EpyDtmvW7aVZt5dm3fya/1kvEFmMtnIxfFQox++P8VBx1914ZRR/TRXqFhwdpUPm
 f+Z8Uo90XaeaEaaRwlKWlp0bKBcr4/j4qGYEtEhhLWvyW2nJQpTxCZw6Okh9LZLjm5EdTSps
 ZI/EfRfkOFR5lYvguBhOvXZL0Ba2ScirNWV5wb4NzQ6cGKH56PEddgWXpTeTB/2lVflbcE2s
 KujHscc+k+FShfa9JvtBjepZaGxvWMCRUYfEltqE5L0ShzOE/7mIej9tqnHG9WxPYpXhszE+
 wa6cvuLS3308bm5nZ5PaNsB/6aC3p7E/rpPfbLAfe+V1IDp1zr93dHKXguTDlHucRWpe+Q98
 UUguYwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrGIsWRmVeSWpSXmKPExsWy7bCSnO6p37PiDHbNF7J4+fMqm8Wn9ctY
 LeYfOcdqcf78BnaLm1uOslhsenyN1eLyrjlsFjPO72Oy6L6+g81i+fF/TBb/9+xgt1i69Saj
 A4/H5b5eJo9NqzrZPDYvqfdoObmfxePj01ssHn1bVjF6fN4k59F+oJspgCOKyyYlNSezLLVI
 3y6BK2PRfbWCLu6KzW2NjA2MXZxdjJwcEgImEj8urWXuYuTiEBLYzSjRt3ALK0RCWuL6xgns
 ELawxMp/z9khil4xSkx4+gYswSagK7FjcRsbiC0iYCfxavJFRpAiZoFdTBJb721jgui4zyhx
 ePdkoCoODk6BWInjm41AGoQFHCQePH8GNohFQFXi8bof7CAlvAKWEs93pYKEeQUEJU7OfMIC
 YjMLaEs8vfkUzl628DUzxHEKEj+fLmOFuMFJ4sarY0wQNeISR3/2ME9gFJ6FZNQsJKNmIRk1
 C0nLAkaWVYySqQXFuem5xYYFhnmp5XrFibnFpXnpesn5uZsYwbGppbmD8fKS+EOMAhyMSjy8
 Bj0z44RYE8uKK3MPMUpwMCuJ8B50AwrxpiRWVqUW5ccXleakFh9ilOZgURLnfZp3LFJIID2x
 JDU7NbUgtQgmy8TBKdXAGLKew0jVq+vDFJkLfB9PfF8hnBfiKP6qpLjn9bKzswv3v9aZULbs
 N2fiY0Hlc45NlWsjrm5c+m9/24Ikd/8iydSJMeXCs1ieH/TTuX9QNmHNn4LFkSJ1tyNKm6e3
 1r4xecYl5OAt+Lamp6N7ZsvHulnXl516dvhoytpDV4uP15zu1duVfe/QciWW4oxEQy3mouJE
 APmZZKnJAgAA
X-CMS-MailID: 20200418130826epcas5p411cbf07b9ccbc0b17f829ac20451627d
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200417181006epcas5p269f8c4b94e60962a0b0318ef64a65364
References: <CGME20200417181006epcas5p269f8c4b94e60962a0b0318ef64a65364@epcas5p2.samsung.com>
 <20200417175944.47189-1-alim.akhtar@samsung.com>
 <SN6PR04MB46402211952BC3D427AADA00FCD60@SN6PR04MB4640.namprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_060835_014157_4A9C4B18 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 martin.petersen@oracle.com, linux-scsi@vger.kernel.org,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 cang@codeaurora.org, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Avri,

> -----Original Message-----
> From: Avri Altman <Avri.Altman@wdc.com>
> Sent: 18 April 2020 18:09
> To: Alim Akhtar <alim.akhtar@samsung.com>; robh@kernel.org
> Cc: devicetree@vger.kernel.org; linux-scsi@vger.kernel.org; krzk@kernel.org;
> martin.petersen@oracle.com; kwmad.kim@samsung.com;
> stanley.chu@mediatek.com; cang@codeaurora.org; linux-samsung-
> soc@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org
> Subject: RE: [PATCH v6 0/10] exynos-ufs: Add support for UFS HCI
> 
> 
> >
> > This patch-set introduces UFS (Universal Flash Storage) host
> > controller support for Samsung family SoC. Mostly, it consists of UFS
> > PHY and host specific driver.
> >
> > - Changes since v5:
> > * re-introduce various quicks which was removed because of no driver
> > * consumer of those quirks, initial 4 patches does the same.
> You forgot to add those quirks to ufs_fixups.

ufs_fixups are for ufs __device__ related quirks, what I have posted are all host controller quirks.
Please have a look on the other quirks related to HCI like UFSHCD_QUIRK_BROKEN_UFS_HCI_VERSION
Which is used in other vendor HCI driver. 
Let me know if I am missing anything here.

> Each patch that introduces a quirk needs to introduce its users as well - This is
> the reason it was removed in the first place.
> 
> Thanks,
> Avri


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
