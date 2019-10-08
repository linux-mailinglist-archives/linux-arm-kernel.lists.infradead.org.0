Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B5DCF5E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 11:19:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M6OCqN0KtjGmNG3+dszT4/1lHqRZwX2Ytnd6ZEbe3G0=; b=D7P+CVLSWpbaJY
	tpIVMG/Tv7EM9KMSbgrQEZDzcNldqX77fimfwvSaQdnfifWWA3NPaUavuHibXykTr9QO7LOiRU6A8
	2sw3LuSzCAst65L4j2pC1WF2GFZu3TpjNdqcY97aQa9asjH//hmOZnq3Td5NpMVWVtrNqi04SfGtl
	0RtvmnzLraA4zA/xrB2qguYfStxwuZfHSEFGq8NDtIPwrLZbJoYXWI02h/QKxqDI4xBSRy5qf0gKJ
	aYg3+qH5iJ3Url0E027QntJRhuKVvBsXROauZVkl+wTQpp07cmbMYzlSAAB1XWfpG0E5zgzNX8D2w
	+arM1K6eNvGr7HEmNiyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHlei-00042J-Gb; Tue, 08 Oct 2019 09:19:44 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHleZ-00040l-St
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 09:19:37 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9896vYO029256; Tue, 8 Oct 2019 11:19:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=+dIaoBBTtn4uHC1StIa2tJsqayvUf706bDI0ytKEsoQ=;
 b=wyAuzEqHkJDYghX8QiCFEQ3qmQ4nTDmJgaRsWqJlTl3KHd3+t8044muCxJpj+JJ3aWaa
 +ZSOQbRypNhpmPawY7gUjvalZ+XtbVrZC9QpkQWn27pL3QTr9KGKuxNeSd1MOeI8XV6V
 24zi3E9StYi8g1KXwYsmMvfil8htnR2J66mZrP9S0QUcw/z3LgwBP1w1wyUQkkg5N8QL
 gYzn1T+bw/etbqs929qWjVORSLFfjPPSFluu9cNs+k1FkZoNVkcEXHP/jpHJc5cYeokN
 ucWhESkKmHzUTSbuiH1IhtuPZzfVj+xF85jqvMnwWsvkTpfJf9nhwtyhR+MnXFWnmm0/ qQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vej2p7csb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 08 Oct 2019 11:19:26 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AE24010002A;
 Tue,  8 Oct 2019 11:19:24 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A147A2B1E48;
 Tue,  8 Oct 2019 11:19:24 +0200 (CEST)
Received: from SFHDAG5NODE1.st.com (10.75.127.13) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 8 Oct
 2019 11:19:24 +0200
Received: from SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6]) by
 SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6%20]) with mapi id
 15.00.1473.003; Tue, 8 Oct 2019 11:19:24 +0200
From: Gerald BAEZA <gerald.baeza@st.com>
To: Jonathan Corbet <corbet@lwn.net>
Subject: RE: [PATCH] Documentation: add link to stm32mp157 docs
Thread-Topic: [PATCH] Documentation: add link to stm32mp157 docs
Thread-Index: AQHVXNGu+WgWi0gJwE+sfJwWkTflzacPHSFxgDnL12CABoSfAIABS0jA
Date: Tue, 8 Oct 2019 09:19:24 +0000
Message-ID: <70e865409cab4d589323692e863dbc49@SFHDAG5NODE1.st.com>
References: <1566908347-92201-1-git-send-email-gerald.baeza@st.com>
 <20190827074825.64a28e88@lwn.net>
 <5257eff7-418b-8e94-1ced-30718dd3f5dc@st.com>
 <8d097a0486e94257952600bf6d20975d@SFHDAG5NODE1.st.com>
 <20191007093208.757554b0@lwn.net>
In-Reply-To: <20191007093208.757554b0@lwn.net>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.45]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-08_03:2019-10-07,2019-10-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_021936_294814_4E3DE4E9 
X-CRM114-Status: GOOD (  19.57  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jonathan

> From: Jonathan Corbet <corbet@lwn.net>
> 
> On Thu, 3 Oct 2019 10:05:46 +0000
> Gerald BAEZA <gerald.baeza@st.com> wrote:
> 
> > > > Adding the URL is a fine idea.  But you don't need the extra
> > > > syntax to create a link if you're not going to actually make a link out of it.
> > > > So I'd take the ".. _STM32MP157:" part out and life will be good.
> > > >
> > >
> > > We also did it for older stm32 product. Idea was to not have the "full"
> > > address but just a shortcut of the link when html file is read. It
> > > maybe makes no sens ? (if yes we will have to update older stm32
> > > overview :))
> >
> > Example in
> > https://www.kernel.org/doc/html/latest/arm/stm32/stm32h743-
> overview.ht
> > ml
> >
> > Do you agree to continue like this ?
> 
> If you actually use the reference then it's OK, I guess; in the posted
> document that wasn't happening.  I still think it might be a bit more
> straightforward to just put the URL; that will make the plain-text file a little
> more readable.  In the end, though, it's up to you, go with whichever you
> prefer.

So I prefer to keep the patch as it, for better consistency with the others stm32 overviews.
Thank you.

> 
> Thanks,
> 
> jon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
