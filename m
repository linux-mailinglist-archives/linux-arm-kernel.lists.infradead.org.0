Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B123175E87
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 16:42:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:To:Subject:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RMtANuuWyWb5zBrKeqIsEMl3aBv/CCDaBTbPE2pzZFw=; b=VQytGxOfWSOm9A
	uSHQPQ6Gvj1LtoLeB58QqloMFMFd3oCXgP9JofkNk74ARQ0fkwxkXo7snvk3AMA9WkDKG1cD+rfrp
	za9wCfmakWa9ONcHbUmgpFG/HgMKV3gA6mEjStsIzHO2JdxTL/MOPdOcHyWLqz9/q4R7TPg8ITHi2
	TPikfp+ZU78fxrxhuRdXt9SkFtQ+DA/NTYgAcH7L8KANHboYfnd1LNaeKSITXdzIoHmITbGucSoVs
	fOX7V28wX8VkqePIpiCjroGQ1oFN8KYfmvin/cKYzAHJj8QwpLmq/dF3WYUt5HOcNa7tksEJzZodr
	VXLQrwcmQ60UxZxa2MNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8nDD-0006Eo-E1; Mon, 02 Mar 2020 15:42:31 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8nCw-00066Q-5R
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 15:42:16 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200302154210euoutp02b79e1c49875444f0a301d8ed60dea313~4hwZNZmgT1227412274euoutp02U
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  2 Mar 2020 15:42:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200302154210euoutp02b79e1c49875444f0a301d8ed60dea313~4hwZNZmgT1227412274euoutp02U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1583163730;
 bh=/2R6/D8HvQBmyrGKDniX14KtBFNMmMyzT95Rrqygcl0=;
 h=From:Subject:To:Cc:Date:In-Reply-To:References:From;
 b=m17snERiAOdHix7ipABrYILEBfPlZg5cbTEgGiSymgl0LVBc25W7kRwb1b0FUnNRi
 T+ifdNqsE3X+4KtpVSVI/0ah3U8uIIzUrcaBq6UmdaKOfAYJQcMe4d/kTmM+w6bUSJ
 w1O1i8NlIKqAw/L6HO+EZRxhIEHS2A3+4XrXZHEw=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200302154209eucas1p1eda5e13d14d4d00a999c815e111ebe99~4hwZCbVcc2477424774eucas1p1d;
 Mon,  2 Mar 2020 15:42:09 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 8A.10.60679.1592D5E5; Mon,  2
 Mar 2020 15:42:09 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200302154209eucas1p2f7692cdab0ebcc160049c980d3b3492b~4hwY1XH1r2401024010eucas1p2y;
 Mon,  2 Mar 2020 15:42:09 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200302154209eusmtrp13caae20bc1f1cd32c268741e743fc300~4hwY0Kggl2862728627eusmtrp1Q;
 Mon,  2 Mar 2020 15:42:09 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-e7-5e5d29516808
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D4.FF.07950.1592D5E5; Mon,  2
 Mar 2020 15:42:09 +0000 (GMT)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200302154209eusmtip1c779651dca1aef6081fd287565969859~4hwYe7wz22227522275eusmtip1v;
 Mon,  2 Mar 2020 15:42:09 +0000 (GMT)
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Subject: Re: [PATCH 2/2] video: fbdev: wm8505fb: add COMPILE_TEST support
To: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <ecf2d307-a8e4-fc9b-2a19-48585e347959@samsung.com>
Date: Mon, 2 Mar 2020 16:42:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200117185903.GB24722@ravnborg.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprJKsWRmVeSWpSXmKPExsWy7djPc7qBmrFxBh3brCyufH3PZrHp8TVW
 ixN9H1gtLu+aw2ax4udWRgdWj/vdx5k8Ni+p91gy7Sqbx+dNcgEsUVw2Kak5mWWpRfp2CVwZ
 OzoOMBWcY65YtaeigbGJuYuRk0NCwERi/vaXLF2MXBxCAisYJbZfbGCHcL4wSnzddgsq85lR
 YsGqjewwLT9ubgVrFxJYzijRsDgKougtUEfPESaQBJuAlcTE9lWMILawgKfEma2HWUFsEQFl
 iePnr7GCNDALtDFKzP6yng0kwStgJ/H62COwqSwCKhJf95wAaxAViJD49ACimVdAUOLkzCdA
 J3FwcAoYSUw8UA0SZhYQl7j1ZD4ThC0vsf3tHKjf5rFL9J/MhLBdJOa1trBA2MISr45vgXpG
 RuL05B6wLyUE1jFK/O14wQzhbGeUWD75HxtElbXEnXO/2EAWMwtoSqzfpQ8RdpT4dHsx2D0S
 AnwSN94KQtzAJzFp23RmiDCvREebEES1msSGZRvYYNZ27VzJPIFRaRaSx2Yh+WYWkm9mIexd
 wMiyilE8tbQ4Nz212CgvtVyvODG3uDQvXS85P3cTIzDBnP53/MsOxl1/kg4xCnAwKvHwBjDH
 xgmxJpYVV+YeYpTgYFYS4fXljI4T4k1JrKxKLcqPLyrNSS0+xCjNwaIkzmu86GWskEB6Yklq
 dmpqQWoRTJaJg1OqgbHhyov9048+US/cu/zojxrBZ1qf3ywM9S8wvSi92lsqU6n61tJdpqG+
 nG8+X2mpfjz7/Yv9u+p/9PY5xBh8vc86IWPmrKamstn2HwyU+bib8xcd2bm7ZJld3MQnO2NE
 Fot33iw9HPlS9LwWV+zRh4pCNkEreieJiYV/+vqLPT5sj4GCumXwaRslluKMREMt5qLiRAD4
 sAjSLAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrDIsWRmVeSWpSXmKPExsVy+t/xu7qBmrFxBltuaFtc+fqezWLT42us
 Fif6PrBaXN41h81ixc+tjA6sHve7jzN5bF5S77Fk2lU2j8+b5AJYovRsivJLS1IVMvKLS2yV
 og0tjPQMLS30jEws9QyNzWOtjEyV9O1sUlJzMstSi/TtEvQydnQcYCo4x1yxak9FA2MTcxcj
 J4eEgInEj5tbgWwuDiGBpYwS8y4dYO9i5ABKyEgcX18GUSMs8edaFxtEzWtGiWOLJoM1swlY
 SUxsX8UIYgsLeEqc2XqYFcQWEVCWOH7+GitIA7NAG6PE3GOHoDbsYpS403eABaSKV8BO4vWx
 R2CTWARUJL7uOQHWLSoQIXF4xyxGiBpBiZMzn7CAXMQpYCQx8UA1SJhZQF3iz7xLzBC2uMSt
 J/OZIGx5ie1v5zBPYBSahaR7FpKWWUhaZiFpWcDIsopRJLW0ODc9t9hIrzgxt7g0L10vOT93
 EyMwprYd+7llB2PXu+BDjAIcjEo8vD8YYuOEWBPLiitzDzFKcDArifD6ckbHCfGmJFZWpRbl
 xxeV5qQWH2I0BfptIrOUaHI+MN7zSuINTQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphak
 FsH0MXFwSjUwuufH3hX03aakuvr4+Tvrb7Z/mJR8aKk56zdb5UiP7byzLB5sOM5yNzaS+cvl
 VKOVddtjVnW5CzzuvR9cFRWuGLF5ZfWW7Ts9Nnw+efIJ80uJh8oRP3m82FbyH5bf/f7MzrwU
 k+8Gx09bsixd/DT/ncf/fc06K106X+1Wa9Gdsfau4eHaP03qxkosxRmJhlrMRcWJAPMt+g6/
 AgAA
X-CMS-MailID: 20200302154209eucas1p2f7692cdab0ebcc160049c980d3b3492b
X-Msg-Generator: CA
X-RootMTR: 20200116145810eucas1p11937b8ef56638752cb2fe501833c63fa
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200116145810eucas1p11937b8ef56638752cb2fe501833c63fa
References: <CGME20200116145810eucas1p11937b8ef56638752cb2fe501833c63fa@eucas1p1.samsung.com>
 <900c16b3-9306-7d17-f467-0f98bc95416a@samsung.com>
 <20200117185903.GB24722@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_074214_361086_89448278 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
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


On 1/17/20 7:59 PM, Sam Ravnborg wrote:
> On Thu, Jan 16, 2020 at 03:58:08PM +0100, Bartlomiej Zolnierkiewicz wrote:
>> Add COMPILE_TEST support to wm8505fb driver for better compile
>> testing coverage.
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
