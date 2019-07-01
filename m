Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F88F5BE64
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 16:35:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8uS4ysZd5ig71+VVLcZ9Qdh1154u83GjnDdHtTn0PFU=; b=X7tQT8tOdepdGx
	bHD8upsaWzUDt/8eQJAmhNQBAL/X7tCGQQz1fhg1jkXwJ8ihyeynq/oQPNsM8qsf2JDHNZEIiLrMt
	W9DkqUzLdB0e17wVUhSjpr/Wl+Btedb29NjzWHe73J80LT6S8ASosJtZ6uDqBZTBOKTp6GMjNuos9
	B41MupTg+MC6aeeA/wBpEAcXbnT2VnVyuqkt3DnWhgdxiX25JQ8yfLzQpBBSun5jCj6+xf2Y7yCS5
	A74FjyKYBCYiVRA79xjgFhZqr5Z6D1LSx7w7qfCgOSG66/miKrQ33CKsdo4EKv3HEiLZQMSR86hva
	YtSVGVaeD4J6u7aTXNhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhxOV-0000xw-AZ; Mon, 01 Jul 2019 14:34:59 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhxOO-0000wG-2e
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 14:34:53 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x61EYeUV073343;
 Mon, 1 Jul 2019 09:34:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561991680;
 bh=cyHop+GSfkh1vgGnTZxWTEXAnODsgbNOUZbNoREaWBk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=H3tkKiHKfD6ud1lt5vFApjgzjfGno+OkXw3AKgEI3tyv3jA35s8m12VorgAgpurrf
 hZP4sNJf+olbTEG2a1Sstz4TygkTAGhfxdLYwH5oADbGlIEDxsd1kCnS3YZ5BsIyND
 E3kCaOOuOKLvMndMrQazA3YE75/KBs7gHPrGZFG0=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x61EYexg100699
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 1 Jul 2019 09:34:40 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 1 Jul
 2019 09:34:39 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 1 Jul 2019 09:34:39 -0500
Received: from [172.24.190.172] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x61EYajr076737;
 Mon, 1 Jul 2019 09:34:37 -0500
Subject: Re: [PATCH] media: davinci-vpbe: remove obsolete includes
To: Arnd Bergmann <arnd@arndb.de>, "Lad, Prabhakar"
 <prabhakar.csengg@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20190628105131.3130257-1-arnd@arndb.de>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <77b1444b-6d37-28d4-50c3-3f9f79b7a1ea@ti.com>
Date: Mon, 1 Jul 2019 20:04:36 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190628105131.3130257-1-arnd@arndb.de>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_073452_207135_BB94BDDA 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/06/19 4:21 PM, Arnd Bergmann wrote:
> The driver builds fine without these, and they cause build
> problems once davinci multiplatform support is enabled.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Sekhar Nori <nsekhar@ti.com>

Thanks,
Sekhar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
