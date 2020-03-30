Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C72B1973DB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 07:29:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TaBBFs8i2+95OFSWh5U3SUW86xmRGBQT3T4eJ2zH9Sk=; b=s08BHDqClPEyAy
	SmKY96pcYBsO+RUndZCTUKUvgM1cwJpf7cTmJPmYbq7nbwKvFxyJzjr2rSsKsiBFEDvsosH947cno
	UoZGxbcY7SypMIoZQQi9AESLgWWYqnJvDWdxUjCODWIW32UBgsbWl17Ey8lpW4aAlOBV9rCV5osUl
	WpXRBNchtpjW6sldSUg/SS+POhPGTOBwM1c1eYX5yXA8Oc2Q8RcuHaEZP01j2TE6mFRwc669PGw1Z
	CM0b9LEWxu+/eAsV/oZoho+0wDmtwoZ5zdZdgg0BOBVSzYV8mAo9IQ8TAPNz6s1jU5mJjPhCdzI4B
	VQxf6xDhzKL57VRE9eVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jImzP-0005xC-QR; Mon, 30 Mar 2020 05:29:35 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jImzD-0005vK-Aj; Mon, 30 Mar 2020 05:29:24 +0000
X-UUID: f3a29c61eb084a12ab1b431c99f02901-20200329
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=PiWLw0TeG7GcgBMd5OgryJCpKyO8lgrXQHDKaqgPG58=; 
 b=H51wOSB4E8IfmA8XEkPuCE4rb6zVrbPrgRG7NerAS16eswoZuZgmsBARj6W8ThUSXXAKCZSRNlHf77IQsb1QfsjsVqVy/q4wIKsHIie6dIkpwrxtcPhdUfv/zkse4bpy1kBhyRdQzj5lKUEL6gxH2Rw8LIgDyt6AsteDnWyAONc=;
X-UUID: f3a29c61eb084a12ab1b431c99f02901-20200329
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <henryc.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2131870764; Sun, 29 Mar 2020 21:29:18 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 29 Mar 2020 22:19:14 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Mar 2020 13:19:12 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 30 Mar 2020 13:19:11 +0800
Message-ID: <1585545553.32635.10.camel@mtksdaap41>
Subject: Re: [PATCH V4 11/13] dt-bindings: regulator: add DVFSRC regulator
 dt-bindings
From: Henry Chen <henryc.chen@mediatek.com>
To: Mark Brown <broonie@kernel.org>
Date: Mon, 30 Mar 2020 13:19:13 +0800
In-Reply-To: <20200324203833.GL7039@sirena.org.uk>
References: <1584092066-24425-1-git-send-email-henryc.chen@mediatek.com>
 <1584092066-24425-12-git-send-email-henryc.chen@mediatek.com>
 <20200324203833.GL7039@sirena.org.uk>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_222923_384171_3291FA38 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nicolas
 Boichat <drinkcat@google.com>, Mike
 Turquette <mturquette@linaro.org>, srv_heupstream@mediatek.com,
 James Liao <jamesjj.liao@mediatek.com>, Viresh
 Kumar <vireshk@kernel.org>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 Fan Chen <fan.chen@mediatek.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Ryan Case <ryandcase@chromium.org>,
 Arvin Wang <arvin.wang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,
On Tue, 2020-03-24 at 20:38 +0000, Mark Brown wrote:
> On Fri, Mar 13, 2020 at 05:34:24PM +0800, Henry Chen wrote:
> 
> > +- regulator : The DVFSRC regulator is modelled as a subdevice of the DVFSRC.
> > +	Because DVFSRC can request power directly via register read/write, likes
> > +	vcore which is a core power of mt8183. As such, the DVFSRC regulator
> > +	requires that DVFSRC nodes be present. shall contain only one of the
> > +	following: "mediatek,mt8183-dvfsrc-regulator"
> 
> Why do we even need a compatible here - it's not adding any new
> information to the parent mt8183 node, the compatible is mainly for the
> way Linux divides things up rather than a description of the hardware.
> We could just say that the regulator node always has a particular name
> instead.
Sorry, not quite sure what you mean, because I think DVFSRC is a
regulator provider that can provide vcore voltage control on mt8183, and
it can provide more power control in the next generation Mediatek SOC.
Here I add a sub-node to describe it. Or should I move this node to
regulator folder? 

> 
> It's also not quite true that it contains "only" the compatible - it
> also allows the regulator constraints to be defined.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
