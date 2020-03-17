Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AFE1876AD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 01:13:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qZO7EGh2dbaSmz5aNpos8e66G4dRylhihRm0SaTPJw8=; b=iZ3WQ+ols5BizM
	Q1kjxIZtmL8EA2yO1dIpH6fURTZEZeDFENGP9mz9p9ssnmOEKQ8EF+KBEMyD1pmbRLbAwnxpI1pdu
	vg2yLJ1EPV8ZqzrBUHGwd+k9RZKx2AbjTAqUCI9caTux3OOFsGh0qCp9koCsz/mg+un0DLlcwC0V3
	Y/Qj4YBAG1N/yTXZ4ntaHX9xOacpI9PYd+8Sl+IL+V2RPOkVw4n3vWCo+pYeD6xnJQWU9HKzEspzs
	XO5WIvaCv8ofsgus7VaOFYQb12DoGQj5PjlPKnRLP51HSuL6+McCCUvASWyQ79AQ1FiQxdaCLdkof
	pKd7Y0hiBADViJW9wXwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDzrZ-0001DW-0i; Tue, 17 Mar 2020 00:13:41 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDzrP-0001CV-Uj; Tue, 17 Mar 2020 00:13:34 +0000
X-UUID: f2fedfa6095d4982a5bdadc1e7b086e8-20200316
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=W+YxZrewsPC94bGX9s1zMTtlOh2HNyq7RcFZc5Ak/vI=; 
 b=OsL1OUM/wSGfM5bRbDuArwjRpkxUZ54mI8AMhdQx6W2E9OHEc4uN+RGryclBwMV2KdE/+Emr8ENjkny7R+Qsca9LqCXp8CK85wni+PfkAGcEMnVuUkXoXnXyihNbSL0xSpgpQhE3yXVZ+TyA5eeuQL+wPw3iy/VUqfSYBp65/9k=;
X-UUID: f2fedfa6095d4982a5bdadc1e7b086e8-20200316
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 452733462; Mon, 16 Mar 2020 16:13:29 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Mar 2020 17:13:46 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 17 Mar 2020 08:12:56 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 17 Mar 2020 08:12:38 +0800
Message-ID: <1584404000.14250.28.camel@mtksdccf07>
Subject: Re: [PATCH v6 3/7] scsi: ufs: introduce common delay function
From: Stanley Chu <stanley.chu@mediatek.com>
To: Bart Van Assche <bvanassche@acm.org>
Date: Tue, 17 Mar 2020 08:13:20 +0800
In-Reply-To: <fdf91490-9c7d-df34-1c1f-e03e12855378@acm.org>
References: <20200316085303.20350-1-stanley.chu@mediatek.com>
 <20200316085303.20350-4-stanley.chu@mediatek.com>
 <fdf91490-9c7d-df34-1c1f-e03e12855378@acm.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_171331_998132_78725D04 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-scsi@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>, andy.teng@mediatek.com,
 jejb@linux.ibm.com, chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, avri.altman@wdc.com, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, asutoshd@codeaurora.org,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bart,

On Mon, 2020-03-16 at 09:23 -0700, Bart Van Assche wrote:
> On 3/16/20 1:52 AM, Stanley Chu wrote:
> > +void ufshcd_wait_us(unsigned long us, unsigned long tolerance, bool can_sleep)
> > +{
> > +	if (!us)
> > +		return;
> > +
> > +	if (us < 10 || !can_sleep)
> > +		udelay(us);
> > +	else
> > +		usleep_range(us, us + tolerance);
> > +}
> > +EXPORT_SYMBOL_GPL(ufshcd_wait_us);
> 
> I don't like this function because I think it makes the UFS code harder 
> to read instead of easier. The 'can_sleep' argument is only set by one 
> caller which I think is a strong argument to remove that argument again 
> and to move the code that depends on that argument from the above 
> function into the caller. Additionally, it is not possible to comprehend 
> what a ufshcd_wait_us() call does without looking up the function 
> definition to see what the meaning of the third argument is.
> 
> Please drop this patch.

Thanks for your review and comments.

If the problem is the third argument 'can_sleep' which makes the code
not be easily comprehensible, how about just removing 'can_sleep' from
this function and keeping left parts because this function provides good
flexibility to users to choose udelay or usleep_range according to the
'us' argument?

Thanks,
Stanley Chu


> 
> Thanks,
> 
> Bart.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
