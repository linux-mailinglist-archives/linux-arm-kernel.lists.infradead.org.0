Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D22281854C5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 06:22:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jw0478JJgoPhq8NgkGW00ToZVEa6ru6zUfHg1ukQQGI=; b=dMaetlrlUMXY5sI2se8pBtcVo
	ZiXDkthPbp78OzD4M3tpHfSvOXEtZJ8fIpZU3sz8g6qZ84F/DGWFCreBUCAjTocdX7VHnWcbmBAVP
	qd2kjtQlUohS7SA1bnLzhVgZb087bAH2tAZcM083miZyAiv/u0dj2fRzLioYM3AQSxvdQDl36xAst
	ZLIqM2dMFwpiNbuEXDpQB991K5bMfddqCrw1xwK7hqkiqcOy5OlKJuVPox1ALUi3T/qaShnSs+Fum
	fYCEJ6q0Zbmd+yLhTkQGwIXZTUXGVj13XYW2f3ADTeFKpSAGOIKYqaid+PIca9O5sd0EO/+Nwu7zj
	CKGJTjzRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCzFh-0003D0-1W; Sat, 14 Mar 2020 05:22:25 +0000
Received: from mail.loongson.cn ([114.242.206.163] helo=loongson.cn)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCzFW-0003Cc-TR
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 05:22:17 +0000
Received: from [10.20.42.124] (unknown [10.20.42.124])
 by mail.loongson.cn (Coremail) with SMTP id AQAAf9Dxv97PaWxePFwaAA--.13S3;
 Sat, 14 Mar 2020 13:21:20 +0800 (CST)
Subject: Re: [PATCH v4] MIPS: Replace setup_irq() by request_irq()
To: afzal mohammed <afzal.mohd.ma@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>
References: <20200304203144.GA4323@alpha.franken.de>
 <20200305115759.3186-1-afzal.mohd.ma@gmail.com>
 <20200313164751.GA30134@roeck-us.net> <20200314010744.GA5494@afzalpc>
From: maobibo <maobibo@loongson.cn>
Message-ID: <0b41aa60-9869-ab62-4c8e-cbf7c62cdb7e@loongson.cn>
Date: Sat, 14 Mar 2020 13:21:19 +0800
User-Agent: Mozilla/5.0 (X11; Linux mips64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <20200314010744.GA5494@afzalpc>
X-CM-TRANSID: AQAAf9Dxv97PaWxePFwaAA--.13S3
X-Coremail-Antispam: 1UD129KBjvdXoW7Jw17Zr1rCr4UZrWDXrW8JFb_yoWxZFcEgF
 WFkwsF9r4qq3yDJF48tw1rXr42q348Ww1xJr15KFsFva45X34fGa9Ykas3W3W5XFWUA3WD
 Ww1a9r93ZryavjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUIcSsGvfJTRUUUbVkYjsxI4VW3JwAYFVCjjxCrM7AC8VAFwI0_Xr0_Wr1l1xkIjI8I
 6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AEw4v_Jr0_Jr4l8cAvFVAK0II2c7xJM2
 8CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2IY67AKxVWUJVWUCwA2z4x0Y4vE2Ix0
 cI8IcVCY1x0267AKxVW8JVWxJwA2z4x0Y4vEx4A2jsIE14v26r4j6F4UM28EF7xvwVC2z2
 80aVCY1x0267AKxVW8Jr0_Cr1UM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI
 64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWUJVW8Jw
 Am72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IY64vIr41lFIxGxcIEc7CjxVA2Y2ka0xkIwI1l
 c7I2V7IY0VAS07AlzVAYIcxG8wCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJV
 W8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF
 1VAFwI0_GFv_WrylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6x
 IIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k26cxKx2IYs7xG6rW3Jr0E3s1lIxAI
 cVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVW8JVW8JrUvcSsGvfC2Kf
 nxnUUI43ZEXa7IU8D3ktUUUUU==
X-CM-SenderInfo: xpdruxter6z05rqj20fqof0/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_222215_396798_0526AE68 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Paul Burton <paulburton@kernel.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Jiaxun Yang <jiaxun.yang@flygoat.com>,
 "Maciej W. Rozycki" <macro@linux-mips.org>, John Crispin <john@phrozen.org>,
 Huacai Chen <chenhc@lemote.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Keguang Zhang <keguang.zhang@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

yeap, this supplementary patch fixes the issue, and it works for my on 
my loongson64 RS780 machine.

regards
bibo, mao

On 03/14/2020 09:07 AM, afzal mohammed wrote:
> [ + Nathan ]
>
> Hi Guenter,
>
> On Fri, Mar 13, 2020 at 09:47:51AM -0700, Guenter Roeck wrote:
>
>> This patch causes all my mips qemu emulations to hang during boot. This affects
>> all mips, mips64, mipsel, and mipsel64 emulations.
>
> Can you please apply,
>
> https://lkml.kernel.org/r/20200311152751.GA5044@afzalpc,
>
> on top of this patch & see if it fixes the issue. Else please let me
> know the qemu command line you are using.
>
> Nathan reported a similar issue, above fix fixes that issue.
>
> Regards
> afzal
>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
