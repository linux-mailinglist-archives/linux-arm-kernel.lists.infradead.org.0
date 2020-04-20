Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD3D1B0F7C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 17:12:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H7LRiZmSDLgP4SdbtoFFgwJh0FPWRGwS9Q3ruDf5xAA=; b=uNv8G222D0ukkd
	MfOPDTukl6nxq9QFmGJkg8klL+JcwI/l1co2Gz0YIjuLG7EJK0b/VnzsHM7GgHOczdTItVgFyDA81
	up5D8QSmAP1LO1hi5xRJx5BzJH71LsbghKkZqY+PLEN/7W6ByZM/H/QOUgRhfSQnOXmIFMTuMuNT+
	hsu/z+dGWxxlBVh+P+loVY92R+UNqrwr/pIUxyi9E0H6D/5mR1iKwzIsTucURSEPibWI6fqJodbs5
	bulA87QB+FzsL2s8zAxfGCKxqDHOX9cP1x2GvuuxJEWBoHioFJy7JQ1HWsUytXpUF1FyeXh4AoSSW
	az7rNZ43TZjXn1SO1uuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQY5f-00079U-6H; Mon, 20 Apr 2020 15:12:07 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQY5V-00078A-Sc
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 15:11:59 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03KF7nfO015137; Mon, 20 Apr 2020 17:11:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=date : from : to : cc :
 subject : message-id : references : mime-version : content-type :
 in-reply-to; s=STMicroelectronics;
 bh=4wle+BCTKMTBKSpUmBME32Lx6QZ8URVEdWZoWxaJkyY=;
 b=DfxtwDuRe8VAsuC7SLh6qmShFY8uJTfq7AEasGTQSE7lsGzXklDgpBj8ab76EF57BEXH
 MJuWISBM43wO8WCU8RhHv1eTukfa95cpZpZ8NccKJubeYbkJ45uvSiJdb/HcXzq1wdxf
 xBkB5ICagyRga31i8QpYWQqaTNIKFLQw5v9u9EDX5swCJBAS1wsW6beAak/agKvNohMk
 mHIarn2scI2iF0oM9Yj9chI24DGS7tX0LgeuPXQINA+saws8GysBrREOnYuJEFdpHnA4
 +XFJTaC94LaTT5+HHpYC9Zmv7ANHcKmLzQrlC0py2eMsA6DyxHplCMhsqh3N8YKQYs0k Zw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fq11b0bn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 20 Apr 2020 17:11:56 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E23C810002A;
 Mon, 20 Apr 2020 17:11:55 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D46CE2A608B;
 Mon, 20 Apr 2020 17:11:55 +0200 (CEST)
Received: from gnbcxd0016.gnb.st.com (10.75.127.51) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 20 Apr
 2020 17:11:55 +0200
Date: Mon, 20 Apr 2020 17:11:52 +0200
From: Alain Volmat <alain.volmat@st.com>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [PATCH] i2c: stm32: don't print an error on probe deferral
Message-ID: <20200420151152.GA10855@gnbcxd0016.gnb.st.com>
Mail-Followup-To: Wolfram Sang <wsa@the-dreams.de>,
 pierre-yves.mordret@st.com, alexandre.torgue@st.com,
 linux-i2c@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 fabrice.gasnier@st.com
References: <1584642136-15418-1-git-send-email-alain.volmat@st.com>
 <20200415110145.GN1141@ninjato>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415110145.GN1141@ninjato>
X-Disclaimer: ce message est personnel / this message is private
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG2NODE1.st.com (10.75.127.4) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-20_05:2020-04-20,
 2020-04-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_081158_228981_7C6FC02A 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 pierre-yves.mordret@st.com, linux-i2c@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Wolfram,

On Wed, Apr 15, 2020 at 01:01:45PM +0200, Wolfram Sang wrote:
> >  	if (IS_ERR(dma->chan_tx)) {
> > -		dev_dbg(dev, "can't request DMA tx channel\n");
> >  		ret = PTR_ERR(dma->chan_tx);
> > +		if (ret != -EPROBE_DEFER)
> > +			dev_dbg(dev, "can't request DMA tx channel\n");
> 
> dev_dbg for tx...

Intention was to not change too much the original code when introducing this
check and fixing this message level in another patch. But I guess indeed this
can be done all at once.

I am pushing a v2 fixing this in this patch and having dev_err for both tx & rx
dma requests.

> 
> >  		goto fail_al;
> >  	}
> >  
> > @@ -44,8 +45,10 @@ struct stm32_i2c_dma *stm32_i2c_dma_request(struct device *dev,
> >  	/* Request and configure I2C RX dma channel */
> >  	dma->chan_rx = dma_request_chan(dev, "rx");
> >  	if (IS_ERR(dma->chan_rx)) {
> > -		dev_err(dev, "can't request DMA rx channel\n");
> >  		ret = PTR_ERR(dma->chan_rx);
> > +		if (ret != -EPROBE_DEFER)
> > +			dev_err(dev, "can't request DMA rx channel\n");
> 
> ... and dev_err for rx? Intentional?
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
