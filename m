Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A280B473
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 22:10:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pISKHYcC8CbQd4cXANo2x1FmiP7DWN20ilfjt5JAym8=; b=ftI8Z8JKdEgRHwKlx0fhqNP0Tp
	uEPNhAPJz5zROtIZZ3ocmXwkCD9e1IhnOYhhDpcF17KQnQto9I2wW1DdWRNfItjRnS8UOU/lO91x2
	TvhV5WBnkwegK3gxs2KeozusEH99BYKpjfE9CqliCG9XdqE1Mmu6ZVCCeHgf3/v4NhJAwQIeEWpSv
	d41aI9tPVVcvwLK7mIz9K5pCaqNd63dkJ+/Nblsn0F9ilBbzXObnGrUB1qPDAygx6eosP1Fx89oSL
	/5L/L2chTS0bU2SGVSf9SuVIyggV53hP4GK4YWRC7f+YmSTxeyomWoGLXK3Kqj84WizOmFeJCut2N
	8LOIg/SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKTeN-00074V-G0; Sat, 27 Apr 2019 20:10:19 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKTeF-0006Wo-Lx; Sat, 27 Apr 2019 20:10:13 +0000
Received: from [192.168.1.164] ([37.4.249.100]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1M4JeB-1hKkd32Ztp-000IQy; Sat, 27 Apr 2019 22:10:04 +0200
Subject: Re: [PATCH v3] Staging: vc04_services: Cleanup in ctrl_set_bitrate()
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>, eric@anholt.net,
 gregkh@linuxfoundation.org, f.fainelli@gmail.com, rjui@broadcom.com,
 sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
References: <20190423144745.21474-1-madhumithabiw@gmail.com>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <4c81db45-c9cc-5835-f947-2bf874b1b5f8@i2se.com>
Date: Sat, 27 Apr 2019 22:10:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190423144745.21474-1-madhumithabiw@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:TRMLT6gu87xPioZML+mE8keoijhkkpde2/S33vAcd4wGz2YBCkA
 yXeJe7Srp1tCdRzLmNgGBNyvsT99P1XpYhMnwxhS+4+iEtTo6sQ0tWb3lSoiF1hNf2Fexlr
 nHp9Tb71JDOAw2WUBByl/Suhi5rcT93N4FCfA5mIWtBWGjOlWkZR7xNaOAfajB8yQBS4muN
 vyF3aMwmiNdOzwobnA1MA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:a1xJf0cMFfk=:owaO7jyuRsE5Q2A1P41RoB
 s7AXZ1OEj56ycv7wu8e0pvR1uxPkAHcsXap3sZmnCDUjnljzGdSj/QK5g4Meh3vGzJCVJPxdQ
 jM/N8h9x8tine2BOQEcpAVvEnnj3qDaRUzHX51P6QHSaAQ5WydFQzIpapMv/JBzDGpmBWDnQp
 hv7oRF0svDe5jlhsrmQPR/zdBhFEmEXQuOfG/MWI8xCkXi6P/fm40HQn98xUeMLaLmj401IrF
 6mr4pHytKLCDUo2jYMWK4oEYFSLIyl5PZW4gauUrviWT4qtxx4+nUaYc3oIlhDiKzjAJOJ6xO
 Nk2k0D9HNDHx6QQz6UtU6lVB08DDP1uFqIrAG9mVLhEXRmgoiY6Ww4TMXDYDXUhBnabrDkPZj
 x7P2CIfCFft5lRvGJYp9wXXnWtfUeoOuxm+eZmh4wL3ers/F4Ba9vMQCGz+qS8n9lGnLRU+RZ
 abceHNMKw/fIprObq+Le9r4i+ZMz4ItkBOSjkTQCyBAbbbV5bAvFqiKLbz9UNKmGloxkXEM3z
 e7DOU6FdcaGYZIchr8CS0cJbdN/RkwXc2ve4uDyndiKlo2MSKAnnTZCXYuYGJ9BkDt098btJo
 sTqTl8rhzuKnzJn8Dg0CaB36W3gGbBAUM5RoSV6Tz2haAPIXk8aqnyQrb1Il+YLWd4FVGvbPV
 OJo+0Km4GTdtyyzA0JfcVsKcwDCBExCkTwX3RFIwb8/GW7J2eJ7DxvRpT6k77zSPY4FliHnF+
 sV2MI9R9jsS8YqfFTrsy651PxDxGUK79IEZ9bsO5C+c3x7cNTWrOJqj8t8A=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_131012_020951_655D3379 
X-CRM114-Status: UNSURE (   9.36  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 23.04.19 um 16:47 schrieb Madhumitha Prabakaran:
> Remove unnecessary variable from the function and make a corresponding
> change w.r.t the variable. In addition to that align the parameters in
> the parentheses to maintain Linux kernel coding style
>
> Issue suggested by Coccinelle.
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Acked-by: Stefan Wahren <stefan.wahren@i2se.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
