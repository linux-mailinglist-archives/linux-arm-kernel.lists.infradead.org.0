Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6FC96A22
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 22:22:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uv+2j60pQxLvHIgztz3sJ5hyKyamj3O6vXVaT4e6CxI=; b=Et8JNA9BnQhzOr
	e5DskIt9I0oSCWY3GlDWyAfFrB1bjJEDjEra/3vWpeN8DP7fWihO8Z/LPiaR6umadolToJCnxHpjb
	cdaPbE5t3LDXJPlvVwmSHY47BrV7m+Rx9/Vn9y7s4auxvuP3TPQP7T9sgKoNSwj4li8a3DO6NIohu
	Ktnji489Pls/q/1saygO0W7QUNAqUOFVaGgJr0neSNJnrZU3fTexsnz4ZC63RMXMtPe0Wj6Yd0nxr
	CG0vEgVKUhymQaRgNsGufm5XJ5JC3/wd5Mx/WlKdf38h/Tmk3uC09eCCxDsSAgkhyh7QM9VnG2PhM
	pnPaLoFz3r/PTII3r2Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Adx-0000qc-Pe; Tue, 20 Aug 2019 20:22:13 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Add-0000hm-PC; Tue, 20 Aug 2019 20:21:55 +0000
Received: by mail-oi1-x242.google.com with SMTP id t24so5131602oij.13;
 Tue, 20 Aug 2019 13:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aFhIFMNnaJwO0FsKXVLZvfaKji7ksglDhoULj5vQdP0=;
 b=iB5LViSb7jTNNAhbtywPQFBv6ZPrntg54tPB6pWu+y3tEHXrW7lYgsKIlNvuqpdIDY
 A6B+eG4uTHPV20yAS9qAJ00Bx+uswKRvzE/CX1VGFZz+DB9sW3fNz7Ya7HLIETaNWdUB
 1c38CQ/KAap3kDkN4BwGg/H+8YsAodptASj+i+clz3oW9we85GjL9/Pgoq71mBWzShwD
 rZTYaRflJoWKbU2harz4XQ6VMnF1r2flEb0YXRX9xxs3UPwlWHghLYqpaapbe1WqUYXO
 Qiqba40Nrkj5ijVPIt9Tro8fZm19OsNHcAPkXuoLXx8jzeGlCvI2PUHDu1eLhzz6Xjvb
 6J5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aFhIFMNnaJwO0FsKXVLZvfaKji7ksglDhoULj5vQdP0=;
 b=N6I3kY4zm9NgLMzCsrPPSlarxSh6+vcxvwsvIQco8rkkhIkFMendlhgC7673xOkiJF
 eMB/Rslbh49TH143VF26M2yfhFtbt2OlIPy/FuQt7se/01pS3v/Hrn/ItPSIeGluux+/
 S+uATjPatVlVJuGf1Zq9DW6/PgBVFnEaqasOTpLpx24DO7qQgx14Rwavn6QzMjjcs3qW
 h+NeeWyktfBr7Wxm9CzWKnKVD5Wq2fR3jYHZ6jKAVJBtnU5X48So60u5MeRyZkXMZqfM
 cmc3NIEfnl2F9NwuCmNqc8G7Qc3ZKxOwwB2DuwlFFwL9MnYffeHt2qM0VI3NR1P/xlCJ
 Undg==
X-Gm-Message-State: APjAAAXlDE7t4U0QB9eYJHAoTuY1AR1LtbsU/WOW89GbYbWIp7oIZYS8
 DqNAf3B0vt+4jsy9NX7Dwvp+x+hxtg6szNLkaPKFMf2z
X-Google-Smtp-Source: APXvYqzkLHh9E1pIvB0Iyz/FjsJ1I1eYHA9pMWw8yy94lIIDALmtN9giwzYeTUuWmVtTnhzpd0zUMimezCzBcmqBq20=
X-Received: by 2002:a05:6808:8e2:: with SMTP id
 d2mr1367608oic.47.1566332512616; 
 Tue, 20 Aug 2019 13:21:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190814142918.11636-1-narmstrong@baylibre.com>
 <20190814142918.11636-2-narmstrong@baylibre.com>
In-Reply-To: <20190814142918.11636-2-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 20 Aug 2019 22:21:41 +0200
Message-ID: <CAFBinCA5dPztTZ6kUBWK1XgjQPDY6FVsLHytMdncThHnf4Z+8g@mail.gmail.com>
Subject: Re: [PATCH 01/14] arm64: dts: meson: fix ethernet mac reg format
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_132153_837056_B18FDA2B 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: khilman@baylibre.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 4:30 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> This fixes the following DT schemas check errors:
> meson-axg-s400.dt.yaml: soc: ethernet@ff3f0000:reg:0: [0, 4282318848, 0, 65536, 0, 4284695872, 0, 8] is too long
> meson-axg-s400.dt.yaml: ethernet@ff3f0000: reg: [[0, 4282318848, 0, 65536, 0, 4284695872, 0, 8]] is too short
> meson-g12a-u200.dt.yaml: soc: ethernet@ff3f0000:reg:0: [0, 4282318848, 0, 65536, 0, 4284695872, 0, 8] is too long
> meson-g12a-u200.dt.yaml: ethernet@ff3f0000: reg: [[0, 4282318848, 0, 65536, 0, 4284695872, 0, 8]] is too short
> meson-gxbb-nanopi-k2.dt.yaml: soc: ethernet@c9410000:reg:0: [0, 3376480256, 0, 65536, 0, 3364046144, 0, 4] is too long
> meson-gxl-s805x-libretech-ac.dt.yaml: soc: ethernet@c9410000:reg:0: [0, 3376480256, 0, 65536, 0, 3364046144, 0, 4] is too lon
if you have to re-send it for whatever reason I would appreciate if
you could add:
"while here, also drop the redundant reg property from meson-gxl.dtsi
because it had the same value as meson-gx.dtsi from which it inherits"

> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
