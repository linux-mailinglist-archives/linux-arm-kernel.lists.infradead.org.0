Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9EA9A92F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 09:55:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ome1Gb/8o0/vaik62Wsa5xz7N1jBWTLTukeI+GxUrkU=; b=nXXSn18q6vz3j2
	VpEM+ndAFQ8ORhgm8FhAbytd0cKKc4bneMFTV15C/mGoPMIEV8M48HNV2Llp8t8/h3eEz5dfxx015
	WdGcKghAMbJ+E49nHu5U43SJXnk6fcgNEnowES+u+r4aM+YwCqiMZebtfl0owdHrUkX66E653iBId
	RlPC6zPWDD7FYhiJQPojd7lWsab4WP+773Sf+3sU/dIIh4Cc2Hdoo55zXfoG0p0ndk5e2gIUOV2l6
	7HmM3cxjS6WXxRRs51ettQ6xfTHHlXjRLpP1PsOP03t1OLrYBTpvpBWekio4Y63/w1UCmZuWu/7yl
	zPDRue0w8/WwL7Z5yxsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i14Pe-0004hI-Mh; Fri, 23 Aug 2019 07:55:10 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14PN-0004gv-VV
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 07:54:55 +0000
Received: by mail-oi1-f196.google.com with SMTP id a127so6394280oii.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 00:54:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3jhcsuT4HWVR0ij0vDmto77Em1fMfCnOVBcbQ2h94bM=;
 b=EnFKvvFxhp4tHEpArrRPtslVWel/QfCDqbslHIG2FqlJZTHdYXRRrY9Z+pKDew14pV
 C02sH41mVGYwPIk3GfD1+kRBhKAk8xwD2HBdx25kqz5u6ICDkjyV1/AwDnNDsOhTAr9x
 iFlz/sxbjn/DaS1d0TZrkKYhynuBsoWVyYqc71s3dW3LRwyGERH200dY6Q1o5uiXA7hF
 XZb2Qg8A5qFLyFOVV2dXVaVenufmgHfcnj2NoSaQdr1azofJ0pvOnnNAjh1UW7dhcc78
 OTUUHa1UXGv0l51GUfPNFS2rR3hXbI3xvWGdYla7wYZCh1ADvf0dx+nRKpPTvuZjR9u8
 7F3w==
X-Gm-Message-State: APjAAAX4tjI+uaFZMNBTyK1bPHgaQj+RoCzE83f1Clz1lGVah4pJRF+q
 Cmx7nLYi+NsK+lFzm3iF2osH50hEb2eILOgSOf8=
X-Google-Smtp-Source: APXvYqxtyE/Soksl8SGHHpKI4OqogmiIX8TDEfIj7BfXYuWbgdTf+T855y0ZdbyvDBbb2UoWE1WW++NYUHvlJZ+qxaE=
X-Received: by 2002:aca:b154:: with SMTP id a81mr2127382oif.148.1566546892415; 
 Fri, 23 Aug 2019 00:54:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190821124602.29317-1-geert+renesas@glider.be>
In-Reply-To: <20190821124602.29317-1-geert+renesas@glider.be>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Aug 2019 09:54:41 +0200
Message-ID: <CAMuHMdWj7eCa9URtztqth=fYMn2uTHWDS3WAKnRvxDfMjjBH_A@mail.gmail.com>
Subject: Re: [PATCH 0/3] soc: renesas: ARM errata updates
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_005454_015759_CA97AB64 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 2:46 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
> This patch series updates the handling of ARM errata for affected
> Renesas SoCs.
>
> The first patch enables the new ARM_ERRATA_814220 for Cortex-A7, using
> Kconfig logic.

Queuing the first one in renesas-devel for v5.4.

> The second patch moves enablement of ARM_ERRATA_754322 for Cortex-A9
> from shmobile_defconfig to Kconfig logic, to make sure it's always
> enabled when needed.
> The third patch disables PL310_ERRATA_588369, as it doesn't affect any
> Renesas SoCs.
>
> The last patch is marked RFC, as I don't know the revision of PL310 on
> EMMA Mobile EV2, and cannot test it on EMEV2.

The other 2 are postponed.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
