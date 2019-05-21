Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B22324C93
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 12:22:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bn5wqn8J/cWh9V5T3U4TlvAykQatPYhrSuvKY/7mGl8=; b=mSCeB6ppyi/AnxPMhfSP1ivBD
	bfcQq15FFc7iY12Rgkg2z7HCa6M4iVqvARaeBikUOceo59aByrFZIzi3sne/zMri4Amh+6AY9JITJ
	S7Ri+JgZLVx7YGByVcEvIgeGpnvhk8odPpLn1POysjbtIgkr97ZdcOCGwAkEq8M3ua3hUFZF4VBom
	ptB4dPytVxEPOgdNRoOa3lH6CjhlS++T618LCfJsha3SthqJzaXQrFWjCCf/LyqUSVMjNJ0Zg9bic
	5N1hk7E027utSfZ2A9XMhUCbrQddPCm69T1NCRbho36FKlnn6ntCngnX9z+K994H8fRtuDTfRE4Qu
	YC+GUDD4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT1uW-0003Zu-6F; Tue, 21 May 2019 10:22:20 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT1uP-0003ZS-11
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 10:22:14 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4LAC0jl012556; Tue, 21 May 2019 12:22:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : references
 : from : message-id : date : mime-version : in-reply-to : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=uBeTxmf+H4C1rTAhfKgga+Zi5F1l6OoU1pJr8tM6Vkw=;
 b=rfNoC2Oq1Jrf+4wUp+9/dXRC+gN5yQWchGC1N7jqWp5ZLRTH2Uo3GAV3B9liim8ihTaI
 WNmwmu7hIW+SlHUBzC3ROixRqzRjJ/id/M44gp6wnXUmhnvFIEKcrZff/N8y0FhXY4Cq
 Tns0q54stxItIPQprzVsO/ftovA+HHZbHoR4ETl053LF9UbdAkAqZb6kzRNb9lhySzS3
 CpuOsSr0UTDPYJY5QWSsvXECNJ+pGtUHP8b0ZKDvAUj3hTVR0KnyC4NlAxzJ8LTV9TaL
 64LhytZtpsuddaooSGJAvmFWy9iXpU7e10n9D91LpwT3iqxFn4mHNtROPeMkqFR5XItE Ww== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sj7tu0qsj-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 21 May 2019 12:22:06 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2713334;
 Tue, 21 May 2019 10:22:06 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 05B862649;
 Tue, 21 May 2019 10:22:06 +0000 (GMT)
Received: from [10.48.0.204] (10.75.127.50) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 21 May
 2019 12:22:05 +0200
Subject: Re: [PATCH v1 0/2] enable display on stm32mp157c-dk1 board
To: =?UTF-8?Q?Yannick_Fertr=c3=a9?= <yannick.fertre@st.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Philippe Cornu <philippe.cornu@st.com>, Fabrice Gasnier
 <fabrice.gasnier@st.com>
References: <1553863438-6720-1-git-send-email-yannick.fertre@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <5864f09f-4cd3-cadc-2210-4946142e582d@st.com>
Date: Tue, 21 May 2019 12:22:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1553863438-6720-1-git-send-email-yannick.fertre@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG8NODE3.st.com (10.75.127.24) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-21_01:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_032213_530433_20BFA4F5 
X-CRM114-Status: GOOD (  14.01  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWWFubmljawoKT24gMy8yOS8xOSAxOjQzIFBNLCBZYW5uaWNrIEZlcnRyw6kgd3JvdGU6Cj4g
RW5hYmxlIGRpc3BsYXkgb24gc3RtMzJtcDE1N2MtZGsxIGJvYXJkLiBJMmMgbm9kZSBtdXN0IGJl
IGNyZWF0ZWQgZmlyc3QuCj4gCj4gWWFubmljayBGZXJ0csOpICgyKToKPiAgICBBUk06IGR0czog
c3RtMzI6IEFkZCBJMkMgMSBhbmQgNCBjb25maWcgZm9yIHN0bTMybXAxNTdhLWRrMQo+ICAgIEFS
TTogZHRzOiBzdG0zMjogZW5hYmxlIGRpc3BsYXkgb24gc3RtMzJtcDE1N2MtZGsxIGJvYXJkCj4g
Cj4gICBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3YS1kazEuZHRzIHwgNzggKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCA3OCBpbnNlcnRp
b25zKCspCj4gCj4gLS0KPiAyLjcuNAo+IAoKU2VyaWVzIGFwcGxpZWQgb24gc3RtMzItbmV4dC4K
ClJlZ2FyZHMKQWxleAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
