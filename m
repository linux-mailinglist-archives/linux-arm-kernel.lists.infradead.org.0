Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D25C61C4E05
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 08:02:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQ/Gsz2ZJtddKrt0nuTnxvZRLAbxo0ZdKlBaJHZZh4s=; b=ZP4zU2zD8lWdO4
	haSejgVQFQs9Sc+Dafd5B6epHM5oAenwauQdvvS9zbgVSIoOC7I+bNxwSoE85UwCv+8ixWTnKxxzS
	hHyD/xgVX9eg7Y0bSCi9ERINbv3YLBg6LHnqOf3fMuaJ928NkpagxAr48ul87KkbAZ6kR3bl9d6V9
	+o/RhdCj0XFqEB++UgL5sSw7fb31JH05pxPo0wmCSmh7ER0BTyycz4qrb5rJkgbrwjofnnVaTDjxf
	2H9xolZfgpSqERZYL2FatEzP9iyxgsym3RTU43KorzTR3Ok7AhMAEbfvRpqScI0Cysn0zUbxKZRFo
	vIjoF1yR1ddcakukTDTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVqf3-00077l-4J; Tue, 05 May 2020 06:02:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVqeu-000778-Rs
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 06:02:26 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 58487206A5;
 Tue,  5 May 2020 06:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588658544;
 bh=mHW4r+z5ME9GbpfaANcBlWQb58VId3ZnpjQEFfElIFg=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=FghUYy6fUEIwgKHVbNHFOiA7hCEUKjIjjUXNrNlafI8cCJnIk4MFDcURZJX8hcCmO
 1NMiizk7XVf9MdOGIwffoFRX4Rz3jn73rhCvqdMptqtrsYAz8LA6szT9R7aoK/L1e2
 ISeI0cOFzr3XSVlSEaJkblShi8Nam/lMYxsU7Us4=
MIME-Version: 1.0
In-Reply-To: <1588207921-20604-1-git-send-email-Anson.Huang@nxp.com>
References: <1588207921-20604-1-git-send-email-Anson.Huang@nxp.com>
Subject: Re: [PATCH V4 1/5] dt-bindings: clock: Convert i.MX6Q clock to
 json-schema
From: Stephen Boyd <sboyd@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>, devicetree@vger.kernel.org,
 festevam@gmail.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, mturquette@baylibre.com, robh+dt@kernel.org,
 s.hauer@pengutronix.de, shawnguo@kernel.org
Date: Mon, 04 May 2020 23:02:23 -0700
Message-ID: <158865854354.11125.10611865219975766594@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_230224_927479_A4EE7B42 
X-CRM114-Status: UNSURE (   5.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Anson Huang (2020-04-29 17:51:57)
> Convert the i.MX6Q clock binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---

Please send a cover letter next time. Who is going to apply these
patches? I hope Rob? If you need an acked-by feel free to have mine!

Acked-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
