Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F4C1F6AC1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 17:19:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=waDd616XofGwu4yNWKvocqJbMaqXgvQqu7E5gbCCGc4=; b=tc/w2vu8WovXIJ
	PUeKhuq+2yrepMtHMxwfoH12g9JUZJ6SARut3YWip96hIliM02mNIEydvEVKiHlMlhIPyUQnDKSMg
	s3dsLU/ih4hrBKbLfLmwehgQZhMHEtZqb+39FecaB0RxYGsBAernGeYGa0zutPW3SauBIUwrMCHMq
	QqWAZBhyAPwJBzmeT2ti9V37nW/Y0IPX9jSRWkzU8paQEccRUjtuR3ISXZi26Qkn+ViJ/1fLrxt2X
	BpkuTAy61+AoGynh3BTBhco0TsBDdMlLytTs7A8nUj+8uEGqrqPnzGBiDPnz7eEBnOatsaD44f04L
	PzCimXWGgm2zZBVhp3Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjOz2-0004vZ-As; Thu, 11 Jun 2020 15:19:12 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjOys-0004uL-BE
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 15:19:04 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200611151852epoutp033a721eb4346fe79b922b785a9db07179~Xhl4Y5wgm2034620346epoutp03z
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 15:18:52 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200611151852epoutp033a721eb4346fe79b922b785a9db07179~Xhl4Y5wgm2034620346epoutp03z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591888732;
 bh=h0Jr8xoU2TPvELPqg4DkGPi4elgZ88JtRpm3jI4sPwQ=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=E2qXLywZVzIV2fW1SRVFtB8sfs2v4wTUs+C83cFxe4fQV8bMZOIjCHUKh5h+ZPt3S
 JESIWUg9U8ylqBnIVXGEy9vuGVUXYCEFg6Hokbepzg6Ny2SbxkI4oY61u0hooc5HH/
 aU1v9ViSpaq+AvezROTfzehwaVuSG0jwDmdN6YIc=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20200611151850epcas5p24e66287669171ac559a61cc700b19d56~Xhl3bd9oW2174021740epcas5p2G;
 Thu, 11 Jun 2020 15:18:50 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 9F.67.09467.A5B42EE5; Fri, 12 Jun 2020 00:18:50 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
 20200611151850epcas5p2a784c542779d9bc1bdcfca28ea8a6c2a~Xhl2nsFSe1713117131epcas5p2d;
 Thu, 11 Jun 2020 15:18:50 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200611151850epsmtrp1fec96d9694da2e652f1efbe1d90ef856~Xhl2mz7qk1872718727epsmtrp1v;
 Thu, 11 Jun 2020 15:18:50 +0000 (GMT)
X-AuditID: b6c32a49-a3fff700000024fb-94-5ee24b5a1ab7
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 D2.DF.08303.95B42EE5; Fri, 12 Jun 2020 00:18:50 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200611151846epsmtip14b4bb6edb355961b9377b5a92da29cb5~Xhlzf0dnn1495414954epsmtip1S;
 Thu, 11 Jun 2020 15:18:46 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Kishon Vijay Abraham I'" <kishon@ti.com>, "'Martin K. Petersen'"
 <martin.petersen@oracle.com>, <robh@kernel.org>
