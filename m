Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEBC60893
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:01:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iGW9xYnsRNbX+NKGmeYHcVItPoEWfLgO2P58mhqoFIo=; b=bkPDJn7+LBf4yR
	tf5xzwSjBrrqDQkvSRt9rR1VImHyh9JpX+u+6uH8c8jExiglT72cg6RkOPkx62hJjB9Tn3+8ou9D9
	NYYBWdDLqA3sn3OjreUoWbIQ+klRVg5YHW4p84weFsvPqJuiRLiN7LkfX0UmrMJxOah7IVWsruOSs
	Uj/eX3vBF23aK+rIAgsQ/koXLQP8cZt2OchgJLy69ix4IOJRgh+mZkT1zrWQAYWRli/G15UlNzjhn
	m9aikYagPTFGQubF7f4y5wGr43pTISr/XtUMMTTxfXwe0en9gKkEVwh0TMFSSx8CoauTfofMqlQfb
	Zx0SaE6aX+GYgzOOmljA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPiQ-000306-SX; Fri, 05 Jul 2019 15:01:34 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPhx-0002xD-N8
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 15:01:07 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190705150057euoutp025734d318033b2a2d0972645394b4b91a~uiunDvUN93120331203euoutp02f
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  5 Jul 2019 15:00:57 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190705150057euoutp025734d318033b2a2d0972645394b4b91a~uiunDvUN93120331203euoutp02f
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1562338857;
 bh=/xUJ1oGUicspsjfxf97qw5gPt2tN+F48Se31VAevREk=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=iYuz9EdCk1v2sAhI82oVH4E+8CQ6457KUjT5qRdZmcFvyvsFBWLh3O7skMMxZC2Ab
 KJxG3PFOZDbv1bah35ARwdktDymkY50RtNz3u2SgSaI/EdnvoEttNQtIoF0Q7ZgEnG
 7VQaLHQxagTlIOyiDSfO22FX2pizFFHz/Z+cmkY8=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190705150056eucas1p2962a94d83c842bd45683fcc8bc2a6d1e~uiumo58iL0759907599eucas1p2-;
 Fri,  5 Jul 2019 15:00:56 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 65.A5.04325.8266F1D5; Fri,  5
 Jul 2019 16:00:56 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190705150056eucas1p219959ec433457ff884c9c3bcdf8baadb~uiul7uEKZ0031000310eucas1p2V;
 Fri,  5 Jul 2019 15:00:56 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190705150055eusmtrp1e60e61430e6441af58406f10348db1df~uiultoWW60378503785eusmtrp1e;
 Fri,  5 Jul 2019 15:00:55 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-e8-5d1f66289b89
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id A0.46.04146.7266F1D5; Fri,  5
 Jul 2019 16:00:55 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190705150055eusmtip1fa6ef723a0ebf6332e8e9ab8b7628510~uiulQ9VCy1908119081eusmtip1L;
 Fri,  5 Jul 2019 15:00:55 +0000 (GMT)
