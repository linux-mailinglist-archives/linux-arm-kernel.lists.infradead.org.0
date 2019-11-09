Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D51F60CD
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 19:01:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vlu+F1ADUnvKaY8SRIAAp9Cnbw86NffiLRGxFTAMAKc=; b=WkcWUwKYEyYGW5
	o3yJSs1+cIWtau0v+PSzIJfYKvFhXKeJl4w8wn+Iu9bNI7rAdt6IJO26VULu/zEHFA6AQFDVI3uwj
	Do+fKNsAHO0R/hseUDRYi9lwZimKr/ZNqHobwWnNuPPN0QO05klw2KOadixBuy/591jWCGnFtSQLZ
	0Prd4NXYJsEHCap2uucxJ+CTrUAM/FPC6PT1ip27nZDmxsSBIyRCsTcixdlrtGpWbxuMh00aFZyd9
	JgGdqJqfT2CEDNgAyxpoIcz6pAuq+cfNxd1FhRqM6FKaRPEpZ+nvhB7Tk6+xeW15B3jYmtxaw6HhC
	AoEyjMGT3Zg95r9/qSzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTV3U-0005Ww-FH; Sat, 09 Nov 2019 18:01:48 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTV3M-0005WY-BY
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 18:01:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1573322483;
 bh=UCe2k7CqHh3KdlChITukwlNbw0nV0Wwdnyh0WUURjDY=;
 h=X-UI-Sender-Class:To:Cc:From:Subject:Date;
 b=jVRaPzBtZe87mlWqMa8oACWow9dDaDwZ+ov0Y3YYaFidrnEe6bZYtoE/+T9knER/p
 CMeW/8OmDV6WfsPHXtVq9kE2Gb9ph4/Sq2tyHlWGQYjpuJuKLvQT8XDhDIG02f9R42
 DHSrwtOBRM/0FzLovMcsAzwEX2anG4WvXZdK6ZsE=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([2.243.82.67]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0LkPjj-1hw4yX3OcF-00cR2U; Sat, 09
 Nov 2019 19:01:22 +0100
To: linux-arm-kernel@lists.infradead.org,
 Alan Tull <atull@opensource.altera.com>,
 Dinh Nguyen <dinguyen@opensource.altera.com>,
 Kevin Hilman <khilman@linaro.org>, Russell King <linux@armlinux.org.uk>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] ARM: socfpga: PM: Add missing put_device() call in
 socfpga_setup_ocram_self_refresh()
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <c45a8e00-3fc9-adba-1a46-5f2c4149953e@web.de>
Date: Sat, 9 Nov 2019 19:01:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:G5f/wc2yv1bmYEjJOFrseh4adMdLus4cBhX+dP9MkCblvtpUMgV
 wWAl28QOhDAnJyO7irpK2vtMns4XYiuZfvcrctREEPwJE2m65MRlkzdjURp9Oc4jikZ+gNu
 WasaGwKwAP6S4Y2cQiXu0bMXoVw5Rul5ikiFCERKrFhFyJK34cIm82QVGPE6R2zmgG1zB0S
 jRvn9C6uScnkst/ExnlHA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:epWX2u5mpCQ=:AW4Y/eWKGvjOQbaZg7ab8h
 9HRfLiPHIUONSbdF1RB1QrT2tzGeHQMZI1soejvZ+TQP+AhACCB2jL7O8FsnSrGJu2D/q9k34
 UoZhPJbeaUL3j92kXsumpiIFtKjTzX0xz6L3uk2AIFE0faJO3h5B0TpWD7SdsyonNeI2Gj3EE
 hakoeUV311WvJOnSw4FF7kdt3BdfQHNP2EnBFJxrEd1vK2DtXqOftG2ZaTyZEji4plNxCysfL
 eFYozbra3wPzdU8//FwucB2AmzJzTIR+H9k8MLXTB8wTzq3qsbx8dRhShfL2XO+x7bK917Rgd
 AZ0iZ3ntUEpze7m1oPAR6pAv12NzXEeghCalG79WlNVY9fnvQy+T00Nz5NCuw67ou81Gca8Yj
 Zw88yaRniBt8t0Y5fk86QBqbvow1Nh/LqHCnF7NST/M1IkdmTYsTvldXU0eMNDjfkrDnisY+D
 LyUxu+731B//q6hTEe6z1Jn0iPjZ0rBs5aE67X0ChCkD+RR7Ubrqw0pzsSCK0NN4mUO5tTvAU
 3GNjqgJZSRFmDDtioJF27cigYnnf7SPIyuoHiYTIyxBov/CLxFDYVl0Ge6M43KSK1w1M77O3R
 SwZNixjikul9Oqy8G2pK+ST2Ng4GQHOnyXPQFdxQNu4OfKEdLva4NpPIGTKTHMNwNh6Ipawp3
 6pM7bvqTWkpd466/s4Q2TWO8MY96Srv8RXwGrG9Qk0WxFMjTbhk1YnIyZPVnCB2q6vDxL4Nm8
 KhXmAjqxFIJwq3Tgo7fc5XNODfOvEhD8OJ/VqNc5/RyMe8GClwrsMIZXirrx9Xj3Ak8EAFuXx
 2DlGqcsvuDR1fHPJwlQFvQ84EP3Wn9VOCvdPpyqoayjTK1lFSW8A6niGHOJUcs6E8p3r9fH6Z
 3XGjME++ZjwxoqIqoM6gzcovobqjsNv3C7v+ERHxP8oO/eZOP2OozF6MLvz9dM3ujPe0l01ov
 s8OJcW5H5v9KlvXi4Ly1N4s0Tdg/Jqhz3KNB5SlorsISS7YZl61Y65mHY4X7hKbSNlhONtjJy
 uXpnYU+SxNrnNS5WSTvWPsLqATliXQHff3oeZUFJBQzSfmcDK+s36vInp9zcRRIIEVb61Ohir
 HVVwo+HHnbv2YV6gDm2CZFWxgLEbP+l8T2kD34OdmPYD35IhNU/oSLnZZ8LznPmUTuCkqThzN
 hK3F3cNAKoN+6CIGG1sCbyGGSzqI3Zv/6+Z7ySByyFPn8/T/CrM/3gflG92KZN57iQncrLFrH
 XQALX9p3J7C6rsh6ZcxOocGoZJMtlqaG6jfWPflnuk46wZ7zzOnt/baMON8g=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_100140_733835_3EC2B6FC 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Sat, 9 Nov 2019 18:48:44 +0100

