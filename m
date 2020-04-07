Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64FF51A07AC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 08:51:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZoJGRY7qTpeodj3s5dM+5hp0N0NCvckfQU83pgyWPIE=; b=srdAFxWQRokyE5
	YWWPqu6GdRTbRPz64Px+exv8FeW40uTcqz9g7q84fu/4qHLDUTWDqzFOdNjdc1qh1+hwRKptnibNn
	9u+RgLZUZzLf17qApenAaZc4SgoE3PCgtCbxlVAWJnUM+QO63MJoET5+h7hTVku0DWTdMtODlr4ft
	JiMvrVPhNwaai1jxJ7h3VbUmu5032d0UO/NIv01votc2tmWXwZ3wLgcWAAfci0eWTYOZDXY1Qvdtg
	Ne2cJp7RAccSUuuYVb386gReJ5lkSp03E3Drf6DLOE8wL9kC5qoTFYp0meqq6jk4s+cT11dVmWK1k
	kC8AIjK0Q2vL7czB4U9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLi4w-0005CT-Th; Tue, 07 Apr 2020 06:51:22 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLi4r-0005Bv-3u
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 06:51:18 +0000
Received: by mail-qk1-x741.google.com with SMTP id z15so620512qki.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 23:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Y4FAoei46Tkc3HfHlCIKmv+2BjR5V8f9xenFoOtsKN4=;
 b=tQo4f6yKtMHTJ0hQi+oM3MZgcHaRvAV7aDsZGtxCuYln7mYN8W+9/TOLWGGm8S6wqa
 95cxOdNcctfI6yKkFwoL3+EDY+0FDcP5lM7hdhohRJevf91pNFlupKSOIELe9XPccwMh
 6N7ApC9NhFF8Scantpav7pS8TD21Oos/V0b4o0N3niIojk9Je+7GjdYvTvH1mccY4Nhl
 5G15tkjpkK4wGPyZvs/1f40gLbUcERdUif9Hsd1qNRoa1wv/nyZ8NU8MMysm+5OZqwqm
 rGHpvhZVnd8NttGewORj2Sd5not4n68zV3vJP8rtbJjKMtlkO01vWh1cx/YIFr0XMTt0
 xh/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y4FAoei46Tkc3HfHlCIKmv+2BjR5V8f9xenFoOtsKN4=;
 b=Hc+eYjEPjJdIQ4OT+qygwuR8OpDdlqrGfeTXeSpr3njrp32wC8MTZRk4TtXA0GwVsn
 FsKEOLqVP6CPsmpM2mExuu+u/0c1Pex7KPc5Jg3GVdfod0DVCiy/3F011dg23Y+iSCwQ
 +3M1wm4L3m2iegtkNw0eG3LHEbwFWrYOIbU+U5IThKp8O7VOqAkOAIlNwEUthr2x+or5
 VN8cHCalrAcsCkUXvS7nUNGROSCwCUjpHXL+BTxglpZ8j//uVO1mw1Gghno72iBM3r+k
 0Ryc8TyMfJT3xOK4pzQF8HoHnuW7BIT8QVVYRu7Pubu2jtAQtG1dSxFXmbSkwHodTmWs
 4Kzg==
X-Gm-Message-State: AGi0PuZNZdbhoRQF4ilgY91/hePIha/YjLOhjI2YAubycNg8f5hSYgvU
 iwNs/qH/Xvqp6GnjqCpYbzoLM63OxIuR0iDuDlo=
X-Google-Smtp-Source: APiQypLLsOdvypIFNxuaVrbiZeeORo8cVXBYb0ZNxxDoZPkW/yNo1thc2t6Xj2qD9Chy7pElS4GccL0R0thQRTsHmNg=
X-Received: by 2002:a37:4ac2:: with SMTP id x185mr720414qka.413.1586242274672; 
 Mon, 06 Apr 2020 23:51:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200407055837.3508017-1-alistair@alistair23.me>
 <20200407055837.3508017-2-alistair@alistair23.me>
In-Reply-To: <20200407055837.3508017-2-alistair@alistair23.me>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Mon, 6 Apr 2020 23:50:48 -0700
Message-ID: <CA+E=qVdQKS9TCG7Sa4aefAZbgWO3-rgA9u13v=iB6+TN7yQe=Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] Bluetooth: hci_h5: Add support for binding
 RTL8723BS with device tree
To: Alistair Francis <alistair@alistair23.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_235117_181850_3EDA8600 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [anarsoul[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, netdev <netdev@vger.kernel.org>,
 Marcel Holtmann <marcel@holtmann.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 "open list:BLUETOOTH DRIVERS" <linux-bluetooth@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, alistair23@gmail.com,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 6, 2020 at 10:58 PM Alistair Francis <alistair@alistair23.me> wrote:
>
> From: Vasily Khoruzhick <anarsoul@gmail.com>
>
> RTL8723BS is often used in ARM boards, so add ability to bind it
> using device tree.
>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> Signed-off-by: Alistair Francis <alistair@alistair23.me>
> ---
>  drivers/bluetooth/hci_h5.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/bluetooth/hci_h5.c b/drivers/bluetooth/hci_h5.c
> index 106c110efe56..b0e25a7ca850 100644
> --- a/drivers/bluetooth/hci_h5.c
> +++ b/drivers/bluetooth/hci_h5.c
> @@ -1019,6 +1019,8 @@ static const struct of_device_id rtl_bluetooth_of_match[] = {
>         { .compatible = "realtek,rtl8822cs-bt",
>           .data = (const void *)&rtl_vnd },
>  #endif
> +       { .compatible = "realtek,rtl8822bs-bt",

Wrong compatible? Also you probably want to keep it over #endif.

> +         .data = (const void *)&rtl_vnd },
>         { },
>  };
>  MODULE_DEVICE_TABLE(of, rtl_bluetooth_of_match);
> --
> 2.25.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
