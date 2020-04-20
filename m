Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D8D1B0F21
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 17:01:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mkfyf8fMK0Fgzv8hTaBqCN2RRXZ9cH7tPTW6ykWaRpw=; b=pTLu5iHTgRwvZC
	NT+jr825YFqb+SR5rt6f6SKmcK6pEI644HbXtGcWi/Bg65CfkKInQUtrnsXfND0ZjB5Q9G7gqZ3z6
	9/VcpfWmuUNw9n0bhfKGlU9uRrdxLpvSkPRuWslxvKcrvMLDdc3KOicUyokD8zIcfvSRuUCmOLg/J
	vH5Z2KfTZ0D+ofJ7lVPME0SBC+9V7YRbVBtiXl3fekG9/H02orvXK+YwQOB7OzdA+vJaPVhnMJPZy
	OENhj7Ifusrkv1LoP267/STNLfhu2G4FDP/qU5ghEukS136cYbcvjaS02TnZMQRCoudNDUnZJ+S5s
	KbeDEhHmTPiDQHC5+SQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQXur-0006fg-JX; Mon, 20 Apr 2020 15:00:57 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQXuc-0006bb-NM
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 15:00:44 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03KEwrKp027524; Mon, 20 Apr 2020 17:00:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=date : from : to : cc :
 subject : message-id : references : mime-version : content-type :
 in-reply-to; s=STMicroelectronics;
 bh=LFbHXDYgAgs4Hcvg9/e01AWVNn3apQsBjy+Cy3nDA1c=;
 b=lQQHFOMVMl7wYS2G9F1hLw0BI8eTx7z/+q3B3DFceEmfVXoYNKCRiGz/g/s7PYkAhuNq
 /Dv+nZY5so2PnL6/7aTWG6oxfcEEE8kPCtRe2SrwAKWkN66hWunDWk/yyI76EkTuQFcw
 Y8sACQw6lSJFXf8BCMP6/ERG57Bo59GOGXrHJZMe7oALD7p7K4CgSRUUa5l6W+G6cdZg
 3nCe5DZGqLokDoxzaMBIV6QNHgszki0ZtXt65SluBOoaYVzXveUgRfyMTvGm9vM7XaUt
 BJjvn/VjhAoiTPWDK5acwgfEH0HT6B0khFYHu29sxxdWoi3MTmLuVoi41iXH5ThwjcAt gA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fqaw2vn8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 20 Apr 2020 17:00:35 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C2EB610002A;
 Mon, 20 Apr 2020 17:00:34 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B52292AA282;
 Mon, 20 Apr 2020 17:00:34 +0200 (CEST)
Received: from gnbcxd0016.gnb.st.com (10.75.127.51) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 20 Apr
 2020 17:00:34 +0200
Date: Mon, 20 Apr 2020 17:00:29 +0200
From: Alain Volmat <alain.volmat@st.com>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [PATCH v2 2/2] i2c: i2c-stm32f7: allows for any bus frequency
Message-ID: <20200420150029.GA6945@gnbcxd0016.gnb.st.com>
Mail-Followup-To: Wolfram Sang <wsa@the-dreams.de>, robh+dt@kernel.org,
 mark.rutland@arm.com, pierre-yves.mordret@st.com,
 mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 fabrice.gasnier@st.com
References: <1585226661-26262-1-git-send-email-alain.volmat@st.com>
 <1585226661-26262-3-git-send-email-alain.volmat@st.com>
 <20200415110916.GO1141@ninjato>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415110916.GO1141@ninjato>
X-Disclaimer: ce message est personnel / this message is private
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-20_05:2020-04-20,
 2020-04-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_080043_304916_B7CB2D90 
X-CRM114-Status: GOOD (  17.63  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Wolfram,

On Wed, Apr 15, 2020 at 01:09:16PM +0200, Wolfram Sang wrote:
> Hi Alain,
> 
> On Thu, Mar 26, 2020 at 01:44:21PM +0100, Alain Volmat wrote:
> > Do not limitate to the 3 (100KHz, 400KHz, 1MHz) bus frequency but
> > instead allows any frequency (if it matches timing requirements).
> > Depending on the requested frequency, use the spec data from either
> > Standard, Fast or Fast Plus mode.
> > 
> > Hardcoding of min/max bus frequencies is removed and is instead computed.
> > 
> > The driver do not use anymore speed identifier but instead handle
> > directly the frequency and figure out the spec data (necessary
> > for the computation of the timing register) based on the frequency.
> 
> Useful improvement!
> 
> > +static struct stm32f7_i2c_spec *get_specs(u32 rate)
> 
> This is quite a generic namespace. Can we prefix stm32f7_<sth> here?

Done in v3

> 
> > +		if (rate <= i2c_specs[i].rate)
> > +			return &i2c_specs[i];
> 
> Same for i2c_specs here?

Done in v3

> 
> > +static u32 get_lower_rate(u32 rate)
> 
> Here, too.

Done in v3
> 
> Rest looks good to me.
> 
> Regards,
> 
>    Wolfram
> 

Regards,
Alain



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
