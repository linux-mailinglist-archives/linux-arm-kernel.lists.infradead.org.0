Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED74B1B080
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 08:49:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ACnGYYHOFBpFDccxUFPuRGWkZIikHAMV5F5o622/s8w=; b=itC1igEn/8SYHs
	xglvlMOZy1pXrIy78P1QCC13GtGxkpB09RUchqroKF6WG5VLzGz5/SsKOl6JeI8gdwdbxDlKM+AOj
	wfTavItCGEx1grRQZzCZKec3xOn1G+sex9Eg+DR0ukpjCr0q43lJcNV5q1hhpCvD3PH9lAAczNSwe
	DUeGXKv1xnLutijjY9SyrH2MAdTGXFe5tv5lma8ho8tGG3oDxcScav0l8MiS6yYqyKmQMPJG0qlW9
	Eb3BXJBgSdQYTtyN0VNC2YpnBcXjeeratQvc3f+GKU0jyTaeAXLC32eCuJE4PxMdKOHonCBly45hT
	84O2JR8OBSLRSSJNfTmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ4mM-0002AD-I2; Mon, 13 May 2019 06:49:42 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ4mF-00029b-8O; Mon, 13 May 2019 06:49:36 +0000
Received: from [192.168.178.187] ([109.104.40.7]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MD9Kp-1hYdLQ1ZJ3-00985K; Mon, 13 May 2019 08:49:17 +0200
Subject: Re: [PATCH] staging: vc04_services: bcm2835-camera: remove redundant
 assignment to variable ret
To: Colin King <colin.king@canonical.com>, Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org
References: <20190511134813.5645-1-colin.king@canonical.com>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <5fd5c89a-4bd0-1d2d-f027-819fe954bd5f@i2se.com>
Date: Mon, 13 May 2019 08:49:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190511134813.5645-1-colin.king@canonical.com>
Content-Language: en-US
X-Provags-ID: V03:K1:6gjO/x7pdDWHJchMfTFoYpMrc2jCJwMLYflU4Gu8ajN8J46umg6
 aMe2yCTYt5dfh5L90OffWgr+De4ZEbH7zWOzULis8Wg7jHu11WCzgZWtKNKPAptARDx0oJ0
 onjJagH2RY6NH+NAetYiMMsie9qoyv3MvH4KUKzjZocbDIdCRjsjk1SFU/5wxaBPr4iNuWQ
 hQtDghl6UxoBPf6cQUayg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ATE5Qe06IYI=:LutzhZvoFJqtjnVznCcyii
 tuxoWieuRi4pbG6k9Au0IJ9Ub5XgOXfj1MY0QsBkBbMXSbDvguUogyLLnjeSwNGOsWeOMjvSM
 8AkIDckWw+Udpaq5coHqFCoxBKcqTR7tymRibv5jN5rdQTe4mOvO6FD6Cxvt5xk9taq/JjZJn
 jrCvrFs1sK6T9EdG8v0Adu8/TbKi8+UV9AvAIDXtJsnDHMeen1p5PYYLP3xRp86bo2osT0NzL
 gjEeHhxxREkPSAG3zyCYMeiMMgdOtvFpoiT6gStg5XSWBLCinF8NVQh91n/7yl/bddj2JjWGI
 8fmMZFsL4MKtdLf4SBPlvPfx26E8QaGGPnL5CVeqqT8v7UsY2PpUyh05QtzsXlem2TNnGYdtH
 /b7eub9w1KSlYIAhLVUN41vJBSQGjgKWIgUav2Aim1M4Dw7uND/9bidkmVIKu3A3z4lY3OQoZ
 rDIu0sAWbt8ZzTOf3H2ERZPU0gDkDtxPV602BDNE2JIIIdO0+iThd7fQntiBQXFljbxxLj6ZY
 SdEZ1f6CfX5ji1ZM3gHrlI/hMwZXuB+NOPfSOzXYSAgLOPhbU2wXA6d5Vw+g5A4k+zvp79plc
 ZilfIzGQj5RS7eD1od8LSX00t9D0pz+yL1Ue+1Xvs/ALaEkzKRnnV/oo6RcUd4VeZ6MvUlMiD
 1akkc4W8Sn/78m4OlWg088rvmNW8BJ9j+uUosZe0QQWCqFvYXJ9YTIICv0weU9AAR/pn8B25i
 R7N7C825vhSBDGmX7QLdXGT7S6Vx3XH2oT5Ig3b8K9XyfNS5TXKSbguR/3Y=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_234935_608317_E5F75FF2 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11.05.19 15:48, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
>
> The variable ret is being initialized however this is never read and later
> it is being reassigned to a new value. The initialization is redundant and
> hence can be removed.
>
> Addresses-Coverity: ("Unused Value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
Acked-by: Stefan Wahren <stefan.wahren@i2se.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