In-Reply-To: <89b96bd0-a9a3-cdd8-dc67-1f9f49eef264@ti.com>
Subject: RE: [PATCH v10 00/10] exynos-ufs: Add support for UFS HCI
Date: Thu, 11 Jun 2020 20:48:44 +0530
Message-ID: <001c01d64003$9bca1500$d35e3f00$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQNA14zZ9KpC6NxovY65uGX80LQ4kgIpylB3AdlmWUMBx1WEmQIl7Fhypb7UH7A=
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrMKsWRmVeSWpSXmKPExsWy7bCmpm6U96M4gxNrTC1e/rzKZvFp/TJW
 i/lHzrFaXHjaw2Zx/vwGdoubW46yWGx6fI3V4vKuOWwWM87vY7Lovr6DzWL58X9MFv/37GC3
 WLr1JqPFzjsnmB34PC739TJ5bFrVyeaxeUm9R8vJ/SweH5/eYvHo27KK0eP4je1MHp83yXm0
 H+hmCuCM4rJJSc3JLEst0rdL4Mq4fESxoFmoYta6+4wNjD/5uhg5OSQETCQOXTjM3MXIxSEk
 sJtR4vafM2wQzidGiQsz5jFCOJ8ZJd7+e88I07J+5TMmiMQuRolZd3ayQDhvGCU2T9/OBlLF
 JqArsWNxG5gtIlAhcXP2b3aQImaBc0wS8z5sYwdJcApYSbzt3gdWJCzgJPF6xR6gsRwcLAKq
 Em+/p4OEeQUsJa4/eskGYQtKnJz5hAXEZhbQlli28DUzxEUKEj+fLmOF2OUnMWvpdnaIGnGJ
 oz97wJ6TEHjBIXFozXGoBheJI3PfMkHYwhKvjm9hh7ClJF72t7GD3CAhkC3Rs8sYIlwjsXTe
 MRYI217iwJU5LCAlzAKaEut36UOs4pPo/f2ECaKTV6KjTQiiWlWi+d1VqE5piYnd3awQJR4S
 fU2iExgVZyH5axaSv2YhuX8Wwq4FjCyrGCVTC4pz01OLTQsM81LL9YoTc4tL89L1kvNzNzGC
 052W5w7Guw8+6B1iZOJgPMQowcGsJMIrKP4wTog3JbGyKrUoP76oNCe1+BCjNAeLkjiv0o8z
 cUIC6YklqdmpqQWpRTBZJg5OqQam9RdPcrwQVpacJqfjY3+z0yDBdPLreQqHnF7mfGHs1U7e
 8PnVPsb5ZUwlry0tnDz0zrzesnrt9C0Xt3vlhc2LMfnv7BRtarIvtU9r/0WHB2ohs6oT1W/m
 uBr++/jpsmfqZZ4tZTE73shps/W91pgyY/2c9uYmD8UNt4V68pXkvoi4da86dccum3XXdVv2
 M8fvf9wYt2ErT/377FMTZ/VelbUsKpwRElsz8cyUN25TK07/EbzbI/Rtj4bsroS9vj1r5k+r
 6vE/84bzv2n1naPpYa5Bcena+w9Miv30T4K5imVtUNfCKx+7GVj3aPheOWL67+1BORG5RIYC
 jqol36y/SOfeW1W+dulJ+w9tTAzxSizFGYmGWsxFxYkAai2nseYDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrBIsWRmVeSWpSXmKPExsWy7bCSnG6U96M4g3mPGC1e/rzKZvFp/TJW
 i/lHzrFaXHjaw2Zx/vwGdoubW46yWGx6fI3V4vKuOWwWM87vY7Lovr6DzWL58X9MFv/37GC3
 WLr1JqPFzjsnmB34PC739TJ5bFrVyeaxeUm9R8vJ/SweH5/eYvHo27KK0eP4je1MHp83yXm0
 H+hmCuCM4rJJSc3JLEst0rdL4MrYf2wJU8F2wYpJu6azNDCu5eti5OSQEDCRWL/yGVMXIxeH
 kMAORomHt18xQSSkJa5vnMAOYQtLrPz3HMwWEnjFKHGq1Q/EZhPQldixuI0NxBYRqJLoX3Kf
 GWQQs8ANJonrvWtYIBqWMklMXxEBYnMKWEm87d4H1iAs4CTxesUeoGUcHCwCqhJvv6eDhHkF
 LCWuP3rJBmELSpyc+QRsDLOAtkTvw1ZGGHvZwtfMELcpSPx8uowV4gY/iVlLt7ND1IhLHP3Z
 wzyBUXgWklGzkIyahWTULCQtCxhZVjFKphYU56bnFhsWGOWllusVJ+YWl+al6yXn525iBEeu
 ltYOxj2rPugdYmTiYDzEKMHBrCTCKyj+ME6INyWxsiq1KD++qDQntfgQozQHi5I479dZC+OE
 BNITS1KzU1MLUotgskwcnFINTJc+KU462sAYnbh/l/GtsrBfe67H14ddkV9SNmX3jpM+y4+1
 P50/WXf6tBkSSz9duBu54SPHv2dRou1cNg97AzUf6qr7bb48+6/j/OwLM5awHc9ln64wWTxs
 Qv5HqxtvgpsfVIcq3nIpLM2+Iqdk8sHuQB9/Xl9IpKfxubMNnWGZ99csa/I6ECzr4vY58oPw
 qf9X4uZHxsrtt1CyvCTH8Opwgs3nl3ui3/N9cIx+7tLm/2aN1yav299n9/76Uf1TZbKr/eSr
 JYJX3L7HFlauPNIUYv/yyCqGF23ZHcdURE86+VxmqjluvTVymYWp/QHlB9bRy3/yRovkHljw
 vHYqi1JjG+cntpolSUe3b5zfVq/EUpyRaKjFXFScCABlCtMASwMAAA==
