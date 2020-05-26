Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0851E2299
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 15:00:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OGT5i1ufcHLj2B2EovKLkjvw4vdNeyg6C2U7H3EI3Bc=; b=oIpEM+6jpad6W8
	yj3UYNqU+cc1X1c0+NnP2RDa1M11FQlCvjtp8f+UEZUSUVHlW/AZDuDG9rsHVR6c71YMxus5vOiv1
	hrRk43WyKYM0N+qefFe+XgRBaqtCp7bg6rVosVsklcAzsjlDC4IRDNEpajcRafR4AoHFKaWtu8zt/
	zgkqvZIzCj5IB3RPEcB7sDQ1xm7wu1DXlmhYlzrJfIDugJLeO+uS52hgx+JfTd15wvE5sm7tEU2+I
	ZjtayBpMiqHjpKltlkLF5r+T7s34xBS0BKmSfDge5QQJOjdRW6YMfN8wBZWYgs1XvM9WO1pQwbYg1
	d6G+YFHtIQt+ALNmemog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdZCM-00032i-9s; Tue, 26 May 2020 13:00:50 +0000
Received: from mail.zju.edu.cn ([61.164.42.155] helo=zju.edu.cn)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdZCC-000316-Cg
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 13:00:42 +0000
Received: by ajax-webmail-mail-app3 (Coremail) ; Tue, 26 May 2020 21:00:23
 +0800 (GMT+08:00)
X-Originating-IP: [222.205.78.173]
Date: Tue, 26 May 2020 21:00:23 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: dinghao.liu@zju.edu.cn
To: "Alain Volmat" <alain.volmat@st.com>
Subject: Re: Re: [PATCH] i2c: stm32f7: Fix runtime PM imbalance in
 stm32f7_i2c_reg_slave
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10 build 20190906(84e8bf8f)
 Copyright (c) 2002-2020 www.mailtech.cn zju.edu.cn
In-Reply-To: <20200526083400.GC10725@gnbcxd0016.gnb.st.com>
References: <20200521070507.13015-1-dinghao.liu@zju.edu.cn>
 <20200526083400.GC10725@gnbcxd0016.gnb.st.com>
MIME-Version: 1.0
Message-ID: <7548c995.d205f.1725111d7c4.Coremail.dinghao.liu@zju.edu.cn>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: cC_KCgDnX0PnEs1eVcoKAA--.2911W
X-CM-SenderInfo: qrrzjiaqtzq6lmxovvfxof0/1tbiAgYMBlZdtOUN1wABsP
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJTRUUUbXIS07vEb7Iv0x
 C_Cr1lV2xY67kC6x804xWlV2xY67CY07I20VC2zVCF04k26cxKx2IYs7xG6rWj6s0DMIAI
 bVAFxVCF77xC64kEw24lV2xY67C26IkvcIIF6IxKo4kEV4ylV2xY628lY4IE4IxF12IF4w
 CS07vE84x0c7CEj48ve4kI8wCS07vE84ACjcxK6xIIjxv20xvE14v26w1j6s0DMIAIbVA2
 z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVW8Jr0_Cr1UMIAIbVA2z4x0Y4vEx4A2jsIE14v26r
 xl6s0DMIAIbVA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_GcCE3s1lV2xY62AIxVAIcxkEcVAq
 07x20xvEncxIr21lV2xY6c02F40EFcxC0VAKzVAqx4xG6I80ewCS07vEYx0E2Ix0cI8IcV
 AFwI0_Jr0_Jr4lV2xY6cIj6I8E87Iv67AKxVWUJVW8JwCS07vEOx8S6xCaFVCjc4AY6r1j
 6r4UMIAIbVCjxxvEw4WlV2xY6xkIecxEwVAFwVW5GwCS07vEc2IjII80xcxEwVAKI48JMI
 AIbVCF04k20xvE74AGY7Cv6cx26r4fKr1UJr1lV2xY6xCjnVCjjxCrMIAIbVCFx2IqxVCF
 s4IE7xkEbVWUJVW8JwCS07vEx2IqxVAqx4xG67AKxVWUJVWUGwCS07vEx2IqxVCjr7xvwV
 AFwI0_JrI_JrWlV2xY6I8E67AF67kF1VAFwI0_Jw0_GFylV2xY6IIF0xvE2Ix0cI8IcVAF
 wI0_Jr0_JF4lV2xY6IIF0xvE2Ix0cI8IcVCY1x0267AKxVWUJVW8JwCS07vEIxAIcVCF04
 k26cxKx2IYs7xG6rW3Jr0E3s1lV2xY6IIF0xvEx4A2jsIE14v26r1j6r4UMIAIbVCI42IY
 6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWIevJa73U
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_060041_176999_437498D0 
X-CRM114-Status: GOOD (  14.57  )
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, kjlu@umn.edu,
 linux-kernel@vger.kernel.org, Pierre-Yves MORDRET <pierre-yves.mordret@st.com>,
 linux-i2c@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Overall, there are several other calls to pm_runtime_get_sync within this
> driver, would you like to fix them all at once ?
> 

Sure, I will send a new patch to merge them all.

> On Thu, May 21, 2020 at 03:05:07PM +0800, Dinghao Liu wrote:
> > pm_runtime_get_sync() increments the runtime PM usage counter even
> > the call returns an error code. Thus a pairing decrement is needed
> > on the error handling path to keep the counter balanced.
> > 
> > Signed-off-by: Dinghao Liu <dinghao.liu@zju.edu.cn>
> > ---
> >  drivers/i2c/busses/i2c-stm32f7.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
> > index 330ffed011e0..602cf35649c8 100644
> > --- a/drivers/i2c/busses/i2c-stm32f7.c
> > +++ b/drivers/i2c/busses/i2c-stm32f7.c
> > @@ -1767,8 +1767,10 @@ static int stm32f7_i2c_reg_slave(struct i2c_client *slave)
> >  		return ret;
> >  
> >  	ret = pm_runtime_get_sync(dev);
> > -	if (ret < 0)
> > +	if (ret < 0) {
> > +		pm_runtime_put_autosuspend(dev);
> 
> Considering that if we fail here there is a very good chance that this is due
> to the resume failing, pm_runtime_put_noidle would probably make more sense
> since pm_runtime_put_autosuspend will most probably fail as well.
> 

Agree. Thank you for your advice!

Regards.
Dinghao
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
