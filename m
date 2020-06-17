Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 118861FD20B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 18:29:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NCB3mfHpsn6zZEVk38VU/dJu1xExyhW0/Tui0yQU+nM=; b=E7BkQg7o5QamMB
	Yg3GqoaIWU7yju6FXnpkDNb6J8TAwc4ZhOELzkhiyW+UhqL3UupqWMEWaeHEiCASTYghdNmJ5WqHs
	wxpG/E3NIYKIciO3cByCG7C4DZfcdvBWUorJ8FGcm2AjRA5EFkZb5Eu7YMgrY9KW5oxbuSRvxYzLQ
	xoCce5o7/sutjKmLwjJWswxR0X5I5GjT8NSnonvIUbcbfwT7gYreenoh3hq8OEpCNPW72ReTlHn4i
	MwOd+lXTYmdrWNMe+hk2xF15C3Zc8gl/pRCRQBMQpzTk2TZ4jgPf+PcTy4kwpYTMiJJ1qZscQ5NwK
	GC49TqtbsUlq/1swpqvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlawL-0000tz-C8; Wed, 17 Jun 2020 16:29:29 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlawB-0000t1-5H
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 16:29:20 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200617162915epoutp015bef89d45ae22030da499059c3e76cfa~ZYbDnBI5R1522015220epoutp01a
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 16:29:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200617162915epoutp015bef89d45ae22030da499059c3e76cfa~ZYbDnBI5R1522015220epoutp01a
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592411355;
 bh=pJDQ9bzgD7mDXxkITK5uC1QbmLKf2zUNC9GZ5y74iRI=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=A2r4Lazt05Kx4TtjYPmep/dn0+8ecjNjQCzC6WC0yedjYdgE3YHs011s+BzwFsrD4
 Hi2GbyNi/rGevUHQlsPd0DGSieOcu4zJEM4jOSD9rH2ImggvF4QWIZqsq0psUHIZSK
 PXq+YX8JdneaDcD+mvhZI23y/b+GqhMu2MGqKUuE=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200617162914epcas5p1a27f88125c976d7dca9feb3c5101cc9e~ZYbC8por22551825518epcas5p1-;
 Wed, 17 Jun 2020 16:29:14 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 87.FE.09703.AD44AEE5; Thu, 18 Jun 2020 01:29:14 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
 20200617162914epcas5p21255b4039eba27206ede0f35035dfd05~ZYbCo56qC1059410594epcas5p22;
 Wed, 17 Jun 2020 16:29:14 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200617162914epsmtrp1a2ac5034639496a17426e50445c1f59e~ZYbCoO-_41937519375epsmtrp1_;
 Wed, 17 Jun 2020 16:29:14 +0000 (GMT)
X-AuditID: b6c32a4a-4b5ff700000025e7-f5-5eea44da53da
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 22.0D.08303.AD44AEE5; Thu, 18 Jun 2020 01:29:14 +0900 (KST)
Received: from mshams01 (unknown [107.122.43.244]) by epsmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200617162911epsmtip258b7d1ac6dec4090cf9ebb61c6dd22fe~ZYbADTQEM1472814728epsmtip2g;
 Wed, 17 Jun 2020 16:29:11 +0000 (GMT)
From: "M Tamseel Shams" <m.shams@samsung.com>
To: "'Greg KH'" <gregkh@linuxfoundation.org>
In-Reply-To: <20200615125045.GA946844@kroah.com>
Subject: RE: [RFC PATCH] serial: samsung: Re-factors UART IRQ resource for
 various Samsung SoC
