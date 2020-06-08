Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E79C81F1177
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 04:46:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2twOyFIOJlIoWG1u4t0mD9ybhvPaTTLXZ6rocml748=; b=FYRbJeGJSVIS7t
	F87oa29q1hgAs6yPjhoQrhzvOUU1hBUspMzvMf2veOWh7qyAkC3wrfvQHXk73VzHf9oTNRUqqwUy1
	8QRrx3cxocjkrSZwR1PFrwa8gy+8Rac+3kkVD5wAfKeudZCL7h8vV9t7Zbmi3kig3RihKCsNoxH1l
	1Y5GZBs7bs0TsBP02u1kpQVZYBU2kTQA1hlxpOXFrlsnqLKX3oyZqiSSP0q1XSl9VQspNLkTDrTEj
	NuVyIHjp1nfPojhZGilShUc3oMVRMi+ilkdQhkS5IgvPzLlqXR9e5GClXmsHIHRJV1+XUUyqdD23s
	spDLQGYyno00kfv7KS6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ji7nb-0003Zm-SP; Mon, 08 Jun 2020 02:46:07 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ji7nU-0003YO-An
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 02:46:02 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200608024553epoutp02d826e04452583fad2e30b4e4c70335b1~WcYmKwwo11308513085epoutp02L
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  8 Jun 2020 02:45:53 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200608024553epoutp02d826e04452583fad2e30b4e4c70335b1~WcYmKwwo11308513085epoutp02L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591584353;
 bh=C6kwEPVrZicQMVqPRY7G0nedp5JPKJuMGfwc+qpyuwA=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=Ng3+Er2HBQ7zautHyJoZxiJPG+V5QrEv5tcs5WrNp1d/lWz5fBbRmhADgbHRmiSHO
 ZX5DTNMVdG/gxUTQp7Z1cT7+bfrV4yyOcHK+JBMbuZ4QQ4EfIYnFEFVZtpdbY5mwJP
 VpG+XMqRixrrYqQO0IGVXfy8rjLREHgTp4HYNwc0=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTP id
 20200608024553epcas5p3e04e585e4600019179baa620f295bad9~WcYl3-Llg0786907869epcas5p3C;
 Mon,  8 Jun 2020 02:45:53 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 32.1E.09475.166ADDE5; Mon,  8 Jun 2020 11:45:53 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200608024553epcas5p31ec99c061aee14aa8362dcd8c110efc2~WcYllvBRC1438514385epcas5p3G;
 Mon,  8 Jun 2020 02:45:53 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200608024553epsmtrp1fb2b062906712c143df9d0b6797046dd~WcYlgPQbI1169511695epsmtrp1-;
 Mon,  8 Jun 2020 02:45:53 +0000 (GMT)
X-AuditID: b6c32a4b-389ff70000002503-89-5edda6619c7b
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 ED.E6.08303.066ADDE5; Mon,  8 Jun 2020 11:45:53 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200608024549epsmtip2a0a64a9e6e85eb65ccb898cdea3fba22~WcYidqe4w2506325063epsmtip2Y;
 Mon,  8 Jun 2020 02:45:49 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Martin K. Petersen'" <martin.petersen@oracle.com>, <robh@kernel.org>,
 "'Kishon Vijay Abraham I'" <kishon@ti.com>
