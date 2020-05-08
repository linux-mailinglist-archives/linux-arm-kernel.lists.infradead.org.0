Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5161E1CB1A0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 16:22:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:
	References:In-Reply-To:Message-ID:To:From:Date:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p5fwZr3H7jCxkq0wgZM7A9LUKVnoUBZzW4TOle2mHVY=; b=a1rj5kzucapj+a
	gLPGasCoSRroxpgyp0b1CeS+9AkSU1A1J/e0sqjtkpE7D0m7kPg8pVaw37WJdOZXnZXm//LpySaDm
	cH7d7shHHkhn5DCFkpto9Rn0zK3BnCk8A64SVSnlpED7DWH/NOVlj/xtn8KtRiT+HJHaeRnV16Buf
	dMv6oyzPilwfkcOlfLsV39GnmgJjGuw7RGOyJQzc6lSSkatp+vtg8kbGgZDvTHMlzpAzbTzexAgQ7
	YD6t/M6gdQ0EzCWAqze8Of//ATPcePGjWBMvp4ij5yFDBzCpDeUmY+KkUZ75zfn/6wgf7HDu8Tc/l
	H2x715cioISoYqxp90iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX3t6-00048Z-DN; Fri, 08 May 2020 14:22:04 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX3sw-00047S-CR
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 14:21:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1588947709;
 s=strato-dkim-0002; d=fpond.eu;
 h=Subject:References:In-Reply-To:Message-ID:Cc:To:Reply-To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=lhXFjhMceHfaOQT7DstHoXQXk+uN44YDU0i3K/XzV1Q=;
 b=WGKTRCcXVVP0/ARQWOtZ6eC3Ew9YOXoKfp2tYe2Ym7uL9hPAZB0pWAgrjnrBD/sWM5
 kJ9i7i/ibmPaeHBCq+8Ms9dZP/YeO7n6gp02q1HckM/pOAGPLNQJC6Q3wByBy8BMogV+
 lxm1lnDhY+Bit9Ujtf2ZUe2exbxl/Yl/5aa5xSDG8KdmZ8QiYMi/5CjGrp2lTzkfP35d
 +tdmF+HGQPPGNF8bm+WPYzkkg7YJjmvtv+OQU74PN0kkfr2SqjpBjQDljBi0aqRVHUjS
 x2S+PP3O5h79ER/6sykSb8YXZqU5882vJ0SriNkHSw6iUVAd4m5iNKDX4Lu9PZLsNktg
 J42A==
X-RZG-AUTH: ":OWANVUa4dPFUgKR/3dpvnYP0Np73amq+g13rqGzvv3qxio1R8fCt/7N+Odk="
X-RZG-CLASS-ID: mo00
Received: from oxapp04-03.back.ox.d0m.de by smtp-ox.front (RZmta 46.6.2 AUTH)
 with ESMTPSA id Z0acdaw48ELn52H
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1
 with 256 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Fri, 8 May 2020 16:21:49 +0200 (CEST)
Date: Fri, 8 May 2020 16:21:49 +0200 (CEST)
From: Ulrich Hecht <uli@fpond.eu>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Ulrich Hecht <uli+renesas@fpond.eu>
Message-ID: <2052458931.972202.1588947709194@webmail.strato.com>
In-Reply-To: <20200508095918.6061-1-geert+renesas@glider.be>
References: <20200508095918.6061-1-geert+renesas@glider.be>
Subject: Re: [PATCH] ARM: dts: r8a7740: Add missing extal2 to CPG node
MIME-Version: 1.0
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.2-Rev25
X-Originating-Client: open-xchange-appsuite
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_072155_014799_321EACAF 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5300:0:0:4 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: Ulrich Hecht <uli@fpond.eu>
Cc: linux-renesas-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> On May 8, 2020 11:59 AM Geert Uytterhoeven <geert+renesas@glider.be> wrote:
> 
>  
> The Clock Pulse Generator (CPG) device node lacks the extal2 clock.
> This may lead to a failure registering the "r" clock, or to a wrong
> parent for the "usb24s" clock, depending on MD_CK2 pin configuration and
> boot loader CPG_USBCKCR register configuration.
> 
> This went unnoticed, as this does not affect the single upstream board
> configuration, which relies on the first clock input only.
> 
> Fixes: d9ffd583bf345e2e ("ARM: shmobile: r8a7740: add SoC clocks to DTS")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Ulrich Hecht <uli+renesas@fpond.eu>

CU
Uli

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
