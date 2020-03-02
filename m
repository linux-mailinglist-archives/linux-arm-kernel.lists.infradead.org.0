Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C992175E79
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 16:42:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:To:Subject:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G3fay41eQLahVL7etATju5FDmEUyyfs0KdAv13uFbWI=; b=gobHrJLENNAjlT
	AOvC1bUTzCe5LXFTPZdTXQVOhGWlB6Oytf2idE649ETZN+S5/EqF9Y2wKW+WWg2vfhmHDDTbJCNm2
	zI4eoTQJOrrJV9h/949qpOTwF5lrGR6GHoZQ3fSDsXuzb5coslXlY+KSCvOIKiO46xgfZj/b+Tryv
	rryI2wpgT+uxmBPDVNbOzGNssOT+C2Vq+8KsNsvq2zb26dBtVHblRVW7ehomBUqxJy6A2x41YBMvZ
	DXjRj/lfmVi31bul3IOprqhXn+Zr6OUs6kyOpnKf/XxtY6IuosZnzRAwwCPdUpGlp0qz9ZreIw/T1
	1jZaZ1sOc53I/uh0+rwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8nCx-00066P-Rk; Mon, 02 Mar 2020 15:42:15 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8nCq-00065D-8O
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 15:42:09 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200302154204euoutp01e1070f1813ace976926d333ee8003dd3~4hwTl-fq91330713307euoutp01n
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  2 Mar 2020 15:42:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200302154204euoutp01e1070f1813ace976926d333ee8003dd3~4hwTl-fq91330713307euoutp01n
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1583163724;
 bh=62n5L9v5rQRWqOZCS7tfMOpnlq+4xpKfACnaEmdnNkA=;
 h=From:Subject:To:Cc:Date:In-Reply-To:References:From;
 b=Lghe5qc8YFmh9PhN0Ym5ibm9SrvNGWkuuMv7iqPrsWYu+ZFxh0/VNIJM4ksB10PDL
 60PC7vNrRe3gC3rQx+MiYbIW/PO6hbxYP6UpbyF4Flh9IViZSFL/gnFMnyFp4rxB9s
 8J8GQ+ED9ybAX7cLNMGzgs6rSd1mRwhQ0UvqtWKo=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200302154204eucas1p2e746248965c2b856f64b5d96205b2b2a~4hwTg9fVu0750207502eucas1p2v;
 Mon,  2 Mar 2020 15:42:04 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id C9.B3.60698.B492D5E5; Mon,  2
 Mar 2020 15:42:04 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200302154203eucas1p1cd37854122864015dae457e565e839dd~4hwTPve4Z1688116881eucas1p1B;
 Mon,  2 Mar 2020 15:42:03 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200302154203eusmtrp183f1fd03af76dc7167feec3f123d0412~4hwTPI_YI2862728627eusmtrp14;
 Mon,  2 Mar 2020 15:42:03 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-2e-5e5d294b5a01
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id B2.10.08375.B492D5E5; Mon,  2
 Mar 2020 15:42:03 +0000 (GMT)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200302154203eusmtip2a59d5e86c8e6d9e8eb71d6f3581db255~4hwS3__Tn2189221892eusmtip2H;
 Mon,  2 Mar 2020 15:42:03 +0000 (GMT)
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Subject: Re: [PATCH 1/2] video: fbdev: wm8505fb: fix sparse warnings about
 using incorrect types
