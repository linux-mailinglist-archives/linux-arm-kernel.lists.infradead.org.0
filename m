Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 640D8CE119
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 14:01:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6UqbbA38FvX6ft5zL9HCXu5d+5fkyO8xin5zsV4vM+I=; b=sv5HZg/5DSljKD
	HYikD0whKc2Jinc9KwoemKe+aCXC8TcRLS5jFHxOEEzDOwiBeJ5qRvsaBOxEIOsxG2xbdB3ZBD+fr
	Nrk4iPts6ugMN9O2H3ijk88mZfeccYlqpfc5Y96Ny/QBKSoPWllNowKIt+1hKDwzgnC/xtECvcapb
	YWjyPaLwLGdi+9p60hlvSfdMjpaSj3UHVYaHlGvMo5dDwSci2i4AtGrfDI7vYbPn8n10Pq51TyD3v
	h/TcqWqcgNjQxk+ug1MemXxVurc+3rGFLqhMKqK2TibIvdhxF+soUmxD0Q70GOl+H+YtSFIBE+pdI
	7PtwZWxu8vysA+19uLIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHRhr-0002Z9-Dr; Mon, 07 Oct 2019 12:01:39 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHRhk-0002Ym-AR
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 12:01:34 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x97C1ReM019171; Mon, 7 Oct 2019 14:01:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=date : from : to : cc :
 subject : message-id : references : mime-version : content-type :
 in-reply-to; s=STMicroelectronics;
 bh=OEpRCuiUUpuXpVGGrL2q81jRJQBKQeGZCtDBBTVYUIA=;
 b=0Xz1510Od/ISk/HqXDwSoQLNJrii7ylF8vSUb+L1F/bnrtuOiapxTCZJonOoNzkhMrQS
 SWXIjF8oD/O7iPRykelg7o2WoF/2iNoyVNgEKOiKFQvDCf13a5XW374mwV1jE4IJ4FTH
 +tuR7pKpO7b6KSHfhzV/fqE4+5oH1HB/P41nrTT/vOn0OEnlFXUGe1U/bQrpx+VfzJhN
 tAZ39rJnaGcQvbOYjNc0zQRInkLOJktL8j9gOyf3mRM8aop/DWfzBo/p/H3sxhVvJsUD
 DVOPW/BJ4pAdAanLezCd0MZteix0MDAWIqStC+dKCPnoj0/yVmkPgGLlXWnNFFzD+Boa pw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vej2p258j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 07 Oct 2019 14:01:27 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 11CBF100038;
 Mon,  7 Oct 2019 14:01:22 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 06AC32CE74D;
 Mon,  7 Oct 2019 14:01:22 +0200 (CEST)
Received: from gnbcxd0016.gnb.st.com (10.75.127.49) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 7 Oct
 2019 14:01:21 +0200
Date: Mon, 7 Oct 2019 14:01:20 +0200
From: Alain Volmat <alain.volmat@st.com>
To: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
Subject: Re: [PATCH] i2c: i2c-stm32f7: remove warning when compiling with W=1
Message-ID: <20191007120120.GB12773@gnbcxd0016.gnb.st.com>
Mail-Followup-To: Pierre Yves MORDRET <pierre-yves.mordret@st.com>,
 wsa@the-dreams.de, alexandre.torgue@st.com,
 linux-i2c@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 fabrice.gasnier@st.com
References: <1570200954-17919-1-git-send-email-alain.volmat@st.com>
 <a5093a73-ba62-ae37-10dc-3434c9da40f7@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a5093a73-ba62-ae37-10dc-3434c9da40f7@st.com>
X-Disclaimer: ce message est personnel / this message is private
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG4NODE1.st.com (10.75.127.10) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-07_02:2019-10-07,2019-10-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_050132_726802_6952DA59 
X-CRM114-Status: GOOD (  17.86  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexandre.torgue@st.com, wsa@the-dreams.de, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pierre-Yves,

thanks for the comments.

On Mon, Oct 07, 2019 at 09:59:22AM +0200, Pierre Yves MORDRET wrote:
> Hi Alain
> 
> Fixes tag is missing in your patch.
> [ i.e ==> Fixes: aeb068c57214 ("i2c: i2c-stm32f7: add driver") ]

Okay, will push a v2 for that.

> 
> Nonetheless patch only consists in removing a comment character ?

Yes, the comment currently starts in a way of a kernel-doc description
(https://www.kernel.org/doc/html/latest/doc-guide/kernel-doc.html#function-documentation) leading the compiler to produce the warning since there is no
function prototype after the comment.

Regards,
Alain

> 
> Thanks
> 
> On 10/4/19 4:55 PM, Alain Volmat wrote:
> > Remove the following warning:
> > 
> > drivers/i2c/busses/i2c-stm32f7.c:315:
> > warning: cannot understand function prototype:
> > 'struct stm32f7_i2c_spec i2c_specs[] =
> > 
> > Signed-off-by: Alain Volmat <alain.volmat@st.com>
> > ---
> >  drivers/i2c/busses/i2c-stm32f7.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
> > index d36cf08..7aa4a47 100644
> > --- a/drivers/i2c/busses/i2c-stm32f7.c
> > +++ b/drivers/i2c/busses/i2c-stm32f7.c
> > @@ -305,7 +305,7 @@ struct stm32f7_i2c_dev {
> >  	struct regmap *regmap;
> >  };
> >  
> > -/**
> > +/*
> >   * All these values are coming from I2C Specification, Version 6.0, 4th of
> >   * April 2014.
> >   *
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
