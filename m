Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF1912657D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 16:16:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xA6+5VuJtJZ0nmMfuw8fz+mT6eER9FHLWuw4CjGW2MM=; b=PdjGh+24uiKHWz
	T+Hfs1S2edA/O4EYuePt4/IobWTS7898eYQBnKu+2kIrdWPIpyrfzO/mdEsAUKjQPJ1h/guDf9UEG
	QpYFSaXuKxxWeL3IQWbJE8g2DgFcP+PdDqtPbrPS3n0JpbV1WYtsGHzvJdgz02mW35J5JPJW2RNPp
	wIyoHYPmGGc20aXz5kqBYaQsZqthZJtfOE86ZKc5cF9o8C0I0ZNTKYVWtyMgGwM3LRFUti62deCpA
	zmppU2ErMQvLXu75avpKUHWcG4EACUctRjiVuZpJtkHwN0UZYbgLIo/JgohpLeZAQZG0XpyvFmOB5
	XoUJc1Et4Y8MmtfH2ApQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihxXl-0004cd-QS; Thu, 19 Dec 2019 15:16:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihxXb-0004cD-M2
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 15:16:41 +0000
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 71C2A206EC
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 15:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576768598;
 bh=G/YDWsO9nHSCJbNxDSVG8hWGcm3R9GfdbCmYzMGadcQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=HF3T69/7YWRWGd0JMSx6d4MNR3RcDMwC+VxQx4RCnLX6d+H5z6E0oAGYDvOBXlgas
 PUFxEN7gt+tllaGgzCi6o3q8IPLJA5Hx/Avt867yIf9LeNttkf4Zvln5R9Gj/mo23R
 wX007yIxgKS78GtA+Wth23xzNSd3G9l+aVj/ur3U=
Received: by mail-wr1-f50.google.com with SMTP id q6so6333484wro.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 07:16:38 -0800 (PST)
X-Gm-Message-State: APjAAAVwZq+GxJjTzMa5ehuhSNbwqeY9zbXNSBipSkvJDPNDwCeEQg+q
 LWLDGEHltixq2ztQqu6hbAQC6/C9lC/AYE+JSZ0=
X-Google-Smtp-Source: APXvYqwmdVLjBjzvTLTY8iX31A5DkctgO2JA8etuqnJ/7+aNtyZ+v++I7B0jbOKgbP7dQWp02EK/0CYpSFRMo/yLKjU=
X-Received: by 2002:adf:ef4e:: with SMTP id c14mr10290022wrp.142.1576768596967; 
 Thu, 19 Dec 2019 07:16:36 -0800 (PST)
MIME-Version: 1.0
References: <20191219091539.948530-1-maxime@cerno.tech>
In-Reply-To: <20191219091539.948530-1-maxime@cerno.tech>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 19 Dec 2019 23:16:24 +0800
X-Gmail-Original-Message-ID: <CAGb2v64hO2s1Tpp-6gzmKAaoUujnq_n3PjXEugYrAjf=bUX-8Q@mail.gmail.com>
Message-ID: <CAGb2v64hO2s1Tpp-6gzmKAaoUujnq_n3PjXEugYrAjf=bUX-8Q@mail.gmail.com>
Subject: Re: [PATCH 1/5] ARM: dts: sun9i: Make sure the USB PHY resources are
 in the same order
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_071639_749393_709E7623 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 5:15 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> While this is functional, it's a best practice to always have the clocks
> and reset lines in order, in case we ever need to have compatibility code.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
