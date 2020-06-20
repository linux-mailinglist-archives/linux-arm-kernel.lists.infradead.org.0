Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99647201F9D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 03:59:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VmMViExNZp5YJSygviDfEynKk4t7pujWINk4PkVh7aw=; b=QwIZVRbTrqZxxN
	CH/T01gxkiCDDvawrHVJ4KD5v9Qfpdipru6aoY9RyMFYaAG8h0xENN9vn4CbntorWGfGN72AGM7Oh
	BKQtFXVDQXg19SGDxnrxh+Q7De9/vv9eBxgk5HHyaFX02oUpTlUGBxf0sv+mEHiv3gbr3Fq8PgAXf
	uyHul6mSGFTSlc/7LGHRddkhSTBtNZX/ESLdOqElh+hJdXVosfuzK2HKqthhDnb2eZIo1am7YMEXU
	Mhdm6O/Y201mhm3tdCsCOd5+CYuftFt7Ofjevo75Be7WJ8usUb3p/WthlKybNYdztnyP+Z5nElk2K
	3ku65fSjaw/nG4LKFVgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmSnG-0001AZ-TL; Sat, 20 Jun 2020 01:59:42 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmSn4-00019x-Ju
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jun 2020 01:59:32 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200620015927epoutp03ba18ea37a0730d50a97b10902b0b5236~aHfeOo1k-1191211912epoutp03b
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 20 Jun 2020 01:59:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200620015927epoutp03ba18ea37a0730d50a97b10902b0b5236~aHfeOo1k-1191211912epoutp03b
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592618367;
 bh=KdLaFttTZsyLbLRvJHiqZZhUTfRUx/An8XWa/zYCky0=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=oX1UTtOWCoE5jUMS2elv7zih/NrgIjrYfj26zQDF7JtaQWbNDvu7nofN1zZEApbhr
 qGolaSt1rlf4BnmObwyJwKATJNucFtBN9p1sUBm17I0Jx1TI0pEy3zUdcNy1axGl62
 zeIQt+OYsfoYiGkpQo8ojgqxWmIqPSTF5fFv2GMY=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTP id
 20200620015926epcas5p38d9b638e7ae6c699ed72a6d851962376~aHfdv7hBN1787917879epcas5p3M;
 Sat, 20 Jun 2020 01:59:26 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 84.5F.09467.E7D6DEE5; Sat, 20 Jun 2020 10:59:26 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200620015926epcas5p3bf08a9d9d8adab3e024bc8142a3d5b5a~aHfdKypJD1117311173epcas5p3b;
 Sat, 20 Jun 2020 01:59:26 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200620015926epsmtrp1fcbb557b35ef1f78d20aa5ef881c26c1~aHfdHT9A21621516215epsmtrp1n;
 Sat, 20 Jun 2020 01:59:26 +0000 (GMT)
X-AuditID: b6c32a49-a29ff700000024fb-79-5eed6d7e42e9
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 9C.51.08303.D7D6DEE5; Sat, 20 Jun 2020 10:59:26 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200620015921epsmtip2d2869c2bab2e67208638cb55561d2589~aHfYlhY5W2707527075epsmtip2W;
 Sat, 20 Jun 2020 01:59:20 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Kishon Vijay Abraham I'" <kishon@ti.com>, <robh@kernel.org>