Subject: Re: [PATCH 07/11] video: fbdev: wm8505fb: convert platform driver
 to use dev_groups
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <3331c596-8150-3113-fc92-ffc72d7565c1@samsung.com>
Date: Fri, 5 Jul 2019 17:00:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190704142602.GB6281@kroah.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrBKsWRmVeSWpSXmKPExsWy7djP87oaafKxBr/uqlhMmvGf2eLK1/ds
 Fl0LDSyaF69ns9j0+BqrxYm+D6wWl3fNYbNoubyC2WL1nhfMDpwem1doeeyfu4bd4373cSaP
 zUvqPc7/b2H3+LxJLoAtissmJTUnsyy1SN8ugSvj/OvDrAXbWCsOTjjK2sB4jqWLkZNDQsBE
 YuuCZexdjFwcQgIrGCWWrO9mhHC+MErcf3UdKvOZUaJ3agsjTMvcRU/ZQGwhgeWMEm3XBSGK
 3jJKnFn8gxUkISwQJ9HY1MwOYosIGEv0n50FNolZYC6TxL+Xu8AmsQlYSUxsXwVm8wrYSTxd
 9wVsKouAisTjRZ1gg0QFIiTuH9vAClEjKHFy5hOwwzkF9CR2vG5mArGZBcQlbj2ZD2XLS2x/
 O4cZZJmEwDF2iam/DrBCnO0icfvrNqivhSVeHd/CDmHLSJye3MMC0bCOUeJvxwuo7u2MEssn
 /2ODqLKWOHz8ItAkDqAVmhLrd+lDhB0lVu14wwwSlhDgk7jxVhDiCD6JSdumQ4V5JTrahCCq
 1SQ2LNvABrO2a+dK5gmMSrOQvDYLyTuzkLwzC2HvAkaWVYziqaXFuempxcZ5qeV6xYm5xaV5
 6XrJ+bmbGIHp6fS/4193MO77k3SIUYCDUYmH94STfKwQa2JZcWXuIUYJDmYlEd7EIKAQb0pi
 ZVVqUX58UWlOavEhRmkOFiVx3mqGB9FCAumJJanZqakFqUUwWSYOTqkGRp40DydfQ6mEN4Yt
 Dk7Pony6N/+9ndfZpqc1ib98b372DrFb3x/NcfnilHhmjWbTwmMrLlmqL9O+ZeDazcqQdmjJ
 Rimf+h9fjth/fRMR8F8vNDa3/rXhsTn9T2oezuWd2fv/mTD7FXXDe+9LZwoHFH2WqnoQ/H7G
 7CTvhay/K9/ckf1c+cR3nxJLcUaioRZzUXEiANcQNw1LAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrJIsWRmVeSWpSXmKPExsVy+t/xu7rqafKxBrsnGFlMmvGf2eLK1/ds
 Fl0LDSyaF69ns9j0+BqrxYm+D6wWl3fNYbNoubyC2WL1nhfMDpwem1doeeyfu4bd4373cSaP
 zUvqPc7/b2H3+LxJLoAtSs+mKL+0JFUhI7+4xFYp2tDCSM/Q0kLPyMRSz9DYPNbKyFRJ384m
 JTUnsyy1SN8uQS/j/OvDrAXbWCsOTjjK2sB4jqWLkZNDQsBEYu6ip2wgtpDAUkaJu6tsuxg5
 gOIyEsfXl0GUCEv8udYFVMIFVPKaUeLRm2Vg9cICcRJHl7azgtgiAsYS/WdnsYMUMQvMZZJ4
 /+ANC0THNkaJvgsrmUCq2ASsJCa2r2IEsXkF7CServsCNolFQEXi8aJOsEmiAhESZ96vYIGo
 EZQ4OfMJmM0poCex43Uz2BxmAXWJP/MuMUPY4hK3nsyHistLbH87h3kCo9AsJO2zkLTMQtIy
 C0nLAkaWVYwiqaXFuem5xYZ6xYm5xaV56XrJ+bmbGIHRuO3Yz807GC9tDD7EKMDBqMTDe8JJ
 PlaINbGsuDL3EKMEB7OSCG9iEFCINyWxsiq1KD++qDQntfgQoynQcxOZpUST84GJIq8k3tDU
 0NzC0tDc2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoRTB8TB6dUA+NC6fN3XJN/bPw5T7R1w+rb
 Ylk2aZcu/w+fdm1TkPwWo+8NjbbT5l83fq7t47/xfr2jmKARG3d859lrc9lqFprYcr2IVvmq
 Oeeag/VkkUdCm0PdNvXUORv933Io8nN2F/vvJ4JhoqvDxWR2z+g/JLZ9zYslNdfrvmiuvnXl
 28JpM5rY1616rRGkxFKckWioxVxUnAgAT5bQTtwCAAA=
X-CMS-MailID: 20190705150056eucas1p219959ec433457ff884c9c3bcdf8baadb
X-Msg-Generator: CA
X-RootMTR: 20190704142610epcas2p1f2dcbf38ea660bc26d306f2c0e1c71ca
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190704142610epcas2p1f2dcbf38ea660bc26d306f2c0e1c71ca
References: <20190704084617.3602-1-gregkh@linuxfoundation.org>
 <CGME20190704142610epcas2p1f2dcbf38ea660bc26d306f2c0e1c71ca@epcas2p1.samsung.com>
 <20190704142602.GB6281@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_080105_892256_45832798 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-fbdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org,
 Tony Prisk <linux@prisktech.co.nz>, Andy Shevchenko <andy@infradead.org>,
 Darren Hart <dvhart@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 7/4/19 4:26 PM, Greg Kroah-Hartman wrote:
> Platform drivers now have the option to have the platform core create
> and remove any needed sysfs attribute files.  So take advantage of that
> and do not register "by hand" a sysfs file.
> 
> Cc: Tony Prisk <linux@prisktech.co.nz>
> Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-fbdev@vger.kernel.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Acked-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
