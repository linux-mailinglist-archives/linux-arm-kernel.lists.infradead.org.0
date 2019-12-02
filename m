Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C72CF10E7FD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 10:54:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PpU47v6SClHx2C7mPL949IaqiyHpXgfy9SyC+/8rB78=; b=DnoSHGFD2coQqr
	wfLNb45zWIVW+PY1smqkSZf6tHTJvzQdaQPcgVEPIyKJS8sgkjw9Ikl4lDoPKRC63FGWExkm7XpWH
	wjCdCNJ8TOZm5Z4U6AHAJjCeMgKydcVlq8HoCkDVIg1B6CaQrd64DUW4cHl3aQqBJJ4jxPzg/oAHp
	7BcE2LrSZmRQQ1gy3vg+4sht3sf3wMAshlHcJDY7uxVeGEtjQlYHVDNhxcliaesZSHZba3aTHUNQ6
	2xdDZYIuDpGRyuApBhoCDx68Q+8vqm3Hr7reEWpxU1z18bGrni3TPdOvXwxN/vmizMD7jZ/U17YeG
	GshaF4PyHQHE81F5pKYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibiPV-0007mf-9v; Mon, 02 Dec 2019 09:54:29 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibiPP-0007mW-Tl
 for linux-arm-kernel@bombadil.infradead.org; Mon, 02 Dec 2019 09:54:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A6bY20wJDarnTl2cSGmzk6nzNli5s4l03QNQ5nIvnTg=; b=j8N4WQ6jzdzl3+JE44T6lW4+e5
 DeW4WkYMYLXG5V3zQv4eDKYN8lRUNDs6rFU/YpWk8mCNcZC7Hu9J8VkRmxgUrMaFkpru5pD60HFDZ
 oOQIUYRAK2RmXqTCn+3W5fsroiKfQ9zAjUBpU2gWNE3Di44SIVg5DvoLa2TjgQ96afjjNhuwTa0/x
 qdyQdxcDhzOJqGsxvUReJJ6oN9QRvyCsF+GI2Ut7kCYqWi9/xUmJyCDzALz87k34zdkJ9HGI+SVD4
 3JxJo9zMdG8d36Kb9Iij8KvgxWdS6+YtjblQEWEeQlSuvmHV7NCvXRP7Xky4JAl7o1QqKP3Zyq+Hf
 mC1vZOYA==;
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibiPl-000077-Ga
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 09:54:49 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xB29oALQ029104,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com ([172.21.6.12])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xB29oALQ029104
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 2 Dec 2019 17:50:10 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTITCAS11.realtek.com.tw (172.21.6.12) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Mon, 2 Dec 2019 17:49:57 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB03.realtek.com.tw (172.21.6.96) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Mon, 2 Dec 2019 17:49:57 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::35ac:d9d0:1393:a902]) by
 RTEXMB03.realtek.com.tw ([fe80::35ac:d9d0:1393:a902%8]) with mapi id
 15.01.1779.005; Mon, 2 Dec 2019 17:49:57 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Subject: RE: [PATCH 2/7] arm64: dts: realtek: rtd129x: Use reserved-memory for
 RPC regions
Thread-Topic: [PATCH 2/7] arm64: dts: realtek: rtd129x: Use reserved-memory
 for RPC regions
Thread-Index: AQHVmDzfamWec3ddWkiVVX1ELT676KemGsuAgACXBLA=
Date: Mon, 2 Dec 2019 09:49:56 +0000
Message-ID: <a511b94a991946a1b3f26dcdc485d4fa@realtek.com>
References: <20191111030434.29977-1-afaerber@suse.de>
 <20191111030434.29977-3-afaerber@suse.de>
 <1f25f2fc-5d31-1d74-b730-78ad7861ffce@suse.de>
In-Reply-To: <1f25f2fc-5d31-1d74-b730-78ad7861ffce@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.187]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_095445_851598_24D51F55 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.126.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Rob Herring <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andreas,

> >  /memreserve/	0x0000000000000000 0x0000000000030000;
> > -/memreserve/	0x000000000001f000 0x0000000000001000;
> >  /memreserve/	0x0000000000030000 0x00000000000d0000;
> >  /memreserve/	0x0000000001b00000 0x00000000004be000;
> > -/memreserve/	0x0000000001ffe000 0x0000000000004000;
> >

> >  #include <dt-bindings/interrupt-controller/arm-gic.h>
> >  #include <dt-bindings/reset/realtek,rtd1295.h>
> > @@ -19,6 +17,25 @@
> >  	#address-cells = <1>;
> >  	#size-cells = <1>;
> >
> > +	reserved-memory {
> > +		#address-cells = <1>;
> > +		#size-cells = <1>;
> > +		ranges;
> > +
> > +		rpc_comm: rpc@1f000 {
> > +			reg = <0x1f000 0x1000>;
> > +		};
> > +
> > +		rpc_ringbuf: rpc@1ffe000 {
> > +			reg = <0x1ffe000 0x4000>;
> > +		};
> 
> Have you reviewed this patch to be correct? I.e., are the above two regions
> reserved RAM (assumption above), or is this rather MMIO shadowing RAM?
> (then we would need to update the /memory reg and /soc ranges properties)
> 
> That also affects RTD1619, which currently has neither.
> 
The RPC common buffer and RPC ring buffer address is correct.


Regards,
James


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
