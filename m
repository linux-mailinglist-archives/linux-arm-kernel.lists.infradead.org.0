Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B01EDB55D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 08:27:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:To:Subject:References:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4RZM7RphDaS+mJvyM8YAXX4HQYdJZOQo2gqQctJE+Ls=; b=lxTcuVkX5ch3Hb
	A+vG3reKvRCr8yuoIEv8TIlrm3omy2GlK/+49mmzEnpwcJM5iJrAeN2EJfIUtizSWc8J9Mpke0M2J
	1LLtDv1mx8uqjig3r7fU1M3SLfRASg9mTv/v648bhLBlFytNo174P6IpfK4ZbjYoo9YAChCGtJrmM
	RNR7gHCLb8iaLfRCpx055bozhUEvPLxnjx8so3df+r+jkImjfIDA21C8cU+VjkwuKLnbBNgV+zBEg
	/dTCOVo8UjbFOrSJJcfFPGXP9wFR+UXuAUNylEESlo1nVZEj4O+Tzphy4AF/OfKfPXQVZm4L81eRE
	soOJ1Ne+08dFzuWMF/JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKdHq-0007xi-2Y; Sun, 28 Apr 2019 06:27:42 +0000
Received: from mout.web.de ([212.227.17.11])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKdHZ-0007rA-4a; Sun, 28 Apr 2019 06:27:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1556432828;
 bh=sD5gEcmYxZ/75jTKmmZJV0RYz14HSWlKqY4cgh2Bg5Y=;
 h=X-UI-Sender-Class:Cc:References:Subject:To:From:Date:In-Reply-To;
 b=Th8ulTgqoAjBl4UcWzSk7t2JS3q84IxlFogJUMEku1BHMA6AEVEjTG4ph8LU8doGU
 aROCRagGC4SMfK2R9VQ8LWucnETmKpLn+vn7t3NMJe/KNcmAmr6PGsN3bW9rhgqZo8
 oOSahC+oxGhXIEyfaqUbr1zIYJ0N3Q3PD3TR8NeQ=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.3] ([2.244.181.137]) by smtp.web.de (mrweb102
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MNtPr-1hRWtT1Cax-007U5d; Sun, 28
 Apr 2019 08:27:08 +0200
References: <1556262488-21072-1-git-send-email-wen.yang99@zte.com.cn>
Subject: Re: [v3] ARM: rockchip: Fix a leaked reference by adding
 of_node_put() in two functions
To: Wen Yang <wen.yang99@zte.com.cn>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Florian Fainelli <f.fainelli@gmail.com>
From: Markus Elfring <Markus.Elfring@web.de>
Openpgp: preference=signencrypt
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <cee2ab03-d0b7-c9c6-acc3-d5aa28979e2b@web.de>
Date: Sun, 28 Apr 2019 08:27:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1556262488-21072-1-git-send-email-wen.yang99@zte.com.cn>
Content-Language: en-US
X-Provags-ID: V03:K1:cXPgu9h9riG1szFqYJYJUzbwWu7f1J+EEoid/wNuXCnPEuukZRp
 bykAUJdyGVOTnpACAMTlzOFYyJFBI4IzC0ZMkDfSJVg59JWvxBSTc9eYAHmuZVjZAWv81Lb
 UPxvnrgv38LtU8ELCZwA36ynSBhFeT/+7b3yNObeCuXt7bPoY05CEj3fy74TNDz70WXYqDe
 plUPDxZhD/0o6yRSaG/jg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3dDv1N3DuI0=:49c6jgeYSEDIR0Pmcm90a9
 1d/FkMMD0+Tr2ALwpl/yMAAXuaZsRTSRJjilvli19Sb7hmpo+/zsgDthflEJDWfRiqKfzTpS9
 rXVpWLfRBYBfmkJ5gSNBdojR7qtYqZ9ZQRQmfQxdsSH0R95WBsPXCQt5puwEo6fGFWy0IM1LM
 OR75EJlb8Nxx0j84lJ475cgG7mu7Rlh5oV3YFGrBZ6KWuCReLggeNXCWZ6D6kH5TcZ+gt64fC
 sbcZkGrgiwaZ5J8Y24cDmpnsEOMqwme7t0fJeeNV9TWEkF+nyOKCjJfUqMCp8XRF9QjDa20mG
 /M7oZEAhRKBtPmHgJCMgXycnFxF3QGF2Dg1NKHwVVBq1056TQKlac+oG3CXcSMx2yF3cA/tiB
 +tUTt1XmCEWFCUntzq/y7YxOMwOo7wRlEuh3jOl96rkZiVnKx8j26K+N07Pe6HIvewUCsA3gp
 FzHeI/Dey8y9NMVEx2vnBjC/EtPcBiA2Cfjq7JFEl7OSCWkVXHR4z6eGVJdHbCok3jo+Acv/m
 dHUcSlMITlUgkDCq1o2cFBnYdz+INZO/POpYH27oZxYo01zuzx4k8UgF17wdsVha9BHw3Nv00
 jDy5Zs9+AZP0qOejFnhFfwVNIcs98lW2N2YLW7qy1acv/aAHFBxgiNy3GR0lDvaIBn1Npn6W7
 bk+zTDXailTzji48dLV3Ut9B2sb1A/cGdI+/8pW0aig1MMAJmQLLU3LgWp/zY8BlU15+I5fr/
 ZS/hP6D+eYSsWpN7EK/bLSV1zsgVnmbkdIxefbUhVvXI6j4yBJzCeiwhoX8zSsA1eR4yYgXHt
 O6eYNC9PJT/xAJYTSlnAAHCUya9HILO64qBlnp7M5i20XnUkVL+ppSqDEguZfpHFZSQM6H1zc
 AdPzqaTP6DsMVwGW0pkbw95WeebG2bzXKRiPSn551iF8RsAnghMIk9niOc4WiQWuxMisMx3AN
 3eZ0++mX6pg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_232725_514067_D751492E 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Yi Wang <wang.yi59@zte.com.cn>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>  arch/arm/mach-rockchip/platsmp.c | 12 ++++++++++--
>  arch/arm/mach-rockchip/pm.c      |  2 ++

* Would a commit subject variant be nicer?

* I dare to present a reminder for a recurring development topic.
  How do you think about to adjust the exception handling in these function
  implementations a bit more according to the Linux coding style
  (so that the addition of duplicate function calls would be avoided)?

Regards,
Markus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