In-Reply-To: <159114947915.26776.12485309894552696104.b4-ty@oracle.com>
Subject: RE: [PATCH v10 00/10] exynos-ufs: Add support for UFS HCI
Date: Mon, 8 Jun 2020 08:15:47 +0530
Message-ID: <013a01d63d3e$ecf404d0$c6dc0e70$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQNA14zZ9KpC6NxovY65uGX80LQ4kgIpylB3AdlmWUOl2LNuQA==
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrIKsWRmVeSWpSXmKPExsWy7bCmlm7isrtxBrM/yFm8/HmVzeLT+mWs
 FvOPnGO1uPC0h83i/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUaLnXdOMDvweVzu62Xy2LSqk81j85J6j5aT+1k8Pj69xeLRt2UVo8fxG9uZPD5vkvNo
 P9DNFMAZxWWTkpqTWZZapG+XwJVx5l8Xc0EjZ8XfE9/YGhgPsncxcnJICJhILJ79nRXEFhLY
 zShx4oBwFyMXkP2JUeLw+qeMEM5nRonvnztYYDouNe5ngUjsYpT4dewpK4TzhlFi3b5rYFVs
 AroSOxa3sXUxcnCICFRIrFgmAVLDLHCOSWLeh23sIHFOAXeJr79jQcqFBZwkXq/YwwQSZhFQ
 kfg3IxAkzCtgKdHVsZUJwhaUODnzCdh0ZgF5ie1v5zBD3KMg8fPpMrAPRIDGfP1xBapGXOLo
 zx5mkLUSAi84JLa8Pgz1sovEpMt3WCFsYYlXx7dAxaUkXva3gZ0mIZAt0bPLGCJcI7F03jGo
 3+0lDlyZwwJSwiygKbF+lz7EKj6J3t9PmCA6eSU62oQgqlUlmt9dheqUlpjY3c0KUeIh0dck
 OoFRcRaSv2Yh+WsWkvtnIexawMiyilEytaA4Nz212LTAOC+1XK84Mbe4NC9dLzk/dxMjONVp
 ee9gfPTgg94hRiYOxkOMEhzMSiK81Q/uxAnxpiRWVqUW5ccXleakFh9ilOZgURLnVfpxJk5I
 ID2xJDU7NbUgtQgmy8TBKdXAxDZJpEV/hW7fgeL70f17uLiCqxJ33LBhv/Hq3NG5DZbTQ1ki
 Z063k0+ac/zlHO45+589+rq8dMLv3BcORYnOIZz2mtn20zpyTm4Mf2f87Kp84tOUa1mTRL/b
 yC8qig9iVpC5lBYzaUL1jv+Ck+Rl1Hc6nd2QUbksYkXqdl6xff29ESsZ4r5V6CYuPce26EWs
 QEDN7OcCYtaL/0zTPXa2L/7P78j5a6bOlFGwspf8teV48bT9YTbKvufO21lzp6jX23j8vPd5
 YW+GGp9OjO3fk4IPa8vj2vPs3jlfzd/qJjR7i8I7w2lBDwVzFV6Hxnmp3lrU/UemPSci/ZPr
 pf9cscFrj0m8+Xxg2+bLhxsUlViKMxINtZiLihMBkily0+QDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrBIsWRmVeSWpSXmKPExsWy7bCSvG7isrtxBit3Mlu8/HmVzeLT+mWs
 FvOPnGO1uPC0h83i/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUaLnXdOMDvweVzu62Xy2LSqk81j85J6j5aT+1k8Pj69xeLRt2UVo8fxG9uZPD5vkvNo
 P9DNFMAZxWWTkpqTWZZapG+XwJVx5l8Xc0EjZ8XfE9/YGhgPsncxcnJICJhIXGrcz9LFyMUh
 JLCDUeL7ogMsEAlpiesbJ0AVCUus/PcczBYSeMUo8W+mO4jNJqArsWNxGxuILSJQJfHvyHt2
 kEHMAjeYJK73roGaepJR4vTs+0xdjBwcnALuEl9/x4I0CAs4SbxesQcszCKgIvFvRiBImFfA
 UqKrYysThC0ocXLmE7B7mAX0JNavn8MIYctLbH87hxniNgWJn0+XsULc4CTx9ccVqHpxiaM/
 e5gnMArPQjJqFpJRs5CMmoWkZQEjyypGydSC4tz03GLDAqO81HK94sTc4tK8dL3k/NxNjODI
 1dLawbhn1Qe9Q4xMHIyHGCU4mJVEeKsf3IkT4k1JrKxKLcqPLyrNSS0+xCjNwaIkzvt11sI4
 IYH0xJLU7NTUgtQimCwTB6dUA9O635bbZs88s1Xvwiljh9aE5Y2lYnETHu2/paX5ev02lxbm
 7ZVt7S4le9g2FeR7+J+uO+At4uWowHqq/++aK3/ehn+cJseW/UtFX36f9vd9B46az+Zn3iz7
 6aLYjUu75P/Mk5/veOp0WYYIQ2Ti65n7Z6h5dLvXLKlc+P+0AqO0wQGdYLfbjgF7RdeuMdll
 Epmkat8x6Uxv9vGYh79NNzlv0hc6pzbj/d/jCvlmgjPLHQPOlSaZOVmedC/Oqw8X2vJyjtap
 iOmX/RZv9n+yPDTOy8ugyv/6u4SMDa6J9veUOk72Pdncu+bK9t+7m6Qc73F0rNn7am+GO3t8
 1SSfDLO2K9Zhk/+2z8xwMVvU0qfEUpyRaKjFXFScCAACFD+lSwMAAA==
X-CMS-MailID: 20200608024553epcas5p31ec99c061aee14aa8362dcd8c110efc2
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200528013223epcas5p2be85fa8803326b49a905fb7225992cad
References: <CGME20200528013223epcas5p2be85fa8803326b49a905fb7225992cad@epcas5p2.samsung.com>
 <20200528011658.71590-1-alim.akhtar@samsung.com>
 <159114947915.26776.12485309894552696104.b4-ty@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_194600_617510_633CFC69 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.25 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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



> -----Original Message-----
> From: Martin K. Petersen <martin.petersen@oracle.com>
> Sent: 03 June 2020 08:02
> To: robh@kernel.org; Alim Akhtar <alim.akhtar@samsung.com>
> Cc: Martin K . Petersen <martin.petersen@oracle.com>; krzk@kernel.org;
linux-
> samsung-soc@vger.kernel.org; avri.altman@wdc.com;
> stanley.chu@mediatek.com; linux-scsi@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; cang@codeaurora.org;
devicetree@vger.kernel.org;
> kwmad.kim@samsung.com; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH v10 00/10] exynos-ufs: Add support for UFS HCI
> 
> On Thu, 28 May 2020 06:46:48 +0530, Alim Akhtar wrote:
> 
> > This patch-set introduces UFS (Universal Flash Storage) host
> > controller support for Samsung family SoC. Mostly, it consists of UFS
> > PHY and host specific driver.
> > [...]
> 
> Applied [1,2,3,4,5,9] to 5.9/scsi-queue. The series won't show up in my
public
> tree until shortly after -rc1 is released.
> 
Thanks Martin,
Hi Rob and Kishon/Vinod
Can you please pickup dt-bindings and PHY driver respectively?

> Thanks!
> 
> --
> Martin K. Petersen	Oracle Linux Engineering


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
