Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E1E76E5E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 17:58:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rBRkOq6QRLXdGbkZvyXl2VO5qSWWvabEzzlduGYONl8=; b=nhV7VCg6u/1aLt
	gfNpkZRoiJUrjH202J8ltdwhONNdB28zMHDebtuk1oj7oRrmB1WlEhMIW+xz5qMkoe0t3mCum0wl9
	XrXXWAAeEovUg06lbhodoxtG5ANio/4MvEMIkp6QiRuFnwtRwo50Q7TGeRkkQsvHdouKNxLhOINzg
	6Sh/hFGmgx9/NVM/bv3zSPZ8qiBBVjfwGbwxGxB63nODS+V1uNHUQLHt1GusmNzmnzx5D+uwBJRI2
	Nz06RSBInPpTD6slCt+EF+YZekQVA/zYYRshPTLIeSr2WmGO1erQtnDvnhSjMx6eCzkPvnkD3MTke
	SGhvbKT+mKLyz5JzT6dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr2bk-0006lD-Or; Fri, 26 Jul 2019 15:58:12 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr2ba-0006kn-4r; Fri, 26 Jul 2019 15:58:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1564156653;
 bh=qQMv8Gq4VWw3O9pfd3Hcs8DunZMxg+zrMDk3d/xK/Ig=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=btwBiIdpDEYqjFNOFAQZfoI6LC6YCv7SMbakhPOWf43dVDwnvKQzwlTnVN3J2Eg7w
 Vp0xsYm8cr9OECam+mOvuzsqjJb2YxPA4Vpy/ZlXnc6yiWqb5zZWS8zg0NpgIy81xy
 sVq+tHzpofGTGHvTwUZa9eVve65y/rltKpJEZlVA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.127]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MS3mz-1hwrCA3God-00TRbQ; Fri, 26
 Jul 2019 17:57:33 +0200
Subject: Re: [PATCH v2 -next] staging: vc04_services: fix
 used-but-set-variable warning
To: YueHaibing <yuehaibing@huawei.com>, eric@anholt.net,
 gregkh@linuxfoundation.org, inf.braun@fau.de, nishkadg.linux@gmail.com
References: <20190725142716.49276-1-yuehaibing@huawei.com>
 <20190726092621.27972-1-yuehaibing@huawei.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <229b2d16-9623-6005-2e1b-4d1f239643a2@gmx.net>
Date: Fri, 26 Jul 2019 17:57:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190726092621.27972-1-yuehaibing@huawei.com>
Content-Language: en-US
X-Provags-ID: V03:K1:a2QhRZDV76cNOnjxUp2kDO8bbHN+pQ+5quVTlxjJKZaXVZ8NaaZ
 jaLLWxgnA8kgLJwLh5hRmDmyoaB+0mL5oxcM9ioK+We71b9cPSxIo4RfJjsnDQ5LiM+DRrd
 cEqT6ewd45gEwSuo7F/WosYaSPOtL6R8nN6o65GqjcroVOpVPwZZb1gqtbFzfnDUOlpZDtC
 P19ql6muElPiWevB/OJ5g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5yPF2OLnToQ=:YON+oYprlbkfGhoC6RuoYj
 nz07pRF4vW8w4G0wmk9aqybt7RDI33cerMdwgmokxtMhpRSoTyhDRe/0xputZ3tPGHqgzNvnP
 3Hj+ksOssb1Bo5s5XOzuKuaX818IisjjZm36cDLQNrimqpUrt2ATI5W1EMbgU7Vhp28c/MpGj
 0D1IO4n8Ku1iduTVfOJie1joYj+b3oKDCbHULvNmJ8gfmBzI1tHKsMvESj/elfYlTi3v/5NU+
 H+ld7i6+zc6Gq4G/Y7u4cdHnbYlM13ruyGKDz8ZD1hSWRXydTNxr/jH9eMYxFmUGZYW+ab61s
 kal+mn1AELb1IrK/ChExhHmkDXI13Xy/FL+zTFvU9tjMYd5On3xHLm08fbp5ch2mQqBCkrkvH
 hltK4YmbU05PLASo+5iCIPT8KZhr9ZGCNq+AKua7j32FIHOyqcm0tBm0j7km4rg5Ay/NiMHLR
 +e7vfpB+65StkgSe7S7khtwwoN07fPCQR9VxB1dTBJqI1Rwv5QIiCuy3R+yrNnN6BbHN6Fdb7
 XfqZ5FFazb70uJ6VGdmy/iA06X8edPspsc+aV8cQ3LY7DlueSlFLOsBxqLhRuOehhqTuooBAE
 7j8eIB+Uxvkbha24/WkvUjgLN5exo+zScz8kb1iaOX3n4C9MtFeCymUrOdTvSMg3VZ/g3mbrC
 qVLWgmp+blBrPHXr+pZVV6uPZohXTx8mn3LmNAyTG4GRNo0iZfg1HGM4KIzrT0+Ai6Tb4BJ1h
 qKiXdnQ8GtYjYb7p02AHPBtt5c317KFXhqrJUelQ3LD4yzUYqH88qSlsz5eksGX+ge+bhGK5E
 AbVLaGC5DPt3Yt2QU1RvK4Qgeo95M4LJN+O7K05xe10GWV+d/GwAKuqSkX79riGv5YUn7YXIf
 cKRZveHfGQOB4xnXtvA0Tx2Z9uH4Vz0WDj24+aYp096orJBluAdKE5pcoqTM1b9AmFOBhsmix
 l4CISh7f/HWOfUyLX0dbFcCPHUMq4t0V2R+JeIu+HAVOloHTaupOdchmXqUcl6HD4pGWtqG4x
 cjETbP2INxt1vUhSfMRJLaSx7rAZchcbYAmFOJhE/Azdgxe/3srFFJoE2Un9jzmwGoAe0kffc
 dQKRQ9SojxtTmQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_085802_522505_9BCAFEC4 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devel@driverdev.osuosl.org, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yue,

Am 26.07.19 um 11:26 schrieb YueHaibing:
> Fix gcc used-but-set-variable warning:

just a nit. It is call "unused-but-set-variable"

Acked-by: Stefan Wahren <wahrenst@gmx.net>

>
> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c: In function vchiq_release_internal:
> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2827:16: warning:
>  variable local_entity_uc set but not used [-Wunused-but-set-variable]
> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2827:6: warning:
>  variable local_uc set but not used [-Wunused-but-set-variable]
>
> Remove the unused variables 'local_entity_uc' and 'local_uc'
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
