Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2751B1A07D5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 08:55:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EY7rEV0Cy6tIt5AbPfJ5PpffcN5uqFz9Tvazndw7lXk=; b=GHKlsmNj87xtMM
	o8KtKgJZKkLucnlgqfUvRsjQgctapTl6TtUKAwPe5es65vVal6W2/OeEIoaphoZdU2EFJFJBloZVf
	yocq4q7FHmsOfQ+6oROnzj+Sop0TxC1ZaHneFPfP5/RItHi5Gn3rO+3/fo8QlQh+3FLIL/eU1b1DG
	wlcp3XCz7G66HemhViCIvya54tDspSZp9IjjdAyLk+JrCdeWY8o73L1ZLe6uvYGnzF92FXfi8sg12
	46AAmDJxJTTxd3ARwIk6qqIbt8VvS9lq1K5WSKlmJKtSDkoXTJdwiETgwMzhTDXtcQmWOrP+OSfQA
	EiM3AcCWU/xjyHoOTCWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLi8r-0008U8-TE; Tue, 07 Apr 2020 06:55:25 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLi8U-00065U-Ph; Tue, 07 Apr 2020 06:55:15 +0000
X-UUID: 8ea579bafc3f4e068d364b536778720e-20200406
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=vQmMcKuySDDq7XmLmrUwtVT7/AtJhyLkyo/G+wsfwQI=; 
 b=LVMndgzyE/im3SIzkFpYmKLChmAx0O0qBvgoQT03MeFRF4Wr8mozmYXlvCr+qLA0Tvh53SBi9stv5TgfOK14pg7S0iZKfj4F5BoVHK03D13MHJ+iItbva49XEtkuFUXEywJ9mpdrgD71rxkF4+731hn+/ugXwcdfGq6V44m9ZZI=;
X-UUID: 8ea579bafc3f4e068d364b536778720e-20200406
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2078581741; Mon, 06 Apr 2020 22:54:54 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 6 Apr 2020 23:54:49 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 7 Apr 2020 14:54:48 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 7 Apr 2020 14:54:48 +0800
Message-ID: <1586242489.10019.1.camel@mtksdaap41>
Subject: Re: [v5, PATCH 4/5] cpufreq: mediatek: add opp notification for SVS
 support
From: andrew-sh.cheng <andrew-sh.cheng@mediatek.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Date: Tue, 7 Apr 2020 14:54:49 +0800
In-Reply-To: <20200406092945.d5thcd2h3bo7mn45@vireshk-i7>
References: <1574769046-28449-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1574769046-28449-5-git-send-email-andrew-sh.cheng@mediatek.com>
 <20191127083619.etocnhpyyut3hzwq@vireshk-i7>
 <1575874588.13494.4.camel@mtksdaap41>
 <20191210064319.f4ksrxozp3gv4xry@vireshk-i7>
 <1583827865.4840.1.camel@mtksdaap41>
 <20200311060616.62nh7sfwtjwvrjfr@vireshk-i7>
 <1584084154.7753.3.camel@mtksdaap41>
 <20200313091038.q7q7exiowoah4nk4@vireshk-i7>
 <1586164366.5015.6.camel@mtksdaap41>
 <20200406092945.d5thcd2h3bo7mn45@vireshk-i7>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_235502_950936_28624843 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Chanwoo
 Choi <cw00.choi@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Fan Chen =?UTF-8?Q?=28=E9=99=B3=E5=87=A1=29?= <fan.chen@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2020-04-06 at 14:59 +0530, Viresh Kumar wrote:
> On 06-04-20, 17:12, andrew-sh.cheng wrote:
> > I will use regulator in the locked region.
> > And regulator will use mutex_lock.
> 
> Yeah, you can't use spinlock here, use a mutex.
> 
Hi Viresh,

I am not familiar with read/write lock.
Do you mean there is another read/write function, which is not
read_lock()/write_lock(), using mutex but not spinlock?
Could you kindly tell me the functions.
Thank you.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
