Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B059F19DBBB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 18:31:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:To:From:
	Subject:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=VHn3ZMvcSHwDmkxZP04KIzcyAOgeMXexgBmNMTfW7hM=; b=l1Abk+nZJr9n9D
	qIRHY4+hob755L8C9KbdClLgMjHFgaXECjO3gWNMxIbL3QocuGXRYGN+RR5pF36becnGWV1wqrk7D
	DXBPKS7PUc6TpoI7Y8zK0arY9WZ4Hz8L5n9gqZnIJMQf0j4qZnA2mJxwVSO1ZeMwucsGHtw+kCO8n
	ShAUYV3F0yb1+JZ6kW9sTF2IvLme21aBdzBX1v/JL4vabacCXIKjX1sECHUBtJ6aX4PVj7U6HSfzR
	rHALOXAPcr8R2+56l1B0wf5Nqls8STblOMpaZmg1Ne8ZwNmcdYLUNytQVcB500TqV4wXxlPLkg7mT
	op38hy3z8SJ1UYCB38MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKPDb-0000rt-TS; Fri, 03 Apr 2020 16:30:55 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKPDV-0000rO-ES
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 16:30:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1585931445;
 bh=7FV3hj5CWeqQR3OUff6ZWxLHWef1NywoQKrDysZiVW0=;
 h=X-UI-Sender-Class:In-Reply-To:Date:Subject:From:To:Cc;
 b=IEAbOYRuT4dwIoZbaBEDvPsmKKxBmleNKp53H3MDceHdDkw/L6ZVtoDacrNPyNjfx
 PKOTtPotBWT+gIy2PhQBOHUJOgHV5UOI4QjfE/RPZNBVEOTphe0rzMTrEEPRAWgI+F
 /csf1qrz8PzvbXeQM4U3Lvy2wD2WwTVqbGPEeerA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost ([82.19.195.159]) by mail.gmx.com (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MHXFr-1jXJI40dN3-00DXel; Fri, 03
 Apr 2020 18:25:09 +0200
Originaldate: Fri Mar 27, 2020 at 4:29 PM
Originalfrom: "Alex Dewar" <alex.dewar@gmx.co.uk>
Original: =?utf-8?q?dma=5Fpool
 =5Fdestroy()_already_checks_for_NULL_arguments,_so_th?=
 =?utf-8?q?e_extra_check=0D=0Ais_unnecessary.=0D=0A=0D=0ASigned-off-by:_Al?=
 =?utf-8?q?ex_Dewar_<alex.dewar@gmx.co.uk>=0D=0A---=0D=0A_arch/arm/common/?=
 =?utf-8?q?dmabounce.c_|_6_++----=0D=0A_1_file_changed,_2_insertions(+),_4?=
 =?utf-8?q?_deletions(-)=0D=0A=0D=0Adiff_--git_a/arch/arm/common/dmabounce?=
 =?utf-8?q?.c_b/arch/arm/common/dmabounce.c=0D=0Aindex_f4b719bde763..a7c77?=
 =?utf-8?q?6cdc38f_100644=0D=0A---_a/arch/arm/common/dmabounce.c=0D=0A+++_?=
 =?utf-8?q?b/arch/arm/common/dmabounce.c=0D=0A@@_-560,10_+560,8_@@_void_dm?=
 =?utf-8?q?abounce=5Funregister=5Fdev(struct_device_*dev)=0D=0A_=09=09BUG(?=
 =?utf-8?q?);=0D=0A_=09}=0D=0A=0D=0A-=09if_(device=5Finfo->small.pool)=0D?=
 =?utf-8?q?=0A-=09=09dma=5Fpool=5Fdestroy(device=5Finfo->small.pool);=0D?=
 =?utf-8?q?=0A-=09if_(device=5Finfo->large.pool)=0D=0A-=09=09dma=5Fpool=5F?=
 =?utf-8?q?destroy(device=5Finfo->large.pool);=0D=0A+=09dma=5Fpool=5Fdestr?=
 =?utf-8?q?oy(device=5Finfo->small.pool);=0D=0A+=09dma=5Fpool=5Fdestroy(de?=
 =?utf-8?q?vice=5Finfo->large.pool);=0D=0A=0D=0A_#ifdef_STATS=0D=0A_=09if_?=
 =?utf-8?q?(device=5Finfo->attr=5Fres_=3D=3D_0)=0D=0A--=0D=0A2.26.0=0D=0A?=
 =?utf-8?q?=0D=0A?=