A coccicheck run provided information like the following.

arch/arm/mach-socfpga/pm.c:87:1-7: ERROR: missing put_device;
call of_find_device_by_node on line 41, but without a corresponding
object release within this function.

Generated by: scripts/coccinelle/free/put_device.cocci

Thus add the missed function call to fix the resource management for
this function implementation.

Fixes: 44fd8c7d4005f660f48679439f0a54225ba234a4 ("ARM: socfpga: support suspend to ram")
Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 arch/arm/mach-socfpga/pm.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-socfpga/pm.c b/arch/arm/mach-socfpga/pm.c
index 6ed887cf8dc9..365c0428b21b 100644
--- a/arch/arm/mach-socfpga/pm.c
+++ b/arch/arm/mach-socfpga/pm.c
@@ -49,14 +49,14 @@ static int socfpga_setup_ocram_self_refresh(void)
 	if (!ocram_pool) {
 		pr_warn("%s: ocram pool unavailable!\n", __func__);
 		ret = -ENODEV;
-		goto put_node;
+		goto put_device;
 	}

 	ocram_base = gen_pool_alloc(ocram_pool, socfpga_sdram_self_refresh_sz);
 	if (!ocram_base) {
 		pr_warn("%s: unable to alloc ocram!\n", __func__);
 		ret = -ENOMEM;
-		goto put_node;
+		goto put_device;
 	}

 	ocram_pbase = gen_pool_virt_to_phys(ocram_pool, ocram_base);
@@ -67,7 +67,7 @@ static int socfpga_setup_ocram_self_refresh(void)
 	if (!suspend_ocram_base) {
 		pr_warn("%s: __arm_ioremap_exec failed!\n", __func__);
 		ret = -ENOMEM;
-		goto put_node;
+		goto put_device;
 	}

 	/* Copy the code that puts DDR in self refresh to ocram */
@@ -81,6 +81,8 @@ static int socfpga_setup_ocram_self_refresh(void)
 	if (!socfpga_sdram_self_refresh_in_ocram)
 		ret = -EFAULT;

+put_device:
+	put_device(&pdev->dev);
 put_node:
 	of_node_put(np);

--
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
