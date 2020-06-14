Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E76E11F88AE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 14:08:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sSjhxOqR4hYdmBm9ZX7AZu3gYA3oEbllrsPRKscpfic=; b=kMRhIso6FH+pxo
	MwD6U6BGccHwiGEmpWjy3X0Uoyh4WrkZcgD3eooZnu+n2JOmkKVocyB+9A7jQrvPpKMzaqdGaP9RV
	eb3smvgf9dzS4Au0U+CgFZT5hlRZCVADF2opGiEqRAhnrAg7HSQBQQ9u6daGnAkUcB77btM1im9Wx
	8qA5OSH53WG/VJ9fhWVTBroF5wB5mr/cIeP//OlbiO5w8FGzFd5OL/eraeN6lfxyIQb/ugbqRh1pI
	77UT2IQSDpl1KzZPjiTgDgM6vV3SmbB0/oQ6sCvF7DAFU6qfwNNe0b/w2nKPfrPq3qAzLqVMDjZTI
	nRERXiW1JO1CVze2B9xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkRR9-0007X7-4R; Sun, 14 Jun 2020 12:08:31 +0000
Received: from spam.zju.edu.cn ([61.164.42.155] helo=zju.edu.cn)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkRR1-0007LH-R1
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 12:08:25 +0000
Received: by ajax-webmail-mail-app4 (Coremail) ; Sun, 14 Jun 2020 20:08:03
 +0800 (GMT+08:00)
X-Originating-IP: [210.32.144.65]
Date: Sun, 14 Jun 2020 20:08:03 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: dinghao.liu@zju.edu.cn
To: "Wolfram Sang" <wsa@kernel.org>
Subject: Re: Re: [PATCH] [v3] i2c: imx-lpi2c: Fix runtime PM imbalance on error
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10 build 20190906(84e8bf8f)
 Copyright (c) 2002-2020 www.mailtech.cn zju.edu.cn
In-Reply-To: <20200614091203.GC2878@kunai>
References: <20200601061640.27632-1-dinghao.liu@zju.edu.cn>
 <20200614091203.GC2878@kunai>
MIME-Version: 1.0
Message-ID: <72b721eb.10d6ff.172b2bac1e9.Coremail.dinghao.liu@zju.edu.cn>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: cS_KCgAXblAjE+Zed9xNAQ--.27067W
X-CM-SenderInfo: qrrzjiaqtzq6lmxovvfxof0/1tbiAgULBlZdtOohcwAAsN
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJTRUUUbtvS07vEb7Iv0x
 C_Cr1lV2xY67kC6x804xWlV2xY67CY07I20VC2zVCF04k26cxKx2IYs7xG6rWj6s0DMIAI
 bVAFxVCF77xC64kEw24lV2xY67C26IkvcIIF6IxKo4kEV4ylV2xY628lY4IE4IxF12IF4w
 CS07vE84x0c7CEj48ve4kI8wCS07vE84ACjcxK6xIIjxv20xvE14v26w1j6s0DMIAIbVA2
 z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVW8Jr0_Cr1UMIAIbVA2z4x0Y4vEx4A2jsIE14v26r
 xl6s0DMIAIbVA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_GcCE3s1lV2xY62AIxVAIcxkEcVAq
 07x20xvEncxIr21lV2xY6c02F40EFcxC0VAKzVAqx4xG6I80ewCS07vEYx0E2Ix0cI8IcV
 AFwI0_Jr0_Jr4lV2xY6cIj6I8E87Iv67AKxVWUJVW8JwCS07vEOx8S6xCaFVCjc4AY6r1j
 6r4UMIAIbVACI402YVCY1x02628vn2kIc2xKxwCS07vE7I0Y64k_MIAIbVCY02Avz4vE14
 v_Xr1lV2xY6xkI7II2jI8vz4vEwIxGrwCS07vE42xK82IY6x8ErcxFaVAv8VW8uw4UJr1U
 MIAIbVCF72vE77IF4wCS07vE4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lV2xY6I8I3I0E5I8CrV
 AFwI0_Jr0_Jr4lV2xY6I8I3I0E7480Y4vE14v26r106r1rMIAIbVC2zVAF1VAY17CE14v2
 6r1q6r43MIAIbVCI42IY6xIIjxv20xvE14v26r1j6r1xMIAIbVCI42IY6xIIjxv20xvEc7
 CjxVAFwI0_Gr0_Cr1lV2xY6IIF0xvE42xK8VAvwI8IcIk0rVWrZr1j6s0DMIAIbVCI42IY
 6I8E87Iv67AKxVWUJVW8JwCS07vEIxAIcVC2z280aVCY1x0267AKxVW8JVW8JrUvcSsGvf
 C2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_050824_185464_C3182377 
X-CRM114-Status: UNSURE (   5.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Fugang Duan <fugang.duan@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 kjlu@umn.edu, linux-kernel@vger.kernel.org,
 Markus Elfring <Markus.Elfring@web.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> 
> Can you point me to a discussion where it was decided that this is a
> proper fix? I'd think we rather should fix pm_runtime_get_sync() but
> maybe there are technical reasons against it.
> 

There is a discussion here:
https://lkml.org/lkml/2020/5/20/1100

There are many use cases that suppose pm_runtime_get_sync() will always
increment the usage counter and do not check its return value. So I don't
think we should adjust this function directly.

As for this API, Dan suggested a replacement (wrapper) for later developers.
I think this is the best solution.
https://lore.kernel.org/patchwork/patch/1245375/

Regards,
Dinghao
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