Date: Wed, 17 Jun 2020 21:58:42 +0530
Message-ID: <000001d644c4$70180730$50481590$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKFLyHxHkUNw6bP6pRUtYOiC7jR2QHTNgWiAz7cYJqnVpGkAA==
Content-Language: en-us
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrNKsWRmVeSWpSXmKPExsWy7bCmhu4tl1dxBgsazS0ezNvGZtG8eD2b
 xZQNH5gs+h+/ZrY4f34Du8Wmx9dYLS7vmsNmMeP8PiaLM4t72R04PTat6mTz2D93DbvH5iX1
 Hn1bVjF6rN9ylcXj8ya5ALYoLpuU1JzMstQifbsEroxd16cxFqziqVjf8IClgfEPZxcjJ4eE
 gInE0wV3GEFsIYHdjBIXLrl1MXIB2Z8YJXad3cUI4XxmlJi8byc7TMf724fZIBK7GCUu9y1n
 gmh/ziix/Bg/iM0moCsx6WAbM4gtIqAj0XHmBAtIA7PAK0aJb2+esoIkOAUMJPaefQJWJCyQ
 ILF5zwowm0VAVWJNN4jNzsErYCnR7AoS5RUQlDg58wkLiM0sIC+x/e0cZoh7FCR+Pl3GCrHK
 SeLWyznsEDXiEi+PHmEHWSshsIVDYvmjI1ANLhKztyxmg7CFJV4d3wL1mJTEy/42KDtfYv68
 VVD1FRIrL7yBsu0lDlyZA3QEB9ACTYn1u/QhdvFJ9P5+wgQSlhDglehoE4KoVpT4v7sfaqK4
 xLsVU1ghbA+J9ktTWScwKs5C8tksJJ/NQvLBLIRlCxhZVjFKphYU56anFpsWGOWllusVJ+YW
 l+al6yXn525iBKcnLa8djA8ffNA7xMjEwXiIUYKDWUmE1/n3izgh3pTEyqrUovz4otKc1OJD
 jNIcLErivEo/zsQJCaQnlqRmp6YWpBbBZJk4OKUamIpb9xyL/LMiVm5L3vxKF8FL4uzVx9fN
 /tvBX+GkeeSTTmct06EvCwUW/58oHK+ctfDwEb27RTOPcTw7kNBwSbPW1Ti8u0sg6/+md178
 y9nN77koRPidiWObfI/bQeiALRvjs6UmWZwBCXPvxUxb9iHBy+aH/Wm792sTP2/avcTmFotq
 H0dNZze/0+rlh7aHCwv7xE6QCuVR7Qix+JCyomNldFDpGnNVm0uByscnaH3I4maekf4gcIN4
 b/9qpXTT4PbVeQ0v3jVZRDtct3r2zvfu15sCjkFFF9OZal8taNhZ16jIV7A8LtNA4eDr3r2b
 vfrcSw59d2/tOZUz0YbpRoH8vPpCbblzHl6cp8qVWIozEg21mIuKEwE1kINIvgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupnkeLIzCtJLcpLzFFi42LZdlhJXveWy6s4g+XLFSwezNvGZtG8eD2b
 xZQNH5gs+h+/ZrY4f34Du8Wmx9dYLS7vmsNmMeP8PiaLM4t72R04PTat6mTz2D93DbvH5iX1
 Hn1bVjF6rN9ylcXj8ya5ALYoLpuU1JzMstQifbsEroxd16cxFqziqVjf8IClgfEPZxcjJ4eE
 gInE+9uH2boYuTiEBHYwStxb+54RIiEuMe3XfihbWGLlv+fsEEVPGSU6/y9gBUmwCehKTDrY
 xgxiiwjoSHScOcECUsQs8IlR4tDDWYwQHesYJabcfMQGUsUpYCCx9+wTsA5hgTiJCzv7WEBs
 FgFViTXdK4Di7By8ApYSza4gUV4BQYmTM58AVXAAzdSTaNsIdg+zgLzE9rdzmCFuU5D4+XQZ
 K8QJThK3Xs5hh6gRl3h59Aj7BEbhWUgmzUKYNAvJpFlIOhYwsqxilEwtKM5Nzy02LDDKSy3X
 K07MLS7NS9dLzs/dxAiOMy2tHYx7Vn3QO8TIxMF4iFGCg1lJhNf594s4Id6UxMqq1KL8+KLS
 nNTiQ4zSHCxK4rxfZy2MExJITyxJzU5NLUgtgskycXBKNTA1e2pslT3a+LXtkunXp8kLrHYt
 mrIxYwZb2XTGlV6i4d4CPUKNX1I13jYceTAlq+fJh/uf7W+m+RpyRp3es1V4C/P0uxt/CC1/
 UFX6/n+0mur8CUFHhG7Lddj0OnEt8nSZUH/7DNeiA7d678tnWdlu3lUaWhUy5eSWz/pvdQ/t
 6DHuqD9RfsrOp4/9sXnM5QKTn1z+jtIHt507m+wTHRLq5HVRoDyA+6ulY0TOot4/KTsSm98L
 99uydcVb867XKvPedL/jocRC7g9/Oay0dqXVTfZ8fP7p/Ckma3XyXDbFXcz+mh/+eOPqukPO
 Cxd8d5FNvvMiYo+AlsK5viu3Ys9zMJn9nrNnRpTMd1/JUDslluKMREMt5qLiRAC2bXwUIgMA
 AA==
X-CMS-MailID: 20200617162914epcas5p21255b4039eba27206ede0f35035dfd05
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200615124355epcas5p446ae2f1b63331ef87334cd7d696c3c43
References: <CGME20200615124355epcas5p446ae2f1b63331ef87334cd7d696c3c43@epcas5p4.samsung.com>
 <20200615122609.71884-1-m.shams@samsung.com>
 <20200615125045.GA946844@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_092919_616467_370959E0 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org, alim.akhtar@samsung.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kgene@kernel.org,
 linux-serial@vger.kernel.org, jslaby@suse.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg,
I will post the patch without RFC tag.

Thanks & Regards
Tamseel

> -----Original Message-----
> From: Greg KH <gregkh@linuxfoundation.org>
> Sent: Monday, June 15, 2020 6:21 PM
> To: Tamseel Shams <m.shams@samsung.com>
> Cc: kgene@kernel.org; krzk@kernel.org; jslaby@suse.com; linux-arm-
> kernel@lists.infradead.org; linux-samsung-soc@vger.kernel.org; linux-
> serial@vger.kernel.org; linux-kernel@vger.kernel.org;
> alim.akhtar@samsung.com
> Subject: Re: [RFC PATCH] serial: samsung: Re-factors UART IRQ resource for
> various Samsung SoC
> 
> On Mon, Jun 15, 2020 at 05:56:09PM +0530, Tamseel Shams wrote:
> > In few older Samsung SoCs like s3c2410, s3c2412 and s3c2440, UART IP
> > is having 2 interrupt lines.
> > However, in other SoCs like s3c6400, s5pv210, exynos5433, and
> > exynos4210 UART is having only 1 interrupt line. Due to this,
> > "platform_get_irq(platdev, 1)"
> > call in the driver gives the following warning:
> > "IRQ index 1 not found" on recent platforms.
> >
> > This patch re-factors the IRQ resources handling for each platform and
> > hence fixing the above warnings seen on some platforms.
> >
> > Signed-off-by: Tamseel Shams <m.shams@samsung.com>
> > ---
> >  drivers/tty/serial/samsung_tty.c | 20 ++++++++++++++++----
> >  1 file changed, 16 insertions(+), 4 deletions(-)
> 
> RFC means "I do not trust this so I don't want anyone to merge it", so
I'll just
> delete it from my queue and wait for you to come up with something that
you
> feel confident with :)
> 
> thanks,
> 
> greg k-h


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
