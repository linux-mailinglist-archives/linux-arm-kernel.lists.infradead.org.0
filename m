Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AB445AC2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 12:43:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJggyJOz54b8SzuYqZxZYxmJedwiZLgaTjaag6nl33g=; b=pWPpjtDZkRvk7E
	yJjdRgAm0I5SCd0eCgoO2zKdm6rFmihuy3DChWGk48LrMsNB4L31Zg0kNjvF25bA+QU+MSbf7ZxEA
	DcxRq/ARM4JGLm2jWZZUr/1bS2lIkPTBy1Ai3CcYQsypsPqmEkg+vnhMSLQIzhUkMjypkVzyNyBEX
	WlBqEU9zsN9yXLX3Q7sKtI/gSOPzRyhsA3OMge6OWQnKhZ/0hWlR12dCZdA5PyCRT8dt8k2BUq3ED
	yE5pmXGUc7heLlmR586qekAlAi3WfQZ6F3LpKUGjBkZ+ZkcpZ1uHD06dbQGu7RrZKOwVcLSDgaqVB
	yi90WVBQsKYgQVzVYZ2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbjfM-0000Tn-6C; Fri, 14 Jun 2019 10:42:40 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbjdJ-0007cM-FU
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 10:40:35 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5EAdTdi073520;
 Fri, 14 Jun 2019 05:39:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560508769;
 bh=NG3g5iBJojJvfS8oHJGjK9j/D53U+mYMaMjCd+j3xgo=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=v31V7xH3WPORvTexs7qp9uWWLKxufg+y1SGh1XVJUcxYreTgapec554Dxj8nHPxv+
 Sg3slNaNDarlzjW1s004t78Cl9hkzMvHws41Rv/8rTas/svh+FsXbuD3J2Pu+MIkbG
 ZhnR8cEWTnXDt0XUI4jUSirSq1hkqwsUwqJugIAs=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5EAdTPB073450
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 14 Jun 2019 05:39:29 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 14
 Jun 2019 05:39:29 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 14 Jun 2019 05:39:29 -0500
Received: from [172.24.190.172] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5EAdQei077731;
 Fri, 14 Jun 2019 05:39:27 -0500
Subject: Re: [RFC v3 0/2] clocksource: davinci-timer: new driver
To: Bartosz Golaszewski <brgl@bgdev.pl>, Kevin Hilman <khilman@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner
 <tglx@linutronix.de>, David Lechner <david@lechnology.com>
References: <20190605083334.22383-1-brgl@bgdev.pl>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <1ac8cfcf-1d77-9b6b-4aab-4171f6cf80fc@ti.com>
Date: Fri, 14 Jun 2019 16:09:26 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190605083334.22383-1-brgl@bgdev.pl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_034033_671698_3BF5676B 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,

On 05/06/19 2:03 PM, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> This is another version of the new davinci clocksource driver. After much
> discussion this contains many changes to simplify and improve the driver.

Does this look good to you now? If yes, can you please merge and provide
an immutable branch to me so I can merge dependent mach-davinci patches?

Thanks,
Sekhar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