In-Reply-To: 
Subject: RE: [PATCH v10 00/10] exynos-ufs: Add support for UFS HCI
Date: Sat, 20 Jun 2020 07:29:18 +0530
Message-ID: <000001d646a6$6cb5fd70$4621f850$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQNA14zZ9KpC6NxovY65uGX80LQ4kgIpylB3AdlmWUMBx1WEmQIl7Fhypb7UH7CADUNgsA==
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrEKsWRmVeSWpSXmKPExsWy7bCmhm5d7ts4gwlXtC1e/rzKZvFp/TJW
 i/lHzrFaXHjaw2Zx/vwGdoubW46yWGx6fI3V4vKuOWwWM87vY7Lovr6DzWL58X9MFv/37GC3
 WLr1JqPFzjsnmB34PC739TJ5bFrVyeaxeUm9R8vJ/SweH5/eYvHo27KK0eP4je1MHp83yXm0
 H+hmCuCM4rJJSc3JLEst0rdL4MronXqJueA4e8XzjmVsDYxfWbsYOTgkBEwkNm2w6mLk4hAS
 2M0osfn3HGYI5xOjxMGjx1ggnM+MEid3PmTqYuQE61i3diETRGIXo8TlNQugWt4wShx7dYUV
 pIpNQFdix+I2NpAdIgKOEg274kBqmAWamSWOfe4Di3MK8EpM+GcNUi4s4CTxesUesAUsAqoS
 K7u7wGxeAUuJHceXsEPYghInZz5hAbGZBbQlli18zQxxkILEz6fLwNaKCIRJfH3yEapGXOLo
 zx6w2yQEHnBInGs8CdXgIjHl8T0oW1ji1fEt7BC2lMTL/jZ2SLhkS/TsMoYI10gsnXeMBcK2
 lzhwZQ4LSAmzgKbE+l36EKv4JHp/P2GC6OSV6GgTgqhWlWh+dxWqU1piYnc3NNA9JPqaRCcw
 Ks5C8tcsJH/NQnL/LIRdCxhZVjFKphYU56anFpsWGOallusVJ+YWl+al6yXn525iBCc7Lc8d
 jHcffNA7xMjEwXiIUYKDWUmE9/D7N3FCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeZV+nIkTEkhP
 LEnNTk0tSC2CyTJxcEo1MEWuEZ+wSevR/fYuPfZLuzy3LWMocTHNdiwTmp3wV8hiP1/0ZU6l
 UJu/0+5/2Hnv3LSHx4ME7l02vLl7wQWTiN2eAaK+TI1C22bIN1lNODw5zIdtFt/eZDmDMpZZ
 mW/WC28Ncu+yncn+7fq3ym/csyev1xU8U7xAtdRhYiXLHt1Ln1viz51u8UvYxD9xgVGkRcCb
 RNfXq5c37vhcc0rspMLKWQvf1N1r+fXeuyPyooyseaGzZuKz+s5Jx9pnVPEy13AeYH4188jf
 xaaKl3wKz88qneK14LRiz+J8uaBUu22KfYLFrw7npiyb0cvwLNvx3IXdQu29FzleK35/aHLS
 Vicy5M/6i/ueCydUec7JnKrEUpyRaKjFXFScCADjEVON5QMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrJIsWRmVeSWpSXmKPExsWy7bCSvG5d7ts4g19tTBYvf15ls/i0fhmr
 xfwj51gtLjztYbM4f34Du8XNLUdZLDY9vsZqcXnXHDaLGef3MVl0X9/BZrH8+D8mi/97drBb
 LN16k9Fi550TzA58Hpf7epk8Nq3qZPPYvKTeo+XkfhaPj09vsXj0bVnF6HH8xnYmj8+b5Dza
 D3QzBXBGcdmkpOZklqUW6dslcGU0NF9gLtjEXnF89kGmBsZHrF2MnBwSAiYS69YuZAKxhQR2
 MEr8OW0HEZeWuL5xAjuELSyx8t9zIJsLqOYVo8SjS6cZQRJsAroSOxa3sYHYIgLOEne3PWUF
 KWIW6GeW2HJ/E1THMiaJh5f+AK3g4OAU4JWY8M8apEFYwEni9Yo9YJtZBFQlVnZ3gdm8ApYS
 O44vYYewBSVOznzCAmIzC2hLPL35FM5etvA1M8R1ChI/ny5jhTgiTOLrk49QNeISR3/2ME9g
 FJ6FZNQsJKNmIRk1C0nLAkaWVYySqQXFuem5xYYFRnmp5XrFibnFpXnpesn5uZsYwbGrpbWD
 cc+qD3qHGJk4GA8xSnAwK4nwHn7/Jk6INyWxsiq1KD++qDQntfgQozQHi5I479dZC+OEBNIT
 S1KzU1MLUotgskwcnFINTKm2QeoLxG/p2817qGsWVa1woGeO1eLm6Ys/MU2Qi0tQ/vCSfdU6
 CY7e7fx1bG/+8/r1GW2exMkZl2KcvrOsdF34RcF+ptrzMmeetsfKCr50WXlFfEZmo+N5xn/c
 v40Wnuc1mPGNO+y3xUMu1TcnzU/eWxxpFPnoZtkhtQapgKXqLt9K8/e9jr5rNDmg3raG+SOX
 5ZrFb9XNEm54XzFaF9A7waGzosl2z60TkQsubHPe1nHZZPqG5z6tey5nbjz9eJN3YertxxGe
 22Z7nBZsOKcfdW7KTH+XyTXLdWaIKhR/e8Tt5dnDVsZR6W4Q0XO08LGUsqCP2OtY2YbXBbll
 l+Zxzt7f1WK0rYNtjbmJEktxRqKhFnNRcSIABRKlukwDAAA=
X-CMS-MailID: 20200620015926epcas5p3bf08a9d9d8adab3e024bc8142a3d5b5a
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200528013223epcas5p2be85fa8803326b49a905fb7225992cad
References: <CGME20200528013223epcas5p2be85fa8803326b49a905fb7225992cad@epcas5p2.samsung.com>
 <20200528011658.71590-1-alim.akhtar@samsung.com>
 <159114947915.26776.12485309894552696104.b4-ty@oracle.com>
 <013a01d63d3e$ecf404d0$c6dc0e70$@samsung.com>
 <89b96bd0-a9a3-cdd8-dc67-1f9f49eef264@ti.com> 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_185930_904576_BFE21E91 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 "'Martin K. Petersen'" <martin.petersen@oracle.com>,
 linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org, krzk@kernel.org,
 kwmad.kim@samsung.com, avri.altman@wdc.com, 'Vinod Koul' <vkoul@kernel.org>,
 cang@codeaurora.org, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kishon,

> -----Original Message-----
> From: Alim Akhtar <alim.akhtar@samsung.com>
> Sent: 11 June 2020 20:49
> To: 'Kishon Vijay Abraham I' <kishon@ti.com>; 'Martin K. Petersen'
> > >>
> > >> Applied [1,2,3,4,5,9] to 5.9/scsi-queue. The series won't show up
> > >> in my
> > > public
> > >> tree until shortly after -rc1 is released.
> > >>
> > > Thanks Martin,
> > > Hi Rob and Kishon/Vinod
> > > Can you please pickup dt-bindings and PHY driver respectively?
> >
> > You might have CC'ed me only for the PHY patch. I don't have the
> > dt-bindings in my inbox. Care to re-send what's missing again? This
> > will be merged after -rc1 is tagged.
> >

-rc1 is out, I do not see phy driver patch in your tree[1] yet, let me know if I am looking into right tree.
[1] -> git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git

Thanks! 

> Sure, will re-send this series.
> 
> > Thanks
> > Kishon


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
