Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A70E2369C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 14:57:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2BZUPcMkkG1A4tJ9AssHya9PrMBGAYoygy1dsTaa7k=; b=bq1V5SyonmY0MM
	dKSkDDRGIv63szBLa1b3ETfMRBcGq8BDwNEYo1fDY4GyhYLUuS9dwMk5Wjyb2WuxmaRpcuts0FY2A
	dTw2JiQZpG2J2RSM+xom7+mDrIQ2QGtU7wsNF9u+f//mjORcmuTM+vjkrcD5/a4GCIz7SEbW7AaUE
	Emw0Y9Terdfw230bUzD7GgxR4VY2nyRu8thBr8zzTvWt7mcnQlrJXYO/wkSSZehWo0ktLzaiJL6PG
	BmJhoNxpTz5Ws5jbsHuRUc1+j//nAKYVEPlXFgyJWUXmw1UDWtWnR89oal2fe7IOt5h8IRXgMU8Uf
	+3dAp8Ihx9EI9KYew2jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hShr6-0000Bc-IZ; Mon, 20 May 2019 12:57:28 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hShqz-0000A0-GL; Mon, 20 May 2019 12:57:23 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 2C64AAE45;
 Mon, 20 May 2019 12:56:56 +0000 (UTC)
Message-ID: <1558356237.12672.3.camel@suse.com>
Subject: Re: [RFC v2 3/5] clk: bcm2835: use firmware interface to update pllb
From: Oliver Neukum <oneukum@suse.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, stefan.wahren@i2se.com,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, 
 bcm-kernel-feedback-list@broadcom.com, Eric Anholt <eric@anholt.net>
Date: Mon, 20 May 2019 14:43:57 +0200
In-Reply-To: <20190520104708.11980-4-nsaenzjulienne@suse.de>
References: <20190520104708.11980-1-nsaenzjulienne@suse.de>
 <20190520104708.11980-4-nsaenzjulienne@suse.de>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_055721_691120_0DFC8632 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org, ptesarik@suse.com, sboyd@kernel.org,
 viresh.kumar@linaro.org, mturquette@baylibre.com, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mo, 2019-05-20 at 12:47 +0200, Nicolas Saenz Julienne wrote:
> + * For more information on the firmware interface check:
> + * https://github.com/raspberrypi/firmware/wiki/Mailbox-property-interface
> + */
> +struct bcm2835_firmware_prop {
> +       u32 id;
> +       u32 val;
> +       u32 disable_turbo;
> +} __packed;

Hi,

technically we are not in arch and those fields have a defined
endianness.

	Regards
		Oliver


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
