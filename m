Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48841AF697
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 09:20:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N3h2CNp4esmvJSKJzVj8bOjvL7SUbGTqNdKZIVaA4UQ=; b=GGGw6D8mqapvRu
	gLgp8zqZhk4ntI3SJpDzVvV0prUrhZxSPVMxLJY/Q2mTxXwvpNR8Hqfe5v2pwpb0+b6DGoICYnCaD
	6vMbzbtycCjVHMTDNz3lNVJ5v45jBVdiMibYrBqzoSHr6xQ8s3h9itcVsJTvB5MK/y4MnsUjZHAEI
	9TXUD9GZDMT+1/KHbM3t7uH35fDqYd1FVlY72vUE/39DF10neOeXadVWJ1d9ilsRWzU4+nF7n9B/8
	BKJjFeCfiFw8PdDpb6h9kZGiI3KEg7yv0MmGFYZ4Pa0cbd5+FWxKL0zgfXdTDaGTUM4cmtTufzso/
	jceCfAOzPuhypxo3Byrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7wuy-00071E-Kh; Wed, 11 Sep 2019 07:19:56 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7wua-00070p-IJ
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 07:19:34 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID x8B7J9CP030933,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCAS12.realtek.com.tw[172.21.6.16])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id x8B7J9CP030933
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 11 Sep 2019 15:19:09 +0800
Received: from RTITMBSVM04.realtek.com.tw ([fe80::e404:880:2ef1:1aa1]) by
 RTITCAS12.realtek.com.tw ([::1]) with mapi id 14.03.0439.000; Wed, 11 Sep
 2019 15:19:08 +0800
From: =?utf-8?B?SmFtZXMgVGFpW+aItOW/l+WzsF0=?= <james.tai@realtek.com>
To: Rob Herring <robh+dt@kernel.org>, "jamestai.sky@gmail.com"
 <jamestai.sky@gmail.com>
Subject: RE: [PATCH] dt-bindings: arm: Convert Realtek board/soc bindings to
 json-schema
Thread-Topic: [PATCH] dt-bindings: arm: Convert Realtek board/soc bindings
 to json-schema
Thread-Index: AQHVY8OhdZTqLc5DtUGoMsMJcc90yqccSQwAgAnQ1gA=
Date: Wed, 11 Sep 2019 07:19:06 +0000
Message-ID: <43B123F21A8CFE44A9641C099E4196FFCF8DA124@RTITMBSVM04.realtek.com.tw>
References: <20190905081721.1548-1-james.tai@realtek.com>
 <CAL_JsqKGX1n-jsi0xtG8_Q=1LAhT=ufe0y2ZNBNoE3fR10K_xQ@mail.gmail.com>
In-Reply-To: <CAL_JsqKGX1n-jsi0xtG8_Q=1LAhT=ufe0y2ZNBNoE3fR10K_xQ@mail.gmail.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.187]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_001932_738108_97B88FCD 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 =?utf-8?B?Q1lfSHVhbmdb6buD6Ymm5pmPXQ==?= <cy.huang@realtek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Phinex Hung <phinex@realtek.com>,
 =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH] dt-bindings: arm: Convert Realtek board/soc bindings to
> json-schema
> 
> On Thu, Sep 5, 2019 at 9:19 AM <jamestai.sky@gmail.com> wrote:
> >
> > From: "james.tai" <james.tai@realtek.com>
> >
> > Convert Realtek SoC bindings to DT schema format using json-schema.
> >
> > Signed-off-by: james.tai <james.tai@realtek.com>
> > ---
> >  .../devicetree/bindings/arm/realtek.txt       | 22 -------------------
> >  .../devicetree/bindings/arm/realtek.yaml      | 17 ++++++++++++++
> >  2 files changed, 17 insertions(+), 22 deletions(-)  delete mode
> > 100644 Documentation/devicetree/bindings/arm/realtek.txt
> >  create mode 100644
> Documentation/devicetree/bindings/arm/realtek.yaml
> 
> I've already submitted a patch for this that's *still* waiting on Andreas to apply
> or comment on the licensing.

Thanks for your reply.

> Also, your patch isn't valid schema. Please check with 'make
> dt_binding_check'.
> 
I will check with 'make dt_binding_check'. 
Thanks!

> ------Please consider the environment before printing this e-mail.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
