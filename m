Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D826DC07E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 11:04:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/bJvzAomtoeRLDPJhKc4KG9schGTNpVz0lJpa2S6298=; b=Cl+X+bBAdr+Doy
	wbN1gAwVn24WNuso7qhApljDJ5mE5I6JRveo/PTOJlCoKesq1GfcOMe65bVT1AWRl659ma85s154e
	+RaE6FIZst0RV1b/Ux7XRX3zrv7CZt5IwxS4rt9U3wciOUe2q3tZ+y+B791/YH4zZGJ8HECTq27aD
	pPfeLW/xZVFCbszPHj8U2LegvXZOlSYv3/hKl4rHcXW3uJ2vOpFI/akdQvLBVsghlxyZEDoFEBFOW
	yjoHyjG9O+dtw4gUL8ffc+TkCDHbo4pW2KmtWkRCz2qx0nUNTgt0jRWP3Ty8f9qXCf0Wpj2w/Igl4
	9CUaA2sGmNp/lC8eLy/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLOBf-0004U9-Pb; Fri, 18 Oct 2019 09:04:43 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLOBK-0004Sw-5F; Fri, 18 Oct 2019 09:04:23 +0000
X-UUID: 49d88b99c4974acbb4cb4873a1345165-20191018
X-UUID: 49d88b99c4974acbb4cb4873a1345165-20191018
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 403607067; Fri, 18 Oct 2019 01:03:36 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 18 Oct 2019 02:03:50 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 18 Oct 2019 17:03:49 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 18 Oct 2019 17:03:50 +0800
Message-ID: <1571389431.27207.4.camel@mtksdaap41>
Subject: Re: [v4, 7/8] cpufreq: mediatek: add opp notification for SVS support
From: andrew-sh.cheng <andrew-sh.cheng@mediatek.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Date: Fri, 18 Oct 2019 17:03:51 +0800
In-Reply-To: <20191017063102.4jirlphdxdydl2bm@vireshk-i7>
References: <1565703113-31479-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1565703113-31479-8-git-send-email-andrew-sh.cheng@mediatek.com>
 <20190820033927.72muldasu4xd6wb7@vireshk-i7>
 <1571193828.22071.5.camel@mtksdaap41>
 <20191017063102.4jirlphdxdydl2bm@vireshk-i7>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_020422_203232_AED68D74 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Fan Chen =?UTF-8?Q?=28=E9=99=B3=E5=87=A1=29?= <fan.chen@mediatek.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-10-17 at 12:01 +0530, Viresh Kumar wrote:
> On 16-10-19, 10:43, andrew-sh.cheng wrote:
> > This is due to SVS feature need to fix Vproc for calibration.
> > When SVS calibration, it want to disable all opp items, except one with
> > voltae 1.0V. (SVS will change the voltage field of that opp item, if the
> > corresponding voltage is not 1.0V)
> > In this way, SVS can make sure there is no other module, include
> > thermal, will change Vproc by DVFS driver.
> > After SVS calibration done, SVS will enable those disabled opp items
> > back.
> 
> But why is this required to be done this way ? Why can't we just update the
> voltages without doing this disable/enable dance ?
> 
This is because some opp items need voltage larger than 1.0V.
We cannot update the voltage to 1.0V.

If we don't disable these opp items, and DVFS policy want to set these
high frequencies, dvfs driver will set higher voltage to Vproc and SVS
calibration will be fail.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