In-Reply-To: <20200327162914.24948-1-alex.dewar@gmx.co.uk>
Date: Fri, 03 Apr 2020 17:25:06 +0100
Subject: Re: [PATCH] arm: dma-mapping: Remove unneeded NULL checks
From: "Alex Dewar" <alex.dewar@gmx.co.uk>
To: "Alex Dewar" <alex.dewar@gmx.co.uk>
Message-Id: <C1RPNOAB4OIV.1TTN7HLN0EYD@lenovo-laptop>
X-Provags-ID: V03:K1:tbuUIrGyiCaAhpS7s0piVJYeAudA2ncpvdZHVVYmXXlo/Pcr1oL
 M4j5SZWusZxkduIp11sIv2ZabbjdlxJq0z9q5oW1Xt2EeGSE4ibeGFUtEtT99+tgxqG0mlj
 8amfFZzt3BYvGSYMt1Z9PDye0u9ALZ6UOQ9rj3Ogxg5/KtUIwnhKfZdbEVaTOwP29fdpZSx
 XqZUlrBnLDgfHSZX4ZJxw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:93UJmEm2q2c=:gA9Ww/hklxBpQDDCHvWrHg
 XLehHu0N8vLUXJb2hgnchmrc04Z/o/MBelr5bXaJbbOSwMMn2dOVysg2e+AtwShaVAY1isDxt
 /i9ZH5ZuTfXbn82yUbAnPb7je5VxoWHPegwPcVtumzlDukIMjthicdA+yinBGY2YDlxXj7tLI
 nLoSpFgvxNRf0RsC9+uFrH9KWdZve8EleYzeCWro1noiAAaiRTWzeC9wRFpTtkH9fJjA2NB6Q
 KzFBvUcvt+N+kx5kYGMhwOAHUM2Mf1sIgJlal9VN3RXEX7IbvzGCn18qSZQUBif2UvVa46nXC
 VInqnIAqelkwSKLwUnz7AvBMGBpr+nJUNC8/dl3zboLx0gngRP3uvb7H4zmHD7MYhWVRIuxIB
 3aw07jZg3fTay9NNygKTCOzXN2Qa2Sl1QoxUC/YWR/a4E5LKBprwY3c1nH5dkUlSUiVcrAJI6
 SSrfEkBlmhvUmJZ0mQ74ITa2+6tayMWFMKIAqt+CZFQOfAje+KMJb74tB+aIHB8t8NViElcFD
 aSgmUDa2LRkAqnwZqbzGu8ToprjjmKRZCve0aKcUG00JBnOwJwiNj6KqkTUf0SOtLpnVbyxbH
 QmFDSA0mXVlRs7wpnzhErHxVuzz+LDTrWE0hAukX+zW4vqyHuGET5szj7jnMJ9wU7ncx0Rj0Z
 eiR1/CBB2u/lN7RwFvax+rZ5+RYcY0Z5TmpD9FFIOnwgAsa6dQasEQ6twwn+60oQ2nY83JFxE
 AICnBeeq7L0Dgyn+MGzD52asswvH+1PH29oduIF8rfH+8srWiMZLHybvMQtOi9QzIy1mh7Vhj
 fZS6vs7pdNw0cIvutXY2YzVMv607S/rkXO6Ppk1OEj6ctcZ+IIRgk0d8wS/ve+kwFPH20Zr6Y
 lBG7fVgtAog9JwXKAoEBr1FJ1bA3EqYsFQuXiw5YPliyPYfL9JHE5NHsQKpE0w+QaEthTu9A1
 nNM3M5xfDvhXYumLPZJ1ztvXjzx5l/ZE7xYgsc7EMvwG4wC6pkylCgVKr4ZOuFln0rXBuQkZI
 4AbTmVqVcWPed/MlWuJJzFah5f+wygu9FlqB7CBkmPv9V5AUMI1vZVGYrJBOJDxjNmeSpzSt3
 rZs8Y35HdhTQ44M/+krb7+vAiOgHV9su7XbL26XklP14mmkSXWtln+AYfkVgr3IrTnUOvJVGn
 j9IFSJJBgHacoR64j1uQ6L8DKOKmZFGthQn0aNyaKiWSg5JnJ/zdOOR9fqoDXVziFRUftIXEV
 wCwhoe+dk72k22GDZ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_093049_777594_2D91BE68 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.18 listed in list.dnswl.org]
 0.0 BAD_ENC_HEADER         Message has bad MIME encoding in the header
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kate
 Stewart <kstewart@linuxfoundation.org>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 alex.dewar@gmx.co.uk, Thomas Gleixner <tglx@linutronix.de>, Enrico
 Weigelt <info@metux.net>, Allison Randal <allison@lohutok.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri Mar 27, 2020 at 4:29 PM, Alex Dewar wrote:
> dma_pool_destroy() already checks for NULL arguments, so the extra check
> is unnecessary.
>
> 
> Signed-off-by: Alex Dewar <alex.dewar@gmx.co.uk>

Gentle ping?
> ---
> arch/arm/common/dmabounce.c | 6 ++----
> 1 file changed, 2 insertions(+), 4 deletions(-)
>
> 
> diff --git a/arch/arm/common/dmabounce.c b/arch/arm/common/dmabounce.c
> index f4b719bde763..a7c776cdc38f 100644
> --- a/arch/arm/common/dmabounce.c
> +++ b/arch/arm/common/dmabounce.c
> @@ -560,10 +560,8 @@ void dmabounce_unregister_dev(struct device *dev)
> BUG();
> }
>
> 
> - if (device_info->small.pool)
> - dma_pool_destroy(device_info->small.pool);
> - if (device_info->large.pool)
> - dma_pool_destroy(device_info->large.pool);
> + dma_pool_destroy(device_info->small.pool);
> + dma_pool_destroy(device_info->large.pool);
>
> 
> #ifdef STATS
> if (device_info->attr_res == 0)
> --
> 2.26.0
>
> 
>
> 
>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
