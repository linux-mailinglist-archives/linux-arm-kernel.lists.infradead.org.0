Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 355611F721B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 04:13:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D3m90gNlGUbDHiC05w/Ndb+dcrMeFQeaC0N+gL23Uzo=; b=depDWtFe8nOm+F
	igOo/ZBGnHvvQDl9qFkX8dxgfWIAx7SFDpWNKLX2pOvT5vsI4Y9CNQlQU4kUXuJ0P92Mx2cEFoEzI
	FdcZApeoi3GP/6dxF3nmskjhheRscLeRwKZQkU6iL+ZrtohNfrSYyvp1q88Xi2udlCueC46aXr3dq
	FbzaPTUaYZh9hHh8af3AYLG9PIwXXHnx76BAKkkIu1YbJuxGRtcnPp3W6pLEQbJT9dVKHSGdmgLbQ
	CVk98tvFwzCrfz4Pz5BNcopHAiV6a+nwl9ru+YbN1g/of6DhFXAEf70uXpe3FxrtwwqaNhpIhMWj2
	qzXhWTpYVq4COWI9ofqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjZC7-0001EM-3P; Fri, 12 Jun 2020 02:13:23 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjZC0-0001D0-66
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 02:13:18 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200612021311epoutp04226f4af996f914fbf6064cfe7657e018~XqhLR-asv3169231692epoutp04D
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 02:13:11 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200612021311epoutp04226f4af996f914fbf6064cfe7657e018~XqhLR-asv3169231692epoutp04D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591927991;
 bh=IMm3UciE8kL2Kn8TlcoT7lncpAsQ1WriwftzJHtNstQ=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=ldh4D0m07rMpuVKHm/wWLHKuSPSsSFoYdycuN8dcisEkPEmW+f8LvW8puXWuANx/f
 KuVzojnUgfHVuKStEhzNogb93KgDLCi3P477VA9dymcijejFPWGbg1Hp92lNKYhFTQ
 P+m1VYzAlOjDGB62Bn6S2XG6GPKsr8+Wm07L6zJA=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20200612021310epcas5p2f828da073106a9bb8a98e05403d1aedb~XqhKSx_ln0765407654epcas5p2Q;
 Fri, 12 Jun 2020 02:13:10 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 AF.E6.09475.5B4E2EE5; Fri, 12 Jun 2020 11:13:09 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200612021309epcas5p3b5b53df83cfb0996262016c604f75827~XqhJvtpMa0071200712epcas5p32;
 Fri, 12 Jun 2020 02:13:09 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200612021309epsmtrp10df7a1a278195f61c3483eb21c0e3739~XqhJun6gZ0247002470epsmtrp1t;
 Fri, 12 Jun 2020 02:13:09 +0000 (GMT)
X-AuditID: b6c32a4b-39fff70000002503-6b-5ee2e4b588ea
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 B8.CA.08382.5B4E2EE5; Fri, 12 Jun 2020 11:13:09 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200612021304epsmtip28a028945a5d0bf1f216c435873410757~XqhEuvhCj0664906649epsmtip2B;
 Fri, 12 Jun 2020 02:13:03 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Stanley Chu'" <stanley.chu@mediatek.com>,
 <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <jejb@linux.ibm.com>, <asutoshd@codeaurora.org>
