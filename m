Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F8883972
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 21:13:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qbUX5+RXD5Lx0CWQwQ/tzh3cF67Cs3APbT9KnmyH1js=; b=HI8JrNAIaa7ZpU
	72JTN9BtaZGtfmlria5ku9ilM51HTwiPiBrPQ5l41TEY92Du4AxxZc0PLXN5D+gETldI+oARjWElw
	mkjnMAu2v1C2F7kzphCn4cmEbbz0HpZTO+3UmJPnXazPv17oZ9sAxOGfODbvn+k/LbFeuqqvfYCpp
	0R4UjOIUHUuZ59YWrzLx38WXfcmitIILCIswqJNm6GX7Dwqj628fOUVwhGumkRqYwyK9iw2RSBTH9
	uaapwf0n5N/nyGm7KvKa8/xHHZeQPp3EUiVVav18kGln2lD2etKb3A9U94K7NHrOwedWHWD7XPI86
	328g9Y0EplMKX37j+PLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv4te-0003sf-1I; Tue, 06 Aug 2019 19:13:22 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv4tU-0003qg-FR; Tue, 06 Aug 2019 19:13:13 +0000
Received: by mail-oi1-x243.google.com with SMTP id l12so7594104oil.1;
 Tue, 06 Aug 2019 12:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vsIcnWtDlXQXoT39FUMhv6STy1MA/nY/7+ohKy0CG9I=;
 b=PCva78234+8dGi9ooJjncnPkATqM4ogU4wQtMcMIWoJUt7R0rmuGYbMZgwfY/eb1rF
 4UJlb14BQxeXW5sGBddhNuPu61eGczQj3Sw6GKvwg9dXI6UfTwzNIb52CLYwZsa2QhTE
 kioMu2NkoWQPeZ5h8Ni46UfBr3Qzjwj2p1N+8bhzyHxYVXzChoB08YZClubTddE8QViM
 qycF0pGtPJapJiluqp7F0iUh3q/T9vJ0gGI0/wuIFxXLBvMt4nPeutpI6YD/Co/a1RD+
 1aGXaEzAoUxF1D1NEWCLT1FtB/MsV+o4kmH89HEwYZOHFRHzuoyAvQ9S5YS7QRFWLuwC
 ZXvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vsIcnWtDlXQXoT39FUMhv6STy1MA/nY/7+ohKy0CG9I=;
 b=UVuzfXnTvlQRp5RXZjvMcOIm/eZLsE8YHw65UI3me4v7Mxq4HgTLTshlU0AZ6HvwqW
 5rzKFr4gmVk4PYSEoh6ZZ1DIk5wuMCU34fJdCdpkQRGmBCGVQxJ3kR41ZLOoVRDoDth+
 GiOO2nXKUQknAWvS1cYdfXQ066sRxaNgHPDgW6vzagNAkw+PKonf/ljKOMRVkdnjZZ8Q
 BSfVxpzl4LCxhl1CaX9JywB7CVEWIO1o/s5Lp75d8MAmDW+Ku7wF7x7Dh8Z5b23aqx++
 bC4ELEiNpXVh6wrdE/EL62j8uNMLdSG1KTy692RwoIHo8YyGN+waz1TDYYwFGMSyOdNj
 yAmw==
X-Gm-Message-State: APjAAAUIzwwcARc8+gxLufN46+xPmfLmSOpd4arNNeRhWPlzUi1pgVau
 dw5+jZZlSfPnZ2+g2Mf6Udy4aYWdGD1kpvvwayqalAxG
X-Google-Smtp-Source: APXvYqx1iaCtx2l6jQ/ORnw89sfklYFDiCu3d3ftL/+v2VZsnJxN0/SkcNSl0A0A0nWT/bugr/Ie6vZfl4ZTkagSVMw=
X-Received: by 2002:aca:5c55:: with SMTP id q82mr2858373oib.15.1565118788681; 
 Tue, 06 Aug 2019 12:13:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190805120320.32282-1-narmstrong@baylibre.com>
 <20190805120320.32282-5-narmstrong@baylibre.com>
In-Reply-To: <20190805120320.32282-5-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 6 Aug 2019 21:12:57 +0200
Message-ID: <CAFBinCCiEX3m7E8FLwgKjpEvVC+zZOy0XBbaesuxSKZuQNxv4w@mail.gmail.com>
Subject: Re: [RFCv2 4/9] dt-bindings: reset: amlogic,
 meson-reset: convert to yaml
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_121312_517697_A5F89220 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
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
Cc: linux-amlogic@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, p.zabel@pengutronix.de,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 5, 2019 at 2:06 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for the Amlogic Reset controller over to a YAML schemas.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
