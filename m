Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9848FE7A7D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 21:50:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x9Jc0WY5h14F2bz1EM9MH7N06WFTPHLAuhOlbE+r9qc=; b=j64SQj+zZQh4we
	iqP9cGSejZvdTbn9jZwrkaMWfkxhi/TcKIZ4McIX3Drpn9UC45S9y39VGECSqIEIT8LKyv5uDR+8E
	HGxyUjm0f8gwHKKa15FkVmOtc66ahqnlDpS8I8QAyLc3XPzsw202wghk4+dxp16ApqBL8PPxsodQG
	FXsG0cjHA7v4UAIIYDNAKiIMei3uSfcWdZAfNV67I6DxZ8Pq4bBz/Zme3K+d8vjnfWSKR7vmqOp7g
	uBDuHX4j7q8IMKryvQuLcbzamNVSE+bRnM2ODCJuNj2m8DmobnRWCOluxwoPwRusIP1Tw3E2hHOTM
	sYuq5+3FX3UNOAlBcf5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPBxe-0008TI-GE; Mon, 28 Oct 2019 20:49:58 +0000
Received: from smtp09.smtpout.orange.fr ([80.12.242.131]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPBxT-0008SV-B4
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 20:49:48 +0000
Received: from belgarion ([90.55.204.252]) by mwinf5d17 with ME
 id K8pk210095TFNlm038pkhe; Mon, 28 Oct 2019 21:49:45 +0100
X-ME-Helo: belgarion
X-ME-Auth: amFyem1pay5yb2JlcnRAb3JhbmdlLmZy
X-ME-Date: Mon, 28 Oct 2019 21:49:45 +0100
X-ME-IP: 90.55.204.252
From: Robert Jarzmik <robert.jarzmik@free.fr>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 16/46] ARM: pxa: tosa: use gpio descriptor for audio
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-16-arnd@arndb.de>
X-URL: http://belgarath.falguerolles.org/
Date: Mon, 28 Oct 2019 21:49:44 +0100
In-Reply-To: <20191018154201.1276638-16-arnd@arndb.de> (Arnd Bergmann's
 message of "Fri, 18 Oct 2019 17:41:31 +0200")
Message-ID: <87a79kmw7r.fsf@belgarion.home>
User-Agent: Gnus/5.130008 (Ma Gnus v0.8) Emacs/26 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_134947_661326_1A0F7946 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robert.jarzmik[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.131 listed in wl.mailspike.net]
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
Cc: alsa-devel@alsa-project.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Mark Brown <broonie@kernel.org>, Daniel Mack <daniel@zonque.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd Bergmann <arnd@arndb.de> writes:

> The audio driver should not use a hardwired gpio number
> from the header. Change it to use a lookup table.
>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: alsa-devel@alsa-project.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Robert Jarzmik <robert.jarzmik@free.fr>

Cheers.

--
Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
