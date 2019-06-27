Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD32584F8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 16:57:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P/nzlOwum9SU20gVN/7gN8bdVgsDRaBfuLb4+SOzzI0=; b=ZdyrrM9rSpZ4lS
	XEHRXhdeB2BLdJRxp/GZFXLhHV2n84W5dIuw0crtHSurr0oVY3LdpcNJZO+ZYyOo82FRPhWOeSnpq
	cvYUw9hi8TLVK7qe31k0v5tDOcf6/kW1lSOq//okKp2ohZqbe6laL8VyDSuLAs0I31NzRKLavQmkO
	DqtFUdwOt9hXCjqY0ichZYLPmBUdw4gpggcl9fLQRJIoM2KE5yZG3fKiH0t9jZm23xnlRyUycCtFL
	Ej2NBJf186yQCuNdIdAyaAA18HmmWFLkSdhJUdLT8C24+CYOuB1aaDOw62MVP9laI6UyKSGb2dx0L
	bjQe7gh9s/wr3QG1qmIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgVqU-00087r-Bo; Thu, 27 Jun 2019 14:57:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgVqF-00087D-16
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 14:57:40 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 42BD52086D;
 Thu, 27 Jun 2019 14:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561647458;
 bh=V7tnhDpdCEtH0xy4BaUun+rbJC5qQflf0ihlbDGxrYw=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=R0kBGt0GTuwC1Zo9rNGZHKLtrEYrtoQVP7zIoYYbLiFkAPc6AUs1WbNxw9j612hz7
 DBT+YCVJggrBEzdC/GFIogNnciL3PH7tP2xMKT3nLs61+Iu6dRTHwL5vkPOqH9LU/E
 CszflHmvGLcG9DecNWSBoIU5+AvkYk4KBmlHgg7c=
MIME-Version: 1.0
In-Reply-To: <1561646841-7663-1-git-send-email-claudiu.beznea@microchip.com>
References: <1561646841-7663-1-git-send-email-claudiu.beznea@microchip.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>,
 alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 mark.rutland@arm.com, mturquette@baylibre.com, nicolas.ferre@microchip.com,
 robh+dt@kernel.org
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v5 0/4] add slow clock support for SAM9X60
User-Agent: alot/0.8.1
Date: Thu, 27 Jun 2019 07:57:37 -0700
Message-Id: <20190627145738.42BD52086D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_075739_094973_2B18FB3F 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Claudiu Beznea (2019-06-27 07:47:17)
> Hi,
> 
> This series add slow clock support for SAM9X60. Apart from previous IPs, this
> one uses different offsets in control register for different functionalities.
> The series adapt current driver to work for all IPs using per IP
> configurations initialized at probe.
> 
> Stephen,
> 
> I send a new version of this since I'm not seeing the patches on clk-next
> and I though you may had issues with the previous version of this series.

Ok thanks. I see that you've fixed it to send plain text. Great! But I
already applied the other patches so I'll just keep what I had. Should
be pushed out to clk-next today.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
