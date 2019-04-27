Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A213B46C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 22:00:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9cirdme4rRCJgn4FfzpZJ5fvEVhJ+VF9IyZv9hVJpkk=; b=nGn0PyimtRVDXG
	+pyr3Qs9zDCxoOa9U1pgtMBAUa9AZ1QpW5QdcdDtF7YaW9boGQAJLKWBHOrOcT+6EX9qhiE/BFJTf
	ANsE9nfq1c2HB3CNrJUwX/LgIU4gmpYGvQNvG9EqCY6Kig2H7MGd20aWq3sXi0IXb6GPqpMfeB1UG
	stFaZLniMJ6VvPJmCeofd0AZFKfkqM7RU8Fbk5biy0DLlv5xHAD21nNBUa93jnTL5Z7UwxOgC/3wd
	WtRePvThyxh/raItg1Li10QdPq6GimIa3W4EPk+MpDArUFf+NVoom+Hzb1Oa+fNEAJYE6ooXol3Ue
	hP+I2i0qkqtYt7nUi1fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKTV6-0003Z9-W4; Sat, 27 Apr 2019 20:00:44 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKTV0-0003Yn-Mw; Sat, 27 Apr 2019 20:00:40 +0000
Received: from [192.168.1.164] ([37.4.249.100]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1M8QNy-1hOrCz3RJY-004PJi; Sat, 27 Apr 2019 22:00:25 +0200
Subject: Re: [PATCH] staging: vc04_services: bcm2835-camera: Modify return
 statement.
To: Vatsala Narang <vatsalanarang@gmail.com>, gregkh@linuxfoundation.org
References: <20190427160749.11191-1-vatsalanarang@gmail.com>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <93576e8a-63e7-4416-ced8-4b58a012cedf@i2se.com>
Date: Sat, 27 Apr 2019 22:00:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190427160749.11191-1-vatsalanarang@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:542D4fB7+Z8XbmXgHNl5RDc/72QTc+gWQj87fqOQ96s4I/Uic3B
 kCBG27U8iMmajTqZxEbp87iU+4fn6efTrmVebaawrmSzkdD6mqWtBPtIu+FjxdZdHdnCIXm
 m56mhgNE/7LBGYEUWiKS53lDvIfyID65lZk7IWi1rJdpVYX3giPwHMxBG717xMxe892Vkzh
 a4HwyzQnIm1l9abUnxtgw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:07I6cDzr4TI=:POlsIRY7DvUM/dDW0Wp100
 jd3cKwVINd8RqUYHUwiz7WuI0flFTFsHmxe7SKYZd+xE0Et2lj0UmdpkOE/iZNV4WlDTbWp10
 Ll2jQuZxKOU/KCN6Avv1qX1k2p7L6079epLsFWXDnZ7Z1Utugt+471lbDwdvuOnQRvT9VDhGw
 Pn6p+mWQRMYwEyRnp6lP8TUA3FtlNR+QQk9nI/VW+1sy2jWJpQx6D9FOFc9oJD6sZ6x8tdnoU
 5cHM2ieK9tM8lwc0iNtn7+b8KQsttTf4Id51SbsluFWHC9HyfJyDhvu8UmgN1CIRfFcXo0SL3
 /qt4OKQf1zZOZosDLoPvuZyvPFJQj6KNlhDeuBloQPdHvo+M1X79fCYGY1LWCRiUckotLpUE2
 PyYDzTNBwDboJp6GAAA9qH+fjQIf62BuLlohcG5YqWAScZ2zRYuY3VIV16k6s9pvT+h+XvMYg
 ABmaVum8mGbVGk35EJpgsk2A5gRICJCLmY/lYfeO0nkpZTuN7Yr9n8kNN+HDhCcFBnnLuuLhx
 cU/B9yxGaipBvGMZ4L75C0TiD/5eB+O3TGaEA0PUddsqx1A07gnyCNrlUdvRarxyPR5EZje/l
 0IqSwm1+qEAPSvH/7sJEU44OkTa87t6dX/JABr6rL6fLi5wEHZ0nRzeCBkd33kuNojJow5oUe
 Qlo9/plBfLLbiIQJdwUHIUypB1IIFHHTX4NsMEjfOVG9CjlOjXcphuzkcM3XcO2O4wXKw4Trq
 3UegOqV40VqbHDD2pjlnbm6Fabl/OVCkuCzIXztm2Cm47mQb5Hm9UwZgZls=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_130039_053055_9F8175E0 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, f.fainelli@gmail.com, sbranden@broadcom.com,
 julia.lawall@lip6.fr, rjui@broadcom.com, linux-kernel@vger.kernel.org,
 eric@anholt.net, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 27.04.19 um 18:07 schrieb Vatsala Narang:
> Modify return statement and remove the respective assignment.
>
> Issue found by Coccinelle.
>
> Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
Acked-by: Stefan Wahren <stefan.wahren@i2se.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
