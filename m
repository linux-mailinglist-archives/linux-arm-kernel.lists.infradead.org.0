Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 159D298C52
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 09:20:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nIO2pAwALMhrnend+R3aGsjjMXxaUWPql6izAm/n0+k=; b=GLH93vd6OC+ohC
	eCS/zbhUnosslwv/sN6pFBHCF/SQ0HM1k9IXuoQ3VpaUQ+DhBEbZN3X71H5LgwdAvKniViblkik1E
	93njlbrqrDNC4Jk+uUzvV4ju914wvIj/FQpzhQWq7qCIonXA5rF0U0X69UlNKgxc5cGy9zZ0x763b
	tQBcW76tmFwt50jb36qT4uVKVTJ/2e7K9S+8HVUjqFoYCgbrDQzOnAzSHaeJZQbSCNZ9913EPrR6U
	wwdBq10ePACxlCFbNK3im3py/E2SaPpfE9V9u6x+uIybPwjaHkCPAnmFlFoAjdZQ4CJjZ9D+s1AIs
	sgKbzlbwuauGhyIVM4Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0hO1-0002OZ-1J; Thu, 22 Aug 2019 07:19:57 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0hMG-0001sB-Ju
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 07:18:12 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7M7HnkY025732; Thu, 22 Aug 2019 09:17:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=oVgJvQsPM5uwDHjpfeIZOdzAAgSti1coKyBfUwZGJIY=;
 b=AFlhnsKlcLff90I7OHojSuwyL2oy2rYruOezE27q3xG2Bj1ZGPONJvddSX0SyeBaYew0
 Y5M4f2lcvnHLXTXr14kdbskyofTMvQchdwziah2wddoa9kOdJ5wOSXw+4GK1+ABepSY/
 qD7fnrKIUY6cq56Pz25u3+GKvbMfb6q0yuhf1bJrbQ7Ms0KsTslqjCoDAJuRJyKC3Y2E
 g/xhaul0Rht1Pb4f+ZoyLqlkIcYf8f9ZyClZUxzL2gklto2cs6iBv92O+cTYZlQGdlt6
 2eb+FCaa6uOwPgb3wrDc5Al5dVkFVccZ/Htptu+EaadefRh6LjKjoxbC8Jylpmc73OJ9 dg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2ue8fh333m-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 22 Aug 2019 09:17:52 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1D7A641;
 Thu, 22 Aug 2019 07:17:42 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id F146C2B3429;
 Thu, 22 Aug 2019 09:17:41 +0200 (CEST)
Received: from SFHDAG5NODE1.st.com (10.75.127.13) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 22 Aug
 2019 09:17:41 +0200
Received: from SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6]) by
 SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6%20]) with mapi id
 15.00.1473.003; Thu, 22 Aug 2019 09:17:41 +0200
From: Gerald BAEZA <gerald.baeza@st.com>
To: "acme@kernel.org" <arnaldo.melo@gmail.com>, Andi Kleen
 <ak@linux.intel.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: perf tool issue following 'perf stat: Fix --no-scale' patch
 integration
Thread-Topic: perf tool issue following 'perf stat: Fix --no-scale' patch
 integration
Thread-Index: AdVYKdLDPGQJ05vWQp+GPnpQmBTpIQAApzCAAAdGDIAAG+0v0A==
Date: Thu, 22 Aug 2019 07:17:41 +0000
Message-ID: <dc163c5ae1d3418c95e02e13a6205719@SFHDAG5NODE1.st.com>
References: <f686372a96ea490785c0a76cc96b3434@SFHDAG5NODE1.st.com>
 <20190821162635.GB36669@tassilo.jf.intel.com>
 <20190821195451.GG3929@kernel.org>
In-Reply-To: <20190821195451.GG3929@kernel.org>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-22_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_001809_876571_8C97FB8A 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 "mathieu.poirier@linaro.org" <mathieu.poirier@linaro.org>,
 "suzuki.poulose@arm.com" <suzuki.poulose@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "alexander.shishkin@linux.intel.com" <alexander.shishkin@linux.intel.com>,
 "mingo@redhat.com" <mingo@redhat.com>,
 "namhyung@kernel.org" <namhyung@kernel.org>,
 "jolsa@redhat.com" <jolsa@redhat.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Arnaldo and Andi

Indeed, 'aligned(8)' instead of 'aligned(64)'.
Thanks for your quick feedbacks and I am going to prepare the patch.

G=E9rald
 =



> Em Wed, Aug 21, 2019 at 09:26:35AM -0700, Andi Kleen escreveu:
> > >
> > >    +             char contents[] __attribute__((aligned(64)));
> >
> > I think you want aligned(8). The parameter is bytes, not bits.
> >
> > >
> > >
> > >    But the xyarray structure is generic so I think this patch cannot =
be the
> > >    final one.
> >
> > I think it's fine actually to just apply this generically (with 8). It
> > will only waste a few bytes on other 32bit architectures and should be
> > a nop on 64bit, not worth doing anything more sophisticated.
> >
> > I would just submit a patch to do that.
> =

> Agreed.
> =

> - Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
