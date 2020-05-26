Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD581E1F92
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 12:23:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XPd9pMpaJmC7YVD1Osrl+GVACRz8OnZGljTs7GrP8ck=; b=rqZVtUKYSBpJUn
	i84Z6litlxPgOPsRFMeDtImbekiL5qttqxBkw3YJT5+bS2e65EuTEionAVtdKov6hC7foTprgn7Uj
	WBHGeLYfDgFgn81h9j6Z5gxtTpp+ZZ0nQJAiPNj6tjn43U93DEP6gNinzKbFX1dgPl8/4zKmTo+tr
	H9t6EBAqSVgBQE6OKlEOzq6yQRRGBRm6PswQ7W1AuupCmSRrmyQF4DJoUrQInTch7614A9Sk0Wjdy
	oSiH3DYpmGfD40gtbtkoj8biT4b3PCsk+B4+qv37Q3SbNF3KuSinSmmAmgvgjGkKagXvDoHKdWSUW
	IoKSBw30lVR5KJ9opI9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdWk9-0001Hh-HV; Tue, 26 May 2020 10:23:33 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdWjq-0001H4-8a
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 10:23:16 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04QALs08009674; Tue, 26 May 2020 12:23:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=date : from : to : cc :
 subject : message-id : references : mime-version : content-type :
 in-reply-to; s=STMicroelectronics;
 bh=p3D8tRzx5yi3dtudAYjOJKQoizPNsipgyxf+bvB/VrM=;
 b=OyLNlCe1CWQeq2gKXTCrGyYEX9CZYQP6JsUgiRs9gGBKD2v2mCcnxRx4grsbzE1p50KE
 jRozQrfLn0LDTOrO2vLJJnPBgLm8vLQE6RrIZRTUHW8pIAxdIGHqbhuOGWk12V3c3uGW
 gjizCURYNy6w8wc7OEcgVrnt217nPDapCs2+nDf+nld2qBGCwJ7/EFwzAomPOdUNSMDP
 rOTfRAoKZr5qd+TLx4kU/p8J1JYYole3YKqbPPRQ2HWO7oxE96ath2dCZwb5cXG+LOJm
 KjV3X+/ERIB02bwxj9RbdAEy31XO1uf7lODvHcWLpWw6xex1vM/6He4MV0Y3YqDEfTB+ dg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 316sa1y741-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 26 May 2020 12:23:07 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 52FDB10002A;
 Tue, 26 May 2020 12:23:07 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2213C21BDB7;
 Tue, 26 May 2020 12:23:07 +0200 (CEST)
Received: from gnbcxd0016.gnb.st.com (10.75.127.44) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 26 May
 2020 12:23:06 +0200
Date: Tue, 26 May 2020 12:23:01 +0200
From: Alain Volmat <alain.volmat@st.com>
To: Wolfram Sang <wsa@kernel.org>
Subject: Re: [PATCH 1/4] i2c: smbus: add core function handling SMBus
 host-notify
Message-ID: <20200526102301.GA14423@gnbcxd0016.gnb.st.com>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
 Benjamin Tissoires <benjamin.tissoires@redhat.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
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
 <1588657871-14747-2-git-send-email-alain.volmat@st.com>
 <20200523104624.GB3459@ninjato>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200523104624.GB3459@ninjato>
X-Disclaimer: ce message est personnel / this message is private
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-05-26_01:2020-05-26,
 2020-05-26 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_032314_769623_B2CC9005 
X-CRM114-Status: GOOD (  26.41  )
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Pierre Yves MORDRET <pierre-yves.mordret@st.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Benjamin Tissoires <benjamin.tissoires@redhat.com>,
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

On Sat, May 23, 2020 at 10:46:25AM +0000, Wolfram Sang wrote:
> 
> Adding Benjamin who mainly implemented this.
> 
> On Tue, May 05, 2020 at 07:51:08AM +0200, Alain Volmat wrote:
> > SMBus Host-Notify protocol, from the adapter point of view
> > consist of receiving a message from a client, including the
> > client address and some other data.
> > 
> > It can be simply handled by creating a new slave device
> > and registering a callback performing the parsing of the
> > message received from the client.
> > 
> > This commit introduces two new core functions
> >   * i2c_new_smbus_host_notify_device
> >   * i2c_free_smbus_host_notify_device
> > that take care of registration of the new slave device and
> > callback and will call i2c_handle_smbus_host_notify once a
> > Host-Notify event is received.
> 
> Yay, cool idea to use the slave interface. I like it a lot!
> 
> > +static int i2c_smbus_host_notify_cb(struct i2c_client *client,
> > +				    enum i2c_slave_event event, u8 *val)
> > +{
> > +	struct i2c_smbus_host_notify_status *status = client->dev.platform_data;
> > +	int ret;
> > +
> > +	switch (event) {
> > +	case I2C_SLAVE_WRITE_REQUESTED:
> > +		status->notify_start = true;
> > +		break;
> > +	case I2C_SLAVE_WRITE_RECEIVED:
> > +		/* We only retrieve the first byte received (addr)
> > +		 * since there is currently no way to retrieve the data
> > +		 * parameter from the client.
> 
> Maybe s/no way/no support/ ? I still wonder if we couldn't add it
> somehow. Once we find a device which needs this, of course.

Indeed. Such support can be added later on once such device is found. For the
time being I will state "no support"

> 
> > +		 */
> > +		if (!status->notify_start)
> > +			break;
> > +		status->addr = *val;
> > +		status->notify_start = false;
> > +		break;
> > +	case I2C_SLAVE_STOP:
> 
> What about setting 'notify_start' to false here as well? In the case of
> an incomplete write?

Ok. I will check that notify_start is false before calling host_notify
(since otherwise it will call i2c_handle_smbus_host_notify with a bad addr
value) and reset notify_start to false if it is still true.

> 
> > +		ret = i2c_handle_smbus_host_notify(client->adapter,
> > +						   status->addr);
> > +		if (ret < 0) {
> > +			dev_warn(&client->adapter->dev, "failed to handle host_notify (%d)\n",
> > +				ret);
> 
> I think we should rather add such error strings to the core if we think
> they are needed. I am not convinced they are, though.

Agreed, this error can be removed.

> 
> > +			return ret;
> > +		}
> > +		break;
> > +	default:
> > +		/* Only handle necessary events */
> > +		break;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> 
> Rest of the code looks good. Maybe we should compile all this only when
> I2C_SLAVE is enabled?
> 

Yes, I will enclose that around I2C_SLAVE support check.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
