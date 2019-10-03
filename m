Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54788C9AFB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 11:48:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Dohdz4m2BouuHh4U0Y3mzOykYvIdy5+jfQVNeeTM8x0=; b=UsjdyBawaEVdmdDLo956Ujzbh
	lGQWpm7xb8rMhqKLC2EQ8eSL8XXtnGD7n0LCZ3Ci9aVdKqHjXlVd7rVm9QfAnINIVBwq12M1JSz9C
	vK232iZ8khF77L6N2c1yCZClOfeXxYJ8CWBs4fDobSDwEQLuDEz7+6hMotlTRrlkHqUaE65CElkKP
	2BCf8GLxCNuaStTbunbaqm7da/6DSb2YCT5XXpG17jCtml/HnCtN4FyKbxPYctkoQzFDeDV+G/lMa
	jd/8y4vS9clWIILFXu22B2VvCW/CdRGTIDkv1w5CEBslPJpeA60Puz64Hx6w5EpW6OdQuEjTcKnu1
	QX3Q4VLhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFxiL-0006Ng-V0; Thu, 03 Oct 2019 09:48:02 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFxiF-0006MF-0E
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 09:47:56 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x939fd1O020324; Thu, 3 Oct 2019 11:47:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=kN9FmgYjR/+h00iD+FWqgH8LfZypMJPodsHGme7Pa2U=;
 b=Ueu7492KlMOHrKSycPDSg2LPkrEWdivvPKLY1GOs4xx+yO3t8ExTim5uIUC07QvxoWKG
 3LT9SsL5b8qjCc49kEbhNfxAemN7lbkU0+pg4pUoFf7nWTFf+GoAnGIau3e1+Ge+26Vk
 hu4UlE5aBurWsPHyTrhGpmbjDgmaswU71tdJYWAUMXsgcSlCJdvbg08xf5gvNL/9qE3l
 BiJjf2O7egamZ3rj080Qm+BuaNoozraPZ1k/ujKLo+pSrybFr2C7QL1kTr+Byd91RW+Z
 VZJnqY6ObQ+ZbHo6SpStvCI9SaDMI4Da12gaEoovClMT/LnwsTUKRNBOBdn71RxBaG7Z fw== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx07-00178001.pphosted.com with ESMTP id 2v9w9w3u0a-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 03 Oct 2019 11:47:38 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 99F6953;
 Thu,  3 Oct 2019 09:47:32 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6CD812B492E;
 Thu,  3 Oct 2019 11:47:31 +0200 (CEST)
Received: from lmecxl0912.lme.st.com (10.75.127.51) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 3 Oct
 2019 11:47:30 +0200
Subject: Re: [PATCH 0/4] ARM: multi_v7_defconfig: add audio support for
 stm32mp157a-dk1
To: Olivier Moysan <olivier.moysan@st.com>
References: <1567440041-19220-1-git-send-email-olivier.moysan@st.com>
 <CAK8P3a3WvXmMys3mamCZef1-ychtdg+XbV=H-WTs2ZN6Jsrcbg@mail.gmail.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <c4c9ed0b-210a-43b0-fc7b-d45a24fe682f@st.com>
Date: Thu, 3 Oct 2019 11:47:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a3WvXmMys3mamCZef1-ychtdg+XbV=H-WTs2ZN6Jsrcbg@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG2NODE1.st.com (10.75.127.4) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-03_04:2019-10-01,2019-10-03 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_024755_514585_62EC46F8 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Tony Lindgren <tony@atomide.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Yannick Fertre <yannick.fertre@st.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Olof Johansson <olof@lixom.net>, Simon Horman <horms+renesas@verge.net.au>,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olivier,

On 9/2/19 6:42 PM, Arnd Bergmann wrote:
> On Mon, Sep 2, 2019 at 6:01 PM Olivier Moysan <olivier.moysan@st.com> wrote:
>>
>> This patchset adds audio support for stm32mp157a-dk1 board.
>>
>> Olivier Moysan (4):
>>    ARM: multi_v7_defconfig: enable stm32 sai support
>>    ARM: multi_v7_defconfig: enable stm32 i2s support
>>    ARM: multi_v7_defconfig: enable cs42l51 codec support
>>    ARM: multi_v7_defconfig: enable audio graph card support
>  > The changes are ok, and I expect Alexandre will pick them up and forward
> to the soc tree.
>

Those changes have been applied on stm32-next (squashed in only one commit).

Thanks
Alex



> However, I would prefer these to just be a single patch, as there is little
> use in splitting the intended change up into one line per patch.
> 
>         Arnd
> 




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