To: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <10a975e2-cd2a-24c1-b28d-12ea0808a0dd@samsung.com>
Date: Mon, 2 Mar 2020 16:42:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200117185851.GA24722@ravnborg.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBKsWRmVeSWpSXmKPExsWy7djPc7o+mrFxBlvzLa58fc9msenxNVaL
 E30fWC0u75rDZrHi51ZGB1aP+93HmTw2L6n3WDLtKpvH501yASxRXDYpqTmZZalF+nYJXBkz
 n55iL1jDUnHj/zWmBsbzzF2MnBwSAiYS0+5/YQGxhQRWMEq8u8bUxcgFZH9hlHjz6hQrROIz
 o8T/XzIwDX9vHmeFKFrOKPG5pYkdwnnLKNF9/ijYWDYBK4mJ7asYQWxhgSSJg2emsoPYIgLK
 EsfPXwPrZhZoY5SY/WU9G0iCV8BO4uKOBWB3sAioSHQuWg/WLCoQIfHpwWFWiBpBiZMzn4DV
 cAoYSWw+cwxsKLOAuMStJ/OZIGx5ie1v50D9tohdYsdtRgjbRWLl4YNsELawxKvjW9ghbBmJ
 05N7WEAOkhBYxyjxt+MFM4SznVFi+eR/UB3WEnfO/QKyOYA2aEqs36UPYkoIOErMuh4EYfJJ
 3HgrCHECn8SkbdOZIcK8Eh1tQhAz1CQ2LNvABrO1a+dK5gmMSrOQPDYLyTOzkDwzC2HtAkaW
 VYziqaXFuempxcZ5qeV6xYm5xaV56XrJ+bmbGIHp5fS/4193MO77k3SIUYCDUYmHN4A5Nk6I
 NbGsuDL3EKMEB7OSCK8vZ3ScEG9KYmVValF+fFFpTmrxIUZpDhYlcV7jRS9jhQTSE0tSs1NT
 C1KLYLJMHJxSDYxsrD+C196Lfii/am7g5Q/3yvROlS89asUVKd3pJKH9t6q6ZFrO329pJQt/
 vnXPb7p1/V1r+OmW9sK70rsq10Q3vDmmmuz1iGlfzsR1yipbq6w5GVY1vg58xLPyhe7mHVK/
 shpjfHUj2ZwVNk+UXNHF+0+gUuh770Guvpttc0RnfShec5d9X4kSS3FGoqEWc1FxIgC5RRpu
 KwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrHIsWRmVeSWpSXmKPExsVy+t/xe7remrFxBvue6Fhc+fqezWLT42us
 Fif6PrBaXN41h81ixc+tjA6sHve7jzN5bF5S77Fk2lU2j8+b5AJYovRsivJLS1IVMvKLS2yV
 og0tjPQMLS30jEws9QyNzWOtjEyV9O1sUlJzMstSi/TtEvQyZj49xV6whqXixv9rTA2M55m7
 GDk5JARMJP7ePM7axcjFISSwlFHi76bbjF2MHEAJGYnj68sgaoQl/lzrYoOoec0o8e3MUxaQ
 BJuAlcTE9lWMILawQJLEwTNT2UFsEQFliePnr4ENZRZoY5SYe+wQM0T3LkaJfQc2gFXxCthJ
 XNyxAGwSi4CKROei9WCTRAUiJA7vmMUIUSMocXLmE7AaTgEjic1njoH1MguoS/yZd4kZwhaX
 uPVkPhOELS+x/e0c5gmMQrOQtM9C0jILScssJC0LGFlWMYqklhbnpucWG+oVJ+YWl+al6yXn
 525iBMbVtmM/N+9gvLQx+BCjAAejEg9vAHNsnBBrYllxZe4hRgkOZiURXl/O6Dgh3pTEyqrU
 ovz4otKc1OJDjKZAz01klhJNzgfGfF5JvKGpobmFpaG5sbmxmYWSOG+HwMEYIYH0xJLU7NTU
 gtQimD4mDk6pBsbKkpxWeSll9e/qu24UPG3cdXXl/WtrNSc+lnhjsPjBpJZHHxgTXaWOnlVW
 vfpDxt7ykdLHaX+XGjX+bGTqsziuJdnq8OLbqsDv/9feufri07v723fO7qgTvKTwV7juCMuy
 TS/U10o8U55+bfWqzPULf512XZ59Ya35tuMP9Kv91t9o3N4SfMmiXYmlOCPRUIu5qDgRAOn9
 ONnBAgAA
X-CMS-MailID: 20200302154203eucas1p1cd37854122864015dae457e565e839dd
X-Msg-Generator: CA
X-RootMTR: 20200116145653eucas1p2222fb48dd6fe1023a4152e687ec577d5
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200116145653eucas1p2222fb48dd6fe1023a4152e687ec577d5
References: <CGME20200116145653eucas1p2222fb48dd6fe1023a4152e687ec577d5@eucas1p2.samsung.com>
 <567cba81-5fec-4d91-f711-c0bdbfe5b513@samsung.com>
 <20200117185851.GA24722@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_074208_436307_72CA5A46 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-fbdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 1/17/20 7:58 PM, Sam Ravnborg wrote:
> On Thu, Jan 16, 2020 at 03:56:50PM +0100, Bartlomiej Zolnierkiewicz wrote:
>> Use ->screen_buffer instead of ->screen_base to fix sparse warnings.
>>
>> [ Please see commit 17a7b0b4d974 ("fb.h: Provide alternate screen_base
>>   pointer") for details. ]
>>
>> Signed-off-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
> Acked-by: Sam Ravnborg <sam@ravnborg.org>

Thanks, patch queued for v5.7.

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
