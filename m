Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C88E537A11
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 18:51:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SB+9UCNbX6cyoAq8GQj1sBDBYQj83hTpMf5p+9pLtI8=; b=g5QDB88vIszL9p
	TaufkLwePsRCnybNHMCgBacX1HbP+XVz89IDLbS/Dx1nOPhfpUr/nqZ/kigh9xkKuqHIZScs0aYHC
	dQXKi50Mj8yvJ2y6CRzgVNpUWCSL6JnKsCsC/PmjdR63/eEsZ4cyg6+9kcGZi9INDUKjXAjH6Bvud
	X58tO8sufB0pyiIliqokdAh52FW5DdrATVe0gf7s58XeV/BV6hUb341YGRxIw4rdWY87fP0Nrcz3s
	DmIC6PX1VLuF8xhMvWq5r3ZXJhgLUlakMqOMK8tfUgyNO3L8lXMToBHXfmFiqXY05T8oPTVWlw29s
	sXIaloVQK/zKn2FhkvWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYvcI-0003Ov-0h; Thu, 06 Jun 2019 16:51:54 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYvbv-00031e-1u
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 16:51:44 +0000
Received: by mail-pl1-x644.google.com with SMTP id g9so1154608plm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 09:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=aa8v2Ry0AgUyHqDSDkVaopTmArzSQkUiolk4pn2d3+s=;
 b=DaczKw269EV7LA54BQf75jZoNq5u89tfhtV1e6vBRU8zQDjavkM/B5+S8OlIYrhtBu
 zRH8KJfNZ6SVzujhafnICd+ZNaQPV4/8QuIo358hspBB/EagYVbB+x62egPUDT/JhNKv
 9e3V3l9q2a6BMyCyYGBeVLCvjHYdIr3XNvYQzsTbFciUxEEFGrpz5QhM2uEJlBQ5y4I1
 fPVGsCzLhzuSHn1Zj4OR7+kgIkt3FlwF/jdEnwlTk8YmlFaNX1Vtsk+Um1u8sd0cdumd
 b2KlyDEjmllwz6zSkUx/JA10Cfu3DmLno0xnQJLKue+RN9jjE86nky1JRkl7usEyBaZ8
 cEow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=aa8v2Ry0AgUyHqDSDkVaopTmArzSQkUiolk4pn2d3+s=;
 b=gT5NH/77bkOar7RZGtxHc+9GK/l3WSbXO5ZUEkKN5Wn0TjYs/uEv2y5q3N/3bNgdwr
 W/MXtDRuaXNulrfG0AiKbT0x2pf3SS2E6J/JRp6T7lE272OiAJl4lkXHFhVuVvVa6GFz
 yIl3kR6DtihwKJpBrixDFXrMddnd7nR6Xvamc3/HmMcQf/DXzj0IqWtZgVi2PoVq5QPO
 vkhi3TySxOHLmvN3Xt81D/Uz8lOA3+T+2E1OwZfE3A8KEMO+zeR13z0NOnY6wwNBvsYA
 2I19V7tO1Twh60euFv0O3BbL7CSviUFF3wC5w9VRPmDAAABHfPCj68+l84Vc7I5hCGS1
 dgOA==
X-Gm-Message-State: APjAAAVR07Jo8JZegonCUWrV/tckxEwJBtn219pkcv0mz29qQTLWD8H/
 MsnA2gbm1winOVnJiZuZbpuVgw==
X-Google-Smtp-Source: APXvYqwf3kWtPMwOnmP7ZZOYSimryM81jqIIaWq+An6NiWUG8IxZBgCpaGSayfH926J5f/CiXcB0PA==
X-Received: by 2002:a17:902:b18f:: with SMTP id
 s15mr52670524plr.44.1559839890184; 
 Thu, 06 Jun 2019 09:51:30 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id r77sm2336028pgr.93.2019.06.06.09.51.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 Jun 2019 09:51:29 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH] drm/meson: update with SPDX Licence identifier
In-Reply-To: <20190520142927.1009-1-narmstrong@baylibre.com>
References: <20190520142927.1009-1-narmstrong@baylibre.com>
Date: Thu, 06 Jun 2019 09:51:27 -0700
Message-ID: <7hef46fyi8.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_095131_830872_F1D3743E 
X-CRM114-Status: UNSURE (   5.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
