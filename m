Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC64B7CD9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 16:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CBl4j8JHicRxfOP+Nn5C4MAsN2EdLkgJvDvtyAFAWig=; b=aU4Q6M3XwNJzC6
	4DAosf6ioMBOaXfCr59af0KnCsPTsOozobsAiyq1BJe0A8rGJSa2+zKrZe3+yGflPo77Bu8RriiiB
	c996SYLyf5Tsi/O1iUSjlbYV+sMjZG/Wg3XZq8+gL0Hgr/grq52nq9bIRK+5Uy12W6G5C7lnjtYEW
	P+hTsaptkwV6l+f3IUjYHca+OlK0MnlFJ8lF6G3HOQSK7N+kkPebqOf1C1jnJJVXKKI1B3rtRkikw
	wiyJHIVK8s5rL7G5Y/feGPZ2/UJL2W3dEvCrJ/p6Y9aGhBiu2CZSgzQYJGJP5nMzjNvpORAAyQqKd
	JSUiJOX7Za8ZGxvxqlhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAxTD-0004Jf-AI; Thu, 19 Sep 2019 14:31:43 +0000
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25]
 helo=mx0b-001ae601.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAxSy-0004JF-90
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 14:31:29 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
 by mx0a-001ae601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8JETFWh020368; Thu, 19 Sep 2019 09:31:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=PODMain02222019;
 bh=PupjcNRQ2lxRP0e4ia7WEj2POWDctVOG0nBQBB08VYk=;
 b=J9buVC0Zz24St63xLUxx42wcaPWcFSJ06NxtMhirEAqaTpZowp4vkWR5cyxEhD72qaHS
 3TC0FbJNBs9vblA8iPqYlUzVKbJbU8h3HPyGK22qQEmqOnrx5OrzgICPi8MZV9bkw7Zd
 MyF8HadxeGI/zSooHeNn7CVWfP5YJk28OpEwNECWgPcoXdswkiCGwTiRMMj9CUGyAaYt
 maRdCjfHS1q54R3kZ0p1D7Q6PEu0SjGTDTro5S8Ix5D0eCw9+dpLMOTeNz9GfBMfsLtG
 XBbcorQdVMC6a/kI7lJ2FDP/gZ1fiR35zzOGoP/5x8flkvVYRTsoVDxx8p3Ee/ehlmHo GA== 
Authentication-Results: ppops.net;
 spf=fail smtp.mailfrom=ckeepax@opensource.cirrus.com
Received: from ediex02.ad.cirrus.com ([87.246.76.36])
 by mx0a-001ae601.pphosted.com with ESMTP id 2v3vbhs7sk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Thu, 19 Sep 2019 09:31:19 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Thu, 19 Sep
 2019 15:31:16 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.1591.10 via
 Frontend Transport; Thu, 19 Sep 2019 15:31:16 +0100
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
 by ediswmail.ad.cirrus.com (Postfix) with ESMTP id BD7042C3;
 Thu, 19 Sep 2019 14:31:16 +0000 (UTC)
Date: Thu, 19 Sep 2019 14:31:16 +0000
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v1 2/9] mfd: wm8994: Add support for MCLKn clock control
Message-ID: <20190919143116.GL10204@ediswmail.ad.cirrus.com>
References: <20190918104634.15216-1-s.nawrocki@samsung.com>
 <CGME20190918104656eucas1p1d9cad1394b08d05a99151c4fbc9425ce@eucas1p1.samsung.com>
 <20190918104634.15216-3-s.nawrocki@samsung.com>
 <20190919075924.GB13195@pi3> <20190919125020.GJ3642@sirena.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919125020.GJ3642@sirena.co.uk>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-SPF-Result: fail
X-Proofpoint-SPF-Record: v=spf1 include:spf-001ae601.pphosted.com
 include:spf.protection.outlook.com -all
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 priorityscore=1501
 malwarescore=0 phishscore=0 suspectscore=0 lowpriorityscore=0
 impostorscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=938
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1909190137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_073128_382169_09C8DB11 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.149.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, b.zolnierkie@samsung.com,
 sbkim73@samsung.com, patches@opensource.cirrus.com, lgirdwood@gmail.com,
 Krzysztof Kozlowski <krzk@kernel.org>, robh+dt@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 19, 2019 at 01:50:20PM +0100, Mark Brown wrote:
> On Thu, Sep 19, 2019 at 09:59:24AM +0200, Krzysztof Kozlowski wrote:
> > On Wed, Sep 18, 2019 at 12:46:27PM +0200, Sylwester Nawrocki wrote:
> > > The WM1811/WM8994/WM8958 audio CODEC DT bindings specify two optional
> > > clocks: "MCLK1", "MCLK2". Add code for getting those clocks in the MFD
> > > part of the wm8994 driver so they can be further handled in the audio
> > > CODEC part.
> 
> > I think these are needed only for the codec so how about getting them in
> > codec's probe?
> 
> Yeah.  IIRC when these were added a machine driver was grabbing them.  I
> don't think that machine driver ever made it's way upstream though.

If you mean for the Arizona stuff, the machine driver using that
was sound/soc/samsung/tm2_wm5110.c. Sylwester upstreamed it along
with the patches.

I think on wm8994 the clocks probably are only needed by the
audio part of the driver, so probably can be moved in there,
although as a disclaimer I have done a lot less with parts
of that era. However on Arizona the clocking is needed from
various parts of the driver so couldn't be moved exclusively
to the codec driver.

Thanks,
Charles

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
