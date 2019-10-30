Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B228EA551
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 22:21:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y4w1mpVPLVpPGVfo4mXSe2jASHhhsWWjmOZs1lZvio4=; b=RX9YUQ7vE53iiG
	1qhnMPF+LYovdmjIpj8cGds+9msd0dcN08tQi12dxgpZDOCul1CBfb8OFa/mbWC/RNJMAa2D2y+OO
	kPK+K5WDit2cVr72w6dgV8B8A9Cfe50JsyeUyrJb4qGFeipLQoAHHmZbBeZCtuDJidb0j7Kh2w6Rw
	kMS2o//uNKeFRx/QzFitgl1Ir+pnRYRTsKYVzRMagXIGZz8zu+zM/ocIEUN5JgYOWkUHMRwhS8zK0
	zvpJiZWKF+iln31o3lnRv7Oqhpg7rzg51aoQjb7YQQr8i0mG/q3knRuIWnZzQzvuIyaGUeRq4uNfG
	4hWG5AJGKUoITQ0/N0wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPvPG-0002dO-Q6; Wed, 30 Oct 2019 21:21:30 +0000
Received: from smtp08.smtpout.orange.fr ([80.12.242.130]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPvP5-0002c0-CL
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 21:21:21 +0000
Received: from belgarion ([90.55.204.252]) by mwinf5d15 with ME
 id KxMG210075TFNlm03xMGp5; Wed, 30 Oct 2019 22:21:17 +0100
X-ME-Helo: belgarion
X-ME-Auth: amFyem1pay5yb2JlcnRAb3JhbmdlLmZy
X-ME-Date: Wed, 30 Oct 2019 22:21:17 +0100
X-ME-IP: 90.55.204.252
From: Robert Jarzmik <robert.jarzmik@free.fr>
To: Sebastian Reichel <sre@kernel.org>
Subject: Re: [PATCH 39/46] power: tosa: simplify probe function
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-39-arnd@arndb.de>
 <20191019090749.ps27yjfebzscw2pk@earth.universe>
X-URL: http://belgarath.falguerolles.org/
Date: Wed, 30 Oct 2019 22:21:16 +0100
In-Reply-To: <20191019090749.ps27yjfebzscw2pk@earth.universe> (Sebastian
 Reichel's message of "Sat, 19 Oct 2019 11:07:49 +0200")
Message-ID: <878sp2lyk3.fsf@belgarion.home>
User-Agent: Gnus/5.130008 (Ma Gnus v0.8) Emacs/26 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_142119_701370_D9446B9A 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.130 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robert.jarzmik[at]free.fr)
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sebastian Reichel <sre@kernel.org> writes:

> Hi Arnd,
>
> On Fri, Oct 18, 2019 at 05:41:54PM +0200, Arnd Bergmann wrote:
>> We have three power supplies that need similar initialization.
>> As a preparation for the gpio lookup table conversion, split
>> out the initialization into a separate function.
>> 
>> Cc: Sebastian Reichel <sre@kernel.org>
>> Cc: linux-pm@vger.kernel.org
>> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>> ---
>
> Assuming, that the whole series goes through ARM:
>
> Reviewed-by: Sebastian Reichel <sre@kernel.org>
> Acked-by: Sebastian Reichel <sre@kernel.org>
>
> If the series doesn't make it into 5.5, I can also apply
> this cleanup patch.
>
> -- Sebastian
Acked-by: Robert Jarzmik <robert.jarzmik@free.fr>

Cheers.

--
Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
