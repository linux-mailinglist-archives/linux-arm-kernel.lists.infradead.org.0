Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 399E51E22E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 15:25:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c6yZMaKD6Qh4uqEEgomot0yBdK7JvBVAIjux6HEmrv8=; b=s9orNYZgrEQFxG
	vh/LIhWAcG2xm8fDgmekHMAHiDe+JxDrguXUNlEpLQY1MmhaT8diFrA2KDAkhFEztDyiXBos8Qoot
	oaiOBGeZJONLczAOV6bRtSQbdc8Dc4GDmRSc1tiF+ADWrj6nElzFv+MIctYDgp/iuCGHbOJFL69ET
	/NMptVtGxq/i2bakAX1Ckz+myOPnMyaMiKdXMeiwOQdAkoq3ad/uU8eLA+JhK85xsD/hv1j1/HZsM
	3ciDKSPl9qAIRNv9/zUnKjEYDEM9brvNar1ukkl3S0emdKvk/ibn5HMEwCjwUsOC4dZ6ps7umQzAP
	5w4lB+1FyPttOt0K4WaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdZac-0002QY-Is; Tue, 26 May 2020 13:25:54 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdZaP-0002Pq-M6
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 13:25:44 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04QDHI6K000932; Tue, 26 May 2020 15:25:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=date : from : to : cc :
 subject : message-id : references : mime-version : content-type :
 in-reply-to; s=STMicroelectronics;
 bh=xam4h5P921QTvxnY7TQyj2o3qwifx5eAv55dBjp4C04=;
 b=Dy1DtaoAYIH+RD3SVogc5foxz64N5O1fpg5KfbZ7XJOCKlVl7ppwrL7BIYnuShpW6p7h
 JRUcJcZ4hfsyXVSHXJi1x/LRcmFmBgviVor/XOhFaK9u4PrNu/RcmTHSnXo7QCvdCtPD
 DMMnPEg9HqNsZqt8Hfsjpa30aYxzTRubIV/FOmhJ73+O7F1U2i9qYKSHvvRCpGfExp6r
 nrxjgUw1vGtPEwA7WeWg+rokuRQJeJ/parJSER15Kt/iGIbd025W0QKDmMMwb/MEUk+o
 +EbXwCd57ltXwKIJI92bQZPiU5FFIXlkUrUxuVC8gVIeyJv0Bli5uWf8n0OdET+SDMeK Hw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 316tqgym3w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 26 May 2020 15:25:39 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AFBE810002A;
 Tue, 26 May 2020 15:25:38 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9EC692B6C18;
 Tue, 26 May 2020 15:25:38 +0200 (CEST)
Received: from gnbcxd0016.gnb.st.com (10.75.127.44) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 26 May
 2020 15:25:38 +0200
Date: Tue, 26 May 2020 15:25:36 +0200
From: Alain Volmat <alain.volmat@st.com>
To: <dinghao.liu@zju.edu.cn>
Subject: Re: Re: [PATCH] i2c: stm32f7: Fix runtime PM imbalance in
 stm32f7_i2c_reg_slave
Message-ID: <20200526132536.GH14423@gnbcxd0016.gnb.st.com>
Mail-Followup-To: dinghao.liu@zju.edu.cn, kjlu@umn.edu,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 linux-i2c@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20200521070507.13015-1-dinghao.liu@zju.edu.cn>
 <20200526083400.GC10725@gnbcxd0016.gnb.st.com>
 <7548c995.d205f.1725111d7c4.Coremail.dinghao.liu@zju.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7548c995.d205f.1725111d7c4.Coremail.dinghao.liu@zju.edu.cn>
X-Disclaimer: ce message est personnel / this message is private
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-05-26_02:2020-05-26,
 2020-05-26 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_062543_236120_4C26E381 
X-CRM114-Status: GOOD (  22.68  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, kjlu@umn.edu,
 linux-kernel@vger.kernel.org, Pierre-Yves MORDRET <pierre-yves.mordret@st.com>,
 linux-i2c@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 09:00:23PM +0800, dinghao.liu@zju.edu.cn wrote:
> 
> > Overall, there are several other calls to pm_runtime_get_sync within this
> > driver, would you like to fix them all at once ?
> > 
> 
> Sure, I will send a new patch to merge them all.

Thanks, you might want to add a Fixes: tag in your commit message as well.

> 
> > On Thu, May 21, 2020 at 03:05:07PM +0800, Dinghao Liu wrote:
> > > pm_runtime_get_sync() increments the runtime PM usage counter even
> > > the call returns an error code. Thus a pairing decrement is needed
> > > on the error handling path to keep the counter balanced.
> > > 
> > > Signed-off-by: Dinghao Liu <dinghao.liu@zju.edu.cn>
> > > ---
> > >  drivers/i2c/busses/i2c-stm32f7.c | 4 +++-
> > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
> > > index 330ffed011e0..602cf35649c8 100644
> > > --- a/drivers/i2c/busses/i2c-stm32f7.c
> > > +++ b/drivers/i2c/busses/i2c-stm32f7.c
> > > @@ -1767,8 +1767,10 @@ static int stm32f7_i2c_reg_slave(struct i2c_client *slave)
> > >  		return ret;
> > >  
> > >  	ret = pm_runtime_get_sync(dev);
> > > -	if (ret < 0)
> > > +	if (ret < 0) {
> > > +		pm_runtime_put_autosuspend(dev);
> > 
> > Considering that if we fail here there is a very good chance that this is due
> > to the resume failing, pm_runtime_put_noidle would probably make more sense
> > since pm_runtime_put_autosuspend will most probably fail as well.
> > 
> 
> Agree. Thank you for your advice!
> 
> Regards.
> Dinghao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
