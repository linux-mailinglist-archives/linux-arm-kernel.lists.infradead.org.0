Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9141BF5AA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 12:37:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nY+CLFJNcOGaMzE1f3tBPLvxoYNk+room3nffuRHoPU=; b=lz1XKzzcu4Wofg
	0hC6V3vQNkc4UNFNhRHH1T4shYYXCtcMlvzmQe+r2gkqOHWUz0CtUOjrvxACER4u7wSxeYoHlI+lx
	0XXs1uAYpXREC2f4eILx125P8mz0EX1+o1HzSFRTqPM7Eitu9TKGjPn8LrwhfZa9ENgAoyGbUVQIw
	xsICZGziL+YiDg9exT3AadD2/0KJzUud0TmupvabeZ0kQ/ErMhNW4Fe/Q1TWflWkaDDOZnXk2+oDe
	p5bQbOHkf0FtUKb9bZNyDrv8Gfoy8iOxViYQ5jT/WYuwbgQy1LUv6tyTo8gqRsgRSEZCpe/Hjgr66
	tfM2LRFjmsfdWJ99rhbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU6ZV-0007OG-OC; Thu, 30 Apr 2020 10:37:37 +0000
Received: from mout.web.de ([212.227.15.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU6ZK-0007MF-Ge
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 10:37:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1588243033;
 bh=F3yJdCPE1EOGRezMAyuL04MP6DUvlTt+kVIB0M1mrnw=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=by9/PKeVWBwsk9qE70P1t5wvnb0iUlBQvAzKtm4sA09E2jn8HNTtiEMsQuapBBdGY
 3hoRGZGNPsxGhfIBR8J766iCjQLS9KknDV3DrfLGoVcOd2o0cmkhBQfo0XVak/jmkz
 InWG3XLQv/hTHCIJMCCvajj0VKwB4EBouu5EGrW8=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.131.175.216]) by smtp.web.de (mrweb003
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MSJH1-1jaSDD3fSN-00TTBM; Thu, 30
 Apr 2020 12:37:12 +0200
Subject: Re: [PATCH] ZYNQ: platsmp: Return -ENOMEM after a failed ioremap()
 call in zynq_cpun_start()
To: Michal Simek <michal.simek@xilinx.com>, Xu Wang <vulab@iscas.ac.cn>,
 linux-arm-kernel@lists.infradead.org
References: <9cf516c9-3a29-fb39-8943-49c906b3eea7@web.de>
 <f07532ca-0bf3-7e1b-2d53-6f5555d5e451@xilinx.com>
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <f2858856-f2ba-bab8-0fe4-437b30a2cf87@web.de>
Date: Thu, 30 Apr 2020 12:37:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <f07532ca-0bf3-7e1b-2d53-6f5555d5e451@xilinx.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:p9YXHQkZ2K2TdoQYP9wf92wkDxG42+yjM5BrFyEoJXREHjZZeXi
 KYU12H0UMsGucGCAuQDvI5PEXntX/Z6Lg1awltqXl6/fXc0TxTzuOQJKg8OtZlVw/eBxk60
 kS32trfu29Lt5im+soG5IJ799AHoWBu14W53vxwT7JFF5Yb6ejpGLfuNG4QsYHQUa8RG8Pl
 zcl/fzcmVum3R3cQzd6GQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:WUdk3m9uQsU=:DMp8Q5+QEM7EPNfsXVWyEv
 dS5TbHUVI3d2+nz2hdkAG+dbs4QhIBdy/BQM7FiICdqLaFdqdqGNef0GiYRbTlmZTyo5RspJo
 T0/ZjBeel1fcaRJOi5nUnYusi4G0joUj+/qlvqqKRYGyigkti/RHQEQZ5/Suw9XZqlYyrf+Iv
 jxkfCJZM/pEseotXKkvqUc3fsKlFZ6tRBcgc+g6wiye+TiJNZj/ifTr62KQErtD08AkoEE+aL
 BLK6h5tb/sSehcAD3wTxIaZ/uSCWzTuDqXMxRk8o35UbRMt2AxB6LLXxa7JVkwHR4Fvue/ZwD
 gMuNUNJIRTvjczhsB9IEBA0isRHju60WKN1pc06V7o9VacrI0cdtGaOkfaJrY6nbyffupPs2Q
 clcFM3Ga/nbcLG5jKBPqFpW7G3A5FGEhwy79UPmSyMfy9rMZ7Gt7jNEqSq7jIsd++kriTZ3Ir
 3vWlzilFeDMOX6U7KOBWFr5toNkt4b5fXzu+WGDnPrHTb2Gk/T4ZFNjG/WWMSl/pZzAebFWYB
 4eCJksqXHSZXKXsTgMjiDY4rk5oX8vhWAHz/dQXk9zWEISX+3OEFXmBMfeBoyNhxMytMOgw6A
 HaMNYSeh1GOvNr0nBXI14LavWEI0+5LQE2ctEEJ7zcbrNpcY6gtDTtCXFc2Z2kQRDfSreGl5V
 ddGP8u71DOK4dQ/yFCwXaccRM+QX6cyj4a+uC1QD00QbK0H1GDWd++Tknb4mY72LZQLuFkcoU
 rFO26mBsHXU21zxonhm/8bcDYf8nDADQz+eqBcUXZtP9xtNR0DAlZpjnwjapM0dSDLPVylSxT
 Whg3NfaDac37+dtv8yhuaWDlXdCtcKR+87hkwZ5D2oi2Mi/mWErRg3otTMom0dwnq/wrTHVTT
 nZJ3sjddGIZNRoSB9xyxOFOBWdWhwDor3AkpeAinb9rZzawi0oxqnNVNvMmpStMPQ/IS/+cQk
 hKwd8B6AZXl/7G7PuBBM8onhPFCorPFBDgf4XQLaL91yaNhLCQtzh5Ph7sT9J/vY7uxD/+OjM
 FN9UqzJRPb6eg/VtOhgASPJiut8olfh94eJW9p4Hoo3Zba29tSXRc2MSckoTQxUATM1DQ1R4E
 II3o05IRsg8HtjOPqUC7dq4qRCp+r1xTDB0Z4Ze33xRyCy9MflDGtY2yhETF4EpXygbWcSkvz
 B5+8ZUnVFlg8Y+aDMI7q/43JViEAW8faZ5Sh6og+YNdhOWM+vhOksCy9xTYwhy6yYYPajF5PB
 colr2T2/NhU+lNtjg
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_033726_889258_2394C289 
X-CRM114-Status: UNSURE (   5.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.4 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [markus.elfring[at]web.de]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.15.4 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> I would expect any static program analysis tool like coccinelle.

Would you like to help any more for the possibility that advanced
source code analysis can point questionable error codes out?

Regards,
Markus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
