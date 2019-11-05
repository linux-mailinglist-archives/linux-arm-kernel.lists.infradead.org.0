Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BDBF0562
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 19:52:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8QYmhpV+1U3NNxzztI5yqwreeEVgh/TxkfgM0QB6iRo=; b=EbGNWQhIGbp81m
	FoMIuvmuPEjyGPMTc9RFaCc+CNPnSwEOhIli1QmfSoXPmKR5E8pEaihtkkOshYxUrKKdRJTg+snnC
	yaM7E0JN+GMhavd8jc/7BvVquYBOfYwGKmCM2uOAtF6fexjnrTH/e72HqLpUb6SOA4PwbFQ6bf3E4
	aPXPwfgDnp33QN26xpJpAd8nDNCF7JJW+IgH/dO0ox90qGBvZMfhG/YFPuIJuzj4QZXcm7t/hRHhw
	XdJn0Z7AYXZQ5CCTBEDaABIeLMW2yxHkpsGglIoQoYHMYdTKfHnEBCLBtb2QeRIZXJMKzyNNH5QYu
	UvsbgtoMW+nntK9YHa2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS3wQ-0005Ih-Gr; Tue, 05 Nov 2019 18:52:34 +0000
Received: from mout.web.de ([212.227.15.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS3wK-0005IE-OL
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 18:52:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1572979939;
 bh=p+pVJzdTCRVueNgcY25TZ4iCmA2+Sk9GbdfK1lvvUM4=;
 h=X-UI-Sender-Class:To:Cc:From:Subject:Date;
 b=jXNmIURsij6LWQiCv4YjNik3iWKTKChKfkyFIzr7WJoYd6IVG4yU7nhAZohFkL6Xg
 PB4mrViA9WMCF4yFVZB16ja8ZBOig3tMfSPeTTh7hpXFzs1dm4lqXn/sb02wrim0fQ
 oMSJoHvmrNbf5cy8+Avi3hF1qpHWqPfSbr0TT23g=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([78.48.164.204]) by smtp.web.de (mrweb004
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MIkOm-1iUGrb1jM8-002Cpn; Tue, 05
 Nov 2019 19:52:19 +0100
To: linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 Derek Kiernan <derek.kiernan@xilinx.com>,
 Dragan Cvetic <dragan.cvetic@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michal Simek <michal.simek@xilinx.com>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH 0/2] misc: xilinx_sdfec: Adjustments for xsdfec_add_ldpc()
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <af1ff373-56c0-ca49-36dd-15666d183c95@web.de>
Date: Tue, 5 Nov 2019 19:52:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:WAku7KHWky/ZGpLJAZfSc6rtuOu2OCizOohkICcjJrkovNBTieD
 Vj0tntv8uuxEuaoM7AtMXzCIavmx1JosIt4TOT3+Lbjn+KBLPsuU8a0ZQneXIvVyRimkyMl
 VKZGtgWtRPscJHCXhi2+do53e3JOtyWtsxIZvhvZrIjBuWmm3GYHUba21jUD6BBBeplX+7S
 JRGT34TPfcBKPEzx1ygPQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lD8q/Zq4Oe4=:2kVogwQVzXTaP/SmK/u95X
 KkTMk6eKdrvM7p08usKN7KITWwkYzVA+a45gOhtyemo0IWBfRM+jxrYmD0oxLP3Rvv7Qq6mj9
 +R7WoqOawDC8ZzzdmRziEi7pzCwMNLXBOuS9sJJXz5usE8VUpDfuKzVJN84f3mNJWp8gaeSMD
 UjDBOXsLniRwjZNGNps+GJPZIAgXx+EcoNXRMrBN8mFqXOjYz6UTUEBqzi38l62KYr/GSJVjt
 jersT6ZEX0WhSYxOSEPV6L1Gm0UGD01X6elSdWCoxmMc+tDIFq4Nd1OuMO2IVpKZUamWiLM//
 9Yi32KS5dFim92mfSUSXqdpYjrPc93EPW33uwGQBOU55kwGtr64HgnsUYF2TL62Nl0RRY2tIV
 dTrLHPv9M1QO/U0/dujAEoV/SPrAr4BTq7wJ/l8hI/gbWn4AehH8HqlUEno2H5xEpJrYb5C4L
 TEni+fhnqmCY6Pr7Txe4VZ4pNiC11EXdigzKVms2vtyym3VUcBFMCGTF1lXVMbIzxoScjGZMV
 3uj7PcI1NmObG/Bi0MgjjxsEFtb02a7MkjCMpGmqtjbL25EQcxW7XZrYzq+juubJ9BKFQg8tr
 eP/YGrVLiEcZNpiXFhy0w8WMVSrr1sk6orqiwz/PsNWapWqpoPoYWAmPAmMta3VWpveJ0TLGC
 oeM5Phl1zdv+iwGI//7BAdQ6k6YX6aj4bWL+tCxOPZ3QC61Jp4Sro5OSKzik6QvWWbsPcTld8
 IUcXjD/zG5KeLVW3hBt2b4eQbQmaqGpW6kXil4gN6A+8tuQ7e+8uMsEFypDfMq+C1yS+/+JUM
 x+Ib/YsSnkhUv+5Mt5wyc+5y+wWJdd2Gncew9vxxQN8Q3SUEOZHJAFR/F4iQBU4xuR+EhaFZn
 0SAdzsyrUUdsJUj8gCrUlcvF4SGUFAHsaaI/jd85tPnqcae8Gw6hQQgVP0pN+voTaC7xAC6gb
 mr2hc1dT08sOoYqOAcgxz6BXtC+bAqxGCv7k9NXC7W4dk/2G41noYcxlu6DYhOSfMp3HYcpRW
 YXCIx5CHMn10N3a693daFSk0WY3byF2qNGfDJH3Efm/86XMPcEExqkTfAlcY+H/jnfjrGxdWm
 2tm9J3KmdkAxIguAjJxpN8TQVbuHG++QxIkGsLPtUaWdvyiKOYa1VkKEw9q/4l3jowh24blEW
 n0y1dNp3RsFgdYTYoEDjoQSurUuXrX82ycXvtHh2CLEP5C8kMlBMndG8cFHdgjSPFF3wXfeUs
 6/sAcnotZC3b+3OZUa8hYiwweJuz9os/jG6h/EwCGmt957npVE5IDOKd0ka4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_105229_122945_9CC63D8B 
X-CRM114-Status: UNSURE (   7.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Tue, 5 Nov 2019 19:45:05 +0100

Two update suggestions were taken into account
from static source code analysis.

Markus Elfring (2):
  Use memdup_user() rather than duplicating its implementation
  Combine three condition checks into one statement

 drivers/misc/xilinx_sdfec.c | 29 ++++++++---------------------
 1 file changed, 8 insertions(+), 21 deletions(-)

--
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
