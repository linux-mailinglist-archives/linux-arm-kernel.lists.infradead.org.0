Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C94C67C946
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:56:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YLanlBnCjhtaFWLykCcKslvE7oBMZumWuJOs5Bv4nHA=; b=J/VtX8kwoqUVoP
	FH8/YWrapNM3mYYB+6gRaIif3m9yHBF0DEQUEipjLXEOfYoiOf9G1jDvmnBskcgEPnG18MrKgz/BD
	vvKQuMp5FGLzekVQzkZAKSf5zjBKopfmRTrij86jSMypZkfnqaRGK1Pq1CMBgxhTq+nzG2MWIEAIv
	8C5UG98w+NrP0TWXAiN8AlmSs9Gtv90oxsZV9fAKMnKgarJRiO2l1UUhHpIpIkuaP8UdoZaRUjCvs
	xchivMSPoa3QBk7m0WKdZhxEPog3vAuFvbEaT3SHE0y9DYOrHDsjLy1YXvRQtpCQ8PbOrTebLb+4w
	GUhY1ovQfaK+beDceGkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrtb-0006Qi-38; Wed, 31 Jul 2019 16:56:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrtL-0006Or-9M; Wed, 31 Jul 2019 16:56:03 +0000
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D3EAD208E4;
 Wed, 31 Jul 2019 16:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564592155;
 bh=bu2/IzitZpcqBSeCvVLwvyS9Pg3PnwR+a5FlsLqKfwI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=o/YgXu/1eTjtGCGzZ/OwQR5HDIIAYPv1s4Ry9B/VG0+8TbBTE9xc/OXQM/EHcYcZ3
 X6RpcDqanN9nOJhH5PO31520ZAzINdR7OqDxxCWR8dU1jSDIrRI0dU9GoiFRPk++8Y
 ynZqXfGcruJQ0nDV6aK5D5raa2FrgKfkWnKPg2iU=
Received: by mail-qt1-f170.google.com with SMTP id y26so67295508qto.4;
 Wed, 31 Jul 2019 09:55:54 -0700 (PDT)
X-Gm-Message-State: APjAAAUaai8J8CKi6Kxff2UDBMvCJGDDbgPONJl+L2n6u/i/Zw9u69b8
 pzxb2yNjoKqtVR3AIdmIt9f3BUbqCSlSjuxmOQ==
X-Google-Smtp-Source: APXvYqyvNP50u9cI3UCf6+YAQwdF9Av65FYOMp2vrFwHw2oLly8ZNSDLF7JYdlfrkafL15qyfM8KXu+yB6C5vKjJVqw=
X-Received: by 2002:ac8:368a:: with SMTP id a10mr86824910qtc.143.1564592154073; 
 Wed, 31 Jul 2019 09:55:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190731124000.22072-1-narmstrong@baylibre.com>
 <20190731124000.22072-4-narmstrong@baylibre.com>
In-Reply-To: <20190731124000.22072-4-narmstrong@baylibre.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 31 Jul 2019 10:55:42 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKFacYY06keqny2RTvCd1R6eDmZmVG5WdjoDHdfwAObgg@mail.gmail.com>
Message-ID: <CAL_JsqKFacYY06keqny2RTvCd1R6eDmZmVG5WdjoDHdfwAObgg@mail.gmail.com>
Subject: Re: [PATCH 3/6] dt-bindings: arm: amlogic: add bindings for the
 Amlogic G12B based A311D SoC
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_095559_114985_2F73E3BA 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
 Christian Hewitt <christianshewitt@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-amlogic@lists.infradead.org,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 6:40 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Add a specific compatible for the Amlogic G12B bases A311D SoC used
> in the Khadas VIM3.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  Documentation/devicetree/bindings/arm/amlogic.yaml | 5 +++++
>  1 file changed, 5 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
