Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A5318C0EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 20:59:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rdai/E/7/87qmsn+Nkxg92yuNuCKMwuUBhbq65eRQHM=; b=bhjsFZPgDJyKIn
	7XJjB4Y1tnjg9UoK7o8Y6GLKHLfNtqfe/TirKWmky/pCxshyZrYjM/ulqm2ziYDlijdtyhxUQqDnG
	L8H3u0WqgSufsQvOh2/i4xV8QJE8yWNM7EPEdIrzG4uRqc0tjpMz7aqoP69318gdlWArDk/jvC59J
	BJpMoLy8n3014+fiF3lJ/5OnDo+JgD18rKEbbAz+t5sbkuTliNvwrLySpi44D9qqJSPfA6q3gUUOW
	0YpHeghPrTYPJdYQvnP5O3MwxlIJBiYTCJ6eMrD86wRGlNg16nZ4sZJlDhQnZnRXPREpJTMTJZQPG
	DHLdSgKOYKnhz8JxIckw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF1K4-00071B-2h; Thu, 19 Mar 2020 19:59:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF1Jt-00070M-IZ
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 19:59:10 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2BCAE206D7;
 Thu, 19 Mar 2020 19:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584647949;
 bh=YVwv4E2Ut/NpWXxwh42s1vlrFtIvX7XJV7XAJ8Urwac=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=bLZFQRE2m4crqagFo1jQGa1OhV7nQ/fVZav6Xsr+O3gWbVYixldKSvf210VyOnxJP
 9IlEhmUnBAraujJYKEBQHhenhNk+84ifOD4jtFv/lgVnuERcMuVy96JuRFV5pVGICU
 5tlpRdpmfdTSK+KkovvguqmD3JUtM6z06XdVaHRU=
MIME-Version: 1.0
In-Reply-To: <1584495566-15110-1-git-send-email-Anson.Huang@nxp.com>
References: <1584495566-15110-1-git-send-email-Anson.Huang@nxp.com>
Subject: Re: [PATCH] clk: imx: clk-sscg-pll: Remove unnecessary blank lines
From: Stephen Boyd <sboyd@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>, abel.vesa@nxp.com, festevam@gmail.com,
 jonas.gorski@gmail.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, mturquette@baylibre.com, s.hauer@pengutronix.de,
 shawnguo@kernel.org, t-kristo@ti.com
Date: Thu, 19 Mar 2020 12:59:08 -0700
Message-ID: <158464794846.152100.11284882735806407657@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_125909_629326_1626C123 
X-CRM114-Status: UNSURE (   5.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Quoting Anson Huang (2020-03-17 18:39:25)
> Remove many unnecessary blank lines for cleanup.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
