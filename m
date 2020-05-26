Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A3E1E1FB4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 12:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EesAeKoGPKj+7wycnIeI0y4SkOTZXtWMA7DHi59D90Q=; b=anJRaVM0aACJU9
	gZLBkRlHSAF1So2+b+AlVaUtr9eTV6DkG/faw2AmCUvYU6Am0K8WOv2ABKKx0FQmuh0uhrQg5V5RB
	f/jUNvjlzaHfVi43xm1U9yWzdosRo04BIXA/30e1L5aV2ug4FrXpIBLsxy5wPq1PmB3dqTfOTaxcG
	/wOcoQ+aCPQyNIhbA9LcIutWscnAp9I5CVqBcNy3yVKpuj7e4+fY8LjugYkjov2id5ek5a53rnpKS
	qtLfIB4JNmW2YtYfDLeZw74Kb8DR8+Mv08pG/n+6KUtx5my7zM5qiX44oqQz30OPwbBGByAEvYd1/
	+UjpPxFYZZztvEvEVd6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdWsN-0007l6-Fq; Tue, 26 May 2020 10:32:03 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdWsC-0007kY-VV
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 10:31:54 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04QARxXv023075; Tue, 26 May 2020 12:31:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=date : from : to : cc :
 subject : message-id : references : mime-version : content-type :
 in-reply-to; s=STMicroelectronics;
 bh=CtZEACoRwW0bUVjUWvettuhq5zKMG+xHV8Cj3kMCEBc=;
 b=wbdKlT5MYwBIpCAg7igTwRxAiC190KWXlxxBnfaYC6+FCA1yyRrERmoj6Qe32o13DMaI
 xnG4IrCajpQDG8Tn0nxOcHl+miNgIJZjsGw5cIxp3n6wBbltQea9wAEOzQWFr8PkWW+j
 6WDIO3DqP6cwjRWem2pl6TV02WfVCy0MxVvXs+gpA3F4GiryS6Fa2X10rYsbYOjGlFq6
 I1eUB8LjvTU47aJQDfwyyZ8On8u0oPerbx1PN1qnu1/RMDj7As6SmnF0LOU8ws5U7R8R
 qQ1Y9pNdMRQXs1kU1XGVhdf7ssaQBZSdRRXCrLQTmIKyU0VnGhpYo3zoyDIX9uO7oK1I pQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 316rya76wm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 26 May 2020 12:31:44 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 90F8310003B;
 Tue, 26 May 2020 12:31:43 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 78DEE21BDAE;
 Tue, 26 May 2020 12:31:43 +0200 (CEST)
Received: from gnbcxd0016.gnb.st.com (10.75.127.44) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 26 May
 2020 12:31:43 +0200
Date: Tue, 26 May 2020 12:31:41 +0200
From: Alain Volmat <alain.volmat@st.com>
To: "wsa@kernel.org" <wsa@kernel.org>
Subject: Re: [PATCH 3/4] dt-bindings: i2c-stm32: add SMBus Alert bindings
Message-ID: <20200526103141.GB14423@gnbcxd0016.gnb.st.com>
Mail-Followup-To: "wsa@kernel.org" <wsa@kernel.org>,
 Rob Herring <robh@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Pierre Yves MORDRET <pierre-yves.mordret@st.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Fabrice GASNIER <fabrice.gasnier@st.com>
References: <1588657871-14747-1-git-send-email-alain.volmat@st.com>
 <1588657871-14747-4-git-send-email-alain.volmat@st.com>
 <20200513021932.GA9172@bogus>
 <20200513054231.GA16558@gnbcxd0016.gnb.st.com>
 <20200523103601.GA3459@ninjato>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200523103601.GA3459@ninjato>
X-Disclaimer: ce message est personnel / this message is private
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-05-26_01:2020-05-26,
 2020-05-26 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_033153_310533_6F486B83 
X-CRM114-Status: GOOD (  20.99  )
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Rob Herring <robh@kernel.org>, Alexandre TORGUE <alexandre.torgue@st.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Pierre Yves MORDRET <pierre-yves.mordret@st.com>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Fabrice GASNIER <fabrice.gasnier@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 23, 2020 at 10:36:01AM +0000, wsa@kernel.org wrote:
> 
> > > > +        st,smbus-alert:
> > > > +          description: Enable the SMBus Alert feature
> > > > +          $ref: /schemas/types.yaml#/definitions/flag
> > > > +
> > > 
> > > We already have smbus_alert interrupt. Can't you just check for this in 
> > > the slave nodes and enable if found?
> > 
> > My understanding reading the code (smbalert_probe within i2c-smbus.c, of_i2c_setup_smbus_alert called when
> > registering an adapter within i2c-core-smbus.c) is that smbus_alert refers to an interrupt on the
> > adapter side. That is an interrupt that would be triggered when the adapter is receiving an smbus_alert
> > message.
> > In our case (stm32f7), we do not have specific interrupt for that purpose. The interrupt triggered when
> > an SMBUS Alert is received (by the adapter) is the same interrupt as for other reasons and we check
> > within the irq handler within stm32f7 the reason before calling i2c_handle_smbus_alert if the status
> > register indicated an SMBUS Alert.
> > So my understanding is that we cannot rely on the mechanism of naming an interrupt smbus_alert.
> > Did I misunderstood something ?
> 
> I just wonder what is bad about specifying the same interrupt twice in
> the interrupt properties? You could then check in probe if "smbus_alert"
> is populated and if it matches the main irq.
> 

Here's my understanding of the current implementation.
During the adapter registration, the function of_i2c_setup_smbus_alert is called
and if a interrupt is named "smbus_alert" in the adapter node, a new device
"smbus_alert" will be created. This will leads to smbalert_probe to be called,
and a request_irq will be done with the irq value read from the adapter node.
This means that we will have both our handle (the handler of the main irq
of the stm32 i2c driver) and the smbus_alert handler on the same irq. Leading
to smbus_alert being called everytime there is a irq (most of the time not
smbus_alert related) coming from the stm32_i2c. (since this is our main irq).

So to me this approach can't work. I'd understand if the smbus_alert property
was on the client node in the same way as it is done for host-notify however
that's not the case.
This is why I was proposing to have our own st,smbus-alert property to decide
to enable or not the smbus_alert. In our case, we cannot rely on the mechanism
done by of_i2c_setup_smbus_alert since for us, smbus_alert irq is just one
case of all the other stm32 i2c irq. (this is the same irq, and we check after
by reading the interrupt status register).

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
