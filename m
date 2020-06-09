Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3AF1F3B31
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 14:55:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WoqzSGMILnrieLtYIhLg2Es5swOeSNn0jcFey+jfvgs=; b=YoVSjU+7yRjUQhEeX5L5Z7JfkX
	zexUAyApHAOXRdKX364ksMlWdEXq19LL/EcBkpaGBsatzR97RQvd4v1RcGrJuhQH+rSINYhfLji8j
	7o38XWL5cwCrtlhg7mndkwU1W7cyFeQ1sXYU2U5yFoJoaMN0sfl7ic2SNV54glZi0V+nwpEHeBR2W
	Hy5Npp9wjZSxOmRqYlUPu44c+DTB0Y9VZPpoRfIjWNT9+tdm+ElFOLkBKjj43DBxxpNuMKOQ63X+/
	SJ5p5GZ+wq3rlzGMp0kgT3Ai+gI1Qiw03QfcwT5LNlIxzVECQXENThn+ZVu2VZfoMpzUcWFMBXv8p
	tqeMMkaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jidmg-0007Hw-06; Tue, 09 Jun 2020 12:55:18 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jidmT-0006Bv-6W
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 12:55:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1591707305; x=1623243305;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=R4d1xFOQANOtBvYugE4Y6z/1+LM4tG8caBxOeDEyPCg=;
 b=w0rH5mV4sWfqEdx72OLITJaVZjRKtGLEgsmb1lcXh/D9fO8iscVlJilH
 jOCZ9RV6Ip0EOa27tHrAzGvKPYvIrMtccHDbfYqW7qD1/JsYVFzNMNRJn
 i/TlgYUk5BFuflcOOmE6XCjB2socvrmY6/jqB7lhIqV8pnV3CWbZS722i
 elaEpWpNj3a9SG2QFVi1dic79+6Y405njr3aqmegA6veAx7V35h17PylF
 Hs8u/xl5Onjnn2Gw9QymoW7Fu8wZWcp75xTIH8xH01IhoS9IOGKgXvkiv
 Cy6jmhI5BzL/e1LKyejkhYEraefc/XfMJ19vJjPp9U3noz9DTMJtl9kzR Q==;
IronPort-SDR: WAUKnIXpcUbDouBuOz024F5bSzIZ7+iHnxZeWI8QHby6MNWMIDw5pmk2jj7PVMdBKyPVy4b81W
 G2ktMI+O5H2bocpkSKi/DiHgvq2xQNE3wrNGF44mZhvL8AwD6GXlSJTS31FRmgqh1h6oKU5l6q
 cBV3erkFaKmMlCnUKLxsDHoePKE46e4UA3nTOGz/4hlr+BYDH8+TJKsR31BRclTeuc3OjHcRVk
 SL0aiMMVWITHhn41N73LPpgA8f6MFnevuSJ/xkG4MG0YZIamcdGmV8Gnwk4D0lyhE29g6mFHpO
 /ak=
X-IronPort-AV: E=Sophos;i="5.73,492,1583218800"; d="scan'208";a="79427220"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jun 2020 05:55:00 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Tue, 9 Jun 2020 05:54:59 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 9 Jun 2020 05:54:57 -0700
References: <20200609072828.9088-1-lars.povlsen@microchip.com>
 <20200609074940.9529-1-lars.povlsen@microchip.com>
 <20200609093808.00003aad@Huawei.com>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Subject: Re: [PATCH v2 3/3] hwmon: sparx5: Add Sparx5 SoC temperature driver
In-Reply-To: <20200609093808.00003aad@Huawei.com>
Date: Tue, 9 Jun 2020 14:54:56 +0200
Message-ID: <87ftb4ielb.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_055505_283135_32B43710 
X-CRM114-Status: UNSURE (   6.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.153.233 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jean Delvare <jdelvare@suse.com>, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Lars Povlsen <lars.povlsen@microchip.com>, Guenter Roeck <linux@roeck-us.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Jonathan Cameron writes:

> On Tue, 9 Jun 2020 09:49:40 +0200
> Lars Povlsen <lars.povlsen@microchip.com> wrote:
>
>> This patch adds a temperature sensor driver to the Sparx5 SoC.
>>
>> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
>> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
>
> Hi.  Quick drive by review whilst waiting for coffee time...
>
> A few minor suggestions inline.
>

Ooops, forgot to ack the COMPILE_TEST and bitfield.h suggestions.

Both adopted.

Thanks,

---Lars

-- 
Lars Povlsen,
Microchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
