Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D94389CF42
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 14:13:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oxug9nXzUx6iv+zE2p0RYVVOOxo1A2kMOsn1qc1xnrg=; b=Bc0Ltj9Pi9h47G
	YwGcPlI72TfFE93kadukRzV+oDo0SCaWtOzIIuKdqGlNh/425IsDFWqKlQZLkaK5ssPcZISuUbLl5
	KwMiSrlzWCITjC+srOEyldPyVOFxpKjtMnxJwBUqlqNtmtThEk3bBlCLFXquw68cdXRuTut2XiBGM
	5sqtS5Gn8Pr09MeJ20bKVOETNNmnnHBz53xqXE9tY2FuJNBDjqKElcuY8cYMlfsQyr3EdHQ+Pw8bG
	k9vNx7FfHLa4kHSrFQXwgoxiGaa1ZX9tomCY3ViSiM+iIF/kuU1Xag2J0jsj4qfGJbN7Ly3fI5nr1
	N8FnO1lNMCx4zTtwe9qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2DsR-0000RM-HU; Mon, 26 Aug 2019 12:13:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2DqP-0006Yy-5q; Mon, 26 Aug 2019 12:11:34 +0000
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
 [209.85.222.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9619621883;
 Mon, 26 Aug 2019 12:11:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566821492;
 bh=YjOhHVNb3S+TKmqIRau91HDeiF/9aMDjoGnlxjpwtFI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=nXGicwi8LQMcrqtLzIDuXd2LskmnWsntr0uvzQtncJ+uBbM8dsai6PA6n9rZG3gIj
 a3B0I+mcQe2sdxhq3J11jzfVQZaccPj66WqPYLJBGrBvvKUac/qJCUXOYaTVoqz/Qx
 BWxu6sEVnIUFWYZiVrbCphZdvtqiIA96t3Gn3OUI=
Received: by mail-qk1-f172.google.com with SMTP id g17so13755903qkk.8;
 Mon, 26 Aug 2019 05:11:32 -0700 (PDT)
X-Gm-Message-State: APjAAAVPa/0+rzMPR+gNE31fycwzhMVt2fYKZNkoHnAAekkVr13QD8pd
 R8crRsi+Uy+4dshMx/qEUAcHxZ2TusjxciKovw==
X-Google-Smtp-Source: APXvYqxagKO99F9mS7t6DaXXxukZkMZEy/9XN2GKqINovi5R7IFk0Zl3h+jg5Zq3YC4qsFWsngg9N8DwLKv0FhuW7S8=
X-Received: by 2002:a37:4941:: with SMTP id w62mr14601999qka.119.1566821491710; 
 Mon, 26 Aug 2019 05:11:31 -0700 (PDT)
MIME-Version: 1.0
References: <1566633850-9421-1-git-send-email-christianshewitt@gmail.com>
 <1566633850-9421-3-git-send-email-christianshewitt@gmail.com>
In-Reply-To: <1566633850-9421-3-git-send-email-christianshewitt@gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 26 Aug 2019 07:11:15 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKJvyYpAb2n1aq7RRKrgnt+oL2yd47b4jh=QiZdu6t39A@mail.gmail.com>
Message-ID: <CAL_JsqKJvyYpAb2n1aq7RRKrgnt+oL2yd47b4jh=QiZdu6t39A@mail.gmail.com>
Subject: Re: [PATCH v2,2/3] dt-bindings: arm: amlogic: Add support for the
 Ugoos AM6
To: Christian Hewitt <christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_051133_373146_5C9E0B8E 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Oleg Ivanov <balbes-150@yandex.ru>, Kevin Hilman <khilman@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-amlogic@lists.infradead.org,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Aug 24, 2019 at 3:05 AM Christian Hewitt
<christianshewitt@gmail.com> wrote:
>
> The Ugoos AM6 is based on the Amlogic W400 (G12B) reference design using the
> S922X chipset.
>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
