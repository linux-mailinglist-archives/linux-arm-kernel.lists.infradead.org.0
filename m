Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E26B1550CA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 03:53:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bC4je2gvLRR5rxIh5DM2eAdnsfS2xIfXEUwMT6LNrlY=; b=mlzHhrZunxGh4A
	zjBTrJVx/E4/FijaZhxqUZy77PhpFakxUKG89mEfZ6H2UdIDpJQLL8xnLZE1jZFbxz0lzdnUNOj2G
	3REDlhdDmu+UMJyDM6m16aXQPMTUzibtEdwG5rWnkfZ196jnqvNW44Qy2X2nFD99vuoI9fsIOTfZS
	c+uX45h5FjcFHnc8uftg9j3GuBJNzg3B4DJsMLP/ukxn7NDG+tk1ZoRHhdP8/2Zptd4qQ1QmLIKeg
	/mr88MCkT8YcTOxTwk4aVZpMoxeC91aQG5YPZfP4rjQi7Q5CcNy0+YOEhhK4ohb5l9I5a4Bt7ob9z
	DsBm1BhW4gjcMz5WFGWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iztm4-000882-5F; Fri, 07 Feb 2020 02:53:44 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iztlv-00087U-KD; Fri, 07 Feb 2020 02:53:37 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID 0172rIKZ015086,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTEXMB06.realtek.com.tw[172.21.6.99])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id 0172rIKZ015086
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 7 Feb 2020 10:53:18 +0800
Received: from RTEXMB04.realtek.com.tw (172.21.6.97) by
 RTEXMB06.realtek.com.tw (172.21.6.99) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Fri, 7 Feb 2020 10:53:17 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB04.realtek.com.tw (172.21.6.97) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Fri, 7 Feb 2020 10:53:17 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d]) by
 RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d%8]) with mapi id
 15.01.1779.005; Fri, 7 Feb 2020 10:53:17 +0800
From: =?utf-8?B?SmFtZXMgVGFpIFvmiLTlv5fls7Bd?= <james.tai@realtek.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH v3 1/2] dt-bindings: arm: realtek: Document RTD1319 and
 Realtek PymParticle EVB
Thread-Topic: [PATCH v3 1/2] dt-bindings: arm: realtek: Document RTD1319 and
 Realtek PymParticle EVB
Thread-Index: AQHV22q6vab9CDECFUe3xrmWUlkzCagMSxgAgAK8FLA=
Date: Fri, 7 Feb 2020 02:53:17 +0000
Message-ID: <e7f86f0feea84941939c5658b2c293b3@realtek.com>
References: <20200204145207.28622-1-james.tai@realtek.com>
 <20200204145207.28622-2-james.tai@realtek.com> <20200205164758.GA22823@bogus>
In-Reply-To: <20200205164758.GA22823@bogus>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.154]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_185335_800028_17DA6D3A 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.126.72 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

> 
> On Tue, 4 Feb 2020 22:52:06 +0800, James Tai wrote:
> > Define compatible strings for Realtek RTD1319 SoC and Realtek
> > PymParticle EVB.
> >
> > Signed-off-by: James Tai <james.tai@realtek.com>
> > ---
> >  v2 -> v3: Unchanged
> >
> >  v1 -> v2:
> >  * Put string in alphabetical order
> >
> >  Documentation/devicetree/bindings/arm/realtek.yaml | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> 
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
> 
> If a tag was not added on purpose, please state why and what changed.
> 
I will improve it.

Thank you for your reply.

Regards,
James


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
