Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A25149FF6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 09:40:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qvtWIKsBzt8rVDNcx3NY+q7f8vQEZCOXBeiy9ibUPXo=; b=B8XgFMUZm2ZZVd
	GcvTWN191zoIQGpbnUFPAy3ERGQI5eOWnT9v+exQg+y7VRV/A3YocL3RdIjT8hy1cSRvQB8Xnmtrs
	Xa/4r845iMAf5KirIk7+RSTIaYhUysk+AQ3KUYUkdE5EqQifHAS1DmXjxNqE8yYHLWOjyTyRgfGIM
	abVBUNEkdjkA+LceJwWLvu+tEpPGMt5Su3qlAVa4LISMTnCuyoC8H9gWH70EPpm3ugY3yh/aUn4bt
	f83Oz5GnSEu8gR/nYVhOLdP6agQN2zxx4Ntrl+QwHZO5GfZOVyl1nZReo0NsCmS6oVpNX4SaVLo4W
	+mbrOTgq7ndHJ9P5sRAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivzww-0007Wq-N6; Mon, 27 Jan 2020 08:40:50 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivzwm-0007WR-JL
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 08:40:42 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00R8eRCo088203;
 Mon, 27 Jan 2020 02:40:27 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1580114427;
 bh=xa0xzafvFH8SqiFAfVmhyJyrA8824lRN+gl7HwxGaOs=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=syNmAyoPBOFuScGZ385BJZjO1IQHsGn8sNA2sgHvwgwaQUx3bMGmhlKuykMMmqbK9
 QRsy0LqbKdlMK4RScXWQ8nv41NyI+//WzPPXPYEAjTh1ihCHoXyIaTBXuKb1CaRDsC
 oWXx8Ngbn67wQTNP24QfipWAZP2s4Uy7QZkcZJHw=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00R8eRrj063297
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 27 Jan 2020 02:40:27 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 27
 Jan 2020 02:40:27 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 27 Jan 2020 02:40:27 -0600
Received: from [172.24.145.246] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00R8eNNL043988;
 Mon, 27 Jan 2020 02:40:25 -0600
Subject: Re: [PATCH 09/20] ARM: davinci: Drop unneeded select of TIMER_OF
To: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann
 <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>, Olof Johansson
 <olof@lixom.net>
References: <20200121103413.1337-1-geert+renesas@glider.be>
 <20200121103722.1781-1-geert+renesas@glider.be>
 <20200121103722.1781-9-geert+renesas@glider.be>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <be193d29-2787-d22c-1d65-6887a49bebbe@ti.com>
Date: Mon, 27 Jan 2020 14:10:23 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200121103722.1781-9-geert+renesas@glider.be>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_004040_741051_7B5B398F 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/01/20 4:07 PM, Geert Uytterhoeven wrote:
> Support for TI DaVinci SoCs depends on ARCH_MULTI_V5, and thus on
> ARCH_MULTIPLATFORM.
> As the latter selects TIMER_OF, there is no need for MACH_DA8XX_DT to
> select TIMER_OF.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: Sekhar Nori <nsekhar@ti.com>
> Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Acked-by: Sekhar Nori <nsekhar@ti.com>

Thanks,
Sekhar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
