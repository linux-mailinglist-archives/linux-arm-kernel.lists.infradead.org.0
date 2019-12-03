Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F34A41100DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 16:07:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=crkaqOsQmgj+Q0wS13D49WteCNT37AX5Jaka7e7nxik=; b=Egu8qG+ner7Xzi
	A+ByKzdZ2purFIhd/rS9O5R0UZAj1EKqMZmKlxizCBfmiCf+1BmQFjgBa3eLOLMiRtacWL1WIoF83
	Gh+Pf/GLlfT5aRnYWUiXa4IC/iMDSl68QofN7nTwODvZ/2uvgadnNfWC0EbRQjCZvgYJkRxf0Z+FI
	jcPPVonLvsh45IGsFidbT/MqLILugwivA/GiglZ/LFXxqoVG6Fy85Ae897pmbmFDFs5xyqQHfsvMh
	gxWnPwoonUytXUAWQKzBY10FUPdudOR5U5s+pDUMrVmQfwgZ/KvsQufU6Ec8rgMrEW31DZkjIPih3
	08iSBQmYaKJHC554Qh2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic9mC-0007uZ-AJ; Tue, 03 Dec 2019 15:07:44 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic9m2-0007u1-Iq
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 15:07:36 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB3Ev0d7030223; Tue, 3 Dec 2019 16:07:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=Ys0ox1ao18cOZfxiE9S2+ciC5jFVh+QzhShG4ijPhio=;
 b=WGNpS3znEhwLqh5hvH8FyLX+/jjMFKWWrzJEIUohw1R29GLiH6IZzb5aXa44rzZgSofx
 0BzsEIjy05zSZ5pXDQrnTLDVJ2qV+aQMdsJQHM0lTkfu0Mvv68gAFSimW/zNQ0dK5oWA
 sHWYmZc2ALRXTRitClj+9Kc0gCxJOCz6XwOdn5zZFEvgORb2XCJU0ZxE7BAUcfMlx++1
 a87Urph9exurYKC60oXEaJfxWMOaPI/+pnCxZixjaB81s+nGfRk9u9QT/rwBQmKVwtUq
 x0I5l4/mPuENDPRiWbO0MHfxXItgCrFN7KnBgwD426NoPYaCSKnHoqVfCnuxP0waVd8z gQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wkf2xqw64-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 03 Dec 2019 16:07:23 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9E95B10002A;
 Tue,  3 Dec 2019 16:07:20 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6D12D2BC7B6;
 Tue,  3 Dec 2019 16:07:20 +0100 (CET)
Received: from SFHDAG6NODE2.st.com (10.75.127.17) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 3 Dec
 2019 16:07:20 +0100
Received: from SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6]) by
 SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6%20]) with mapi id
 15.00.1347.000; Tue, 3 Dec 2019 16:07:19 +0100
From: Olivier MOYSAN <olivier.moysan@st.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] ASoC: cs42l51: add dac mux widget in codec routes
Thread-Topic: [PATCH] ASoC: cs42l51: add dac mux widget in codec routes
Thread-Index: AQHVqedr55RsnCXb/EmaRp/MuIs00qeociSA
Date: Tue, 3 Dec 2019 15:07:19 +0000
Message-ID: <06c0474b-8b51-0ce6-b2aa-fc3b2c348f04@st.com>
References: <20191203141627.29471-1-olivier.moysan@st.com>
 <20191203143909.GL1998@sirena.org.uk>
In-Reply-To: <20191203143909.GL1998@sirena.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.50]
Content-ID: <5215F65C3009774EA7992774F10B1559@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-03_04:2019-12-02,2019-12-03 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_070735_077340_F1BFF066 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tiwai@suse.com" <tiwai@suse.com>, "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "apatard@mandriva.com" <apatard@mandriva.com>,
 "perex@perex.cz" <perex@perex.cz>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Mark,

On 12/3/19 3:39 PM, Mark Brown wrote:
> On Tue, Dec 03, 2019 at 03:16:27PM +0100, Olivier Moysan wrote:
>
>> -	SND_SOC_DAPM_DAC_E("Left DAC", "Left HiFi Playback",
>> -		CS42L51_POWER_CTL1, 5, 1,
>> -		cs42l51_pdn_event, SND_SOC_DAPM_PRE_POST_PMD),
>> -	SND_SOC_DAPM_DAC_E("Right DAC", "Right HiFi Playback",
>> -		CS42L51_POWER_CTL1, 6, 1,
>> -		cs42l51_pdn_event, SND_SOC_DAPM_PRE_POST_PMD),
>> +	SND_SOC_DAPM_DAC_E("Left DAC", NULL, CS42L51_POWER_CTL1, 5, 1,
>> +			   cs42l51_pdn_event, SND_SOC_DAPM_PRE_POST_PMD),
>> +	SND_SOC_DAPM_DAC_E("Right DAC", NULL, CS42L51_POWER_CTL1, 6, 1,
>> +			   cs42l51_pdn_event, SND_SOC_DAPM_PRE_POST_PMD),
> This looks like an unrelated formatting change?
The reason of this change is to replace "HiFi Playback" by NULL, in 
order to connect
DAC widget to DAC mux widget, instead of connecting it directly to Playback.

Regards
Olivier
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
