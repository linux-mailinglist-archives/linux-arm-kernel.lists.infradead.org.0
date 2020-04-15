Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF88F1A9CB2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:38:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I+J06Qr7+YSljCHTs13ad8Ay3eWDmmwTACOj9CBL1qk=; b=Tn1Xw1Q+Exs2GH
	d1F9EqC+jjlkWhSF3GK6HSGzygpqdBUOZ2pfVToLiQp4I24pfJpgMYxn+HWbwgZDWT2AkCyw7h7P8
	fCCVTaL10XKLHoyRXb+gcqmmMfKcWG4uG7CmJml6wDEJygkZWD8oPlu/PTvW+kibTjYzUyywrEbgY
	TrvtlUttwGYqVq4UeQeXruqIWZUQZeE9fWzvRE/Mc2y0TyTEpguSuHpwQXNybvCJ0okOJOzPpPa/A
	ZrOC9ZBm8gyKd4dhOlO0k0EwfmzwsmYB+7FowiKFA78E3ul9C1jMovZP2pcaqgGUS7rUYmP5ciQcQ
	kIWFxMg2T3gaeQzyd0UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOgMs-0002Mq-90; Wed, 15 Apr 2020 11:38:10 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOgKI-0008V8-Fg
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 11:35:32 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03FBW8SN016220; Wed, 15 Apr 2020 13:35:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=date : from : to : cc :
 subject : message-id : references : mime-version : content-type :
 in-reply-to; s=STMicroelectronics;
 bh=xwnv8U88f9gKci+4R9gluFy4x+fECpay1QPWcflQP9g=;
 b=1a6J3nynIHUs1ZBzTWuJaxYH4jNMp3BBhK17usGCKTozaL9ffKuxXU3NnHI3yV4ftL92
 mUQ3c0K60Y/1B5c5Aw+jOsV3cYnjNz2jekg253yeaXkRAquScKAT8NaCw/KJEnaJfBH8
 7Mhaon5u4CZ1iu7zjqwVUHVNVKonEp7bsvRsWwJdOo9HV5E4ioVxswrMG4/w3VaYeWJx
 mTUQbXbcrBLEVNBSXsVzmrj2asfCnrgh21Do4WePhZYLMkhH3arPyJsulQzX3JKur0wl
 AzjJIVogGD6M6WOBUGCHzyIXhFee9d5c/8D3qvZORE8OFsTb9ZMi6paQUpZvbnB/+FxL lg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30dn94bh6t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 15 Apr 2020 13:35:24 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B759110002A;
 Wed, 15 Apr 2020 13:35:23 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A9F772B0FA8;
 Wed, 15 Apr 2020 13:35:23 +0200 (CEST)
Received: from gnbcxd0016.gnb.st.com (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 15 Apr
 2020 13:35:23 +0200
Date: Wed, 15 Apr 2020 13:35:22 +0200
From: Alain Volmat <alain.volmat@st.com>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [PATCH] i2c: i2c-stm32f7: improve nack debug message
Message-ID: <20200415113522.GB16949@gnbcxd0016.gnb.st.com>
Mail-Followup-To: Wolfram Sang <wsa@the-dreams.de>,
 pierre-yves.mordret@st.com, alexandre.torgue@st.com,
 linux-i2c@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 fabrice.gasnier@st.com
References: <1584642115-15378-1-git-send-email-alain.volmat@st.com>
 <20200415110101.GM1141@ninjato>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415110101.GM1141@ninjato>
X-Disclaimer: ce message est personnel / this message is private
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG5NODE2.st.com (10.75.127.14) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-15_03:2020-04-14,
 2020-04-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_043531_019797_217C2821 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 pierre-yves.mordret@st.com, linux-i2c@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 01:01:01PM +0200, Wolfram Sang wrote:
> On Thu, Mar 19, 2020 at 07:21:55PM +0100, Alain Volmat wrote:
> > From: Fabrice Gasnier <fabrice.gasnier@st.com>
> > 
> > Add information on slave addr in the nack debug message.
> > 
> > Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> > Signed-off-by: Alain Volmat <alain.volmat@st.com>
> 
> Applied to for-next, thanks! (I'd drop the __func__, though; doesn't
> add information, does it?)

In fact similar message is displayed in 2 places. One in case of master mode
isr and the other one in case of slave isr. This message is adding slave
address to the master mode isr. It only makes it more clear on first sight
but indeed displaying the slave address obviously means this is master mode.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