X-CMS-MailID: 20200611151850epcas5p2a784c542779d9bc1bdcfca28ea8a6c2a
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200528013223epcas5p2be85fa8803326b49a905fb7225992cad
References: <CGME20200528013223epcas5p2be85fa8803326b49a905fb7225992cad@epcas5p2.samsung.com>
 <20200528011658.71590-1-alim.akhtar@samsung.com>
 <159114947915.26776.12485309894552696104.b4-ty@oracle.com>
 <013a01d63d3e$ecf404d0$c6dc0e70$@samsung.com>
 <89b96bd0-a9a3-cdd8-dc67-1f9f49eef264@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_081902_732684_439A0702 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org, krzk@kernel.org,
 kwmad.kim@samsung.com, avri.altman@wdc.com, 'Vinod Koul' <vkoul@kernel.org>,
 cang@codeaurora.org, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kishon

> -----Original Message-----
> From: Kishon Vijay Abraham I <kishon@ti.com>
> Sent: 08 June 2020 08:23
> To: Alim Akhtar <alim.akhtar@samsung.com>; 'Martin K. Petersen'
> <martin.petersen@oracle.com>; robh@kernel.org
> Cc: krzk@kernel.org; linux-samsung-soc@vger.kernel.org;
> avri.altman@wdc.com; stanley.chu@mediatek.com; linux-scsi@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; cang@codeaurora.org;
> devicetree@vger.kernel.org; kwmad.kim@samsung.com; linux-
> kernel@vger.kernel.org; 'Vinod Koul' <vkoul@kernel.org>
> Subject: Re: [PATCH v10 00/10] exynos-ufs: Add support for UFS HCI
> 
> Hi Alim,
> 
> On 6/8/2020 8:15 AM, Alim Akhtar wrote:
> >
> >
> >> -----Original Message-----
> >> From: Martin K. Petersen <martin.petersen@oracle.com>
> >> Sent: 03 June 2020 08:02
> >> To: robh@kernel.org; Alim Akhtar <alim.akhtar@samsung.com>
> >> Cc: Martin K . Petersen <martin.petersen@oracle.com>;
> >> krzk@kernel.org;
> > linux-
> >> samsung-soc@vger.kernel.org; avri.altman@wdc.com;
> >> stanley.chu@mediatek.com; linux-scsi@vger.kernel.org; linux-arm-
> >> kernel@lists.infradead.org; cang@codeaurora.org;
> > devicetree@vger.kernel.org;
> >> kwmad.kim@samsung.com; linux-kernel@vger.kernel.org
> >> Subject: Re: [PATCH v10 00/10] exynos-ufs: Add support for UFS HCI
> >>
> >> On Thu, 28 May 2020 06:46:48 +0530, Alim Akhtar wrote:
> >>
> >>> This patch-set introduces UFS (Universal Flash Storage) host
> >>> controller support for Samsung family SoC. Mostly, it consists of
> >>> UFS PHY and host specific driver.
> >>> [...]
> >>
> >> Applied [1,2,3,4,5,9] to 5.9/scsi-queue. The series won't show up in
> >> my
> > public
> >> tree until shortly after -rc1 is released.
> >>
> > Thanks Martin,
> > Hi Rob and Kishon/Vinod
> > Can you please pickup dt-bindings and PHY driver respectively?
> 
> You might have CC'ed me only for the PHY patch. I don't have the dt-bindings in
> my inbox. Care to re-send what's missing again? This will be merged after -rc1 is
> tagged.
> 
Sure, will re-send this series. 

> Thanks
> Kishon
> 
> >
> >> Thanks!
> >>
> >> --
> >> Martin K. Petersen	Oracle Linux Engineering
> >


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