In-Reply-To: <20200612012625.6615-1-stanley.chu@mediatek.com>
Subject: RE: [PATCH v2 0/2] scsi: ufs: Fix and cleanup device quirks
Date: Fri, 12 Jun 2020 07:43:01 +0530
Message-ID: <00aa01d6405f$041df030$0c59d090$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQL8S8fLu5o7xRiXwOWFaEK+6gqKwQElXUrGpn77JBA=
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0xTdxTmd+/tvZdqzbW48JMm6qqGQUbdAtOfoEAMmzchmmUkyx4MVvEO
 Gl61V8QZs9nhKlCE7oHDSup4yAxzBcurwBwIaukwJaQUlISER00AgQEGpek25vVqxn/fOd/3
 ne+c5NC4fFESQmtyTnK6HHWWkpQSrb1hoREt3smUt/wD0ajf4sHRLUMfhWZ8HhLdnigi0KVF
 H46WG+okaG3AT6Hh0askqp+zk6j6QSuGvl2bxZFtaliC3B2VJHIXDAJkHHnO/uL4F0PfnI9E
 Lct+CbrW8hDEB7HuoUTWXXoRY9vNYxRrqu4GbFPt1+x5ZxfBPmsoJNmlR6ME+8S2jb3QbcTe
 l34iPXCcy9Kc4nR7Yj+XZlj7ZiTaOunpyz/eo86BIboYBNKQiYKW2n6iGEhpOdMJ4I3GFlIs
 lgG8u1L2knkKoP2+HntlcblqKJG4BeDgyhgQizkA59qacUFFMhHQXmMgBbyFaQXwzsIRQYQz
 f2PQXmAiBCKQOQi9+i4g4CAmAU5X/EUJmGB2w6pev6QY0LSM2Q9XSz8V2jJmM3Re9r6w4sx2
 2DZfiYsb7YC+R3USMSsaXi90YqImGN71leBCLmSuBMLvf9cDYSZ8nlXRrBK9QXDW0UyJOATO
 lBkoUZIJSzoixfZZeM1yjxBxHOweqiQECc6EwYaOPWLSJnjR78VEpwwWGuSiejcsWPC8dCrg
 d0ajRMQs9I/cpEzgdfO6u8zr7jKv29/8f9jPgKgHWzktn53O8e9oI3O4fBWvzubzctJVabnZ
 NvDiKcMT7WByfFHVAzAa9ABI48otss3BEyly2XH1l2c4XW6qLi+L43uAgiaUwTLl6v0UOZOu
 PsllcpyW071iMTow5BxWNH16l8RT/sbqvoDtGudN7cYQ/nCaovO1sMafplnvYV2cvnSgyqx4
 M2Ay6ei7qpGk+n3JdXqyqftCY4x7l7VhljhTw2qOIE+fhjXpE36rUf+xFVjZ1LIxqymUnzDW
 bpp3TIUX/pM7mOEw6PizXc8cH//51THqujPWZkgeLXp4sG2xKj7Sx8SMu5dstzuv7j3V+2Dg
 BLZDHqO948zXtB/K+6j915KdEVFpl7ZlVtii85zh+3Njay0BTV8kFCk2zPW4rL1L5cXvVS1Z
 46Zaj11hk12Wgih2YS2f2dj/gxRztWXHy6tvHCVDP1z5IDVx+PH8Z5U7x5MOLHjKH6dvOGRV
 EnyG+u1wXMer/wNEYt84AwQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrKIsWRmVeSWpSXmKPExsWy7bCSvO7WJ4/iDA48F7I4Pe8qs8XethPs
 Fi9/XmWzOPiwk8Vi2oefzBaf1i9jtfh//je7xbVb89ksVr3ZwWax6MY2JovW/6+YLTY9vsZq
 cXnXHDaLy80XGS26rwNllx//x2TR1GJssfXTb1aLpVtvMjoIe1y+4u1xua+XyWPnrLvsHhMW
 HWD02Lyk3qPl5H4Wj+/rO9g8Pj69xeLxeZOcR/uBbqYArigum5TUnMyy1CJ9uwSujHUnXrIW
 LOOqmDnlGHsD4xWOLkZODgkBE4lz5xazdzFycQgJ7GaUmLilhRkiIS1xfeMEdghbWGLlv+dQ
 Ra8YJc5d3MoGkmAT0JXYsbiNDSQhIrCHUeL7svtgVcwCXcwSXw/+YYNo6WOU2H9vIVgLp4Ct
 xJPG/YwgtrCAi8SLGe/BdrAIqEosPPybtYuRg4NXwFLiR180SJhXQFDi5MwnLCBhZgE9ibaN
 YJ3MAvIS29/OgbpUQeLn02WsILaIgJXEio6TTBA14hJHf/YwT2AUnoVk0iyESbOQTJqFpGMB
 I8sqRsnUguLc9NxiwwLDvNRyveLE3OLSvHS95PzcTYzgmNfS3MG4fdUHvUOMTByMhxglOJiV
 RHgFxR/GCfGmJFZWpRblxxeV5qQWH2KU5mBREue9UbgwTkggPbEkNTs1tSC1CCbLxMEp1cB0
 cnpL/gS1xnsr3bbOyL06yTi+5tf86ImJSTvzFizf6PJva9jnpu+nrjxfpePM4f7udOG7xe3p
 macnzzNa8EldnJUpqnTm5EiNnCQbR6s/d+zP/1KWUL94Q8bDfMGHZzkXrjoefO3Dd/mZxiuJ
 syvXXXfbY1lqOq/qLRf/JaEjqtIf/eMXPg//sOGF8GHtQpv1MzTvz5y7YPkyC5MFreY3hRY6
 7dxaKaV9sDOx6UeyTJM+e1+q8SUn7acb10kv/qGUl7nU7uaCIzqfZpdMUD6g6dAUsOpc1K3H
 P/nCVsxgepM6MeHf7zYtCR/lu/tt1od9ep82c8KrGH//+1eTXnyXm+O84fia72sOXVjqM3uN
 0xElluKMREMt5qLiRACiPhYwaAMAAA==
X-CMS-MailID: 20200612021309epcas5p3b5b53df83cfb0996262016c604f75827
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200612012633epcas5p30882af0f4cd7f7dd4a820f3fdbb9b1be
References: <CGME20200612012633epcas5p30882af0f4cd7f7dd4a820f3fdbb9b1be@epcas5p3.samsung.com>
 <20200612012625.6615-1-stanley.chu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_191316_752964_E2CA0A7B 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, cc.chou@mediatek.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, chaotian.jing@mediatek.com,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stanley,

> -----Original Message-----
> From: Stanley Chu <stanley.chu@mediatek.com>
> Sent: 12 June 2020 06:56
> To: linux-scsi@vger.kernel.org; martin.petersen@oracle.com;
> avri.altman@wdc.com; alim.akhtar@samsung.com; jejb@linux.ibm.com;
> asutoshd@codeaurora.org
> Cc: beanhuo@micron.com; cang@codeaurora.org; matthias.bgg@gmail.com;
> bvanassche@acm.org; linux-mediatek@lists.infradead.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> kuohong.wang@mediatek.com; peter.wang@mediatek.com; chun-
> hung.wu@mediatek.com; andy.teng@mediatek.com;
> chaotian.jing@mediatek.com; cc.chou@mediatek.com; Stanley Chu
> <stanley.chu@mediatek.com>
> Subject: [PATCH v2 0/2] scsi: ufs: Fix and cleanup device quirks
> 
> Hi,
> this series provides some device quirk fixes and cleanups.
> 
> v1 -> v2:
>   - Sort device quirks in alphabetical order (Alim Akhtar)
> 
> Stanley Chu (2):
>   scsi: ufs: Add DELAY_BEFORE_LPM quirk for Micron devices
>   scsi: ufs: Cleanup device vendor name and device quirk table
> 
>  drivers/scsi/ufs/ufs_quirks.h |  3 ++-
>  drivers/scsi/ufs/ufshcd.c     | 15 +++++++--------
>  2 files changed, 9 insertions(+), 9 deletions(-)
> 
For this series
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
Thanks! 

> --
> 2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
