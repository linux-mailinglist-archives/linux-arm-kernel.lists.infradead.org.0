Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB8D2B9BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 20:03:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PSMNik13IuFCKfaYWIEs5j9/zsUx1ZK6YAaYhQfDUxU=; b=HRrNm7gBDeg0it
	LHYzsy+vDW8SuFpVpKwojb4YiSP8kjWF7zbru87/WxxEKkUrO+lnyWG0qPUFB1GENBuq0iXMKmQ8R
	sRXXGupOXfZg+KIniZy/4N7F+ZfC3+vOZvJmiABctXHrpX81tmGBTc+ezfy5CmQ6W9JOvA9Cji1hN
	LkeA8zKWhKgDoLIcwdBWfln8VCgExa3fvQ9iRmBTJvgooSmCQUtp2Mtrw7LF3uGvyLVFNGCT5KPR2
	aXI1/IDfngMoGEFreeG8I7CkcURHh3VTPPJZ4CIS755lcoP+0ih1dj3XzwLNhCi6S+k3Hyy5qPINg
	N7FYvzZKBay9lVUGjzRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVJyF-0000zc-FS; Mon, 27 May 2019 18:03:39 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVJy7-0000yL-3i; Mon, 27 May 2019 18:03:32 +0000
Received: by mail-ot1-x343.google.com with SMTP id i8so15465788oth.10;
 Mon, 27 May 2019 11:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pxUTt+IRMZU1MO/DCtvdYdxlj2EVWldyBya3jO1SugY=;
 b=pMFwoJ6IBL+RP91sU+epPWRQ4aLOO/Vtg6FGd193V/XeSyyGB9SvxrKqXP+pjIIc5G
 wFKbdMjqP2ASrMk/C70sC2ydjtvxY3L1Ld6Nlg5WPR6y/bRS/PzFDSeet7VX1QbWH35Q
 XEbOArS7wTSwE9CRFy4xBTejVgvAYG0EjjdbzufUaXOhMjjIBL8PByT2O6vNaVxACvor
 GBdXL51iMBLtpPUGh8rjq525SGle6cYkznGvOuLzVeTJww5L+FG0AKjWAyYfeWUj6xr3
 UaR0/VVQnNkN4UM9N7chRoeH0TDvYsGfcp9isLXd6ezQmNMLAgEtkvvaLBMihNtRRsvz
 GzlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pxUTt+IRMZU1MO/DCtvdYdxlj2EVWldyBya3jO1SugY=;
 b=ey/kCjupAYxYTnJfpVv2kIfhzQ+HznRXcRPNYVrOjs/1L1WUg0YCIpLPRQReDpeEkV
 x7iI9thHYvr101GVAZ6GaNmqVj+K/v/eOBtmo9uMDIMOaxdwy0kUG84gE40+A9itKmz8
 jjJcT6lnsm1bLKiS06OkjuYas+/+I9GxWMSgN//JHfWeVJx9NJvsEppBjvmX66cW8bOW
 daGdoDmbFSQJ5q9aDAKgSV5FnWtPZWFx8e73q1H8ItVvVvr7WjUEkhWzy7LSHVeVlsOM
 Dm7BflXQ0W0pEVByjPLD37vpQVxMi+wvcCOiGM5lw71YxMPdwnzIZkVzJN2toWG7AWJR
 xpXA==
X-Gm-Message-State: APjAAAUaDirmktmYV8WELGwu0rFKLMMwyJfL/aiTWeesEBbfCGYbex6W
 bjIUQTeTSYDPjz2MPKGHrfqekFGgTZh4pkjWONg=
X-Google-Smtp-Source: APXvYqytlNhOwJViv1/F5Pd4ZD+cwFDl4VueS054FLzGIPWGNcCpLHNZuYjzZg5F2AptZ6rL7Pb8f7FNysxRDv5/FpA=
X-Received: by 2002:a9d:7c84:: with SMTP id q4mr2106178otn.98.1558980209280;
 Mon, 27 May 2019 11:03:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190527134314.4340-1-narmstrong@baylibre.com>
In-Reply-To: <20190527134314.4340-1-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 May 2019 20:03:18 +0200
Message-ID: <CAFBinCDETXBGm=_TCJUU4dpkvevbVfh5mAeYD6-O94sRHJnFbQ@mail.gmail.com>
Subject: Re: [PATCH v2] iio: adc: meson_saradc: update with SPDX Licence
 identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_110331_152236_5C858CC4 
X-CRM114-Status: UNSURE (   6.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-iio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 3:43 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
