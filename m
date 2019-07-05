Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA6C60C34
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 22:17:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aC0bOrFtOW5Dh38JR7E30y4TN6pCFQx8ca1DpxODVWk=; b=LOIObEowWe1/0e
	4/JbiHOGB7ivQ/kQGRqY0v5qxrT33oJnjs0QneeOagG1NxRUBucPFDFJ2c9gm5LpsZw7KLFe1cTmQ
	scNwaYLret0FMz8Af4D0pX5sbZ02gdK991umUo+bwKOZr4xlnw95d9/XAMiurT/zU/pSauWMB8gLa
	iEf0epzthX4caB5gNG3VX3E9aut1jJJnNAYmQKSstWgJxFg/1HrOcFgA1ypRVhAfELLxj+wZTiSDj
	1JiOPTqqNn3Fp74+mwdm5R170n/3Q4niKp6NDlCxKC03xer0a+Vn1jLDOtf/lx954x9MtJXL/korS
	TDaHl4oVSSdSaH/PvNSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjUeP-00080L-MB; Fri, 05 Jul 2019 20:17:45 +0000
Received: from mout.web.de ([212.227.15.14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjUeD-0007zv-GN
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 20:17:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1562357833;
 bh=ElntTFy8IEV6WaPkcOGu5re12CCEOMkuhIikiyIfvCM=;
 h=X-UI-Sender-Class:To:Cc:From:Subject:Date;
 b=J+6EMmFMdi7yF6XxY2zZJQVhVE6SMKYBsiS1NYfsPfdKINb4AQdfHXaqPfsZder+3
 78OPeF7FZwT7/tW2PWrTa9eSCaPniCGgIl9LswidzCteeNze7ChH13WihOffZAU+cA
 +cYealeWUYfR87iqwbF2/SMnAPLWHccxp+rIJ8rc=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([2.244.45.164]) by smtp.web.de (mrweb001
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0M9Xfb-1ho9Li1lAF-00CyEw; Fri, 05
 Jul 2019 22:17:13 +0200
To: linux-rtc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, Alessandro Zummo
 <a.zummo@towertech.it>, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] rtc: stm32: One function call less in stm32_rtc_set_alarm()
Openpgp: preference=signencrypt
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <f04277da-8a98-473e-2566-ac7846f9f8e1@web.de>
Date: Fri, 5 Jul 2019 22:17:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:PYyiyh1i0HUYLgpacRvJhHOq6EVXqxLBjlXC0r+b6UysKpu9nVB
 pbs15qRvrT7YNNjcEx5EgqzPXsbnLLRnyDJssCZlM69AIsuq22sfNuVtMCf5KiR4ziGJCGs
 kc0FuDL5IqmiTZ9YL1a2IbUOICIgY8gJH5rNvf6iG24+eUZwGdUe5ZJYtZQrKfG8C4G80ad
 YI2JPtUtvnSKp1AoAElsA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8moAN+rWVEA=:V0v1TnsXDxzm/Fi0I6maf1
 ae1n1/vL3obLD8yZ+LZBcAusJubQxeeCopNw5PPjfDg6PlyvOuR2bRHG3419tNJQsx8pG9EQl
 T8uUdzQyVa5R7/MECmIICHBXDtlqobLLjmp+K4o1s3eT/D8Gv6RzheXcOm5i6TOEPyi/msDlE
 JG66nUu8R5GgnKq/07L/bI0C5qWp70nR3lDO7arOnI/yBVsy8em4TifbUcx+De4XYIthK84n8
 ukppi9D30jJkmJLLN8uDz4ZlgOi6BXciS78mzr9065SXVu9thuFPZwLFKyZFzZ1787oOeIMAp
 J5tyMsfOF612tAPGPjjPF3SSZ+azGVi5wm0USHCxkDTSfWpZ+ADhcN1DuIlOtJQ5solCN6fjM
 AkbnSPkXOCsmn891JfLoDYvOSA6LiwT/2fPzb4SafvrK6ChmWJndK7cJQ6vrYq9bRL258vVlE
 eVbAHqml1IzEdwhw/grx8XCUCZaT8rc9AotUCIGgMYE1kDGnTvKMzDMbnZ8pMLkjySBLwhQsX
 YSv3hYteA/Hx8hD/V/X0LOtWsZaV1nffLLzZylclM1h6XM8nZ8Grd6vwJwXj0Srzekf791kqD
 IwaZ2+RwEvz/Of1Uw0bDV+fpNEGuBTevnK6d57fwo2YpIjMDT6G2oN5HmceQmadxm2T5aRIvG
 ty06kQkUFeV+BVKR+jevrVWoU5IDWZL3u/sPbEwnXJZNKxEi6d7s+t/hvjfm1HzLCSvOmVvAE
 Ir4f9uzid9vutwmy+SdGWcXtR57Ddn1qv+yFH0K0788AQsCZKnlU45amLLmhHl5F+YoQBniD8
 G6HLj5u5lP+9U/W+RokF0uplTGfhVG/ZRj6H4rBO3pHxOIu/fLDX3Kjs1QfdRepuArB6AzkGV
 B08YZvN7Lh8OUMUT6AfoPdWy0bakx3jcLBkS7cKhvFR6zIHv8sDWB+r+gslmQJPXMW0AjVLEK
 cRyNlyBG7Dm252jFnLG9k5VbYK0OwoH66pIGfBCOUxIFekMv+86K9UMxEmcouE9tI5ARcS+Y9
 5gkx81ybI3+gKaJcwT07Mg3QSsDaRPKCOMKQys1smHAZ+WKcXSPZx4nVri+8yxexwb6brnPAu
 DnJToY24K7Me3jQwRiRNRimZ88bxMeZ+hZW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_131733_882014_4072D7AA 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.14 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Fri, 5 Jul 2019 22:10:10 +0200

Avoid an extra function call by using a ternary operator instead of
a conditional statement.

This issue was detected by using the Coccinelle software.

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 drivers/rtc/rtc-stm32.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/rtc/rtc-stm32.c b/drivers/rtc/rtc-stm32.c
index 8e6c9b3bcc29..83793b530fed 100644
--- a/drivers/rtc/rtc-stm32.c
+++ b/drivers/rtc/rtc-stm32.c
@@ -519,11 +519,7 @@ static int stm32_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
 	/* Write to Alarm register */
 	writel_relaxed(alrmar, rtc->base + regs->alrmar);

-	if (alrm->enabled)
-		stm32_rtc_alarm_irq_enable(dev, 1);
-	else
-		stm32_rtc_alarm_irq_enable(dev, 0);
-
+	stm32_rtc_alarm_irq_enable(dev, alrm->enabled ? 1 : 0);
 end:
 	stm32_rtc_wpr_lock(rtc);

--
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
