Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95683F6BCD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 Nov 2019 23:53:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aGPsQVb2NAulG9GmnC+lIQkxjdLjfSa5DE9PDViZYqk=; b=LjnfctVVby4+sL
	LY6a9mjmfeEFx+WGMjyHtBaXpig81jB84z3L2W17s05GymlYIQHc5R3zl1PUX7VS4CDzSVwc0uls6
	QbGZtdAHZ6Pb6kzHFC/fH0I50Rgj+PIWFc1D1N9RikKLyubq4/JugOSyFEg1eUHXirXuderoEN/SS
	S3kkM2X96VWRvb9ejT5ZoFF84LeF/kHUfduOjHlyLQGZmYPU+TaxHYjnfxlsWMquf41h/4e9Eo4Ds
	DJsx9SGTqu+4czO17FlvKviGhs2M3YQ/wtbamtmF7JYcAWyrTMeLqmozfenFnCdndvDqTdg1vmKD/
	YyPAG6ydXP6ftWbtY4Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTw5Q-00068c-BL; Sun, 10 Nov 2019 22:53:36 +0000
Received: from mleia.com ([178.79.152.223] helo=mail.mleia.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTw5I-000687-BJ
 for linux-arm-kernel@lists.infradead.org; Sun, 10 Nov 2019 22:53:29 +0000
Received: from mail.mleia.com (localhost [127.0.0.1])
 by mail.mleia.com (Postfix) with ESMTP id 8AC713AE374;
 Sun, 10 Nov 2019 22:53:23 +0000 (UTC)
Subject: Re: [PATCH] usb: gadget: udc: lpc32xx: don't dereference ep until it
 has been null checked
To: Colin King <colin.king@canonical.com>, Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>, Roland Stigge <stigge@antcom.de>,
 Arnd Bergmann <arnd@arndb.de>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20191110221413.22321-1-colin.king@canonical.com>
From: Vladimir Zapolskiy <vz@mleia.com>
Message-ID: <0e5105e3-768e-c8eb-dd73-d097bb7edfb2@mleia.com>
Date: Mon, 11 Nov 2019 00:53:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20191110221413.22321-1-colin.king@canonical.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20191110_225323_591453_2C3ACE0D 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message. 
/bin/ln: failed to access
 'reaver_cache/texts/20191110_225323_591453_2C3ACE0D': No such file or
 directory
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_225323_591453_2C3ACE0D 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/11/2019 12:14 AM, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> The pointer ep is currently being dereferenced when initializing pointer
> udc before ep is being null checked.  Fix this by only dereferencing
> ep after it has been null checked.
> 
> Addresses-Coverity: ("Dereference before null check")
> Fixes: 24a28e428351 ("USB: gadget driver for LPC32xx")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Acked-by: Vladimir Zapolskiy <vz@mleia.com>

--
Best wishes,
Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
